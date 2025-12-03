@interface NPKPassAssociatedInfoModel
+ (id)accountBalanceForAccount:(id)account;
- (BOOL)_shouldAddCommutePlan:(id)plan action:(id)action withBalancesByID:(id)d;
- (BOOL)hasDeviceBoundCommutePlans;
- (BOOL)isEqual:(id)equal;
- (NPKPassAssociatedInfoModel)initWithPass:(id)pass transitProperties:(id)properties balances:(id)balances commutePlanValueRequired:(BOOL)required;
- (id)_actionWithIdentifier:(id)identifier type:(unint64_t)type;
- (id)_actionWithIdentifiers:(id)identifiers type:(unint64_t)type;
- (id)_allPassBalanceFieldsWithBalancesByID:(id)d;
- (id)_balanceByIDWithBalances:(id)balances;
- (id)_balanceFieldBalance:(id)balance fieldIdentifier:(id)identifier;
- (id)_balanceFieldsWithBalancesByID:(id)d passFields:(id)fields maximumCount:(unint64_t)count;
- (id)_balancePassFieldsFromPass:(id)pass;
- (id)_commutePlanFieldsWithBalancesByID:(id)d dynamicPlansByID:(id)iD;
- (id)_commutePlanWithFelicaPassProperties:(id)properties;
- (id)_commutePlansByIDWithPlans:(id)plans;
- (id)_fieldForCommutePlan:(id)plan action:(id)action isLegacyPass:(BOOL)pass balancedByID:(id)d;
- (id)_formattedValueWithCommutePlan:(id)plan balancesByID:(id)d;
- (id)_identifierFromAction:(id)action type:(unint64_t)type;
- (id)_primaryDisplayableBalanceFieldWithBalancesByID:(id)d;
- (id)_rawCountValueWithCommutePlan:(id)plan balancesByID:(id)d;
- (id)description;
- (void)setBalances:(id)balances;
- (void)setCommutePlanValueRequired:(BOOL)required;
- (void)setDynamicPlans:(id)plans;
- (void)setTiles:(id)tiles;
- (void)setTransitPassProperties:(id)properties;
- (void)updateItemFields;
@end

@implementation NPKPassAssociatedInfoModel

