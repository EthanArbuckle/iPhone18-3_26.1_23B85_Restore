@interface PKSettingsDeepLinkController
- (PKSettingsDeepLinkController)initWithDataSource:(id)a3 delegate:(id)a4;
- (id)_percentEncodeReferrerIdentifier:(id)a3;
- (void)_presentTransactionDetailsForTransactionWithIdentifier:(id)a3 confirmPaymentOfferPlan:(BOOL)a4;
- (void)_presentTransactionDetailsForTransactionWithServiceIdentifier:(id)a3 transactionSourceIdentifier:(id)a4 confirmPaymentOfferPlan:(BOOL)a5;
- (void)handleDeepLinkResourceDictionary:(id)a3 withCompletion:(id)a4;
@end

@implementation PKSettingsDeepLinkController

- (PKSettingsDeepLinkController)initWithDataSource:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PKSettingsDeepLinkController;
  v8 = [(PKSettingsDeepLinkController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, v6);
    objc_storeWeak(&v9->_delegate, v7);
  }

  return v9;
}

- (void)handleDeepLinkResourceDictionary:(id)a3 withCompletion:(id)a4
{
  v286 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_loadWeakRetained(&self->_dataSource);
  v9 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v285 = v6;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Processing resourceDictionary %{public}@", buf, 0xCu);
  }

  v10 = [v6 objectForKeyedSubscript:@"path"];
  v265 = v8;
  if ([v10 length])
  {
    v11 = [v10 substringToIndex:1];
    if (v11 == @"/" || (v12 = v11) != 0 && (v13 = [(__CFString *)v11 isEqualToString:@"/"], v12, v12, v13))
    {
      v14 = [v10 substringFromIndex:1];

      v10 = v14;
    }
  }

  v15 = [v10 componentsSeparatedByString:@"/"];
  v16 = [v15 count];
  v266 = v15;
  v17 = [v15 firstObject];
  v18 = @"payment_setup_IDMS_card_on_file";
  v19 = v18;
  if (v17 == v18)
  {

    goto LABEL_14;
  }

  if (!v17 || !v18)
  {

    goto LABEL_17;
  }

  v20 = [(__CFString *)v17 isEqualToString:v18];

  if (v20)
  {
LABEL_14:
    v21 = WeakRetained;
    if (v16 < 2)
    {
      v23 = 0;
      v24 = v265;
      v22 = v266;
    }

    else
    {
      v22 = v266;
      v23 = [v266 objectAtIndex:1];
      v24 = v265;
    }

    v29 = [MEMORY[0x1E695DFD8] set];
    [WeakRetained openPaymentSetupWithMode:2 referrerIdentifier:v23 allowedFeatureIdentifiers:v29];
    goto LABEL_24;
  }

LABEL_17:
  v25 = v17;
  v26 = @"payment_setup";
  v27 = v26;
  if (v25 == v26)
  {

    goto LABEL_26;
  }

  if (!v17 || !v26)
  {

    goto LABEL_28;
  }

  v28 = [(__CFString *)v25 isEqualToString:v26];

  if (v28)
  {
LABEL_26:
    v21 = WeakRetained;
    [WeakRetained openPaymentSetupWithMode:0 referrerIdentifier:0 allowedFeatureIdentifiers:0];
LABEL_62:
    v24 = v265;
LABEL_63:
    v22 = v266;
    goto LABEL_64;
  }

LABEL_28:
  v30 = v25;
  v31 = @"card";
  v32 = v31;
  if (v30 == v31)
  {
    v33 = 1;
  }

  else
  {
    if (!v17 || !v31)
    {

      v34 = v16 > 1;
      goto LABEL_43;
    }

    v33 = [(__CFString *)v30 isEqualToString:v31];
  }

  v34 = v16 > 1;
  if (v33 && v16 >= 2)
  {
    v129 = v16 == 3;
    v21 = WeakRetained;
    v24 = v265;
    v22 = v266;
    if (!v129)
    {
      goto LABEL_115;
    }

    v35 = [v266 objectAtIndex:2];
    v36 = v35;
    if (v35 == @"cardInformation")
    {
    }

    else
    {
      if (!v35 || !@"cardInformation")
      {

LABEL_89:
        v73 = [v266 objectAtIndex:2];
        v74 = v73;
        if (v73 == @"delete")
        {
        }

        else
        {
          if (!v73 || !@"delete")
          {

LABEL_115:
            v23 = [v266 objectAtIndex:1];
            v29 = [v265 paymentPassWithUniqueIdentifier:v23];
            v62 = WeakRetained;
            v63 = v29;
            v64 = 0;
            goto LABEL_116;
          }

          v75 = [(__CFString *)v73 isEqualToString:@"delete"];

          if (!v75)
          {
            goto LABEL_115;
          }
        }

        v23 = [v266 objectAtIndex:1];
        v29 = [v265 paymentPassWithUniqueIdentifier:v23];
        v62 = WeakRetained;
        v63 = v29;
        v64 = 18;
LABEL_116:
        [v62 presentPassDetailsViewControllerForPass:v63 presentationStyle:2 presentingView:v64 animated:0];
LABEL_24:

        goto LABEL_64;
      }

      v37 = [(__CFString *)v35 isEqualToString:@"cardInformation"];

      if (!v37)
      {
        goto LABEL_89;
      }
    }

    v23 = [v266 objectAtIndex:1];
    v29 = [v265 paymentPassWithUniqueIdentifier:v23];
    v62 = WeakRetained;
    v63 = v29;
    v64 = 1;
    goto LABEL_116;
  }

LABEL_43:
  v38 = v30;
  v39 = @"transaction";
  v40 = v39;
  if (v38 == v39)
  {

    goto LABEL_49;
  }

  v261 = v34;
  if (!v17 || !v39)
  {

    goto LABEL_52;
  }

  v41 = [(__CFString *)v38 isEqualToString:v39];

  if (v41)
  {
LABEL_49:
    v262 = v7;
    v42 = [v6 objectForKeyedSubscript:@"transactionIdentifier"];
    v43 = [v6 objectForKeyedSubscript:@"serviceIdentifier"];
    v44 = [v6 objectForKeyedSubscript:@"transactionSourceIdentifier"];
    v45 = v6;
    v46 = [v6 objectForKeyedSubscript:@"confirmPaymentOfferPlan"];
    v47 = [v46 BOOLValue];

    if ([v42 length])
    {
      [(PKSettingsDeepLinkController *)self _presentTransactionDetailsForTransactionWithIdentifier:v42 confirmPaymentOfferPlan:v47];
    }

    else
    {
      if (![v43 length])
      {
        v6 = v45;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v285 = v45;
          _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKPassbookDeepLinkController: Unhandled evaluation of Settings transaction url. Couldn't find transactionID or serviceID. Resource dictionary: %@", buf, 0xCu);
        }

        goto LABEL_60;
      }

      [(PKSettingsDeepLinkController *)self _presentTransactionDetailsForTransactionWithServiceIdentifier:v43 transactionSourceIdentifier:v44 confirmPaymentOfferPlan:v47];
    }

    v6 = v45;
