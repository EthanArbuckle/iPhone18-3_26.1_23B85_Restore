@interface GKGameInternal
+ (id)createGameControllerDaemonGameInternal;
+ (id)createGamedGameInternal;
+ (id)secureCodedPropertyKeys;
- (BOOL)canBeIndexed;
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsChallenges;
- (GKGameDescriptor)gameDescriptor;
- (NSURL)storeURL;
- (id)description;
- (unint64_t)hash;
- (void)setHasAggregateLeaderboard:(BOOL)leaderboard;
- (void)setIsArcadeGame:(BOOL)game;
- (void)setPrerendered:(BOOL)prerendered;
- (void)setSupportsAchievements:(BOOL)achievements;
- (void)setSupportsChallenges:(BOOL)challenges;
- (void)setSupportsLeaderboardChallenges:(BOOL)challenges;
- (void)setSupportsLeaderboardSets:(BOOL)sets;
- (void)setSupportsLeaderboards:(BOOL)leaderboards;
- (void)setSupportsMultiplayer:(BOOL)multiplayer;
- (void)setSupportsTurnBasedMultiplayer:(BOOL)multiplayer;
- (void)setValid:(BOOL)valid;
@end

@implementation GKGameInternal

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = [(GKGameDescriptor *)self bundleIdentifier];
    bundleIdentifier2 = [equalCopy bundleIdentifier];
    v7 = [bundleIdentifier isEqual:bundleIdentifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  bundleIdentifier = [(GKGameDescriptor *)self bundleIdentifier];
  v3 = [bundleIdentifier hash];

  return v3;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_20 != -1)
  {
    +[GKGameInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_20;

  return v3;
}

void __41__GKGameInternal_secureCodedPropertyKeys__block_invoke()
{
  v14[18] = *MEMORY[0x277D85DE8];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v14[2] = objc_opt_class();
  v14[3] = objc_opt_class();
  v14[4] = objc_opt_class();
  v14[5] = objc_opt_class();
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0, @"bundleIdentifier", @"bundleVersion", @"adamID", @"artwork", @"externalVersion", @"name", @"icons"}];
  v14[6] = v3;
  v13[7] = @"defaultLeaderboardIdentifier";
  v14[7] = objc_opt_class();
  v13[8] = @"flags";
  v14[8] = objc_opt_class();
  v13[9] = @"numberOfLeaderboards";
  v14[9] = objc_opt_class();
  v13[10] = @"numberOfLeaderboardSets";
  v14[10] = objc_opt_class();
  v13[11] = @"numberOfAchievements";
  v14[11] = objc_opt_class();
  v13[12] = @"maxAchievementPoints";
  v14[12] = objc_opt_class();
  v13[13] = @"shortBundleVersion";
  v14[13] = objc_opt_class();
  v13[14] = @"platform";
  v14[14] = objc_opt_class();
  v13[15] = @"compatiblePlatforms";
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v14[15] = v6;
  v13[16] = @"supportedTransports";
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v14[16] = v9;
  v13[17] = @"isArcadeGame";
  v14[17] = objc_opt_class();
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:18];

  v11 = secureCodedPropertyKeys_sSecureCodedKeys_20;
  secureCodedPropertyKeys_sSecureCodedKeys_20 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  platform = [(GKGameDescriptor *)self platform];
  if ((platform - 1) > 4)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_2785E2618[platform - 1];
  }

  v8.receiver = self;
  v8.super_class = GKGameInternal;
  v5 = [(GKGameDescriptor *)&v8 description];
  v6 = [v5 stringByAppendingFormat:@" (%@)", v4];

  return v6;
}

