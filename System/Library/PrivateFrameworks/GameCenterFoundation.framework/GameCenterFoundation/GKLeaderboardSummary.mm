@interface GKLeaderboardSummary
- (GKLeaderboardSummary)initWithInternalRepresentation:(id)representation;
@end

@implementation GKLeaderboardSummary

- (GKLeaderboardSummary)initWithInternalRepresentation:(id)representation
{
  representationCopy = representation;
  v8.receiver = self;
  v8.super_class = GKLeaderboardSummary;
  v5 = [(GKLeaderboardSummary *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKLeaderboardSummary *)v5 setInternal:representationCopy];
  }

  return v6;
}

@end