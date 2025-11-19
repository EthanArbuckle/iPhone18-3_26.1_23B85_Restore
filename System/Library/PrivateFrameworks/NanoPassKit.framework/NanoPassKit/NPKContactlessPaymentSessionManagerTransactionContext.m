@interface NPKContactlessPaymentSessionManagerTransactionContext
+ (id)_NPKTransactionContextActionDescriptionForNPKTransactionContextAction:(unint64_t)a3;
- (NPKContactlessPaymentSessionManagerTransactionContext)init;
- (id)description;
- (void)forceToTransitTypeTransactionWithTransactionStatus:(unint64_t)a3;
- (void)updateWithConcreteTransactions:(id)a3 ephemeralTransaction:(id)a4 updatedPassTransitItems:(id)a5 paymentApplication:(id)a6;
@end

@implementation NPKContactlessPaymentSessionManagerTransactionContext

- (NPKContactlessPaymentSessionManagerTransactionContext)init
{
  v5.receiver = self;
  v5.super_class = NPKContactlessPaymentSessionManagerTransactionContext;
  v2 = [(NPKContactlessPaymentSessionManagerTransactionContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NPKContactlessPaymentSessionManagerTransactionContext *)v2 setTransactionStatus:2];
  }

  return v3;
}

- (void)updateWithConcreteTransactions:(id)a3 ephemeralTransaction:(id)a4 updatedPassTransitItems:(id)a5 paymentApplication:(id)a6
{
  v63 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__7;
  v59 = __Block_byref_object_dispose__7;
  v60 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__7;
  v49 = __Block_byref_object_dispose__7;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_10];
  v15 = [v12 filteredArrayUsingPredicate:v14];

  v16 = pk_General_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v18 = pk_General_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      *v62 = v10;
      *&v62[8] = 2112;
      *&v62[10] = v11;
      *&v62[18] = 2112;
      *&v62[20] = v12;
      *&v62[28] = 2112;
      *&v62[30] = v13;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: NPKPaymentView: updateWithConcreteTransactions:%@ ephemeralTransaction:%@ updatedPassTransitItems:%@ paymentApplication:%@", buf, 0x2Au);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __152__NPKContactlessPaymentSessionManagerTransactionContext_updateWithConcreteTransactions_ephemeralTransaction_updatedPassTransitItems_paymentApplication___block_invoke_384;
  aBlock[3] = &unk_279946D90;
  v37 = &v51;
  v38 = &v41;
  v39 = &v45;
  v19 = v13;
  v36 = v19;
  v40 = &v55;
  v20 = _Block_copy(aBlock);
  v21 = v20;
  if (v11)
  {
    (*(v20 + 2))(v20, v11);
  }

  else
  {
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __152__NPKContactlessPaymentSessionManagerTransactionContext_updateWithConcreteTransactions_ephemeralTransaction_updatedPassTransitItems_paymentApplication___block_invoke_402;
    v33 = &unk_279946DB8;
    v34 = v20;
    [v10 enumerateObjectsUsingBlock:&v30];
  }

  [(NPKContactlessPaymentSessionManagerTransactionContext *)self setPaymentTransaction:v56[5], v30, v31, v32, v33];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)self setTransactionType:v52[3]];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)self setTransactionDescription:v46[5]];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)self setDisplayablePassItems:v15];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)self setAction:v42[3]];
  v22 = pk_Payment_log();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

  if (v23)
  {
    v24 = pk_Payment_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(v52 + 6);
      v26 = [objc_opt_class() _NPKTransactionContextActionDescriptionForNPKTransactionContextAction:v42[3]];
      v27 = v46[5];
      v28 = v56[5];
      *buf = 67110146;
      *v62 = v25;
      *&v62[4] = 2112;
      *&v62[6] = v15;
      *&v62[14] = 2112;
      *&v62[16] = v26;
      *&v62[24] = 2112;
      *&v62[26] = v27;
      *&v62[34] = 2112;
      *&v62[36] = v28;
      _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_DEFAULT, "Notice: Transaction complete context: got transaction type %d displayable pass Items %@ action %@ transactionDescription:%@ transactions:%@", buf, 0x30u);
    }
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __152__NPKContactlessPaymentSessionManagerTransactionContext_updateWithConcreteTransactions_ephemeralTransaction_updatedPassTransitItems_paymentApplication___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_286D1AA50])
  {
    v3 = 1;
  }

  else if ([v2 conformsToProtocol:&unk_286D1ABC0])
  {
    v3 = [v2 isCountBasedCommutePlan];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __152__NPKContactlessPaymentSessionManagerTransactionContext_updateWithConcreteTransactions_ephemeralTransaction_updatedPassTransitItems_paymentApplication___block_invoke_384(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = pk_ui_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_ui_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 transitType];
      v9 = [v4 transitType];
      v10 = [v4 amount];
      v11 = [v4 amounts];
      v30 = 138413314;
      v31 = v4;
      v32 = 2048;
      v33 = v8;
      v34 = 2048;
      v35 = v9;
      v36 = 2112;
      v37 = v10;
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKPaymentView: Evaluate transaction %@ with type:%ld transitSubtype:%ld amount:%@ amounts: %@ ", &v30, 0x34u);
    }
  }

  if ([v4 transactionType] == 2)
  {
    v12 = [v4 transitType];
    v13 = *(*(a1 + 40) + 8);
    if (v12 == 1025)
    {
      *(v13 + 24) = 1;
      if (([v4 enRoute] & 1) == 0)
      {
        *(*(*(a1 + 48) + 8) + 24) = 2;
      }

      v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
      v15 = v14;
      v16 = @"TRANSIT_TRANSACTION_TITLE_GREEN_CAR";
      goto LABEL_14;
    }

    if (v12 == 257)
    {
      *(v13 + 24) = 2;
      if (([v4 enRoute] & 1) == 0)
      {
        *(*(*(a1 + 48) + 8) + 24) = 2;
      }

      v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
      v15 = v14;
      v16 = @"TRANSIT_TRANSACTION_TITLE_SHINKANSEN";
LABEL_14:
      v17 = [v14 localizedStringForKey:v16 value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];
      v18 = *(*(a1 + 56) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      goto LABEL_15;
    }

    if (!*(v13 + 24))
    {
      *(v13 + 24) = 3;
    }

    v21 = [v4 amount];
    if (v21)
    {
      v22 = v21;
      v23 = [v4 currencyCode];

      if (!v23)
      {
        v24 = [*(a1 + 32) appletCurrencyCode];
        [v4 setCurrencyCode:v24];
      }
    }

    v25 = [v4 amount];
    if (v25 && ([v4 currencyCode], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v27 = [v4 amounts];
      if (![v27 count])
      {
        v28 = [v4 plans];
        v29 = [v28 count];

        if (v25)
        {
        }

        if (!v29)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      if (!v25)
      {
LABEL_27:
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
LABEL_28:
        if ([v4 enRoute])
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }

        goto LABEL_15;
      }
    }

    goto LABEL_27;
  }

LABEL_15:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)forceToTransitTypeTransactionWithTransactionStatus:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = a3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Requested forceToTransitTypeTransactionWithTransactionStatus:%lu", &v9, 0xCu);
    }
  }

  if (a3 <= 5)
  {
    [(NPKContactlessPaymentSessionManagerTransactionContext *)self setTransactionStatus:qword_25B59A938[a3]];
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)_NPKTransactionContextActionDescriptionForNPKTransactionContextAction:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return @"None";
  }

  else
  {
    return off_279947090[a3 - 1];
  }
}

