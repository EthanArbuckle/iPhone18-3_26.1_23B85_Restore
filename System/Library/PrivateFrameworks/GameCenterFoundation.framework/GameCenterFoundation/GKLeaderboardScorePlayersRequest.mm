@interface GKLeaderboardScorePlayersRequest
- (BOOL)isEqual:(id)equal;
- (GKLeaderboardScorePlayersRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GKLeaderboardScorePlayersRequest

- (GKLeaderboardScorePlayersRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = GKLeaderboardScorePlayersRequest;
  v5 = [(GKLeaderboardScoreRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"playerInternals"];
    playerInternals = v5->_playerInternals;
    v5->_playerInternals = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = GKLeaderboardScorePlayersRequest;
  coderCopy = coder;
  [(GKLeaderboardScoreRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(NSArray *)self->_playerInternals _gkMapWithBlock:&__block_literal_global_26, v6.receiver, v6.super_class];
  [coderCopy encodeObject:v5 forKey:@"playerInternals"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = GKLeaderboardScorePlayersRequest;
  if ([(GKLeaderboardScoreRequest *)&v9 isEqual:equalCopy])
  {
    v5 = equalCopy;
    playerInternals = self->_playerInternals;
    v7 = playerInternals == v5[8] || [(NSArray *)playerInternals isEqual:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end