LABEL_60:
    v7 = v262;
    v21 = WeakRetained;

LABEL_61:
    goto LABEL_62;
  }

LABEL_52:
  v48 = v38;
  v49 = @"apple-cash";
  v50 = v49;
  v51 = v6;
  if (v48 == v49)
  {

    goto LABEL_68;
  }

  if (!v17 || !v49)
  {

    goto LABEL_71;
  }

  v52 = [(__CFString *)v48 isEqualToString:v49];

  if (v52)
  {
LABEL_68:
    if ([v266 count] < 2)
    {
      v53 = 0;
    }

    else
    {
      v53 = [v266 objectAtIndex:1];
    }

    v21 = WeakRetained;
    v58 = v53;
    v59 = v58;
    v6 = v51;
    if (v58 == @"autoReload")
    {
    }

    else
    {
      if (!v58 || !@"autoReload")
      {

        v61 = v261;
        goto LABEL_95;
      }

      v60 = [(__CFString *)v58 isEqualToString:@"autoReload"];

      v61 = v261;
      if (!v60)
      {
LABEL_95:
        if (v61)
        {
          v76 = [v266 objectAtIndex:1];
          v77 = v76;
          if (v76 == @"recurringPayment")
          {

            goto LABEL_124;
          }

          if (v76 && @"recurringPayment")
          {
            v78 = [(__CFString *)v76 isEqualToString:@"recurringPayment"];

            if (!v78)
            {
              goto LABEL_127;
            }

LABEL_124:
            if (v16 < 3)
            {
              v65 = 0;
            }

            else
            {
              v65 = [v266 objectAtIndex:2];
            }

            v24 = v265;
            v93 = [v265 peerPaymentPass];
            [WeakRetained presentPeerPaymentRecurringPaymentWithPass:v93 presentationStyle:2 recurringPaymentIdentifier:v65 animated:1];

            goto LABEL_135;
          }
        }

LABEL_127:
        v87 = v59;
        v88 = v87;
        if (v87 == @"cardInformation")
        {

          v24 = v265;
        }

        else
        {
          v24 = v265;
          if (!v59 || !@"cardInformation")
          {

LABEL_137:
            v90 = v88;
            v91 = v90;
            if (v90 == @"transferToBank")
            {
            }

            else
            {
              if (!v59 || !@"transferToBank")
              {

                goto LABEL_156;
              }

              v92 = [(__CFString *)v90 isEqualToString:@"transferToBank"];

              if (!v92)
              {
LABEL_156:
                v98 = v91;
                v99 = v98;
                v100 = v51;
                if (v98 == @"addMoney")
                {
                }

                else
                {
                  if (!v59 || !@"addMoney")
                  {

LABEL_175:
                    v65 = [v265 peerPaymentPass];
                    v114 = WeakRetained;
                    v115 = v65;
                    v116 = 0;
                    goto LABEL_176;
                  }

                  v101 = [(__CFString *)v98 isEqualToString:@"addMoney"];

                  if (!v101)
                  {
                    goto LABEL_175;
                  }
                }

                v65 = [v265 peerPaymentPass];
                v114 = WeakRetained;
                v115 = v65;
                v116 = 4;
LABEL_176:
                [v114 presentPassDetailsViewControllerForPass:v115 presentationStyle:2 presentingView:v116 animated:1];
                v6 = v100;
                goto LABEL_135;
              }
            }

            v65 = [v265 peerPaymentPass];
            [WeakRetained presentPeerPaymentTransferToBankWithPass:v65];
LABEL_135:

            goto LABEL_63;
          }

          v89 = [(__CFString *)v87 isEqualToString:@"cardInformation"];

          if (!v89)
          {
            goto LABEL_137;
          }
        }

        v65 = [v24 peerPaymentPass];
        v66 = WeakRetained;
        v67 = v65;
        v68 = 1;
LABEL_134:
        [v66 presentPassDetailsViewControllerForPass:v67 presentationStyle:2 presentingView:v68 animated:1];
        goto LABEL_135;
      }
    }

    v24 = v265;
    v65 = [v265 peerPaymentPass];
    v66 = WeakRetained;
    v67 = v65;
    v68 = 16;
    goto LABEL_134;
  }

LABEL_71:
  v54 = v48;
  v55 = @"peerPaymentTopUp";
  v56 = v55;
  if (v54 == v55)
  {

    goto LABEL_87;
  }

  if (!v17 || !v55)
  {

    goto LABEL_105;
  }

  v57 = [(__CFString *)v54 isEqualToString:v55];

  if (v57)
  {
LABEL_87:
    v24 = v265;
    v69 = [v265 peerPaymentPass];
    v21 = WeakRetained;
    v70 = WeakRetained;
    v71 = v69;
    v72 = 4;
LABEL_144:
    [v70 presentPassDetailsViewControllerForPass:v71 presentationStyle:2 presentingView:v72 animated:0];

    v6 = v51;
    goto LABEL_63;
  }

LABEL_105:
  v79 = v54;
  v80 = @"peerPaymentVerifyIdentity";
  v81 = v80;
  if (v79 == v80)
  {

LABEL_113:
    v24 = v265;
    v69 = [v265 peerPaymentPass];
    v21 = WeakRetained;
    v70 = WeakRetained;
    v71 = v69;
    v72 = 5;
    goto LABEL_144;
  }

  if (!v17 || !v80)
  {

    goto LABEL_118;
  }

  v82 = [(__CFString *)v79 isEqualToString:v80];

  if (v82)
  {
    goto LABEL_113;
  }

LABEL_118:
  v83 = v79;
  v84 = @"peerPaymentTermsAcceptance";
  v85 = v84;
  if (v83 == v84)
  {

LABEL_143:
    v24 = v265;
    v69 = [v265 peerPaymentPass];
    v21 = WeakRetained;
    v70 = WeakRetained;
    v71 = v69;
    v72 = 3;
    goto LABEL_144;
  }

  if (!v17 || !v84)
  {

    goto LABEL_148;
  }

  v86 = [(__CFString *)v83 isEqualToString:v84];

  if (v86)
  {
    goto LABEL_143;
  }

