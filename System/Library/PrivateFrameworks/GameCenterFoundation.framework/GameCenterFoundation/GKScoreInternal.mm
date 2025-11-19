@interface GKScoreInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)a3;
- (GKScoreInternal)initWithCoder:(id)a3;
- (NSString)playerID;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serverRepresentation;
- (unint64_t)hash;
@end

@implementation GKScoreInternal

- (GKScoreInternal)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = GKScoreInternal;
  v5 = [(GKScoreInternal *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"player"];
    [(GKScoreInternal *)v5 setPlayer:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"leaderboardIdentifier"];
    [(GKScoreInternal *)v5 setLeaderboardIdentifier:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupLeaderboardIdentifier"];
    [(GKScoreInternal *)v5 setGroupLeaderboardIdentifier:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playerID"];
    if (v9)
    {
      v10 = +[(GKInternalRepresentation *)GKPlayerInternal];
      [v10 setPlayerID:v9];
      [(GKScoreInternal *)v5 setPlayer:v10];
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    if (v11)
    {
      [(GKScoreInternal *)v5 setCategory:v11];
    }

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupCategory"];

    if (v12)
    {
      [(GKScoreInternal *)v5 setGroupCategory:v12];
    }

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"formattedValue"];
    [(GKScoreInternal *)v5 setFormattedValue:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    [(GKScoreInternal *)v5 setDate:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rank"];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 unsignedIntegerValue];
    }

    else
    {
      v17 = [v4 decodeIntegerForKey:@"rank"];
    }

    [(GKScoreInternal *)v5 setRank:v17];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 longLongValue];
    }

    else
    {
      v20 = [v4 decodeInt64ForKey:@"value"];
    }

    [(GKScoreInternal *)v5 setValue:v20];
    if ([v4 containsValueForKey:@"valueSet"])
    {
      v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"valueSet"];
      -[GKScoreInternal setValueSet:](v5, "setValueSet:", [v21 BOOLValue]);
    }

    else
    {
      [(GKScoreInternal *)v5 setValueSet:1];
    }

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    v23 = v22;
    if (v22)
    {
      v24 = [v22 longLongValue];
    }

    else
    {
      v24 = [v4 decodeInt64ForKey:@"context"];
    }

    [(GKScoreInternal *)v5 setContext:v24];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    [v4 setPlayer:self->_player];
    [v5 setLeaderboardIdentifier:self->_leaderboardIdentifier];
    [v5 setGroupLeaderboardIdentifier:self->_groupLeaderboardIdentifier];
    [v5 setFormattedValue:self->_formattedValue];
    [v5 setDate:self->_date];
    [v5 setValue:self->_value];
    [v5 setContext:self->_context];
    [v5 setRank:self->_rank];
    [v5 setValueSet:self->_valueSet];
  }

  return v5;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_26 != -1)
  {
    +[GKScoreInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_26;

  return v3;
}

void __42__GKScoreInternal_secureCodedPropertyKeys__block_invoke()
{
  v4[9] = *MEMORY[0x277D85DE8];
  v3[0] = @"player";
  v4[0] = objc_opt_class();
  v3[1] = @"leaderboardIdentifier";
  v4[1] = objc_opt_class();
  v3[2] = @"groupLeaderboardIdentifier";
  v4[2] = objc_opt_class();
  v3[3] = @"formattedValue";
  v4[3] = objc_opt_class();
  v3[4] = @"date";
  v4[4] = objc_opt_class();
  v3[5] = @"value";
  v4[5] = objc_opt_class();
  v3[6] = @"context";
  v4[6] = objc_opt_class();
  v3[7] = @"rank";
  v4[7] = objc_opt_class();
  v3[8] = @"valueSet";
  v4[8] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:9];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_26;
  secureCodedPropertyKeys_sSecureCodedKeys_26 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)serverRepresentation
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[GKScoreInternal value](self, "value")}];
  v5 = [(GKScoreInternal *)self leaderboardIdentifier];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[GKScoreInternal context](self, "context")}];
  v7 = [(GKScoreInternal *)self date];
  if (v7)
  {
    v8 = self;
  }

  else
  {
    v8 = MEMORY[0x277CBEAA8];
  }

  v9 = [(GKScoreInternal *)v8 date];
  v10 = [v9 _gkServerTimestamp];
  v11 = [v3 dictionaryWithObjectsAndKeys:{v4, @"score-value", v5, @"category", v6, @"context", v10, @"timestamp", 0}];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(GKScoreInternal *)self rank];
    if (v7 != [v6 rank] || (v8 = -[GKScoreInternal value](self, "value"), v8 != objc_msgSend(v6, "value")) || (v9 = -[GKScoreInternal context](self, "context"), v9 != objc_msgSend(v6, "context")))
    {
      v13 = 0;
LABEL_10:

      goto LABEL_11;
    }

    v10 = [(GKScoreInternal *)self date];
    v11 = [v6 date];
    if (v10 != v11)
    {
      v3 = [(GKScoreInternal *)self date];
      v12 = [v6 date];
      if (![v3 isEqual:v12])
      {
        v13 = 0;
LABEL_20:

LABEL_21:
        goto LABEL_10;
      }

      v22 = v12;
    }

    v15 = [(GKScoreInternal *)self playerID];
    v16 = [v6 playerID];
    if ([v15 isEqualToString:v16])
    {
      v17 = [(GKScoreInternal *)self leaderboardIdentifier];
      v18 = [v6 leaderboardIdentifier];
      if ([v17 isEqual:v18])
      {
        v13 = 1;
      }

      else
      {
        v20 = [(GKScoreInternal *)self groupLeaderboardIdentifier];
        [v6 groupLeaderboardIdentifier];
        v19 = v21 = v3;
        v13 = [v20 isEqual:v19];

        v3 = v21;
      }
    }

    else
    {

      v13 = 0;
    }

    v12 = v22;
    if (v10 == v11)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (unint64_t)hash
{
  v2 = [(GKScoreInternal *)self playerID];
  v3 = [v2 hash];

  return v3;
}

- (NSString)playerID
{
  v2 = [(GKScoreInternal *)self player];
  v3 = [v2 playerID];

  return v3;
}

@end