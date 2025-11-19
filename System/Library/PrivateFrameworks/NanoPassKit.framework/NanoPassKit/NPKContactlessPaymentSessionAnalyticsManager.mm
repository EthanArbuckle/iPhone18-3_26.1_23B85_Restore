@interface NPKContactlessPaymentSessionAnalyticsManager
- (NPKContactlessPaymentSessionAnalyticsManager)init;
- (void)contactlessPaymentSessionManager:(id)a3 didChangeSessionState:(id)a4;
@end

@implementation NPKContactlessPaymentSessionAnalyticsManager

- (NPKContactlessPaymentSessionAnalyticsManager)init
{
  v9.receiver = self;
  v9.super_class = NPKContactlessPaymentSessionAnalyticsManager;
  v2 = [(NPKContactlessPaymentSessionAnalyticsManager *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NPKContactlessPaymentSessionState);
    previousState = v2->_previousState;
    v2->_previousState = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create("com.apple.NanoPassKit.NPKContactlessPaymentSessionAnalyticsManager", v5);
    analyticsQueue = v2->_analyticsQueue;
    v2->_analyticsQueue = v6;
  }

  return v2;
}

- (void)contactlessPaymentSessionManager:(id)a3 didChangeSessionState:(id)a4
{
  v5 = a4;
  analyticsQueue = self->_analyticsQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __103__NPKContactlessPaymentSessionAnalyticsManager_contactlessPaymentSessionManager_didChangeSessionState___block_invoke;
  v8[3] = &unk_2799454E0;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(analyticsQueue, v8);
}