LABEL_148:
  v94 = v83;
  v95 = @"peerPaymentSetup";
  v96 = v95;
  if (v94 == v95)
  {

    goto LABEL_162;
  }

  if (!v17 || !v95)
  {

    goto LABEL_167;
  }

  v97 = [(__CFString *)v94 isEqualToString:v95];

  if (v97)
  {
LABEL_162:
    v6 = v51;
    v102 = [v51 objectForKeyedSubscript:@"setupAmount"];
    v103 = [v6 objectForKeyedSubscript:@"setupCurreny"];
    v104 = [v6 objectForKeyedSubscript:@"setupFlowState"];
    v105 = PKPeerPaymentRegistrationFlowStateFromString(v104);

    v106 = [v6 objectForKeyedSubscript:@"setupSenderAddress"];
    v263 = v102;
    v107 = [MEMORY[0x1E696AB90] decimalNumberWithString:v102];
    v108 = v107;
    v109 = 0;
    if (v107 && v103)
    {
      v109 = PKCurrencyAmountCreate(v107, v103, 0);
    }

    v21 = WeakRetained;
    [WeakRetained openPeerPaymentSetupWithCurrencyAmount:v109 state:v105 senderAddress:v106];

    goto LABEL_62;
  }

LABEL_167:
  v110 = v94;
  v111 = @"dailyCash";
  v112 = v111;
  if (v110 == v111)
  {

    goto LABEL_178;
  }

  if (!v17 || !v111)
  {

    goto LABEL_187;
  }

  v113 = [(__CFString *)v110 isEqualToString:v111];

  if (v113)
  {
LABEL_178:
    v117 = v51;
    v118 = [v51 objectForKeyedSubscript:@"date"];
    v119 = v118;
    if (v118)
    {
      v120 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(v118, 0, 0);
      if (v120)
      {
LABEL_182:
        v42 = v120;
        goto LABEL_183;
      }

      v121 = objc_alloc_init(MEMORY[0x1E696AC80]);
      [v121 setFormatOptions:275];
      v122 = [MEMORY[0x1E695DEE8] currentCalendar];
      v123 = [v122 timeZone];
      [v121 setTimeZone:v123];

      v117 = v51;
      v42 = [v121 dateFromString:v119];

      if (v42)
      {
LABEL_183:
        v124 = [MEMORY[0x1E695DEE8] currentCalendar];
        v125 = [v124 components:30 fromDate:v42];

        v126 = [v117 objectForKeyedSubscript:@"redemptionType"];
        v127 = v117;
        v128 = [v126 integerValue];

        v129 = v128 == 3;
        if (v128 >= 3)
        {
          v6 = v127;
          v21 = WeakRetained;
          if (v129)
          {
            [WeakRetained openDailyCashForDateComponents:v125 feature:5];
          }
        }

        else
        {
          v130 = [v127 objectForKeyedSubscript:@"passUniqueID"];
          v6 = v127;
          if (v130)
          {
            [v265 paymentPassWithUniqueIdentifier:v130];
          }

          else
          {
            [v265 peerPaymentPass];
          }
          v140 = ;
          v21 = WeakRetained;
          if (!v140)
          {

            goto LABEL_208;
          }

          [WeakRetained openDailyCashForDateComponents:v125 onPass:v140];
        }

        goto LABEL_61;
      }
    }

    v120 = [MEMORY[0x1E695DF00] date];
    goto LABEL_182;
  }

LABEL_187:
  v131 = v110;
  v132 = @"credit";
  v133 = v132;
  if (v131 == v132)
  {

    goto LABEL_196;
  }

  if (!v17 || !v132)
  {

    goto LABEL_198;
  }

  v134 = [(__CFString *)v131 isEqualToString:v132];

  if (v134)
  {
LABEL_196:
    v135 = +[PKAccountService sharedInstance];
    v278[0] = MEMORY[0x1E69E9820];
    v278[1] = 3221225472;
    v278[2] = __80__PKSettingsDeepLinkController_handleDeepLinkResourceDictionary_withCompletion___block_invoke;
    v278[3] = &unk_1E79DBDF0;
    v6 = v51;
    v279 = v51;
    v280 = v265;
    v283 = v16;
    v24 = v265;
    v22 = v266;
    v281 = v266;
    v21 = WeakRetained;
    v282 = WeakRetained;
    [v135 defaultAccountForFeature:2 completion:v278];

    goto LABEL_64;
  }