+ (id)accountBalanceForAccount:(id)account
{
  v18 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if ([accountCopy feature] == 4)
  {
    appleBalanceDetails = [accountCopy appleBalanceDetails];
    currentBalance = [appleBalanceDetails currentBalance];

    if (currentBalance)
    {
      v6 = [objc_alloc(MEMORY[0x277D38008]) initWithIdentifier:@"account-balance-identifier" forCurrencyAmount:currentBalance];
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
          accountIdentifier = [accountCopy accountIdentifier];
          appleBalanceDetails2 = [accountCopy appleBalanceDetails];
          v14 = 138412546;
          v15 = accountIdentifier;
          v16 = 2112;
          v17 = appleBalanceDetails2;
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

- (NPKPassAssociatedInfoModel)initWithPass:(id)pass transitProperties:(id)properties balances:(id)balances commutePlanValueRequired:(BOOL)required
{
  passCopy = pass;
  propertiesCopy = properties;
  balancesCopy = balances;
  v20.receiver = self;
  v20.super_class = NPKPassAssociatedInfoModel;
  v14 = [(NPKPassAssociatedInfoModel *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_pass, pass);
    v16 = propertiesCopy;
    if (!propertiesCopy)
    {
      v16 = [MEMORY[0x277D38310] passPropertiesForPass:passCopy];
    }

    v17 = [v16 copy];
    transitPassProperties = v15->_transitPassProperties;
    v15->_transitPassProperties = v17;

    if (!propertiesCopy)
    {
    }

    objc_storeStrong(&v15->_balances, balances);
    v15->_commutePlanValueRequired = required;
    [(NPKPassAssociatedInfoModel *)v15 updateItemFields];
  }

  return v15;
}

- (void)setTransitPassProperties:(id)properties
{
  if (self->_transitPassProperties != properties)
  {
    v5 = [properties copy];
    transitPassProperties = self->_transitPassProperties;
    self->_transitPassProperties = v5;

    [(NPKPassAssociatedInfoModel *)self updateItemFields];
  }
}

- (void)setBalances:(id)balances
{
  if (self->_balances != balances)
  {
    v5 = [balances copy];
    balances = self->_balances;
    self->_balances = v5;

    [(NPKPassAssociatedInfoModel *)self updateItemFields];
  }
}

- (void)setDynamicPlans:(id)plans
{
  if (self->_dynamicPlans != plans)
  {
    v5 = [plans copy];
    dynamicPlans = self->_dynamicPlans;
    self->_dynamicPlans = v5;

    [(NPKPassAssociatedInfoModel *)self updateItemFields];
  }
}

- (void)setCommutePlanValueRequired:(BOOL)required
{
  if (self->_commutePlanValueRequired != required)
  {
    self->_commutePlanValueRequired = required;
    [(NPKPassAssociatedInfoModel *)self updateItemFields];
  }
}

- (void)setTiles:(id)tiles
{
  if (self->_tiles != tiles)
  {
    v5 = [tiles copy];
    tiles = self->_tiles;
    self->_tiles = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
      uniqueID2 = [(PKPaymentPass *)v5->_pass uniqueID];
      if (NPKIsEqual(uniqueID, uniqueID2) && NPKIsEqual(self->_balanceFields, v5->_balanceFields) && NPKIsEqual(self->_balances, v5->_balances) && NPKIsEqual(self->_transitPassProperties, v5->_transitPassProperties) && NPKIsEqual(self->_transitAppletState, v5->_transitAppletState) && NPKIsEqual(self->_tiles, v5->_tiles) && NPKIsEqual(self->_dynamicPlans, v5->_dynamicPlans) && self->_rangingSuspensionReason == v5->_rangingSuspensionReason)
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
  commutePlanFields = [(NPKPassAssociatedInfoModel *)self commutePlanFields];
  v3 = [commutePlanFields countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(commutePlanFields);
        }

        if ([*(*(&v8 + 1) + 8 * i) isDeviceBound])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [commutePlanFields countByEnumeratingWithState:&v8 objects:v12 count:16];
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
    array = [MEMORY[0x277CBEB18] array];
    [array addObject:v5];
    identifier = [v5 identifier];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __46__NPKPassAssociatedInfoModel_updateItemFields__block_invoke;
    v23 = &unk_279948E70;
    v24 = identifier;
    v25 = array;
    v10 = array;
    v11 = identifier;
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
  uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
  [v18 npkClearTransitValuePendingStateIfNecessaryForPassWithID:uniqueID withBalanceFields:self->_balanceFields commutePlanFields:self->_commutePlanFields];
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

- (id)_primaryDisplayableBalanceFieldWithBalancesByID:(id)d
{
  dCopy = d;
  if ([(PKPaymentPass *)self->_pass isContentLoaded]&& [(PKPaymentPass *)self->_pass isStoredValuePass])
  {
    v5 = [(NPKPassAssociatedInfoModel *)self _balancePassFieldsFromPass:self->_pass];
    v6 = [(NPKPassAssociatedInfoModel *)self _balanceFieldsWithBalancesByID:dCopy passFields:v5 maximumCount:1];

    if ([v6 count])
    {
      firstObject = [v6 firstObject];
LABEL_7:
      v8 = firstObject;
      goto LABEL_9;
    }
  }

  else
  {
    v6 = [dCopy objectForKey:@"account-balance-identifier"];
    if (v6)
    {
      firstObject = [(NPKPassAssociatedInfoModel *)self _balanceFieldBalance:v6 fieldIdentifier:@"account-balance-item"];
      goto LABEL_7;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)_allPassBalanceFieldsWithBalancesByID:(id)d
{
  dCopy = d;
  array = [MEMORY[0x277CBEB18] array];
  if ([(PKPaymentPass *)self->_pass isContentLoaded])
  {
    v6 = [(NPKPassAssociatedInfoModel *)self _balancePassFieldsFromPass:self->_pass];
    v7 = [(NPKPassAssociatedInfoModel *)self _balanceFieldsWithBalancesByID:dCopy passFields:v6 maximumCount:0];
    [array addObjectsFromArray:v7];
  }

  return array;
}

- (id)_balanceFieldBalance:(id)balance fieldIdentifier:(id)identifier
{
  identifierCopy = identifier;
  balanceCopy = balance;
  v7 = [NPKBalanceField alloc];
  v8 = PKLocalizedAppleBalanceString(&cfstr_PassBalanceTit.isa);
  formattedValue = [balanceCopy formattedValue];
  v10 = [(NPKBalanceField *)v7 initWithBalance:balanceCopy label:v8 formattedValue:formattedValue identifier:identifierCopy primaryBalance:1 action:0 pendingUpdateExpireDate:0];

  return v10;
}

- (id)_balanceFieldsWithBalancesByID:(id)d passFields:(id)fields maximumCount:(unint64_t)count
{
  v61 = *MEMORY[0x277D85DE8];
  dCopy = d;
  fieldsCopy = fields;
  array = [MEMORY[0x277CBEB18] array];
  v11 = *MEMORY[0x277D38850];
  v12 = [dCopy objectForKey:*MEMORY[0x277D38850]];
  v13 = v12;
  v49 = v12 == 0;
  selfCopy = self;
  countCopy = count;
  v43 = fieldsCopy;
  if (v12)
  {
    pass = self->_pass;
    value = [v12 value];
    v16 = [(PKPaymentPass *)pass npkPendingAddValueStateExpireDateForBalanceFieldWithIdentifier:v11 currentBalance:value];

    v17 = [(NPKPassAssociatedInfoModel *)self _actionWithIdentifier:0 type:1];
    v18 = [NPKBalanceField alloc];
    v19 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
    v20 = [v19 localizedStringForKey:@"PASS_DETAILS_HEADER_TRANSIT_BALANCE" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];
    formattedValue = [v13 formattedValue];
    v22 = [(NPKBalanceField *)v18 initWithBalance:v13 label:v20 formattedValue:formattedValue identifier:v11 primaryBalance:1 action:v17 pendingUpdateExpireDate:v16];

    self = selfCopy;
    [array addObject:v22];

    count = countCopy;
    fieldsCopy = v43;
  }

  if ([dCopy count])
  {
    v42 = v13;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v23 = fieldsCopy;
    v24 = [v23 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v56;
      v44 = v23;
      v45 = array;
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
            foreignReferenceIdentifiers = [v28 foreignReferenceIdentifiers];
            if (foreignReferenceIdentifiers)
            {
              v30 = foreignReferenceIdentifiers;
              if ([foreignReferenceIdentifiers count] == 1)
              {
                anyObject = [v30 anyObject];
                v32 = [dCopy objectForKeyedSubscript:anyObject];
              }

              else
              {
                anyObject = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v30, "count")}];
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

                      v38 = [dCopy objectForKeyedSubscript:*(*(&v51 + 1) + 8 * i)];
                      [anyObject npkSafelyAddObject:v38];
                    }

                    v35 = [v33 countByEnumeratingWithState:&v51 objects:v59 count:16];
                  }

                  while (v35);
                }

                v32 = [objc_alloc(MEMORY[0x277D38008]) initWithComponentBalances:anyObject identifiers:v33];
                array = v45;
                self = selfCopy;
                count = countCopy;
                v23 = v44;
              }

              if (v32)
              {
                v39 = [(NPKPassAssociatedInfoModel *)self _balanceFieldWithPassField:v28 balance:v32 isPrimaryBalance:v49];
                if (v39)
                {
                  [array addObject:v39];
                  v49 = 0;
                }

                if (count && [array count] >= count)
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
    fieldsCopy = v43;
  }

  v40 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_balanceByIDWithBalances:(id)balances
{
  v3 = MEMORY[0x277CBEB38];
  balancesCopy = balances;
  v5 = [v3 dictionaryWithCapacity:{objc_msgSend(balancesCopy, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__NPKPassAssociatedInfoModel__balanceByIDWithBalances___block_invoke;
  v8[3] = &unk_279948E98;
  v6 = v5;
  v9 = v6;
  [balancesCopy enumerateObjectsUsingBlock:v8];

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

- (id)_commutePlansByIDWithPlans:(id)plans
{
  v19 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = plansCopy;
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
        uniqueIdentifier = [v10 uniqueIdentifier];
        [v4 setObject:v10 forKeyedSubscript:uniqueIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_commutePlanFieldsWithBalancesByID:(id)d dynamicPlansByID:(id)iD
{
  v66 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  if (![(PKPaymentPass *)self->_pass isTransitPass])
  {
    array = MEMORY[0x277CBEBF8];
    goto LABEL_28;
  }

  array = [MEMORY[0x277CBEB18] array];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  pass = [(NPKPassAssociatedInfoModel *)self pass];
  transitCommutePlanType = [pass transitCommutePlanType];

  pass2 = [(NPKPassAssociatedInfoModel *)self pass];
  transitCommutePlans = [pass2 transitCommutePlans];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __82__NPKPassAssociatedInfoModel__commutePlanFieldsWithBalancesByID_dynamicPlansByID___block_invoke;
  v59[3] = &unk_279948EC0;
  v59[4] = self;
  v13 = dCopy;
  v60 = v13;
  v14 = v9;
  v61 = v14;
  v49 = iDCopy;
  v62 = iDCopy;
  v15 = v8;
  v63 = v15;
  [transitCommutePlans enumerateObjectsUsingBlock:v59];

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
    v46 = dCopy;
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
        identifier = [v21 identifier];
        v23 = [(NPKPassAssociatedInfoModel *)self _actionWithIdentifier:identifier type:2];

        pass3 = [(NPKPassAssociatedInfoModel *)self pass];
        transitCommutePlanType2 = [pass3 transitCommutePlanType];

        if ([(NPKPassAssociatedInfoModel *)self _shouldAddCommutePlan:v21 action:v23 withBalancesByID:v13])
        {
          v26 = [(NPKPassAssociatedInfoModel *)self _fieldForCommutePlan:v21 action:v23 isLegacyPass:transitCommutePlanType2 == 1 balancedByID:v13];
          [array addObject:v26];
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
    v46 = dCopy;
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
        identifier2 = [v31 identifier];
        v33 = [(NPKPassAssociatedInfoModel *)self _actionWithIdentifier:identifier2 type:2];

        pass4 = [(NPKPassAssociatedInfoModel *)self pass];
        transitCommutePlanType3 = [pass4 transitCommutePlanType];

        if ([(NPKPassAssociatedInfoModel *)self _shouldAddCommutePlan:v31 action:v33 withBalancesByID:v13])
        {
          v36 = [(NPKPassAssociatedInfoModel *)self _fieldForCommutePlan:v31 action:v33 isLegacyPass:transitCommutePlanType3 == 1 balancedByID:v13];
          [array addObject:v36];
        }
      }

      v28 = [v16 countByEnumeratingWithState:&v51 objects:v64 count:16];
    }

    while (v28);
  }

  v14 = v45;
  dCopy = v46;
LABEL_24:

  iDCopy = v49;
  if (transitCommutePlanType == 1 || (-[NPKPassAssociatedInfoModel pass](self, "pass"), v37 = objc_claimAutoreleasedReturnValue(), [v37 transitCommutePlans], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "count"), v38, v37, !v39))
  {
    transitPassProperties = [(NPKPassAssociatedInfoModel *)self transitPassProperties];
    felicaProperties = [transitPassProperties felicaProperties];
    v42 = [(NPKPassAssociatedInfoModel *)self _commutePlanWithFelicaPassProperties:felicaProperties];
    [array addObjectsFromArray:v42];
  }

LABEL_28:
  v43 = *MEMORY[0x277D85DE8];

  return array;
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

- (id)_fieldForCommutePlan:(id)plan action:(id)action isLegacyPass:(BOOL)pass balancedByID:(id)d
{
  v44 = *MEMORY[0x277D85DE8];
  planCopy = plan;
  actionCopy = action;
  dCopy = d;
  title = [planCopy title];
  v13 = title;
  if (pass)
  {
    value = [title value];

    title2 = [planCopy title];
    [title2 label];
  }

  else
  {
    value = [title label];

    title2 = [planCopy title];
    [title2 value];
  }
  v36 = ;

  v16 = [NPKDateRange alloc];
  startDate = [planCopy startDate];
  expiryDate = [planCopy expiryDate];
  v35 = [(NPKDateRange *)v16 initWithStartDate:startDate expirationDate:expiryDate formatterStyle:3];

  v19 = [(NPKPassAssociatedInfoModel *)self _rawCountValueWithCommutePlan:planCopy balancesByID:dCopy];
  pass = self->_pass;
  uniqueIdentifier = [planCopy uniqueIdentifier];
  expiryDate2 = [planCopy expiryDate];
  v23 = [(PKPaymentPass *)pass npkPendingAddValueStateExpireDateForCommutePlanFieldWithIdentifier:uniqueIdentifier expiryDate:expiryDate2 rawCountValue:v19];

  v24 = pk_General_log();
  LODWORD(uniqueIdentifier) = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

  if (uniqueIdentifier)
  {
    v25 = pk_General_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v39 = value;
      v40 = 2112;
      v41 = v19;
      v42 = 2112;
      v43 = v23;
      _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: Creating commute plan field with label: %@, tripCount: %@, pendingUpdateExpireDate: %@", buf, 0x20u);
    }
  }

  v26 = [NPKCommutePlanField alloc];
  v27 = [(NPKPassAssociatedInfoModel *)self _formattedValueWithCommutePlan:planCopy balancesByID:dCopy];
  [planCopy uniqueIdentifier];
  v29 = v28 = value;
  details = [planCopy details];
  LOBYTE(v33) = [planCopy isDeviceBound];
  v34 = [(NPKCommutePlanField *)v26 initWithLabel:v28 detailLabel:v36 formattedValue:v27 rawCountValue:v19 usageDateRange:v35 identifier:v29 details:details action:actionCopy isDeviceBound:v33 pendingUpdateExpireDate:v23];

  v31 = *MEMORY[0x277D85DE8];

  return v34;
}

- (BOOL)_shouldAddCommutePlan:(id)plan action:(id)action withBalancesByID:(id)d
{
  v51 = *MEMORY[0x277D85DE8];
  planCopy = plan;
  actionCopy = action;
  dCopy = d;
  properties = [planCopy properties];
  expiryDate = [planCopy expiryDate];
  if (!expiryDate)
  {
    goto LABEL_9;
  }

  v13 = (properties & 1) == 0;
  expiryDate2 = [planCopy expiryDate];
  v15 = [MEMORY[0x277CBEAA8] now];
  v16 = [expiryDate2 compare:v15];

  v17 = v16 == 1 || v13;
  if (v17 & 1) != 0 || ([actionCopy isActionAvailable] & 1) != 0 || (objc_msgSend(planCopy, "isPlanDisplayable"))
  {
LABEL_9:
    if (-[NPKPassAssociatedInfoModel isCommutePlanValueRequired](self, "isCommutePlanValueRequired") && ([planCopy properties] & 4) != 0)
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
      details = [planCopy details];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __76__NPKPassAssociatedInfoModel__shouldAddCommutePlan_action_withBalancesByID___block_invoke;
      v34[3] = &unk_279948EE8;
      v37 = v47;
      v38 = &v39;
      v35 = dCopy;
      v36 = actionCopy;
      [details enumerateObjectsUsingBlock:v34];

      if ((v40[3] & 1) == 0)
      {
        v20 = pk_General_log();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

        if (v21)
        {
          v22 = pk_General_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [planCopy identifier];
            v24 = *(*&v47[8] + 40);
            *buf = 138412546;
            v44 = identifier;
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
    expiryDate3 = [planCopy expiryDate];
    v27 = [v25 stringWithFormat:@" is timed commute plan:%d, is expired:%d, expiry date:%@, is action available:%d", 1, 1, expiryDate3, objc_msgSend(actionCopy, "isActionAvailable")];

    v28 = pk_General_log();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

    if (v29)
    {
      v30 = pk_General_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [planCopy identifier];
        *v47 = 138412546;
        *&v47[4] = identifier2;
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

- (id)_formattedValueWithCommutePlan:(id)plan balancesByID:(id)d
{
  planCopy = plan;
  dCopy = d;
  if (([planCopy properties] & 4) != 0)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__17;
    v17 = __Block_byref_object_dispose__17;
    v18 = 0;
    details = [planCopy details];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__NPKPassAssociatedInfoModel__formattedValueWithCommutePlan_balancesByID___block_invoke;
    v10[3] = &unk_279948F10;
    v11 = dCopy;
    v12 = &v13;
    [details enumerateObjectsUsingBlock:v10];

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

- (id)_rawCountValueWithCommutePlan:(id)plan balancesByID:(id)d
{
  planCopy = plan;
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__17;
  v17 = __Block_byref_object_dispose__17;
  v18 = 0;
  if (([planCopy properties] & 4) != 0)
  {
    details = [planCopy details];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__NPKPassAssociatedInfoModel__rawCountValueWithCommutePlan_balancesByID___block_invoke;
    v10[3] = &unk_279948F38;
    v12 = &v13;
    v11 = dCopy;
    [details enumerateObjectsUsingBlock:v10];

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

- (id)_commutePlanWithFelicaPassProperties:(id)properties
{
  v75 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  array = [MEMORY[0x277CBEB18] array];
  v5 = array;
  if (!propertiesCopy)
  {
    goto LABEL_21;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__NPKPassAssociatedInfoModel__commutePlanWithFelicaPassProperties___block_invoke;
  aBlock[3] = &unk_279948F60;
  v67 = array;
  v72 = v67;
  v6 = _Block_copy(aBlock);
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      hasShinkansenTicket = [propertiesCopy hasShinkansenTicket];
      *buf = 67109120;
      v74 = hasShinkansenTicket;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKTransitBalanceModel: has Shinkansen ticket:%d", buf, 8u);
    }
  }

  v68 = v5;
  v66 = v6;
  if ([propertiesCopy hasShinkansenTicket])
  {
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __67__NPKPassAssociatedInfoModel__commutePlanWithFelicaPassProperties___block_invoke_112;
    v69[3] = &unk_279948F88;
    v70 = v6;
    v63 = _Block_copy(v69);
    shinkansenValidityTerm = [propertiesCopy shinkansenValidityTerm];
    shinkansenValidityStartDate = [propertiesCopy shinkansenValidityStartDate];
    calendar = [shinkansenValidityStartDate calendar];
    v59 = shinkansenValidityTerm;
    integerValue = [shinkansenValidityTerm integerValue];
    v58 = shinkansenValidityStartDate;
    date = [shinkansenValidityStartDate date];
    v57 = calendar;
    v16 = [calendar dateByAddingUnit:16 value:integerValue toDate:date options:0];

    shinkansenValidityStartDate2 = [propertiesCopy shinkansenValidityStartDate];
    date2 = [shinkansenValidityStartDate2 date];
    shinkansenOriginStation = [propertiesCopy shinkansenOriginStation];
    shinkansenDestinationStation = [propertiesCopy shinkansenDestinationStation];
    shinkansenDepartureTime = [propertiesCopy shinkansenDepartureTime];
    shinkansenArrivalTime = [propertiesCopy shinkansenArrivalTime];
    shinkansenTrainName = [propertiesCopy shinkansenTrainName];
    shinkansenCarNumber = [propertiesCopy shinkansenCarNumber];
    displayableShinkansenSeat = [propertiesCopy displayableShinkansenSeat];
    v61 = v16;
    v63[2](v63, date2, shinkansenOriginStation, shinkansenDestinationStation, shinkansenDepartureTime, shinkansenArrivalTime, shinkansenTrainName, shinkansenCarNumber, displayableShinkansenSeat, v16, [propertiesCopy isShinkansenTicketActive]);

    shinkansenSecondaryOriginStation = [propertiesCopy shinkansenSecondaryOriginStation];
    if (shinkansenSecondaryOriginStation || ([propertiesCopy shinkansenSecondaryDestinationStation], (shinkansenSecondaryOriginStation = objc_claimAutoreleasedReturnValue()) != 0))
    {

      v26 = v63;
    }

    else
    {
      shinkansenSecondaryTrainName = [propertiesCopy shinkansenSecondaryTrainName];

      v26 = v63;
      if (!shinkansenSecondaryTrainName)
      {
        goto LABEL_11;
      }
    }

    shinkansenValidityStartDate3 = [propertiesCopy shinkansenValidityStartDate];
    date3 = [shinkansenValidityStartDate3 date];
    shinkansenSecondaryOriginStation2 = [propertiesCopy shinkansenSecondaryOriginStation];
    shinkansenSecondaryDestinationStation = [propertiesCopy shinkansenSecondaryDestinationStation];
    shinkansenSecondaryDepartureTime = [propertiesCopy shinkansenSecondaryDepartureTime];
    shinkansenSecondaryArrivalTime = [propertiesCopy shinkansenSecondaryArrivalTime];
    shinkansenSecondaryTrainName2 = [propertiesCopy shinkansenSecondaryTrainName];
    shinkansenSecondaryCarNumber = [propertiesCopy shinkansenSecondaryCarNumber];
    displayableShinkansenSecondarySeat = [propertiesCopy displayableShinkansenSecondarySeat];
    LOBYTE(v55) = [propertiesCopy isShinkansenTicketActive];
    (v26)[2](v26, date3, shinkansenSecondaryOriginStation2, shinkansenSecondaryDestinationStation, shinkansenSecondaryDepartureTime, shinkansenSecondaryArrivalTime, shinkansenSecondaryTrainName2, shinkansenSecondaryCarNumber, displayableShinkansenSecondarySeat, v61, v55);

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
      hasGreenCarTicket = [propertiesCopy hasGreenCarTicket];
      *buf = 67109120;
      v74 = hasGreenCarTicket;
      _os_log_impl(&dword_25B300000, v37, OS_LOG_TYPE_DEFAULT, "Notice: NPKTransitBalanceModel: has Green Car ticket ticket:%d", buf, 8u);
    }
  }

  if ([propertiesCopy hasGreenCarTicket])
  {
    array2 = [MEMORY[0x277CBEB18] array];
    greenCarValidityStartDate = [propertiesCopy greenCarValidityStartDate];
    calendar2 = [greenCarValidityStartDate calendar];
    v60 = greenCarValidityStartDate;
    date4 = [greenCarValidityStartDate date];
    v65 = calendar2;
    v62 = [calendar2 dateByAddingUnit:16 value:1 toDate:date4 options:0];

    greenCarOriginStation = [propertiesCopy greenCarOriginStation];
    greenCarDestinationStation = [propertiesCopy greenCarDestinationStation];
    v45 = __NPKRouteDescriptionForStations(greenCarOriginStation, greenCarDestinationStation);
    if (v45)
    {
      [array2 addObject:v45];
    }

    v46 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
    v47 = [v46 localizedStringForKey:@"PASS_DETAILS_HEADER_GREEN_CAR_UPGRADE" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];

    v48 = [array2 componentsJoinedByString:@"\n"];
    greenCarValidityStartDate2 = [propertiesCopy greenCarValidityStartDate];
    date5 = [greenCarValidityStartDate2 date];

    v6 = v66;
    v66[2](v66, v47, v48, date5, v62);
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

- (id)_actionWithIdentifier:(id)identifier type:(unint64_t)type
{
  if (identifier)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObject:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NPKPassAssociatedInfoModel *)self _actionWithIdentifiers:v6 type:type];

  return v7;
}

- (id)_actionWithIdentifiers:(id)identifiers type:(unint64_t)type
{
  v22 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  availableActions = [(PKPaymentPass *)self->_pass availableActions];
  v8 = [availableActions countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(availableActions);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(NPKPassAssociatedInfoModel *)self _identifierFromAction:v12 type:type];
        if ([v12 type] == type && (!identifiersCopy || (objc_msgSend(identifiersCopy, "containsObject:", v13) & 1) != 0))
        {
          v14 = v12;

          goto LABEL_13;
        }
      }

      v9 = [availableActions countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (id)_identifierFromAction:(id)action type:(unint64_t)type
{
  actionCopy = action;
  v6 = actionCopy;
  if (type == 2)
  {
    associatedPlanIdentifier = [actionCopy associatedPlanIdentifier];
    goto LABEL_5;
  }

  if (type == 1)
  {
    associatedPlanIdentifier = [actionCopy associatedEnteredValueIdentifier];
LABEL_5:
    v8 = associatedPlanIdentifier;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)_balancePassFieldsFromPass:(id)pass
{
  v50 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  if ([passCopy isStoredValuePass])
  {
    balanceFields = [passCopy balanceFields];
  }

  else
  {
    balanceFields = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([passCopy isAccessPass])
    {
      balanceFields2 = [passCopy balanceFields];
      v5 = [balanceFields2 count];

      if (v5)
      {
        balanceFields3 = [passCopy balanceFields];
        [balanceFields addObjectsFromArray:balanceFields3];
      }
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    frontFieldBuckets = [passCopy frontFieldBuckets];
    [v7 addObjectsFromArray:frontFieldBuckets];

    v27 = passCopy;
    backFieldBuckets = [passCopy backFieldBuckets];
    [v7 addObjectsFromArray:backFieldBuckets];

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
                  foreignReferenceIdentifiers = [v17 foreignReferenceIdentifiers];
                  v35 = 0u;
                  v36 = 0u;
                  v37 = 0u;
                  v38 = 0u;
                  v19 = [foreignReferenceIdentifiers countByEnumeratingWithState:&v35 objects:v47 count:16];
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
                          objc_enumerationMutation(foreignReferenceIdentifiers);
                        }

                        v24 = *(*(&v35 + 1) + 8 * i);
                        if (([v10 containsObject:v24] & 1) == 0)
                        {
                          [v10 addObject:v24];
                          v21 = 1;
                        }
                      }

                      v20 = [foreignReferenceIdentifiers countByEnumeratingWithState:&v35 objects:v47 count:16];
                    }

                    while (v20);
                    v14 = v33;
                    if (v21)
                    {
                      [balanceFields addObject:v17];
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

    passCopy = v27;
  }

  v25 = *MEMORY[0x277D85DE8];

  return balanceFields;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  pass = [(NPKPassAssociatedInfoModel *)self pass];
  uniqueID = [pass uniqueID];
  balanceFields = [(NPKPassAssociatedInfoModel *)self balanceFields];
  v8 = [v3 stringWithFormat:@"<%@:%p> {passUniqueID:%@, balanceFields:%@", v4, self, uniqueID, balanceFields];

  transitPassProperties = [(NPKPassAssociatedInfoModel *)self transitPassProperties];

  if (transitPassProperties)
  {
    transitPassProperties2 = [(NPKPassAssociatedInfoModel *)self transitPassProperties];
    [v8 appendFormat:@" transitPassProperties:%@", transitPassProperties2];
  }

  balances = [(NPKPassAssociatedInfoModel *)self balances];
  v12 = [balances count];

  if (v12)
  {
    balances2 = [(NPKPassAssociatedInfoModel *)self balances];
    [v8 appendFormat:@" balances:%@", balances2];
  }

  [v8 appendString:@"}"];

  return v8;
}

@end