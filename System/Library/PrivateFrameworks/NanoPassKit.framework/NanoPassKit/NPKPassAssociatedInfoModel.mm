@interface NPKPassAssociatedInfoModel
+ (id)accountBalanceForAccount:(id)a3;
- (BOOL)_shouldAddCommutePlan:(id)a3 action:(id)a4 withBalancesByID:(id)a5;
- (BOOL)hasDeviceBoundCommutePlans;
- (BOOL)isEqual:(id)a3;
- (NPKPassAssociatedInfoModel)initWithPass:(id)a3 transitProperties:(id)a4 balances:(id)a5 commutePlanValueRequired:(BOOL)a6;
- (id)_actionWithIdentifier:(id)a3 type:(unint64_t)a4;
- (id)_actionWithIdentifiers:(id)a3 type:(unint64_t)a4;
- (id)_allPassBalanceFieldsWithBalancesByID:(id)a3;
- (id)_balanceByIDWithBalances:(id)a3;
- (id)_balanceFieldBalance:(id)a3 fieldIdentifier:(id)a4;
- (id)_balanceFieldsWithBalancesByID:(id)a3 passFields:(id)a4 maximumCount:(unint64_t)a5;
- (id)_balancePassFieldsFromPass:(id)a3;
- (id)_commutePlanFieldsWithBalancesByID:(id)a3 dynamicPlansByID:(id)a4;
- (id)_commutePlanWithFelicaPassProperties:(id)a3;
- (id)_commutePlansByIDWithPlans:(id)a3;
- (id)_fieldForCommutePlan:(id)a3 action:(id)a4 isLegacyPass:(BOOL)a5 balancedByID:(id)a6;
- (id)_formattedValueWithCommutePlan:(id)a3 balancesByID:(id)a4;
- (id)_identifierFromAction:(id)a3 type:(unint64_t)a4;
- (id)_primaryDisplayableBalanceFieldWithBalancesByID:(id)a3;
- (id)_rawCountValueWithCommutePlan:(id)a3 balancesByID:(id)a4;
- (id)description;
- (void)setBalances:(id)a3;
- (void)setCommutePlanValueRequired:(BOOL)a3;
- (void)setDynamicPlans:(id)a3;
- (void)setTiles:(id)a3;
- (void)setTransitPassProperties:(id)a3;
- (void)updateItemFields;
@end

@implementation NPKPassAssociatedInfoModel

+ (id)accountBalanceForAccount:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 feature] == 4)
  {
    v4 = [v3 appleBalanceDetails];
    v5 = [v4 currentBalance];

    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277D38008]) initWithIdentifier:@"account-balance-identifier" forCurrencyAmount:v5];
    }

    else
    {
      v7 = pk_General_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

      if (v8)
      {
        v9 = pk_General_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v3 accountIdentifier];
          v11 = [v3 appleBalanceDetails];
          v14 = 138412546;
          v15 = v10;
          v16 = 2112;
          v17 = v11;
          _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Account apple balance not available for account with identifier %@, account details: %@", &v14, 0x16u);
        }
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NPKPassAssociatedInfoModel)initWithPass:(id)a3 transitProperties:(id)a4 balances:(id)a5 commutePlanValueRequired:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v20.receiver = self;
  v20.super_class = NPKPassAssociatedInfoModel;
  v14 = [(NPKPassAssociatedInfoModel *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_pass, a3);
    v16 = v12;
    if (!v12)
    {
      v16 = [MEMORY[0x277D38310] passPropertiesForPass:v11];
    }

    v17 = [v16 copy];
    transitPassProperties = v15->_transitPassProperties;
    v15->_transitPassProperties = v17;

    if (!v12)
    {
    }

    objc_storeStrong(&v15->_balances, a5);
    v15->_commutePlanValueRequired = a6;
    [(NPKPassAssociatedInfoModel *)v15 updateItemFields];
  }

  return v15;
}

- (void)setTransitPassProperties:(id)a3
{
  if (self->_transitPassProperties != a3)
  {
    v5 = [a3 copy];
    transitPassProperties = self->_transitPassProperties;
    self->_transitPassProperties = v5;

    [(NPKPassAssociatedInfoModel *)self updateItemFields];
  }
}

- (void)setBalances:(id)a3
{
  if (self->_balances != a3)
  {
    v5 = [a3 copy];
    balances = self->_balances;
    self->_balances = v5;

    [(NPKPassAssociatedInfoModel *)self updateItemFields];
  }
}

- (void)setDynamicPlans:(id)a3
{
  if (self->_dynamicPlans != a3)
  {
    v5 = [a3 copy];
    dynamicPlans = self->_dynamicPlans;
    self->_dynamicPlans = v5;

    [(NPKPassAssociatedInfoModel *)self updateItemFields];
  }
}

- (void)setCommutePlanValueRequired:(BOOL)a3
{
  if (self->_commutePlanValueRequired != a3)
  {
    self->_commutePlanValueRequired = a3;
    [(NPKPassAssociatedInfoModel *)self updateItemFields];
  }
}

