@interface GKTurnBasedExchangeReplyInternal
+ (id)secureCodedPropertyKeys;
@end

@implementation GKTurnBasedExchangeReplyInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_443 != -1)
  {
    +[GKTurnBasedExchangeReplyInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_442;

  return v3;
}

void __59__GKTurnBasedExchangeReplyInternal_secureCodedPropertyKeys__block_invoke()
{
  v10[4] = *MEMORY[0x277D85DE8];
  v10[0] = objc_opt_class();
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v0 setWithObjects:{v1, v2, v3, v4, objc_opt_class(), 0, @"recipientIndex", @"localizableMessage"}];
  v10[1] = v5;
  v9[2] = @"data";
  v10[2] = objc_opt_class();
  v9[3] = @"replyDate";
  v10[3] = objc_opt_class();
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = secureCodedPropertyKeys_sSecureCodedKeys_442;
  secureCodedPropertyKeys_sSecureCodedKeys_442 = v6;

  v8 = *MEMORY[0x277D85DE8];
}

@end