@interface GKLeaderboardEntry(GKChallenge)
- (id)challengeComposeControllerWithMessage:()GKChallenge players:completion:;
- (id)challengeComposeControllerWithMessage:()GKChallenge players:completionHandler:;
@end

@implementation GKLeaderboardEntry(GKChallenge)

- (id)challengeComposeControllerWithMessage:()GKChallenge players:completionHandler:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 _gkScore];
  v12 = [v11 challengeComposeControllerWithMessage:v10 players:v9 completionHandler:v8];

  return v12;
}

- (id)challengeComposeControllerWithMessage:()GKChallenge players:completion:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 _gkScore];
  v12 = [v11 challengeComposeControllerWithMessage:v10 players:v9 completion:v8];

  return v12;
}

@end