LABEL_198:
  v136 = v131;
  v137 = @"savings";
  v138 = v137;
  if (v136 == v137)
  {

    goto LABEL_210;
  }

  if (!v17 || !v137)
  {

    goto LABEL_214;
  }

  v139 = [(__CFString *)v136 isEqualToString:v137];

  if (v139)
  {
LABEL_210:
    if (v261)
    {
      v141 = [v266 objectAtIndex:1];
      if (v16 != 2)
      {
        v142 = [v266 objectAtIndex:2];
        goto LABEL_220;
      }
    }

    else
    {
      v141 = 0;
    }

    v142 = 0;
LABEL_220:
    v147 = v141;
    v148 = v147;
    if (v147 == @"details")
    {
    }

    else
    {
      if (!v147 || !@"details")
      {

        goto LABEL_240;
      }

      v149 = [(__CFString *)v147 isEqualToString:@"details"];

      if (!v149)
      {
LABEL_240:
        v158 = v148;
        v159 = v158;
        if (v158 == @"documents")
        {
        }

        else
        {
          if (!v148 || !@"documents")
          {

            goto LABEL_268;
          }

          v160 = [(__CFString *)v158 isEqualToString:@"documents"];

          if ((v160 & 1) == 0)
          {
LABEL_268:
            v178 = v159;
            v179 = v178;
            if (v178 == @"addMoney")
            {
            }

            else
            {
              if (!v148 || !@"addMoney")
              {

                goto LABEL_296;
              }

              v180 = [(__CFString *)v178 isEqualToString:@"addMoney"];

              if ((v180 & 1) == 0)
              {
LABEL_296:
                v191 = v179;
                v192 = v191;
                if (v191 == @"withdrawMoney")
                {
                }

                else
                {
                  if (!v148 || !@"withdrawMoney")
                  {

LABEL_332:
                    v207 = v192;
                    v208 = v207;
                    if (v207 == @"fccStepUp")
                    {
                    }

                    else
                    {
                      if (!v148 || !@"fccStepUp")
                      {

LABEL_352:
                        v214 = v208;
                        v215 = v214;
                        if (v214 == @"bankVerification")
                        {

                          goto LABEL_373;
                        }

                        if (v148 && @"bankVerification")
                        {
                          v216 = [(__CFString *)v214 isEqualToString:@"bankVerification"];

                          if (!v216)
                          {
                            goto LABEL_399;
                          }

LABEL_373:
                          if (v16 < 3)
                          {
                            v174 = 0;
                          }

                          else
                          {
                            v174 = [v266 objectAtIndex:2];
                          }

                          v175 = 12;
                          goto LABEL_400;
                        }

LABEL_399:
                        v174 = 0;
                        v175 = 1;
                        goto LABEL_400;
                      }

                      v209 = [(__CFString *)v207 isEqualToString:@"fccStepUp"];

                      if ((v209 & 1) == 0)
                      {
                        goto LABEL_352;
                      }
                    }

                    v174 = 0;
                    v175 = 11;
LABEL_400:
                    v6 = v51;
                    [WeakRetained presentAccountForFeature:5 destination:v175 fundingSourceIdentifier:v174 animated:1];

                    v21 = WeakRetained;
                    goto LABEL_62;
                  }

                  v193 = [(__CFString *)v191 isEqualToString:@"withdrawMoney"];

                  if ((v193 & 1) == 0)
                  {
                    goto LABEL_332;
                  }
                }

                v174 = 0;
                v175 = 3;
                goto LABEL_400;
              }
            }

            v174 = 0;
            v175 = 2;
            goto LABEL_400;
          }
        }

        v174 = 0;
        v175 = 6;
        goto LABEL_400;
      }
    }

    if (!v142)
    {
      goto LABEL_399;
    }

    v150 = v142;
    v151 = @"addBankAccount";
    v152 = v151;
    if (v150 == v151)
    {
    }

    else
    {
      if (!v151)
      {

        goto LABEL_291;
      }

      v153 = [(__CFString *)v150 isEqualToString:v151];

      if ((v153 & 1) == 0)
      {
LABEL_291:
        v187 = v150;
        v188 = @"accountInfo";
        v189 = v188;
        if (v187 == v188)
        {
        }

        else
        {
          if (!v188)
          {

            goto LABEL_327;
          }

          v190 = [(__CFString *)v187 isEqualToString:v188];

          if ((v190 & 1) == 0)
          {
LABEL_327:
            v203 = v187;
            v204 = @"businessChat";
            v205 = v204;
            if (v203 == v204)
            {
            }

            else
            {
              if (!v204)
              {

                goto LABEL_358;
              }

              v206 = [(__CFString *)v203 isEqualToString:v204];

              if ((v206 & 1) == 0)
              {
LABEL_358:
                v217 = v203;
                v218 = @"accountNumbers";
                v219 = v218;
                if (v217 == v218)
                {
                }

                else
                {
                  if (!v218)
                  {

LABEL_377:
                    v226 = v217;
                    v227 = @"addBeneficiary";
                    v228 = v227;
                    if (v226 == v227)
                    {
                    }

                    else
                    {
                      if (!v227)
                      {

                        goto LABEL_399;
                      }

                      v229 = [(__CFString *)v226 isEqualToString:v227];

                      if (!v229)
                      {
                        goto LABEL_399;
                      }
                    }

                    v174 = 0;
                    v175 = 13;
                    goto LABEL_400;
                  }

                  v220 = [(__CFString *)v217 isEqualToString:v218];

                  if ((v220 & 1) == 0)
                  {
                    goto LABEL_377;
                  }
                }

                v174 = 0;
                v175 = 10;
                goto LABEL_400;
              }
            }

            v174 = 0;
            v175 = 7;
            goto LABEL_400;
          }
        }

        v174 = 0;
        v175 = 5;
        goto LABEL_400;
      }
    }

    v174 = 0;
    v175 = 4;
    goto LABEL_400;
  }

LABEL_214:
  v143 = v136;
  v144 = @"virtualCard";
  v145 = v144;
  if (v143 == v144)
  {
    v146 = 1;
  }

  else
  {
    if (!v17 || !v144)
    {

      v260 = v16 == 3;
      goto LABEL_246;
    }

    v146 = [(__CFString *)v143 isEqualToString:v144];
  }

  v260 = v16 == 3;
  if (v146 && v16 == 3)
  {
    v9 = [v266 objectAtIndex:1];
    v154 = [v266 objectAtIndex:2];
    v155 = v154;
    if (v154 == @"details")
    {
    }

    else
    {
      v156 = v154;
      if (!v154)
      {
        goto LABEL_277;
      }

      v156 = v154;
      if (!@"details")
      {
        goto LABEL_277;
      }

      v157 = [(__CFString *)v154 isEqualToString:@"details"];

      if (!v157)
      {
        goto LABEL_278;
      }
    }

    v181 = +[PKAccountService sharedInstance];
    v275[0] = MEMORY[0x1E69E9820];
    v275[1] = 3221225472;
    v275[2] = __80__PKSettingsDeepLinkController_handleDeepLinkResourceDictionary_withCompletion___block_invoke_70;
    v275[3] = &unk_1E79CE198;
    v276 = v265;
    v277 = WeakRetained;
    [v181 accountWithVirtualCardIdentifier:v9 completion:v275];

    v156 = v276;
LABEL_277:

LABEL_278:
LABEL_279:

LABEL_315:
    v6 = v51;
    v21 = WeakRetained;
    goto LABEL_62;
  }

LABEL_246:
  v161 = v143;
  v162 = @"setup";
  v163 = v162;
  if (v161 == v162)
  {

    goto LABEL_252;
  }

  if (!v17 || !v162)
  {

    goto LABEL_259;
  }

  v164 = [(__CFString *)v161 isEqualToString:v162];

  if (v164)
  {
LABEL_252:
    v165 = [v51 objectForKey:@"referrer"];
    v166 = [(PKSettingsDeepLinkController *)self _percentEncodeReferrerIdentifier:v165];

    if (v16 < 3)
    {
      v176 = 0;
      v177 = 0;
LABEL_311:
      v195 = PKFeatureIdentifierToString(2);
      v196 = [v177 containsObject:v195];

      if (v196)
      {
        v197 = +[PKAccountService sharedInstance];
        v269[0] = MEMORY[0x1E69E9820];
        v269[1] = 3221225472;
        v269[2] = __80__PKSettingsDeepLinkController_handleDeepLinkResourceDictionary_withCompletion___block_invoke_3;
        v269[3] = &unk_1E79DBDF0;
        v270 = v265;
        v271 = WeakRetained;
        v272 = v166;
        v273 = v177;
        v274 = v176;
        [v197 defaultAccountForFeature:2 completion:v269];
      }

      else
      {
        [WeakRetained openPaymentSetupWithMode:v176 referrerIdentifier:v166 allowedFeatureIdentifiers:v177];
      }

      goto LABEL_315;
    }

    v167 = [v266 objectAtIndex:1];
    v168 = v167;
    if (v167 == @"feature")
    {
    }

    else
    {
      if (!v167 || !@"feature")
      {

LABEL_306:
        v176 = 0;
        goto LABEL_307;
      }

      v169 = [(__CFString *)v167 isEqualToString:@"feature"];

      if (!v169)
      {
        goto LABEL_306;
      }
    }

    v176 = 4;
LABEL_307:
    v194 = [v266 objectAtIndex:2];
    if (PKFeatureIdentifierFromString(v194))
    {
      v177 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v194, 0}];
    }

    else
    {
      v177 = 0;
    }

    goto LABEL_311;
  }