- (void)setTiles:(id)a3
{
  if (self->_tiles != a3)
  {
    v5 = [a3 copy];
    tiles = self->_tiles;
    self->_tiles = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PKPaymentPass *)self->_pass uniqueID];
      v7 = [(PKPaymentPass *)v5->_pass uniqueID];
      if (NPKIsEqual(v6, v7) && NPKIsEqual(self->_balanceFields, v5->_balanceFields) && NPKIsEqual(self->_balances, v5->_balances) && NPKIsEqual(self->_transitPassProperties, v5->_transitPassProperties) && NPKIsEqual(self->_transitAppletState, v5->_transitAppletState) && NPKIsEqual(self->_tiles, v5->_tiles) && NPKIsEqual(self->_dynamicPlans, v5->_dynamicPlans) && self->_rangingSuspensionReason == v5->_rangingSuspensionReason)
      {
        v8 = NPKIsEqual(self->_precursorPassDescription, v5->_precursorPassDescription);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)hasDeviceBoundCommutePlans
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(NPKPassAssociatedInfoModel *)self commutePlanFields];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isDeviceBound])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)updateItemFields
{
  v3 = [(NPKPassAssociatedInfoModel *)self _balanceByIDWithBalances:self->_balances];
  v4 = [(NPKPassAssociatedInfoModel *)self _commutePlansByIDWithPlans:self->_dynamicPlans];
  v5 = [(NPKPassAssociatedInfoModel *)self _primaryDisplayableBalanceFieldWithBalancesByID:v3];
  v6 = [(NPKPassAssociatedInfoModel *)self _allPassBalanceFieldsWithBalancesByID:v3];
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x277CBEB18] array];
    [v8 addObject:v5];
    v9 = [v5 identifier];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __46__NPKPassAssociatedInfoModel_updateItemFields__block_invoke;
    v23 = &unk_279948E70;
    v24 = v9;
    v25 = v8;
    v10 = v8;
    v11 = v9;
    [v7 enumerateObjectsUsingBlock:&v20];
    v12 = [v10 copy];
    balanceFields = self->_balanceFields;
    self->_balanceFields = v12;
  }

  else
  {
    v14 = [v6 copy];
    v15 = self->_balanceFields;
    self->_balanceFields = v14;
  }

  v16 = [(NPKPassAssociatedInfoModel *)self _commutePlanFieldsWithBalancesByID:v3 dynamicPlansByID:v4];
  commutePlanFields = self->_commutePlanFields;
  self->_commutePlanFields = v16;

  v18 = MEMORY[0x277D37F98];
  v19 = [(PKPaymentPass *)self->_pass uniqueID];
  [v18 npkClearTransitValuePendingStateIfNecessaryForPassWithID:v19 withBalanceFields:self->_balanceFields commutePlanFields:self->_commutePlanFields];
}

void __46__NPKPassAssociatedInfoModel_updateItemFields__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 identifier];
  LOBYTE(v4) = [v4 isEqualToString:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (id)_primaryDisplayableBalanceFieldWithBalancesByID:(id)a3
{
  v4 = a3;
  if ([(PKPaymentPass *)self->_pass isContentLoaded]&& [(PKPaymentPass *)self->_pass isStoredValuePass])
  {
    v5 = [(NPKPassAssociatedInfoModel *)self _balancePassFieldsFromPass:self->_pass];
    v6 = [(NPKPassAssociatedInfoModel *)self _balanceFieldsWithBalancesByID:v4 passFields:v5 maximumCount:1];

    if ([v6 count])
    {
      v7 = [v6 firstObject];
LABEL_7:
      v8 = v7;
      goto LABEL_9;
    }
  }

  else
  {
    v6 = [v4 objectForKey:@"account-balance-identifier"];
    if (v6)
    {
      v7 = [(NPKPassAssociatedInfoModel *)self _balanceFieldBalance:v6 fieldIdentifier:@"account-balance-item"];
      goto LABEL_7;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)_allPassBalanceFieldsWithBalancesByID:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  if ([(PKPaymentPass *)self->_pass isContentLoaded])
  {
    v6 = [(NPKPassAssociatedInfoModel *)self _balancePassFieldsFromPass:self->_pass];
    v7 = [(NPKPassAssociatedInfoModel *)self _balanceFieldsWithBalancesByID:v4 passFields:v6 maximumCount:0];
    [v5 addObjectsFromArray:v7];
  }

  return v5;
}

- (id)_balanceFieldBalance:(id)a3 fieldIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NPKBalanceField alloc];
  v8 = PKLocalizedAppleBalanceString(&cfstr_PassBalanceTit.isa);
  v9 = [v6 formattedValue];
  v10 = [(NPKBalanceField *)v7 initWithBalance:v6 label:v8 formattedValue:v9 identifier:v5 primaryBalance:1 action:0 pendingUpdateExpireDate:0];

  return v10;
}