- (void)setPrerendered:(BOOL)prerendered
{
  v3 = 256;
  if (!prerendered)
  {
    v3 = 0;
  }

  self->_flags.var0 = (*&self->_flags.var0 & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setSupportsLeaderboards:(BOOL)leaderboards
{
  v3 = 512;
  if (!leaderboards)
  {
    v3 = 0;
  }

  self->_flags.var0 = (*&self->_flags.var0 & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setSupportsLeaderboardSets:(BOOL)sets
{
  v3 = 1024;
  if (!sets)
  {
    v3 = 0;
  }

  self->_flags.var0 = (*&self->_flags.var0 & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasAggregateLeaderboard:(BOOL)leaderboard
{
  v3 = 2048;
  if (!leaderboard)
  {
    v3 = 0;
  }

  self->_flags.var0 = (*&self->_flags.var0 & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setSupportsAchievements:(BOOL)achievements
{
  v3 = 4096;
  if (!achievements)
  {
    v3 = 0;
  }

  self->_flags.var0 = (*&self->_flags.var0 & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setSupportsMultiplayer:(BOOL)multiplayer
{
  v3 = 0x2000;
  if (!multiplayer)
  {
    v3 = 0;
  }

  self->_flags.var0 = (*&self->_flags.var0 & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (BOOL)canBeIndexed
{
  if ([(GKGameInternal *)self supportsAchievements]|| [(GKGameInternal *)self supportsLeaderboards]|| [(GKGameInternal *)self supportsLeaderboardSets]|| [(GKGameInternal *)self supportsMultiplayer])
  {
    return 1;
  }

  return [(GKGameInternal *)self supportsTurnBasedMultiplayer];
}

- (void)setValid:(BOOL)valid
{
  v3 = 0x4000;
  if (!valid)
  {
    v3 = 0;
  }

  self->_flags.var0 = (*&self->_flags.var0 & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setSupportsTurnBasedMultiplayer:(BOOL)multiplayer
{
  v3 = 0x10000;
  if (!multiplayer)
  {
    v3 = 0;
  }

  self->_flags.var0 = (*&self->_flags.var0 & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (GKGameDescriptor)gameDescriptor
{
  bundleIdentifier = [(GKGameDescriptor *)self bundleIdentifier];
  bundleVersion = [(GKGameDescriptor *)self bundleVersion];
  shortBundleVersion = [(GKGameDescriptor *)self shortBundleVersion];
  adamID = [(GKGameDescriptor *)self adamID];
  v7 = [GKGameDescriptor gameDescriptorWithBundleID:bundleIdentifier bundleVersion:bundleVersion shortBundleVersion:shortBundleVersion adamID:adamID];

  externalVersion = [(GKGameDescriptor *)self externalVersion];
  [v7 setExternalVersion:externalVersion];

  [v7 setPlatform:{-[GKGameDescriptor platform](self, "platform")}];

  return v7;
}

- (BOOL)supportsChallenges
{
  var0 = self->_flags.var0;
  if ((*&var0 & 0x40000) == 0)
  {
    v2 = +[GKPreferences shared];
    if (![v2 supportsChallenges])
    {
      supportsAchievements = 0;
      goto LABEL_9;
    }
  }

  if ([(GKGameInternal *)self supportsLeaderboards]|| [(GKGameInternal *)self supportsLeaderboardSets])
  {
    supportsAchievements = 1;
    if ((*&var0 & 0x40000) != 0)
    {
      return supportsAchievements;
    }

    goto LABEL_9;
  }

  supportsAchievements = [(GKGameInternal *)self supportsAchievements];
  if ((*&var0 & 0x40000) == 0)
  {
LABEL_9:
  }

  return supportsAchievements;
}

- (void)setIsArcadeGame:(BOOL)game
{
  v3 = 0x20000;
  if (!game)
  {
    v3 = 0;
  }

  self->_flags.var0 = (*&self->_flags.var0 & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setSupportsChallenges:(BOOL)challenges
{
  v3 = 0x40000;
  if (!challenges)
  {
    v3 = 0;
  }

  self->_flags.var0 = (*&self->_flags.var0 & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setSupportsLeaderboardChallenges:(BOOL)challenges
{
  v3 = 0x80000;
  if (!challenges)
  {
    v3 = 0;
  }

  self->_flags.var0 = (*&self->_flags.var0 & 0xFFFFFFFFFFF7FFFFLL | v3);
}

+ (id)createGamedGameInternal
{
  v2 = objc_opt_new();
  [v2 setBundleIdentifier:@"com.apple.gamed"];
  [v2 setName:@"gamed"];

  return v2;
}

+ (id)createGameControllerDaemonGameInternal
{
  v2 = objc_opt_new();
  [v2 setBundleIdentifier:@"com.apple.GameController.gamecontrollerd"];
  [v2 setName:@"gamecontrollerd"];

  return v2;
}

- (NSURL)storeURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = MEMORY[0x277CCACA8];
  adamID = [(GKGameDescriptor *)self adamID];
  v5 = [v3 stringWithFormat:@"https://apps.apple.com/app/id%@", adamID];
  v6 = [v2 URLWithString:v5];

  return v6;
}

@end