LABEL_259:
  v170 = v161;
  v171 = @"express_transit_settings";
  v172 = v171;
  if (v170 == v171)
  {

LABEL_281:
    v6 = v51;
    v182 = [v51 objectForKeyedSubscript:@"passUniqueID"];
    v21 = WeakRetained;
    [WeakRetained openExpressTransitSettingsForPassUniqueIdentifier:v182];

    goto LABEL_62;
  }

  if (!v17 || !v171)
  {

    goto LABEL_283;
  }

  v173 = [(__CFString *)v170 isEqualToString:v171];

  if (v173)
  {
    goto LABEL_281;
  }

LABEL_283:
  v183 = v170;
  v184 = @"importSafariCardConsent";
  v185 = v184;
  if (v183 == v184)
  {

    goto LABEL_317;
  }

  if (!v17 || !v184)
  {

    goto LABEL_319;
  }

  v186 = [(__CFString *)v183 isEqualToString:v184];

  if (v186)
  {
LABEL_317:
    v198 = +[PKPaymentService paymentService];
    [v198 clearFPANCardImportNotificationsWithCompletion:0];
    v21 = WeakRetained;
    [WeakRetained presentImportFPANCardConsentAnimated:1 completion:0];
LABEL_341:

    goto LABEL_342;
  }

LABEL_319:
  v199 = v183;
  v200 = @"addPaymentCard";
  v201 = v200;
  if (v199 == v200)
  {

LABEL_340:
    v198 = +[PKPaymentService paymentService];
    [v198 clearFPANCardImportNotificationsWithCompletion:0];
    v21 = WeakRetained;
    [WeakRetained openPaymentSetupWithMode:0 referrerIdentifier:0 allowedFeatureIdentifiers:0];
    goto LABEL_341;
  }

  if (!v17 || !v200)
  {

    goto LABEL_344;
  }

  v202 = [(__CFString *)v199 isEqualToString:v200];

  if (v202)
  {
    goto LABEL_340;
  }

LABEL_344:
  v210 = v199;
  v211 = @"hide_my_email_settings";
  v212 = v211;
  if (v210 == v211)
  {

    goto LABEL_363;
  }

  if (!v17 || !v211)
  {

    goto LABEL_367;
  }

  v213 = [(__CFString *)v210 isEqualToString:v211];

  if (v213)
  {
LABEL_363:
    v221 = objc_loadWeakRetained(&self->_delegate);
    [v221 openTransactionDefaultsEmailSettings];

    goto LABEL_315;
  }

LABEL_367:
  v222 = v210;
  v223 = @"bankConnect";
  v224 = v223;
  if (v222 == v223)
  {

LABEL_384:
    if ([v10 hasSuffix:@"/issuer/authorization"])
    {
      v230 = MEMORY[0x1E695DFF8];
      v231 = [v51 objectForKeyedSubscript:@"redirectURL"];
      v232 = [v230 URLWithString:v231];

      if (!v232)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1AD337000, v9, OS_LOG_TYPE_ERROR, "Failed to handle BankConnect auth redirect. The redirectURL is nil.", buf, 2u);
        }

        v6 = v51;
        v21 = WeakRetained;
        goto LABEL_208;
      }

      v21 = WeakRetained;
      [WeakRetained presentAuthorizationFlowWithRedirectURL:v232 completion:v7 animated:0];
    }

    else
    {
      v6 = v51;
      v21 = WeakRetained;
      v24 = v265;
      v22 = v266;
      if (!v261)
      {
        goto LABEL_64;
      }

      v237 = [v266 objectAtIndex:1];
      if (v260)
      {
        v238 = [v266 objectAtIndex:2];
      }

      else
      {
        v238 = 0;
      }

      v21 = WeakRetained;
      [WeakRetained presentBankConnectManagementForInstitution:v237 accountIdentifier:v238 completion:v7];
    }

    v6 = v51;
LABEL_208:
    v24 = v265;
    v22 = v266;
    goto LABEL_66;
  }

  if (v17 && v223)
  {
    v225 = [(__CFString *)v222 isEqualToString:v223];

    if (!v225)
    {
      goto LABEL_390;
    }

    goto LABEL_384;
  }