- (id)_balanceFieldsWithBalancesByID:(id)a3 passFields:(id)a4 maximumCount:(unint64_t)a5
{
  v61 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = *MEMORY[0x277D38850];
  v12 = [v8 objectForKey:*MEMORY[0x277D38850]];
  v13 = v12;
  v49 = v12 == 0;
  v46 = self;
  v47 = a5;
  v43 = v9;
  if (v12)
  {
    pass = self->_pass;
    v15 = [v12 value];
    v16 = [(PKPaymentPass *)pass npkPendingAddValueStateExpireDateForBalanceFieldWithIdentifier:v11 currentBalance:v15];

    v17 = [(NPKPassAssociatedInfoModel *)self _actionWithIdentifier:0 type:1];
    v18 = [NPKBalanceField alloc];
    v19 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
    v20 = [v19 localizedStringForKey:@"PASS_DETAILS_HEADER_TRANSIT_BALANCE" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];
    v21 = [v13 formattedValue];
    v22 = [(NPKBalanceField *)v18 initWithBalance:v13 label:v20 formattedValue:v21 identifier:v11 primaryBalance:1 action:v17 pendingUpdateExpireDate:v16];

    self = v46;
    [v10 addObject:v22];

    a5 = v47;
    v9 = v43;
  }

  if ([v8 count])
  {
    v42 = v13;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v23 = v9;
    v24 = [v23 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v56;
      v44 = v23;
      v45 = v10;
      v48 = *v56;
      while (2)
      {
        v27 = 0;
        v50 = v25;
        do
        {
          if (*v56 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v55 + 1) + 8 * v27);
          if ([v28 foreignReferenceType])
          {
            v29 = [v28 foreignReferenceIdentifiers];
            if (v29)
            {
              v30 = v29;
              if ([v29 count] == 1)
              {
                v31 = [v30 anyObject];
                v32 = [v8 objectForKeyedSubscript:v31];
              }

              else
              {
                v31 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v30, "count")}];
                v51 = 0u;
                v52 = 0u;
                v53 = 0u;
                v54 = 0u;
                v33 = v30;
                v34 = [v33 countByEnumeratingWithState:&v51 objects:v59 count:16];
                if (v34)
                {
                  v35 = v34;
                  v36 = *v52;
                  do
                  {
                    for (i = 0; i != v35; ++i)
                    {
                      if (*v52 != v36)
                      {
                        objc_enumerationMutation(v33);
                      }

                      v38 = [v8 objectForKeyedSubscript:*(*(&v51 + 1) + 8 * i)];
                      [v31 npkSafelyAddObject:v38];
                    }

                    v35 = [v33 countByEnumeratingWithState:&v51 objects:v59 count:16];
                  }

                  while (v35);
                }

                v32 = [objc_alloc(MEMORY[0x277D38008]) initWithComponentBalances:v31 identifiers:v33];
                v10 = v45;
                self = v46;
                a5 = v47;
                v23 = v44;
              }

              if (v32)
              {
                v39 = [(NPKPassAssociatedInfoModel *)self _balanceFieldWithPassField:v28 balance:v32 isPrimaryBalance:v49];
                if (v39)
                {
                  [v10 addObject:v39];
                  v49 = 0;
                }

                if (a5 && [v10 count] >= a5)
                {

                  goto LABEL_32;
                }
              }

              v26 = v48;
              v25 = v50;
            }
          }

          ++v27;
        }

        while (v27 != v25);
        v25 = [v23 countByEnumeratingWithState:&v55 objects:v60 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

LABEL_32:

    v13 = v42;
    v9 = v43;
  }

  v40 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_balanceByIDWithBalances:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__NPKPassAssociatedInfoModel__balanceByIDWithBalances___block_invoke;
  v8[3] = &unk_279948E98;
  v6 = v5;
  v9 = v6;
  [v4 enumerateObjectsUsingBlock:v8];

  return v6;
}

void __55__NPKPassAssociatedInfoModel__balanceByIDWithBalances___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 identifiers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (([v3 isExpired] & 1) == 0)
        {
          [*(a1 + 32) setObject:v3 forKeyedSubscript:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_commutePlansByIDWithPlans:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 uniqueIdentifier];
        [v4 setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_commutePlanFieldsWithBalancesByID:(id)a3 dynamicPlansByID:(id)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(PKPaymentPass *)self->_pass isTransitPass])
  {
    v50 = MEMORY[0x277CBEBF8];
    goto LABEL_28;
  }

  v50 = [MEMORY[0x277CBEB18] array];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [(NPKPassAssociatedInfoModel *)self pass];
  v47 = [v10 transitCommutePlanType];

  v11 = [(NPKPassAssociatedInfoModel *)self pass];
  v12 = [v11 transitCommutePlans];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __82__NPKPassAssociatedInfoModel__commutePlanFieldsWithBalancesByID_dynamicPlansByID___block_invoke;
  v59[3] = &unk_279948EC0;
  v59[4] = self;
  v13 = v6;
  v60 = v13;
  v14 = v9;
  v61 = v14;
  v49 = v7;
  v62 = v7;
  v15 = v8;
  v63 = v15;
  [v12 enumerateObjectsUsingBlock:v59];

  v48 = v15;
  if ([v14 count])
  {
    v57 = 0uLL;
    v58 = 0uLL;
    v55 = 0uLL;
    v56 = 0uLL;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v45 = v14;
    v46 = v6;
    v19 = *v56;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v56 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v55 + 1) + 8 * i);
        v22 = [v21 identifier];
        v23 = [(NPKPassAssociatedInfoModel *)self _actionWithIdentifier:v22 type:2];

        v24 = [(NPKPassAssociatedInfoModel *)self pass];
        v25 = [v24 transitCommutePlanType];

        if ([(NPKPassAssociatedInfoModel *)self _shouldAddCommutePlan:v21 action:v23 withBalancesByID:v13])
        {
          v26 = [(NPKPassAssociatedInfoModel *)self _fieldForCommutePlan:v21 action:v23 isLegacyPass:v25 == 1 balancedByID:v13];
          [v50 addObject:v26];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v18);
  }

  else
  {
    v53 = 0uLL;
    v54 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v16 = v15;
    v27 = [v16 countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (!v27)
    {
      goto LABEL_24;
    }

    v28 = v27;
    v45 = v14;
    v46 = v6;
    v29 = *v52;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v52 != v29)
        {
          objc_enumerationMutation(v16);
        }

        v31 = *(*(&v51 + 1) + 8 * j);
        v32 = [v31 identifier];
        v33 = [(NPKPassAssociatedInfoModel *)self _actionWithIdentifier:v32 type:2];

        v34 = [(NPKPassAssociatedInfoModel *)self pass];
        v35 = [v34 transitCommutePlanType];

        if ([(NPKPassAssociatedInfoModel *)self _shouldAddCommutePlan:v31 action:v33 withBalancesByID:v13])
        {
          v36 = [(NPKPassAssociatedInfoModel *)self _fieldForCommutePlan:v31 action:v33 isLegacyPass:v35 == 1 balancedByID:v13];
          [v50 addObject:v36];
        }
      }

      v28 = [v16 countByEnumeratingWithState:&v51 objects:v64 count:16];
    }

    while (v28);
  }

  v14 = v45;
  v6 = v46;
