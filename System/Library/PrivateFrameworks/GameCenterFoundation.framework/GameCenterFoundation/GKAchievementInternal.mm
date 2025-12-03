@interface GKAchievementInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
- (GKAchievementInternal)initWithCoder:(id)coder;
- (id)serverRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHidden:(BOOL)hidden;
- (void)setReplayable:(BOOL)replayable;
@end

@implementation GKAchievementInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_23 != -1)
  {
    +[GKAchievementInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_23;

  return v3;
}

void __48__GKAchievementInternal_secureCodedPropertyKeys__block_invoke()
{
  v15[17] = *MEMORY[0x277D85DE8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0, @"achievedDescription", @"attributes", @"friendsWhoHaveThis"}];
  v15[2] = v3;
  v14[3] = @"groupIdentifier";
  v15[3] = objc_opt_class();
  v14[4] = @"icons";
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  v15[4] = v7;
  v14[5] = @"ascResourceID";
  v15[5] = objc_opt_class();
  v14[6] = @"identifier";
  v15[6] = objc_opt_class();
  v14[7] = @"lastReportedDate";
  v15[7] = objc_opt_class();
  v14[8] = @"percentComplete";
  v15[8] = objc_opt_class();
  v14[9] = @"player";
  v15[9] = objc_opt_class();
  v14[10] = @"rarityPercent";
  v15[10] = objc_opt_class();
  v14[11] = @"activityIdentifier";
  v15[11] = objc_opt_class();
  v14[12] = @"activityProperties";
  v8 = MEMORY[0x277CBEB98];
  v9 = +[GKInternalRepresentation secureCodedJsonTypes];
  v10 = [v8 setWithSet:v9];
  v15[12] = v10;
  v14[13] = @"releaseState";
  v15[13] = objc_opt_class();
  v14[14] = @"title";
  v15[14] = objc_opt_class();
  v14[15] = @"unachievedDescription";
  v15[15] = objc_opt_class();
  v14[16] = @"gameHint";
  v15[16] = objc_opt_class();
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:17];

  v12 = secureCodedPropertyKeys_sSecureCodedKeys_23;
  secureCodedPropertyKeys_sSecureCodedKeys_23 = v11;

  v13 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = GKAchievementInternal;
  coderCopy = coder;
  [(GKInternalRepresentation *)&v7 encodeWithCoder:coderCopy];
  v5 = [(GKAchievementInternal *)self player:v7.receiver];
  playerID = [v5 playerID];
  [coderCopy encodeObject:playerID forKey:@"playerID"];

  [coderCopy encodeObject:MEMORY[0x277CBEC38] forKey:@"hasFullPlayer"];
}

- (GKAchievementInternal)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = GKAchievementInternal;
  v5 = [(GKInternalRepresentation *)&v11 initWithCoder:coderCopy];
  v6 = v5;
  if (v5 && !v5->_player)
  {
    v7 = +[(GKInternalRepresentation *)GKPlayerInternal];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playerID"];
    [(GKPlayerInternal *)v7 setPlayerID:v8];

    player = v6->_player;
    v6->_player = v7;
  }

  return v6;
}

- (id)serverRepresentation
{
  [(GKAchievementInternal *)self percentComplete];
  v4 = v3;
  lastReportedDate = [(GKAchievementInternal *)self lastReportedDate];
  if (!lastReportedDate)
  {
    lastReportedDate = [MEMORY[0x277CBEAA8] date];
  }

  v6 = v4;
  if (v6 <= 100.0)
  {
    v7 = v4;
  }

  else
  {
    v7 = 100.0;
  }

  v8 = MEMORY[0x277CBEAC0];
  identifier = [(GKAchievementInternal *)self identifier];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[GKAchievementInternal isHidden](self, "isHidden")}];
  v11 = [MEMORY[0x277CCABB0] numberWithLong:v7];
  _gkServerTimestamp = [lastReportedDate _gkServerTimestamp];
  groupIdentifier = [(GKAchievementInternal *)self groupIdentifier];
  v14 = [v8 dictionaryWithObjectsAndKeys:{identifier, @"achievement-id", v10, @"is-hidden", v11, @"achievement-pct", _gkServerTimestamp, @"timestamp", groupIdentifier, @"group-achievement-id", 0}];

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(GKAchievementInternal *)self identifier];
    identifier2 = [v5 identifier];
    if ([identifier isEqualToString:identifier2])
    {
      v8 = 1;
    }

    else
    {
      groupIdentifier = [(GKAchievementInternal *)self groupIdentifier];
      groupIdentifier2 = [v5 groupIdentifier];
      v8 = [groupIdentifier isEqualToString:groupIdentifier2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(GKAchievementInternal *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)setHidden:(BOOL)hidden
{
  if (hidden)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_attributes._value = self->_attributes._value & 0xFFFEFFFF | v3;
}

- (void)setReplayable:(BOOL)replayable
{
  if (replayable)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_attributes._value = self->_attributes._value & 0xFFFDFFFF | v3;
}

@end