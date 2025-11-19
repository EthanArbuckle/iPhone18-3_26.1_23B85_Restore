@interface GKGameRecordInternal
+ (id)gameRecordForGame:(id)a3;
+ (id)secureCodedPropertyKeys;
- (void)updateWithGame:(id)a3;
@end

@implementation GKGameRecordInternal

+ (id)gameRecordForGame:(id)a3
{
  v3 = a3;
  v4 = +[(GKInternalRepresentation *)GKGameRecordInternal];
  [v4 updateWithGame:v3];

  return v4;
}

- (void)updateWithGame:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [objc_opt_class() secureCodedPropertyKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v4 valueForKey:v10];
        [(GKGameRecordInternal *)self setValue:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__GKGameRecordInternal_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (secureCodedPropertyKeys_onceToken_223 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_223, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_222;

  return v2;
}

void __47__GKGameRecordInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v6.receiver = *(a1 + 32);
  v6.super_class = &OBJC_METACLASS___GKGameRecordInternal;
  v1 = objc_msgSendSuper2(&v6, sel_secureCodedPropertyKeys);
  v2 = [v1 mutableCopy];

  v7[0] = @"score";
  v8[0] = objc_opt_class();
  v7[1] = @"lastPlayedDate";
  v8[1] = objc_opt_class();
  v7[2] = @"purchaseDate";
  v8[2] = objc_opt_class();
  v7[3] = @"achievements";
  v8[3] = objc_opt_class();
  v7[4] = @"achievementPoints";
  v8[4] = objc_opt_class();
  v7[5] = @"friendRank";
  v8[5] = objc_opt_class();
  v7[6] = @"maxFriendRank";
  v8[6] = objc_opt_class();
  v7[7] = @"rank";
  v8[7] = objc_opt_class();
  v7[8] = @"maxRank";
  v8[8] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:9];
  [v2 addEntriesFromDictionary:v3];

  v4 = secureCodedPropertyKeys_sSecureCodedKeys_222;
  secureCodedPropertyKeys_sSecureCodedKeys_222 = v2;

  v5 = *MEMORY[0x277D85DE8];
}

@end