LABEL_24:

  v7 = v49;
  if (v47 == 1 || (-[NPKPassAssociatedInfoModel pass](self, "pass"), v37 = objc_claimAutoreleasedReturnValue(), [v37 transitCommutePlans], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "count"), v38, v37, !v39))
  {
    v40 = [(NPKPassAssociatedInfoModel *)self transitPassProperties];
    v41 = [v40 felicaProperties];
    v42 = [(NPKPassAssociatedInfoModel *)self _commutePlanWithFelicaPassProperties:v41];
    [v50 addObjectsFromArray:v42];
  }

LABEL_28:
  v43 = *MEMORY[0x277D85DE8];

  return v50;
}

void __82__NPKPassAssociatedInfoModel__commutePlanFieldsWithBalancesByID_dynamicPlansByID___block_invoke(id *a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 identifier];
  v6 = [v4 _actionWithIdentifier:v5 type:2];

  if ([v3 requiresAppletSourceOfTruth])
  {
    v31 = v6;
    v30 = [v3 passFieldForKey:*MEMORY[0x277D38A00]];
    [v30 foreignReferenceIdentifiers];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = v39 = 0u;
    v7 = [v29 allObjects];
    v8 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v8;
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [a1[5] objectForKeyedSubscript:*(*(&v36 + 1) + 8 * i)];

        if (v12)
        {
          [a1[6] addObject:v3];
          goto LABEL_14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v9);
LABEL_14:

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = a1;
    v14 = [a1[7] allValues];
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (!v15)
    {
      goto LABEL_32;
    }

    v16 = v15;
    v17 = *v33;
LABEL_16:
    v18 = 0;
    while (1)
    {
      if (*v33 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v32 + 1) + 8 * v18);
      v20 = [v3 identifier];
      v21 = [v19 identifier];
      v22 = v20;
      v23 = v21;
      v24 = v23;
      if (v22 == v23)
      {
        break;
      }

      if (v22 && v23)
      {
        v25 = [v22 isEqualToString:v23];

        if ((v25 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }

LABEL_29:
LABEL_30:
      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (!v16)
        {
LABEL_32:

          v6 = v31;
          goto LABEL_33;
        }

        goto LABEL_16;
      }
    }

LABEL_25:
    v22 = [v3 updateWithCommutePlanDetail:v19];
    [v31 setAssociatedPlan:v22];
    v26 = [v22 hasExpiredPlanDate];
    v27 = 6;
    if (v26)
    {
      v27 = 8;
    }

    [v13[v27] addObject:v22];
    goto LABEL_29;
  }

  if ([a1[4] _shouldAddCommutePlan:v3 action:v6 withBalancesByID:a1[5]])
  {
    [a1[6] addObject:v3];
  }

