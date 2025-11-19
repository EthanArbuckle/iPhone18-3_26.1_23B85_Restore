@interface GKLeaderboardScorePlayersRequest
- (BOOL)isEqual:(id)a3;
- (GKLeaderboardScorePlayersRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GKLeaderboardScorePlayersRequest

- (GKLeaderboardScorePlayersRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GKLeaderboardScorePlayersRequest;
  v5 = [(GKLeaderboardScoreRequest *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"playerInternals"];
    playerInternals = v5->_playerInternals;
    v5->_playerInternals = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = GKLeaderboardScorePlayersRequest;
  v4 = a3;
  [(GKLeaderboardScoreRequest *)&v6 encodeWithCoder:v4];
  v5 = [(NSArray *)self->_playerInternals _gkMapWithBlock:&__block_literal_global_26, v6.receiver, v6.super_class];
  [v4 encodeObject:v5 forKey:@"playerInternals"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GKLeaderboardScorePlayersRequest;
  if ([(GKLeaderboardScoreRequest *)&v9 isEqual:v4])
  {
    v5 = v4;
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