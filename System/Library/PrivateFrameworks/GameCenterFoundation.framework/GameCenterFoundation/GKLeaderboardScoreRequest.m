@interface GKLeaderboardScoreRequest
+ (id)requestForPlayerInternals:(id)a3;
+ (id)requestForRankRange:(_NSRange)a3;
- (BOOL)isEqual:(id)a3;
- (GKLeaderboardScoreRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GKLeaderboardScoreRequest

+ (id)requestForRankRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = objc_alloc_init(GKLeaderboardScoreRangeRequest);
  [(GKLeaderboardScoreRangeRequest *)v5 setRange:location, length];

  return v5;
}

+ (id)requestForPlayerInternals:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(GKLeaderboardScorePlayersRequest);
  [(GKLeaderboardScorePlayersRequest *)v4 setPlayerInternals:v3];

  return v4;
}

- (GKLeaderboardScoreRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = GKLeaderboardScoreRequest;
  v5 = [(GKLeaderboardScoreRequest *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playerInternal"];
    playerInternal = v5->_playerInternal;
    v5->_playerInternal = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gameBundleID"];
    gameBundleID = v5->_gameBundleID;
    v5->_gameBundleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v12;

    v5->_timeScope = [v4 decodeInt32ForKey:@"timeScope"];
    v5->_friendsOnly = [v4 decodeBoolForKey:@"friendsOnly"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  playerInternal = self->_playerInternal;
  v6 = a3;
  v5 = [(GKPlayerInternal *)playerInternal minimalInternal];
  [v6 encodeObject:v5 forKey:@"playerInternal"];

  [v6 encodeObject:self->_gameBundleID forKey:@"gameBundleID"];
  [v6 encodeObject:self->_identifier forKey:@"identifier"];
  [v6 encodeObject:self->_groupIdentifier forKey:@"groupIdentifier"];
  [v6 encodeInt32:LODWORD(self->_timeScope) forKey:@"timeScope"];
  [v6 encodeBool:self->_friendsOnly forKey:@"friendsOnly"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    identifier = self->_identifier;
    v10 = (identifier == v5[3] || [(NSString *)identifier isEqualToString:?]) && ((groupIdentifier = self->_groupIdentifier, groupIdentifier == v5[4]) || [(NSString *)groupIdentifier isEqualToString:?]) && ((playerInternal = self->_playerInternal, playerInternal == v5[1]) || [(GKPlayerInternal *)playerInternal isEqual:?]) && ((gameBundleID = self->_gameBundleID, gameBundleID == v5[2]) || [(NSString *)gameBundleID isEqualToString:?]) && self->_timeScope == v5[6] && self->_friendsOnly == *(v5 + 40);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end