LABEL_33:

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_fieldForCommutePlan:(id)a3 action:(id)a4 isLegacyPass:(BOOL)a5 balancedByID:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v37 = a4;
  v11 = a6;
  v12 = [v10 title];
  v13 = v12;
  if (a5)
  {
    v14 = [v12 value];

    v15 = [v10 title];
    [v15 label];
  }

  else
  {
    v14 = [v12 label];

    v15 = [v10 title];
    [v15 value];
  }
  v36 = ;

  v16 = [NPKDateRange alloc];
  v17 = [v10 startDate];
  v18 = [v10 expiryDate];
  v35 = [(NPKDateRange *)v16 initWithStartDate:v17 expirationDate:v18 formatterStyle:3];

  v19 = [(NPKPassAssociatedInfoModel *)self _rawCountValueWithCommutePlan:v10 balancesByID:v11];
  pass = self->_pass;
  v21 = [v10 uniqueIdentifier];
  v22 = [v10 expiryDate];
  v23 = [(PKPaymentPass *)pass npkPendingAddValueStateExpireDateForCommutePlanFieldWithIdentifier:v21 expiryDate:v22 rawCountValue:v19];

  v24 = pk_General_log();
  LODWORD(v21) = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

  if (v21)
  {
    v25 = pk_General_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v39 = v14;
      v40 = 2112;
      v41 = v19;
      v42 = 2112;
      v43 = v23;
      _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: Creating commute plan field with label: %@, tripCount: %@, pendingUpdateExpireDate: %@", buf, 0x20u);
    }
  }

  v26 = [NPKCommutePlanField alloc];
  v27 = [(NPKPassAssociatedInfoModel *)self _formattedValueWithCommutePlan:v10 balancesByID:v11];
  [v10 uniqueIdentifier];
  v29 = v28 = v14;
  v30 = [v10 details];
  LOBYTE(v33) = [v10 isDeviceBound];
  v34 = [(NPKCommutePlanField *)v26 initWithLabel:v28 detailLabel:v36 formattedValue:v27 rawCountValue:v19 usageDateRange:v35 identifier:v29 details:v30 action:v37 isDeviceBound:v33 pendingUpdateExpireDate:v23];

  v31 = *MEMORY[0x277D85DE8];

  return v34;
}

- (BOOL)_shouldAddCommutePlan:(id)a3 action:(id)a4 withBalancesByID:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 properties];
  v12 = [v8 expiryDate];
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = (v11 & 1) == 0;
  v14 = [v8 expiryDate];
  v15 = [MEMORY[0x277CBEAA8] now];
  v16 = [v14 compare:v15];

  v17 = v16 == 1 || v13;
  if (v17 & 1) != 0 || ([v9 isActionAvailable] & 1) != 0 || (objc_msgSend(v8, "isPlanDisplayable"))
  {
LABEL_9:
    if (-[NPKPassAssociatedInfoModel isCommutePlanValueRequired](self, "isCommutePlanValueRequired") && ([v8 properties] & 4) != 0)
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = 0;
      *v47 = 0;
      *&v47[8] = v47;
      *&v47[16] = 0x3032000000;
      v48 = __Block_byref_object_copy__17;
      v49 = __Block_byref_object_dispose__17;
      v50 = objc_alloc_init(MEMORY[0x277CCAB68]);
      v19 = [v8 details];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __76__NPKPassAssociatedInfoModel__shouldAddCommutePlan_action_withBalancesByID___block_invoke;
      v34[3] = &unk_279948EE8;
      v37 = v47;
      v38 = &v39;
      v35 = v10;
      v36 = v9;
      [v19 enumerateObjectsUsingBlock:v34];

      if ((v40[3] & 1) == 0)
      {
        v20 = pk_General_log();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

        if (v21)
        {
          v22 = pk_General_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v8 identifier];
            v24 = *(*&v47[8] + 40);
            *buf = 138412546;
            v44 = v23;
            v45 = 2112;
            v46 = v24;
            _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoModel: should not add commute plan with identifier:%@. decision detail: %@", buf, 0x16u);
          }
        }
      }

      v18 = *(v40 + 24);

      _Block_object_dispose(v47, 8);
      _Block_object_dispose(&v39, 8);
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v25 = MEMORY[0x277CCACA8];
    v26 = [v8 expiryDate];
    v27 = [v25 stringWithFormat:@" is timed commute plan:%d, is expired:%d, expiry date:%@, is action available:%d", 1, 1, v26, objc_msgSend(v9, "isActionAvailable")];

    v28 = pk_General_log();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

    if (v29)
    {
      v30 = pk_General_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v8 identifier];
        *v47 = 138412546;
        *&v47[4] = v31;
        *&v47[12] = 2112;
        *&v47[14] = v27;
        _os_log_impl(&dword_25B300000, v30, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoModel: should not add commute plan with identifier:%@. decision detail:%@", v47, 0x16u);
      }
    }

    v18 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

