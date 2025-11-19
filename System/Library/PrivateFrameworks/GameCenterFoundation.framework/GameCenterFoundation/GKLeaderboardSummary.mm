@interface GKLeaderboardSummary
- (GKLeaderboardSummary)initWithInternalRepresentation:(id)a3;
@end

@implementation GKLeaderboardSummary

- (GKLeaderboardSummary)initWithInternalRepresentation:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GKLeaderboardSummary;
  v5 = [(GKLeaderboardSummary *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKLeaderboardSummary *)v5 setInternal:v4];
  }

  return v6;
}

@end