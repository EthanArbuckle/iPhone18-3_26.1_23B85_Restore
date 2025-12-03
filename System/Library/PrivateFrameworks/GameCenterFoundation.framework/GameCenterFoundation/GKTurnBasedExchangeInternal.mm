@interface GKTurnBasedExchangeInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
@end

@implementation GKTurnBasedExchangeInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_369 != -1)
  {
    +[GKTurnBasedExchangeInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_368;

  return v3;
}

void __54__GKTurnBasedExchangeInternal_secureCodedPropertyKeys__block_invoke()
{
  v18[10] = *MEMORY[0x277D85DE8];
  v17[0] = @"exchangeID";
  v18[0] = objc_opt_class();
  v17[1] = @"senderIndex";
  v18[1] = objc_opt_class();
  v17[2] = @"statusString";
  v18[2] = objc_opt_class();
  v17[3] = @"recipientIndexes";
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0}];
  v18[3] = v3;
  v17[4] = @"localizableMessage";
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 setWithObjects:{v5, v6, v7, v8, objc_opt_class(), 0}];
  v18[4] = v9;
  v17[5] = @"data";
  v18[5] = objc_opt_class();
  v17[6] = @"sendDate";
  v18[6] = objc_opt_class();
  v17[7] = @"timeoutDate";
  v18[7] = objc_opt_class();
  v17[8] = @"completionDate";
  v18[8] = objc_opt_class();
  v17[9] = @"replies";
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v18[9] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:10];

  v15 = secureCodedPropertyKeys_sSecureCodedKeys_368;
  secureCodedPropertyKeys_sSecureCodedKeys_368 = v14;

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    exchangeID = self->_exchangeID;
    exchangeID = [equalCopy exchangeID];
    v7 = exchangeID == exchangeID;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end