void __76__NPKPassAssociatedInfoModel__shouldAddCommutePlan_action_withBalancesByID___block_invoke(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(*(*(a1 + 48) + 8) + 40);
  v8 = MEMORY[0x277CCACA8];
  v9 = [v6 key];
  v10 = [v6 label];
  v11 = [v6 value];
  v12 = [v6 foreignReferenceIdentifiers];
  v13 = [v8 stringWithFormat:@"\nverifying pass field with key - label - value - fRefID:%@ - %@ - %@ - %@.", v9, v10, v11, v12];
  [v7 appendString:v13];

  [v6 foreignReferenceIdentifiers];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v27 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        if (([v6 foreignReferenceType] - 1) <= 1)
        {
          v20 = [*(a1 + 32) objectForKeyedSubscript:v19];
          v21 = [v20 value];
          *(*(*(a1 + 56) + 8) + 24) = v21 != 0;

          if (*(*(*(a1 + 56) + 8) + 24) & 1) != 0 || ([*(*(*(a1 + 48) + 8) + 40) appendString:@" balance by ID no value."], *(*(*(a1 + 56) + 8) + 24) = objc_msgSend(*(a1 + 40), "isActionAvailable"), (*(*(*(a1 + 56) + 8) + 24)))
          {
            v22 = 1;
          }

          else
          {
            [*(*(*(a1 + 48) + 8) + 40) appendString:@" action is not available."];
            v22 = *(*(*(a1 + 56) + 8) + 24);
          }

          *a4 = v22;
          goto LABEL_15;
        }

        if (a4)
        {
          goto LABEL_15;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_formattedValueWithCommutePlan:(id)a3 balancesByID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v5 properties] & 4) != 0)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__17;
    v17 = __Block_byref_object_dispose__17;
    v18 = 0;
    v8 = [v5 details];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__NPKPassAssociatedInfoModel__formattedValueWithCommutePlan_balancesByID___block_invoke;
    v10[3] = &unk_279948F10;
    v11 = v6;
    v12 = &v13;
    [v8 enumerateObjectsUsingBlock:v10];

    v7 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __74__NPKPassAssociatedInfoModel__formattedValueWithCommutePlan_balancesByID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 foreignReferenceIdentifiers];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if (([v5 foreignReferenceType] - 1) <= 1)
        {
          v12 = [*(a1 + 32) objectForKeyedSubscript:v11];
          v13 = [v12 value];

          if (!v13)
          {
            v14 = pk_General_log();
            v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

            v13 = &unk_286CE7750;
            if (v15)
            {
              v16 = pk_General_log();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = [*(a1 + 32) objectForKeyedSubscript:v11];
                *buf = 138412546;
                v29 = v5;
                v30 = 2112;
                v31 = v17;
                _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoModel: Using default balance value 0 for field:%@ balance:%@", buf, 0x16u);
              }

              v13 = &unk_286CE7750;
            }
          }

          [v5 unitType];
          v18 = PKLocalizedPaymentUnitKeyForType();
          if (v18)
          {
            PKLocalizedPaymentString(v18, &cfstr_Lu_0.isa, [v13 unsignedLongValue]);
          }

          else
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v13, "integerValue")];
          }
          v19 = ;
          v20 = *(*(a1 + 40) + 8);
          v21 = *(v20 + 40);
          *(v20 + 40) = v19;

          *a4 = 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v8);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_rawCountValueWithCommutePlan:(id)a3 balancesByID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__17;
  v17 = __Block_byref_object_dispose__17;
  v18 = 0;
  if (([v5 properties] & 4) != 0)
  {
    v8 = [v5 details];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__NPKPassAssociatedInfoModel__rawCountValueWithCommutePlan_balancesByID___block_invoke;
    v10[3] = &unk_279948F38;
    v12 = &v13;
    v11 = v6;
    [v8 enumerateObjectsUsingBlock:v10];

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __73__NPKPassAssociatedInfoModel__rawCountValueWithCommutePlan_balancesByID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  [v6 foreignReferenceIdentifiers];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v21 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      if (([v6 foreignReferenceType] - 1) <= 1)
      {
        v13 = [*(a1 + 32) objectForKeyedSubscript:v12];
        v14 = [v13 value];
        v15 = *(*(a1 + 40) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;

        *a4 = 1;
      }

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_commutePlanWithFelicaPassProperties:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = v4;
  if (!v3)
  {
    goto LABEL_21;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__NPKPassAssociatedInfoModel__commutePlanWithFelicaPassProperties___block_invoke;
  aBlock[3] = &unk_279948F60;
  v67 = v4;
  v72 = v67;
  v6 = _Block_copy(aBlock);
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v3 hasShinkansenTicket];
      *buf = 67109120;
      v74 = v10;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKTransitBalanceModel: has Shinkansen ticket:%d", buf, 8u);
    }
  }

  v68 = v5;
  v66 = v6;
  if ([v3 hasShinkansenTicket])
  {
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __67__NPKPassAssociatedInfoModel__commutePlanWithFelicaPassProperties___block_invoke_112;
    v69[3] = &unk_279948F88;
    v70 = v6;
    v63 = _Block_copy(v69);
    v11 = [v3 shinkansenValidityTerm];
    v12 = [v3 shinkansenValidityStartDate];
    v13 = [v12 calendar];
    v59 = v11;
    v14 = [v11 integerValue];
    v58 = v12;
    v15 = [v12 date];
    v57 = v13;
    v16 = [v13 dateByAddingUnit:16 value:v14 toDate:v15 options:0];

    v56 = [v3 shinkansenValidityStartDate];
    v17 = [v56 date];
    v18 = [v3 shinkansenOriginStation];
    v19 = [v3 shinkansenDestinationStation];
    v20 = [v3 shinkansenDepartureTime];
    v21 = [v3 shinkansenArrivalTime];
    v22 = [v3 shinkansenTrainName];
    v23 = [v3 shinkansenCarNumber];
    v24 = [v3 displayableShinkansenSeat];
    v61 = v16;
    v63[2](v63, v17, v18, v19, v20, v21, v22, v23, v24, v16, [v3 isShinkansenTicketActive]);

    v25 = [v3 shinkansenSecondaryOriginStation];
    if (v25 || ([v3 shinkansenSecondaryDestinationStation], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
    {

      v26 = v63;
    }

    else
    {
      v54 = [v3 shinkansenSecondaryTrainName];

      v26 = v63;
      if (!v54)
      {
        goto LABEL_11;
      }
    }

    v64 = [v3 shinkansenValidityStartDate];
    v27 = [v64 date];
    v28 = [v3 shinkansenSecondaryOriginStation];
    v29 = [v3 shinkansenSecondaryDestinationStation];
    v30 = [v3 shinkansenSecondaryDepartureTime];
    v31 = [v3 shinkansenSecondaryArrivalTime];
    v32 = [v3 shinkansenSecondaryTrainName];
    v33 = [v3 shinkansenSecondaryCarNumber];
    v34 = [v3 displayableShinkansenSecondarySeat];
    LOBYTE(v55) = [v3 isShinkansenTicketActive];
    (v26)[2](v26, v27, v28, v29, v30, v31, v32, v33, v34, v61, v55);

LABEL_11:
    v6 = v66;
  }

  v35 = pk_General_log();
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

  if (v36)
  {
    v37 = pk_General_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v3 hasGreenCarTicket];
      *buf = 67109120;
      v74 = v38;
      _os_log_impl(&dword_25B300000, v37, OS_LOG_TYPE_DEFAULT, "Notice: NPKTransitBalanceModel: has Green Car ticket ticket:%d", buf, 8u);
    }
  }

  if ([v3 hasGreenCarTicket])
  {
    v39 = [MEMORY[0x277CBEB18] array];
    v40 = [v3 greenCarValidityStartDate];
    v41 = [v40 calendar];
    v60 = v40;
    v42 = [v40 date];
    v65 = v41;
    v62 = [v41 dateByAddingUnit:16 value:1 toDate:v42 options:0];

    v43 = [v3 greenCarOriginStation];
    v44 = [v3 greenCarDestinationStation];
    v45 = __NPKRouteDescriptionForStations(v43, v44);
    if (v45)
    {
      [v39 addObject:v45];
    }

    v46 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
    v47 = [v46 localizedStringForKey:@"PASS_DETAILS_HEADER_GREEN_CAR_UPGRADE" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];

    v48 = [v39 componentsJoinedByString:@"\n"];
    v49 = [v3 greenCarValidityStartDate];
    v50 = [v49 date];

    v6 = v66;
    v66[2](v66, v47, v48, v50, v62);
  }

  v51 = v67;

  v5 = v68;