void __103__NPKContactlessPaymentSessionAnalyticsManager_contactlessPaymentSessionManager_didChangeSessionState___block_invoke(uint64_t a1)
{
  v95 = *MEMORY[0x277D85DE8];
  if (NPKIsRunningInCarousel())
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  v4 = *MEMORY[0x277D38450];
  v5 = [*(a1 + 32) transactionContext];
  if ([v5 releaseDataStatus] == 6)
  {
    v6 = [*(*(a1 + 40) + 16) transactionContext];
    v1 = [v6 releaseDataStatus];

    if (v1 != 6)
    {
      v7 = MEMORY[0x277D37D28];
      v8 = *MEMORY[0x277D38558];
      v93[0] = *MEMORY[0x277D38538];
      v93[1] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
      v10 = *MEMORY[0x277D383E0];
      v11 = *MEMORY[0x277D383C0];
      v91[0] = *MEMORY[0x277D383D8];
      v91[1] = v11;
      v92[0] = v10;
      v92[1] = @"userCancelled";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:2];
      [v7 subjects:v9 sendEvent:v12];
      goto LABEL_13;
    }
  }

  else
  {
  }

  if ([*(*(a1 + 40) + 16) failureType] || !objc_msgSend(*(a1 + 32), "failureType"))
  {
    v9 = [*(*(a1 + 40) + 16) transactionContext];
    if ([v9 transactionStatus] == 2)
    {
LABEL_14:

LABEL_15:
      v13 = @"other";
      goto LABEL_16;
    }

    v12 = [*(a1 + 32) transactionContext];
    if ([v12 transactionStatus] != 2)
    {
LABEL_13:

      goto LABEL_14;
    }

    if ([*(a1 + 32) completionReason] == 3)
    {
    }

    else
    {
      v1 = [*(a1 + 32) completionReason];

      if (v1)
      {
        goto LABEL_15;
      }
    }

    v79 = MEMORY[0x277D37D28];
    v18 = *MEMORY[0x277D38558];
    v87[0] = *MEMORY[0x277D38538];
    v87[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];
    v20 = *MEMORY[0x277D38500];
    v85[0] = *MEMORY[0x277D383D8];
    v85[1] = v20;
    v86[0] = v4;
    v86[1] = @"success";
    v21 = *MEMORY[0x277D384B8];
    v86[2] = v20;
    v22 = *MEMORY[0x277D38508];
    v85[2] = v21;
    v85[3] = v22;
    v77 = [*(a1 + 32) currentPass];
    v75 = [v77 paymentPass];
    [v75 devicePaymentApplications];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v23 = v84 = 0u;
    v24 = [v23 countByEnumeratingWithState:&v81 objects:v94 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = 0;
      v27 = *v82;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v82 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v1 = *(*(&v81 + 1) + 8 * i);
          if (v26 && v26 != [*(*(&v81 + 1) + 8 * i) paymentType])
          {
            v29 = v19;

            v30 = @"multiple";
            goto LABEL_41;
          }

          v26 = [(__CFString *)v1 paymentType];
        }

        v25 = [v23 countByEnumeratingWithState:&v81 objects:v94 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    v29 = v19;

    v30 = PKPaymentMethodTypeToString();
LABEL_41:

    v86[3] = v30;
    v85[4] = *MEMORY[0x277D384D8];
    v31 = [*(a1 + 32) currentPass];
    v32 = [v31 secureElementPass];
    if ([v32 isIdentityPass])
    {
      v33 = [v32 identityType];
      if (v33 <= 2)
      {
        if (v33 == 1)
        {
          v34 = MEMORY[0x277D383A0];
          goto LABEL_108;
        }

        if (v33 == 2)
        {
          v34 = MEMORY[0x277D38518];
          goto LABEL_108;
        }
      }

      else
      {
        switch(v33)
        {
          case 3:
            goto LABEL_46;
          case 4:
            v34 = MEMORY[0x277D38488];
            goto LABEL_108;
          case 5:
LABEL_46:
            v34 = MEMORY[0x277D384F8];
LABEL_108:
            v37 = *v34;
LABEL_136:

            v86[4] = v37;
            v85[5] = *MEMORY[0x277D384E0];
            v64 = [*(a1 + 32) currentPass];
            if ([v64 passType] == 1)
            {
              v65 = [v64 secureElementPass];
              v66 = [v65 cardType];
              if (v66 <= 4)
              {
                v1 = **(&unk_279946CA0 + v66);
              }
            }

            else
            {
              v1 = @"other";
            }

            v85[6] = *MEMORY[0x277D383C0];
            v86[5] = v1;
            v86[6] = @"unknown";
            v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:7];
            [v79 subjects:v29 sendEvent:v67];

            v68 = [*(a1 + 32) currentPass];
            valid = NPKIsValidVASPass(v68);

            if (valid)
            {
              v70 = [MEMORY[0x277CCAC38] processInfo];
              v71 = [v70 isLowPowerModeEnabled];

              IsTinker = NPKPairedOrPairingDeviceIsTinker();
              NPKTrackSETransactionDetails(v3, 5, v71, IsTinker);
            }

            goto LABEL_15;
        }
      }

LABEL_62:
      v34 = MEMORY[0x277D38530];
      goto LABEL_108;
    }

    if (![v32 isAccessPass])
    {
      goto LABEL_62;
    }

    v35 = [v32 accessType];
    v36 = [v32 accessReportingType];
    v1 = v36;
    if (v35 <= 2)
    {
      switch(v35)
      {
        case 0:
          v63 = @"general";
          if (v36)
          {
            v63 = v36;
          }

          goto LABEL_131;
        case 1:
          v37 = @"hospitality";
          goto LABEL_135;
        case 2:
          v37 = @"corporate";
LABEL_135:

          goto LABEL_136;
      }
    }

    else
    {
      if (v35 <= 4)
      {
        if (v35 == 3)
        {
          v37 = @"singlefamily";
        }

        else
        {
          v37 = @"cars";
        }

        goto LABEL_135;
      }

      if (v35 == 5)
      {
        v37 = @"multifamily";
        goto LABEL_135;
      }

      if (v35 == 6)
      {
        v37 = @"urbanmobility";
        goto LABEL_135;
      }
    }

    v63 = *MEMORY[0x277D38530];
LABEL_131:
    v37 = v63;
    goto LABEL_135;
  }

  v15 = [*(a1 + 32) failureType];
  v16 = @"unknown";
  v13 = @"other";
  if (v15 <= 5)
  {
    if (v15 <= 2)
    {
      if (v15 != 1)
      {
        if (v15 != 2)
        {
          goto LABEL_65;
        }

LABEL_57:
        v16 = @"failure";
        v13 = @"transactionFailed";
        goto LABEL_65;
      }
    }

    else
    {
      if ((v15 - 3) < 2)
      {
        goto LABEL_56;
      }

      if (v15 != 5)
      {
        goto LABEL_65;
      }
    }

    v16 = @"failure";
    v13 = @"sessionFailed";
    goto LABEL_65;
  }

  if (v15 <= 7)
  {
    if (v15 == 6)
    {
      goto LABEL_57;
    }

LABEL_56:
    v16 = @"failure";
    v13 = @"userCancelled";
    goto LABEL_65;
  }

  if ((v15 - 8) < 2)
  {
    goto LABEL_57;
  }

  if (v15 == 10)
  {
    v13 = *MEMORY[0x277D383D0];
    v17 = MEMORY[0x277D38458];
  }

  else
  {
    if (v15 != 11)
    {
      goto LABEL_65;
    }

    v13 = @"unlockIPhone";
    v17 = MEMORY[0x277D383E8];
  }

  v38 = *v17;

  v16 = @"failure";
  v4 = v38;
