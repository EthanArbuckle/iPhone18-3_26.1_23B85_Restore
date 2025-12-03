@interface GKLeaderboardScoreRequest
+ (id)requestForPlayerInternals:(id)internals;
+ (id)requestForRankRange:(_NSRange)range;
- (BOOL)isEqual:(id)equal;
- (GKLeaderboardScoreRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GKLeaderboardScoreRequest

+ (id)requestForRankRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = objc_alloc_init(GKLeaderboardScoreRangeRequest);
  [(GKLeaderboardScoreRangeRequest *)v5 setRange:location, length];

  return v5;
}

+ (id)requestForPlayerInternals:(id)internals
{
  internalsCopy = internals;
  v4 = objc_alloc_init(GKLeaderboardScorePlayersRequest);
  [(GKLeaderboardScorePlayersRequest *)v4 setPlayerInternals:internalsCopy];

  return v4;
}

- (GKLeaderboardScoreRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = GKLeaderboardScoreRequest;
  v5 = [(GKLeaderboardScoreRequest *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playerInternal"];
    playerInternal = v5->_playerInternal;
    v5->_playerInternal = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gameBundleID"];
    gameBundleID = v5->_gameBundleID;
    v5->_gameBundleID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v12;

    v5->_timeScope = [coderCopy decodeInt32ForKey:@"timeScope"];
    v5->_friendsOnly = [coderCopy decodeBoolForKey:@"friendsOnly"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  playerInternal = self->_playerInternal;
  coderCopy = coder;
  minimalInternal = [(GKPlayerInternal *)playerInternal minimalInternal];
  [coderCopy encodeObject:minimalInternal forKey:@"playerInternal"];

  [coderCopy encodeObject:self->_gameBundleID forKey:@"gameBundleID"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_groupIdentifier forKey:@"groupIdentifier"];
  [coderCopy encodeInt32:LODWORD(self->_timeScope) forKey:@"timeScope"];
  [coderCopy encodeBool:self->_friendsOnly forKey:@"friendsOnly"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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