LABEL_21:

  v52 = *MEMORY[0x277D85DE8];

  return v5;
}

void __67__NPKPassAssociatedInfoModel__commutePlanWithFelicaPassProperties___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v20 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11 || ([MEMORY[0x277CBEAA8] now], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "compare:", v11), v12, v13 != 1))
  {
    v14 = [[NPKDateRange alloc] initWithStartDate:v10 expirationDate:v11 formatterStyle:3];
    v15 = [NPKCommutePlanField alloc];
    v16 = [MEMORY[0x277CCAD78] UUID];
    v17 = [v16 UUIDString];
    LOBYTE(v19) = 0;
    v18 = [(NPKCommutePlanField *)v15 initWithLabel:v20 detailLabel:v9 formattedValue:0 rawCountValue:0 usageDateRange:v14 identifier:v17 details:0 action:0 isDeviceBound:v19 pendingUpdateExpireDate:0];

    [*(a1 + 32) addObject:v18];
  }
}

void __67__NPKPassAssociatedInfoModel__commutePlanWithFelicaPassProperties___block_invoke_112(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, char a11)
{
  v65 = a3;
  v17 = a4;
  v64 = a5;
  v63 = a6;
  v62 = a7;
  v66 = a8;
  v18 = a9;
  v19 = a10;
  v20 = MEMORY[0x277CBEAA8];
  v58 = a2;
  v21 = [v20 date];
  v59 = v19;
  v22 = [v21 compare:v19];

  v23 = [MEMORY[0x277CBEB18] array];
  if (v22 == -1 && (a11 & 1) == 0)
  {
    v24 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
    v25 = [v24 localizedStringForKey:@"PASS_DETAILS_STATUS_VALUE_INACTIVE" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];
    [v23 addObject:v25];
  }

  v26 = v18;
  v27 = __NPKRouteDescriptionForStations(v65, v17);
  if (v27)
  {
    [v23 addObject:v27];
  }

  [v64 date];
  v61 = v28 = v66;
  if (v61)
  {
    v29 = v17;
    v30 = [MEMORY[0x277CCA968] localizedStringFromDate:v61 dateStyle:0 timeStyle:1];
    v31 = MEMORY[0x277CCACA8];
    v32 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
    v33 = [v32 localizedStringForKey:@"PASS_DETAILS_VALUE_DEPARTURE_TIME" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];
    v34 = [v31 stringWithFormat:v33, v30];

    if (v34)
    {
      [v23 addObject:v34];
    }

    v17 = v29;
  }

  v35 = [v63 date];
  if (v35)
  {
    v36 = v17;
    v37 = [MEMORY[0x277CCA968] localizedStringFromDate:v35 dateStyle:0 timeStyle:1];
    v38 = MEMORY[0x277CCACA8];
    v39 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
    v40 = [v39 localizedStringForKey:@"PASS_DETAILS_VALUE_ARRIVAL_TIME" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];
    v41 = [v38 stringWithFormat:v40, v37];

    if (v41)
    {
      [v23 addObject:v41];
    }

    v17 = v36;
    v28 = v66;
  }

  v42 = v62;
  if (v62)
  {
    [v23 addObject:v62];
  }

  v43 = v26;
  if (v28)
  {
    v44 = MEMORY[0x277CCACA8];
    v45 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
    v46 = [v45 localizedStringForKey:@"PASS_DETAILS_VALUE_CAR_ASSIGNMENT" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];
    v47 = [v28 stringValue];
    v48 = [v44 stringWithFormat:v46, v47];

    if (v48)
    {
      [v23 addObject:v48];
    }

    v42 = v62;
    v43 = v26;
  }

  if (v43)
  {
    v49 = MEMORY[0x277CCACA8];
    v50 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
    v51 = [v50 localizedStringForKey:@"PASS_DETAILS_VALUE_SEAT_ASSIGNMENT" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];
    v52 = v43;
    v53 = v51;
    v54 = [v49 stringWithFormat:v51, v52];

    if (v54)
    {
      [v23 addObject:v54];
    }

    v43 = v26;
  }

  v55 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
  v56 = [v55 localizedStringForKey:@"PASS_DETAILS_HEADER_SHINKANSEN" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];

  v57 = [v23 componentsJoinedByString:@"\n"];
  (*(*(a1 + 32) + 16))();
}