LABEL_390:
  v233 = v222;
  v234 = @"merchantToken";
  v235 = v234;
  if (v233 == v234)
  {

    if (!v261)
    {
      goto LABEL_404;
    }
  }

  else
  {
    if (!v17 || !v234)
    {

      goto LABEL_404;
    }

    v236 = [(__CFString *)v233 isEqualToString:v234]& v261;

    if ((v236 & 1) == 0)
    {
LABEL_404:
      v240 = v233;
      v241 = @"account";
      v242 = v241;
      if (v240 == v241)
      {
      }

      else
      {
        if (!v17 || !v241)
        {

          goto LABEL_420;
        }

        v243 = [(__CFString *)v240 isEqualToString:v241];

        if (!v243)
        {
LABEL_420:
          v251 = v240;
          v252 = v251;
          if (v251 == @"applePayDefaults")
          {
          }

          else
          {
            if (!v17 || !@"applePayDefaults")
            {

              goto LABEL_431;
            }

            v253 = [(__CFString *)v251 isEqualToString:@"applePayDefaults"];

            if (!v253)
            {
LABEL_431:
              v254 = v252;
              v255 = v254;
              if (v254 == @"manageAutoFillCards")
              {
              }

              else
              {
                if (!v17 || !@"manageAutoFillCards")
                {

LABEL_439:
                  v257 = v255;
                  v258 = v257;
                  if (v257 == @"savings-closed")
                  {
                  }

                  else
                  {
                    if (!v17 || !@"savings-closed")
                    {

                      goto LABEL_447;
                    }

                    v259 = [(__CFString *)v257 isEqualToString:@"savings-closed"];

                    if (!v259)
                    {
LABEL_447:
                      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v285 = v51;
                        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKPassbookDeepLinkController: Unhandled evaluation of unexpected Settings URL in resource dictionary: %@", buf, 0xCu);
                      }

                      goto LABEL_279;
                    }
                  }

                  v21 = WeakRetained;
                  [WeakRetained openClosedSavingsAccountsSettings];
LABEL_342:
                  v6 = v51;
                  goto LABEL_62;
                }

                v256 = [(__CFString *)v254 isEqualToString:@"manageAutoFillCards"];

                if (!v256)
                {
                  goto LABEL_439;
                }
              }

              v21 = WeakRetained;
              [WeakRetained presentManageAutoFillCards];
              goto LABEL_342;
            }
          }

          v21 = WeakRetained;
          [WeakRetained presentApplePayDefaults];
          goto LABEL_342;
        }
      }

      v22 = v266;
      v6 = v51;
      v21 = WeakRetained;
      v24 = v265;
      if ([v266 count])
      {
        v244 = [v266 objectAtIndexedSubscript:1];
        if (v244)
        {
          v245 = v244;
          v246 = [PKCoreSpotlightUtilities accountIdentifierFromSpotlightIdentifier:v244];
          v247 = v246;
          if (v246)
          {
            v248 = v246;
          }

          else
          {
            v248 = v245;
          }

          v249 = v248;

          v6 = v51;
          v250 = +[PKAccountService sharedInstance];
          v267[0] = MEMORY[0x1E69E9820];
          v267[1] = 3221225472;
          v267[2] = __80__PKSettingsDeepLinkController_handleDeepLinkResourceDictionary_withCompletion___block_invoke_74;
          v267[3] = &unk_1E79C9750;
          v268 = WeakRetained;
          [v250 accountWithIdentifier:v249 completion:v267];
        }
      }

      goto LABEL_64;
    }
  }

  v22 = v266;
  v239 = [v266 objectAtIndexedSubscript:1];
  v21 = WeakRetained;
  [WeakRetained presentMerchantTokenWithIdentifier:v239];

  v6 = v51;
  v24 = v265;
LABEL_64:
  if (v7)
  {
    v7[2](v7);
  }

LABEL_66:
}

void __80__PKSettingsDeepLinkController_handleDeepLinkResourceDictionary_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80__PKSettingsDeepLinkController_handleDeepLinkResourceDictionary_withCompletion___block_invoke_66;
    v15[3] = &unk_1E79DBB08;
    v16 = v5;
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v19 = *(a1 + 64);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    *&v12 = v7;
    *(&v12 + 1) = v8;
    v17 = v12;
    v18 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v15);

    v13 = v16;
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 138412546;
      v21 = v14;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "PKPassbookDeepLinkController: Unhandled evaluation of Settings url from resource dictionary: %@\nApple Card account returned nil with error: %@", buf, 0x16u);
    }
  }
}