LABEL_65:
  v80 = MEMORY[0x277D37D28];
  v39 = *MEMORY[0x277D38558];
  v90[0] = *MEMORY[0x277D38538];
  v90[1] = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
  v41 = *MEMORY[0x277D38500];
  v88[0] = *MEMORY[0x277D383D8];
  v88[1] = v41;
  v89[0] = v4;
  v89[1] = v16;
  v42 = *MEMORY[0x277D383C0];
  v88[2] = *MEMORY[0x277D384B8];
  v88[3] = v42;
  v89[2] = v41;
  v89[3] = v13;
  v88[4] = *MEMORY[0x277D38508];
  v78 = [*(a1 + 32) currentPass];
  v76 = [v78 paymentPass];
  [v76 devicePaymentApplications];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v43 = v84 = 0u;
  v44 = [v43 countByEnumeratingWithState:&v81 objects:v94 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = 0;
    v47 = *v82;
    while (2)
    {
      for (j = 0; j != v45; ++j)
      {
        if (*v82 != v47)
        {
          objc_enumerationMutation(v43);
        }

        v1 = *(*(&v81 + 1) + 8 * j);
        if (v46 && v46 != [*(*(&v81 + 1) + 8 * j) paymentType])
        {
          v49 = v40;

          v50 = @"multiple";
          goto LABEL_77;
        }

        v46 = [(__CFString *)v1 paymentType];
      }

      v45 = [v43 countByEnumeratingWithState:&v81 objects:v94 count:16];
      if (v45)
      {
        continue;
      }

      break;
    }
  }

  v49 = v40;

  v50 = PKPaymentMethodTypeToString();
LABEL_77:

  v89[4] = v50;
  v88[5] = *MEMORY[0x277D384D8];
  v51 = [*(a1 + 32) currentPass];
  v52 = [v51 secureElementPass];
  if (![v52 isIdentityPass])
  {
    if (![v52 isAccessPass])
    {
      goto LABEL_91;
    }

    v55 = [v52 accessType];
    v56 = [v52 accessReportingType];
    v1 = v56;
    if (v55 <= 2)
    {
      switch(v55)
      {
        case 0:
          v58 = @"general";
          if (v56)
          {
            v58 = v56;
          }

          goto LABEL_116;
        case 1:
          v57 = @"hospitality";
          goto LABEL_120;
        case 2:
          v57 = @"corporate";
LABEL_120:

          goto LABEL_121;
      }
    }

    else
    {
      if (v55 <= 4)
      {
        if (v55 == 3)
        {
          v57 = @"singlefamily";
        }

        else
        {
          v57 = @"cars";
        }

        goto LABEL_120;
      }

      if (v55 == 5)
      {
        v57 = @"multifamily";
        goto LABEL_120;
      }

      if (v55 == 6)
      {
        v57 = @"urbanmobility";
        goto LABEL_120;
      }
    }

    v58 = *MEMORY[0x277D38530];
LABEL_116:
    v57 = v58;
    goto LABEL_120;
  }

  v53 = [v52 identityType];
  if (v53 <= 2)
  {
    if (v53 == 1)
    {
      v54 = MEMORY[0x277D383A0];
      goto LABEL_98;
    }

    if (v53 == 2)
    {
      v54 = MEMORY[0x277D38518];
      goto LABEL_98;
    }

LABEL_91:
    v54 = MEMORY[0x277D38530];
    goto LABEL_98;
  }

  if (v53 != 3)
  {
    if (v53 == 4)
    {
      v54 = MEMORY[0x277D38488];
      goto LABEL_98;
    }

    if (v53 != 5)
    {
      goto LABEL_91;
    }
  }

  v54 = MEMORY[0x277D384F8];
LABEL_98:
  v57 = *v54;
LABEL_121:

  v89[5] = v57;
  v88[6] = *MEMORY[0x277D384E0];
  v59 = [*(a1 + 32) currentPass];
  if ([v59 passType] == 1)
  {
    v60 = [v59 secureElementPass];
    v61 = [v60 cardType];
    if (v61 <= 4)
    {
      v1 = **(&unk_279946CA0 + v61);
    }
  }

  else
  {
    v1 = @"other";
  }

  v89[6] = v1;
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:7];
  [v80 subjects:v49 sendEvent:v62];

LABEL_16:
  objc_storeStrong((*(a1 + 40) + 16), *(a1 + 32));

  v14 = *MEMORY[0x277D85DE8];
}

@end