- (id)_actionWithIdentifier:(id)a3 type:(unint64_t)a4
{
  if (a3)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObject:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NPKPassAssociatedInfoModel *)self _actionWithIdentifiers:v6 type:a4];

  return v7;
}

- (id)_actionWithIdentifiers:(id)a3 type:(unint64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(PKPaymentPass *)self->_pass availableActions];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(NPKPassAssociatedInfoModel *)self _identifierFromAction:v12 type:a4];
        if ([v12 type] == a4 && (!v6 || (objc_msgSend(v6, "containsObject:", v13) & 1) != 0))
        {
          v14 = v12;

          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_identifierFromAction:(id)a3 type:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 2)
  {
    v7 = [v5 associatedPlanIdentifier];
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v7 = [v5 associatedEnteredValueIdentifier];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)_balancePassFieldsFromPass:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isStoredValuePass])
  {
    v32 = [v3 balanceFields];
  }

  else
  {
    v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([v3 isAccessPass])
    {
      v4 = [v3 balanceFields];
      v5 = [v4 count];

      if (v5)
      {
        v6 = [v3 balanceFields];
        [v32 addObjectsFromArray:v6];
      }
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = [v3 frontFieldBuckets];
    [v7 addObjectsFromArray:v8];

    v27 = v3;
    v9 = [v3 backFieldBuckets];
    [v7 addObjectsFromArray:v9];

    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v7;
    v30 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v30)
    {
      v29 = *v44;
      do
      {
        v11 = 0;
        do
        {
          if (*v44 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = v11;
          v12 = *(*(&v43 + 1) + 8 * v11);
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v34 = v12;
          v13 = [v34 countByEnumeratingWithState:&v39 objects:v48 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v40;
            do
            {
              v16 = 0;
              v33 = v14;
              do
              {
                if (*v40 != v15)
                {
                  objc_enumerationMutation(v34);
                }

                v17 = *(*(&v39 + 1) + 8 * v16);
                if ([v17 foreignReferenceType] == 1)
                {
                  v18 = [v17 foreignReferenceIdentifiers];
                  v35 = 0u;
                  v36 = 0u;
                  v37 = 0u;
                  v38 = 0u;
                  v19 = [v18 countByEnumeratingWithState:&v35 objects:v47 count:16];
                  if (v19)
                  {
                    v20 = v19;
                    v21 = 0;
                    v22 = *v36;
                    do
                    {
                      for (i = 0; i != v20; ++i)
                      {
                        if (*v36 != v22)
                        {
                          objc_enumerationMutation(v18);
                        }

                        v24 = *(*(&v35 + 1) + 8 * i);
                        if (([v10 containsObject:v24] & 1) == 0)
                        {
                          [v10 addObject:v24];
                          v21 = 1;
                        }
                      }

                      v20 = [v18 countByEnumeratingWithState:&v35 objects:v47 count:16];
                    }

                    while (v20);
                    v14 = v33;
                    if (v21)
                    {
                      [v32 addObject:v17];
                    }
                  }
                }

                ++v16;
              }

              while (v16 != v14);
              v14 = [v34 countByEnumeratingWithState:&v39 objects:v48 count:16];
            }

            while (v14);
          }

          v11 = v31 + 1;
        }

        while (v31 + 1 != v30);
        v30 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v30);
    }

    v3 = v27;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = [(NPKPassAssociatedInfoModel *)self pass];
  v6 = [v5 uniqueID];
  v7 = [(NPKPassAssociatedInfoModel *)self balanceFields];
  v8 = [v3 stringWithFormat:@"<%@:%p> {passUniqueID:%@, balanceFields:%@", v4, self, v6, v7];

  v9 = [(NPKPassAssociatedInfoModel *)self transitPassProperties];

  if (v9)
  {
    v10 = [(NPKPassAssociatedInfoModel *)self transitPassProperties];
    [v8 appendFormat:@" transitPassProperties:%@", v10];
  }

  v11 = [(NPKPassAssociatedInfoModel *)self balances];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(NPKPassAssociatedInfoModel *)self balances];
    [v8 appendFormat:@" balances:%@", v13];
  }

  [v8 appendString:@"}"];

  return v8;
}

@end