- (id)description
{
  v17.receiver = self;
  v17.super_class = NPKContactlessPaymentSessionManagerTransactionContext;
  v3 = [(NPKContactlessPaymentSessionManagerTransactionContext *)&v17 description];
  v4 = [v3 mutableCopy];

  v5 = [(NPKContactlessPaymentSessionManagerTransactionContext *)self transactionPass];
  v6 = [(NPKContactlessPaymentSessionManagerTransactionContext *)self valueAddedServicePass];
  v7 = [(NPKContactlessPaymentSessionManagerTransactionContext *)self transactionDescription];
  v8 = NSStringFromNPKContactlessPaymentSessionTransactionType([(NPKContactlessPaymentSessionManagerTransactionContext *)self transactionType]);
  v9 = [(NPKContactlessPaymentSessionManagerTransactionContext *)self transactionDescription];
  v10 = [(NPKContactlessPaymentSessionManagerTransactionContext *)self displayablePassItems];
  v11 = NSStringFromNPKTransactionContextStatus([(NPKContactlessPaymentSessionManagerTransactionContext *)self transactionStatus]);
  [v4 appendFormat:@" (transactionPass %@ valueAddedServicePass %@ paymentMethodDescription %@ transactionType %@ transactionDescription %@ displayablePassItems %@ transactionStatus: %@)\n", v5, v6, v7, v8, v9, v10, v11];

  v12 = [(NPKContactlessPaymentSessionManagerTransactionContext *)self paymentBarcode];
  [v4 appendFormat:@" (Barcode payment related: paymentBarcode %@ authentication requested %d)", v12, -[NPKContactlessPaymentSessionManagerTransactionContext authenticationRequested](self, "authenticationRequested")];

  v13 = NSStringFromNPKDataReleaseStatus([(NPKContactlessPaymentSessionManagerTransactionContext *)self releaseDataStatus]);
  [v4 appendFormat:@" (releaseDataStatus:%@)\n", v13];

  v14 = [objc_opt_class() _NPKTransactionContextActionDescriptionForNPKTransactionContextAction:{-[NPKContactlessPaymentSessionManagerTransactionContext action](self, "action")}];
  [v4 appendFormat:@" (Action :%@)", v14];
  v15 = [(NPKContactlessPaymentSessionManagerTransactionContext *)self accessory];
  [v4 appendFormat:@" (Accessory :%@)", v15];

  return v4;
}

@end