void __80__PKSettingsDeepLinkController_handleDeepLinkResourceDictionary_withCompletion___block_invoke_66(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) associatedPassUniqueID];
  v3 = [*(a1 + 40) paymentPassWithUniqueIdentifier:v2];
  if (v3)
  {
    PKSetPassDetailsLastSelectedSegment(@"info");
    if (*(a1 + 72) <= 1uLL)
    {
      v4 = @"details";
      v6 = v4;
    }

    else
    {
      v4 = [*(a1 + 56) objectAtIndex:1];
      v5 = @"details";
      v6 = v5;
      if (v4 != v5)
      {
        if (!v4 || !v5)
        {

LABEL_20:
          v8 = v4;
          v14 = @"balance";
          v15 = v14;
          if (v8 == v14)
          {
          }

          else
          {
            if (!v4 || !v14)
            {

              goto LABEL_36;
            }

            v16 = [v8 isEqualToString:v14];

            if (!v16)
            {
LABEL_36:
              v8 = v8;
              v24 = @"billPayment";
              v25 = v24;
              if (v8 == v24)
              {
              }

              else
              {
                if (!v4 || !v24)
                {

                  goto LABEL_54;
                }

                v26 = [v8 isEqualToString:v24];

                if (!v26)
                {
LABEL_54:
                  v8 = v8;
                  v35 = @"statement";
                  v36 = v35;
                  if (v8 == v35)
                  {
                  }

                  else
                  {
                    if (!v4 || !v35)
                    {

                      goto LABEL_74;
                    }

                    v37 = [v8 isEqualToString:v35];

                    if (!v37)
                    {
LABEL_74:
                      v8 = v8;
                      v41 = @"installment";
                      v42 = v41;
                      if (v8 == v41)
                      {
                      }

                      else
                      {
                        if (!v4 || !v41)
                        {

                          goto LABEL_90;
                        }

                        v43 = [v8 isEqualToString:v41];

                        if (!v43)
                        {
LABEL_90:
                          v8 = v8;
                          v47 = @"numbers";
                          v48 = v47;
                          if (v8 == v47)
                          {
                          }

                          else
                          {
                            if (!v4 || !v47)
                            {

                              goto LABEL_106;
                            }

                            v49 = [v8 isEqualToString:v47];

                            if (!v49)
                            {
LABEL_106:
                              v30 = PKLogFacilityTypeGetObject(0);
                              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                              {
                                v53 = *(a1 + 48);
                                v54 = 138412546;
                                v55 = v53;
                                v56 = 2112;
                                v57 = v8;
                                _os_log_impl(&dword_1AD337000, v30, OS_LOG_TYPE_DEFAULT, "PKPassbookDeepLinkController: Failed to handle url from resource dictionary: %@\nApple Card destination (%@) is not supported.", &v54, 0x16u);
                              }

                              goto LABEL_63;
                            }
                          }

                          [*(a1 + 64) presentCreditPaymentPassNumbersViewControllerForPass:v3 presentationStyle:2 animated:0];
                          goto LABEL_115;
                        }
                      }

                      [*(a1 + 64) presentInstallmentPlansDetailsViewControllerForPass:v3 presentationStyle:2 forFeature:2 animated:0];
                      goto LABEL_115;
                    }
                  }

                  if (*(a1 + 72) >= 3uLL)
                  {
                    v30 = [*(a1 + 56) objectAtIndex:2];
                    [*(a1 + 64) presentStatementDetailsViewControllerForPass:v3 presentationStyle:2 withIdentifier:v30 animated:0];
LABEL_63:

                    goto LABEL_115;
                  }

                  goto LABEL_74;
                }
              }

              v30 = [*(a1 + 48) objectForKeyedSubscript:@"amount"];
              v31 = [*(a1 + 48) objectForKeyedSubscript:@"type"];
              v32 = v31;
              v33 = *(a1 + 64);
              if (v30 && v31)
              {
                v34 = [MEMORY[0x1E696AB90] decimalNumberWithString:v30];
                [v33 presentAppleCardBillPaymentForPass:v3 presentationStyle:2 amount:v34 billPayAmountType:+[PKAppIntentUtilities pkBillPayAmountTypeFromType:](PKAppIntentUtilities animated:{"pkBillPayAmountTypeFromType:", v32), 0}];
              }

              else
              {
                [v33 presentPassDetailsViewControllerForPass:v3 presentationStyle:2 presentingView:9 animated:0];
              }

              goto LABEL_63;
            }
          }

          v20 = *(a1 + 64);
          v21 = v3;
          v22 = 7;
          v23 = 0;
LABEL_114:
          [v20 presentPassDetailsViewControllerForPass:v21 presentationStyle:2 presentingView:v22 animated:v23];
          goto LABEL_115;
        }

        v7 = [(__CFString *)v4 isEqualToString:v5];

        if (!v7)
        {
          goto LABEL_20;
        }

LABEL_12:
        v8 = v4;
        if (*(a1 + 72) < 3uLL)
        {
          v13 = 0;
LABEL_113:
          v20 = *(a1 + 64);
          v21 = v3;
          v22 = v13;
          v23 = 1;
          goto LABEL_114;
        }

        v10 = [*(a1 + 56) objectAtIndex:2];
        v11 = v10;
        if (v10 == @"makeDefaultAtApple")
        {
        }

        else
        {
          if (!v10 || !@"makeDefaultAtApple")
          {

            goto LABEL_28;
          }

          v12 = [(__CFString *)v10 isEqualToString:@"makeDefaultAtApple"];

          if ((v12 & 1) == 0)
          {
LABEL_28:
            v17 = v11;
            v18 = v17;
            if (v17 == @"scheduledPayments")
            {
            }

            else
            {
              if (!v11 || !@"scheduledPayments")
              {

                goto LABEL_44;
              }

              v19 = [(__CFString *)v17 isEqualToString:@"scheduledPayments"];

              if ((v19 & 1) == 0)
              {
LABEL_44:
                v27 = v18;
                v28 = v27;
                if (v27 == @"order")
                {
                }

                else
                {
                  if (!v11 || !@"order")
                  {

                    goto LABEL_65;
                  }

                  v29 = [(__CFString *)v27 isEqualToString:@"order"];

                  if ((v29 & 1) == 0)
                  {
LABEL_65:
                    v38 = v28;
                    v39 = v38;
                    if (v38 == @"replace")
                    {
                    }

                    else
                    {
                      if (!v11 || !@"replace")
                      {

                        goto LABEL_84;
                      }

                      v40 = [(__CFString *)v38 isEqualToString:@"replace"];

                      if ((v40 & 1) == 0)
                      {
LABEL_84:
                        v44 = v39;
                        v45 = v44;
                        if (v44 == @"track")
                        {
                        }

                        else
                        {
                          if (!v11 || !@"track")
                          {

LABEL_100:
                            v50 = v45;
                            v51 = v50;
                            if (v50 == @"activate")
                            {
                            }

                            else
                            {
                              if (!v11 || !@"activate")
                              {

LABEL_111:
                                v13 = 0;
                                goto LABEL_112;
                              }

                              v52 = [(__CFString *)v50 isEqualToString:@"activate"];

                              if (!v52)
                              {
                                goto LABEL_111;
                              }
                            }

                            v13 = 13;
LABEL_112:

                            goto LABEL_113;
                          }

                          v46 = [(__CFString *)v44 isEqualToString:@"track"];

                          if ((v46 & 1) == 0)
                          {
                            goto LABEL_100;
                          }
                        }

                        v13 = 14;
                        goto LABEL_112;
                      }
                    }

                    v13 = 17;
                    goto LABEL_112;
                  }
                }

                v13 = 12;
                goto LABEL_112;
              }
            }

            v13 = 6;
            goto LABEL_112;
          }
        }

        v13 = 11;
        goto LABEL_112;
      }
    }

    goto LABEL_12;
  }

  v8 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 48);
    v54 = 138412290;
    v55 = v9;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPassbookDeepLinkController: Unhandled evaluation of Settings url from resource dictionary: %@\nApple Card account pass was nil", &v54, 0xCu);
  }

LABEL_115:
}

void __80__PKSettingsDeepLinkController_handleDeepLinkResourceDictionary_withCompletion___block_invoke_70(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PKSettingsDeepLinkController_handleDeepLinkResourceDictionary_withCompletion___block_invoke_2;
  block[3] = &unk_1E79C4E00;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __80__PKSettingsDeepLinkController_handleDeepLinkResourceDictionary_withCompletion___block_invoke_2(id *a1)
{
  v5 = [a1[4] associatedPassUniqueID];
  v2 = [v5 length];
  v3 = v5;
  if (v2)
  {
    v4 = [a1[5] paymentPassWithUniqueIdentifier:v5];
    if (v4)
    {
      [a1[6] presentPassDetailsViewControllerForPass:v4 presentationStyle:1 presentingView:0 animated:0];
    }

    else if (PKSecureElementIsAvailable())
    {
      [a1[6] presentAppleCardUpsellAlertForAccount:a1[4]];
    }

    v3 = v5;
  }
}

void __80__PKSettingsDeepLinkController_handleDeepLinkResourceDictionary_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__PKSettingsDeepLinkController_handleDeepLinkResourceDictionary_withCompletion___block_invoke_4;
  v11[3] = &unk_1E79DBB08;
  v12 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v13 = v9;
  v14 = v8;
  v15 = *(a1 + 64);
  v10 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __80__PKSettingsDeepLinkController_handleDeepLinkResourceDictionary_withCompletion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = [v2 associatedPassUniqueID];
    v10 = [v3 paymentPassWithUniqueIdentifier:v4];

    v5 = a1[6];
    if (v10)
    {
      [v5 presentPassDetailsViewControllerForPass:v10 presentationStyle:1 presentingView:0 animated:1];
    }

    else
    {
      [v5 openPaymentSetupWithMode:0 referrerIdentifier:a1[7] allowedFeatureIdentifiers:a1[8]];
    }
  }

  else
  {
    v6 = a1[6];
    v7 = a1[7];
    v9 = a1[8];
    v8 = a1[9];

    [v6 openPaymentSetupWithMode:v8 referrerIdentifier:v7 allowedFeatureIdentifiers:v9];
  }
}

