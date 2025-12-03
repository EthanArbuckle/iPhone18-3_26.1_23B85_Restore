@interface GKScoreInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
- (GKScoreInternal)initWithCoder:(id)coder;
- (NSString)playerID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serverRepresentation;
- (unint64_t)hash;
@end

@implementation GKScoreInternal

- (GKScoreInternal)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = GKScoreInternal;
  v5 = [(GKScoreInternal *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"player"];
    [(GKScoreInternal *)v5 setPlayer:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"leaderboardIdentifier"];
    [(GKScoreInternal *)v5 setLeaderboardIdentifier:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupLeaderboardIdentifier"];
    [(GKScoreInternal *)v5 setGroupLeaderboardIdentifier:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playerID"];
    if (v9)
    {
      v10 = +[(GKInternalRepresentation *)GKPlayerInternal];
      [v10 setPlayerID:v9];
      [(GKScoreInternal *)v5 setPlayer:v10];
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    if (v11)
    {
      [(GKScoreInternal *)v5 setCategory:v11];
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupCategory"];

    if (v12)
    {
      [(GKScoreInternal *)v5 setGroupCategory:v12];
    }

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formattedValue"];
    [(GKScoreInternal *)v5 setFormattedValue:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    [(GKScoreInternal *)v5 setDate:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rank"];
    v16 = v15;
    if (v15)
    {
      unsignedIntegerValue = [v15 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = [coderCopy decodeIntegerForKey:@"rank"];
    }

    [(GKScoreInternal *)v5 setRank:unsignedIntegerValue];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    v19 = v18;
    if (v18)
    {
      longLongValue = [v18 longLongValue];
    }

    else
    {
      longLongValue = [coderCopy decodeInt64ForKey:@"value"];
    }

    [(GKScoreInternal *)v5 setValue:longLongValue];
    if ([coderCopy containsValueForKey:@"valueSet"])
    {
      v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valueSet"];
      -[GKScoreInternal setValueSet:](v5, "setValueSet:", [v21 BOOLValue]);
    }

    else
    {
      [(GKScoreInternal *)v5 setValueSet:1];
    }

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    v23 = v22;
    if (v22)
    {
      longLongValue2 = [v22 longLongValue];
    }

    else
    {
      longLongValue2 = [coderCopy decodeInt64ForKey:@"context"];
    }

    [(GKScoreInternal *)v5 setContext:longLongValue2];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
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
  leaderboardIdentifier = [(GKScoreInternal *)self leaderboardIdentifier];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[GKScoreInternal context](self, "context")}];
  date = [(GKScoreInternal *)self date];
  if (date)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = MEMORY[0x277CBEAA8];
  }

  date2 = [(GKScoreInternal *)selfCopy date];
  _gkServerTimestamp = [date2 _gkServerTimestamp];
  v11 = [v3 dictionaryWithObjectsAndKeys:{v4, @"score-value", leaderboardIdentifier, @"category", v6, @"context", _gkServerTimestamp, @"timestamp", 0}];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    rank = [(GKScoreInternal *)self rank];
    if (rank != [v6 rank] || (v8 = -[GKScoreInternal value](self, "value"), v8 != objc_msgSend(v6, "value")) || (v9 = -[GKScoreInternal context](self, "context"), v9 != objc_msgSend(v6, "context")))
    {
      v13 = 0;
LABEL_10:

      goto LABEL_11;
    }

    date = [(GKScoreInternal *)self date];
    date2 = [v6 date];
    if (date != date2)
    {
      date3 = [(GKScoreInternal *)self date];
      date4 = [v6 date];
      if (![date3 isEqual:date4])
      {
        v13 = 0;
LABEL_20:

LABEL_21:
        goto LABEL_10;
      }

      v22 = date4;
    }

    playerID = [(GKScoreInternal *)self playerID];
    playerID2 = [v6 playerID];
    if ([playerID isEqualToString:playerID2])
    {
      leaderboardIdentifier = [(GKScoreInternal *)self leaderboardIdentifier];
      leaderboardIdentifier2 = [v6 leaderboardIdentifier];
      if ([leaderboardIdentifier isEqual:leaderboardIdentifier2])
      {
        v13 = 1;
      }

      else
      {
        groupLeaderboardIdentifier = [(GKScoreInternal *)self groupLeaderboardIdentifier];
        [v6 groupLeaderboardIdentifier];
        v19 = v21 = date3;
        v13 = [groupLeaderboardIdentifier isEqual:v19];

        date3 = v21;
      }
    }

    else
    {

      v13 = 0;
    }

    date4 = v22;
    if (date == date2)
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
  playerID = [(GKScoreInternal *)self playerID];
  v3 = [playerID hash];

  return v3;
}

- (NSString)playerID
{
  player = [(GKScoreInternal *)self player];
  playerID = [player playerID];

  return playerID;
}

@end