void __80__PKSettingsDeepLinkController_handleDeepLinkResourceDictionary_withCompletion___block_invoke_74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 type] == 4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__PKSettingsDeepLinkController_handleDeepLinkResourceDictionary_withCompletion___block_invoke_2_75;
    block[3] = &unk_1E79C4E28;
    v8 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_presentTransactionDetailsForTransactionWithIdentifier:(id)a3 confirmPaymentOfferPlan:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (v4)
      {
        v8 = @"YES";
      }

      *buf = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKPassbookDeepLinkController: Preparing for presentation of transaction details for transactionID %@, confirmPaymentOfferPlan %@", buf, 0x16u);
    }

    v9 = +[PKPaymentService paymentService];
    objc_initWeak(buf, self);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __111__PKSettingsDeepLinkController__presentTransactionDetailsForTransactionWithIdentifier_confirmPaymentOfferPlan___block_invoke;
    v13[3] = &unk_1E79DBE68;
    objc_copyWeak(&v16, buf);
    v11 = v9;
    v14 = v11;
    v12 = WeakRetained;
    v15 = v12;
    v17 = v4;
    [v11 transactionWithTransactionIdentifier:v6 completion:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

void __111__PKSettingsDeepLinkController__presentTransactionDetailsForTransactionWithIdentifier_confirmPaymentOfferPlan___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = [v3 transactionSourceIdentifier];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __111__PKSettingsDeepLinkController__presentTransactionDetailsForTransactionWithIdentifier_confirmPaymentOfferPlan___block_invoke_2;
    v7[3] = &unk_1E79DBE40;
    v8 = *(a1 + 40);
    v9 = v3;
    v10 = *(a1 + 56);
    [v5 transactionSourceTypeForTransactionSourceIdentifier:v6 completion:v7];
  }
}

void __111__PKSettingsDeepLinkController__presentTransactionDetailsForTransactionWithIdentifier_confirmPaymentOfferPlan___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __111__PKSettingsDeepLinkController__presentTransactionDetailsForTransactionWithIdentifier_confirmPaymentOfferPlan___block_invoke_3;
  v4[3] = &unk_1E79DBE18;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

- (void)_presentTransactionDetailsForTransactionWithServiceIdentifier:(id)a3 transactionSourceIdentifier:(id)a4 confirmPaymentOfferPlan:(BOOL)a5
{
  v5 = a5;
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      *buf = 138412802;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      if (v5)
      {
        v11 = @"YES";
      }

      *&buf[14] = v9;
      *&buf[22] = 2112;
      v40 = v11;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKPassbookDeepLinkController: Preparing for presentation of transaction details for serviceIdentifier %@, transactionSourceIdentifier %@, confirmPaymentOfferPlan %@", buf, 0x20u);
    }

    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v37[3] = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v40 = __Block_byref_object_copy__56;
    v41 = __Block_byref_object_dispose__56;
    v42 = 0;
    v13 = +[PKPaymentService paymentService];
    v14 = dispatch_group_create();
    dispatch_group_enter(v14);
    dispatch_group_enter(v14);
    if (v9)
    {
      v15 = v35;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __146__PKSettingsDeepLinkController__presentTransactionDetailsForTransactionWithServiceIdentifier_transactionSourceIdentifier_confirmPaymentOfferPlan___block_invoke;
      v35[3] = &unk_1E79DBE90;
      v16 = &v36;
      objc_copyWeak(&v36, &location);
      v35[5] = v37;
      v17 = v14;
      v35[4] = v17;
      [v13 transactionSourceTypeForTransactionSourceIdentifier:v9 completion:v35];
      dispatch_group_enter(v17);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __146__PKSettingsDeepLinkController__presentTransactionDetailsForTransactionWithServiceIdentifier_transactionSourceIdentifier_confirmPaymentOfferPlan___block_invoke_2;
      v31[3] = &unk_1E79DBEB8;
      objc_copyWeak(&v34, &location);
      v33 = buf;
      v32 = v17;
      [v13 transactionWithServiceIdentifier:v8 transactionSourceIdentifier:v9 completion:v31];

      objc_destroyWeak(&v34);
    }

    else
    {
      v15 = v25;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __146__PKSettingsDeepLinkController__presentTransactionDetailsForTransactionWithServiceIdentifier_transactionSourceIdentifier_confirmPaymentOfferPlan___block_invoke_3;
      v25[3] = &unk_1E79DBEE0;
      v16 = &v30;
      objc_copyWeak(&v30, &location);
      v28 = buf;
      v18 = v13;
      v25[4] = v18;
      v26 = 0;
      v29 = v37;
      v27 = v14;
      [v18 ambiguousTransactionWithServiceIdentifier:v8 completion:v25];
    }

    objc_destroyWeak(v16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __146__PKSettingsDeepLinkController__presentTransactionDetailsForTransactionWithServiceIdentifier_transactionSourceIdentifier_confirmPaymentOfferPlan___block_invoke_5;
    block[3] = &unk_1E79DBF08;
    v21 = WeakRetained;
    v22 = buf;
    v23 = v37;
    v24 = v5;
    v19 = WeakRetained;
    dispatch_group_notify(v14, MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v37, 8);
    objc_destroyWeak(&location);
  }
}

void __146__PKSettingsDeepLinkController__presentTransactionDetailsForTransactionWithServiceIdentifier_transactionSourceIdentifier_confirmPaymentOfferPlan___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __146__PKSettingsDeepLinkController__presentTransactionDetailsForTransactionWithServiceIdentifier_transactionSourceIdentifier_confirmPaymentOfferPlan___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __146__PKSettingsDeepLinkController__presentTransactionDetailsForTransactionWithServiceIdentifier_transactionSourceIdentifier_confirmPaymentOfferPlan___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __146__PKSettingsDeepLinkController__presentTransactionDetailsForTransactionWithServiceIdentifier_transactionSourceIdentifier_confirmPaymentOfferPlan___block_invoke_4;
  v8[3] = &unk_1E79DBE90;
  objc_copyWeak(&v11, (a1 + 72));
  v10 = *(a1 + 64);
  v9 = *(a1 + 48);
  [v6 transactionSourceTypeForTransactionSourceIdentifier:v7 completion:v8];

  objc_destroyWeak(&v11);
}

void __146__PKSettingsDeepLinkController__presentTransactionDetailsForTransactionWithServiceIdentifier_transactionSourceIdentifier_confirmPaymentOfferPlan___block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  dispatch_group_leave(*(a1 + 32));
}

- (id)_percentEncodeReferrerIdentifier:(id)a3
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 URLQueryAllowedCharacterSet];
  v6 = [v5 mutableCopy];

  [v6 removeCharactersInString:@"=&"];
  v7 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:v6];

  return v7;
}

@end