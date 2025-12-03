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
  _gkScore = [self _gkScore];
  v12 = [_gkScore challengeComposeControllerWithMessage:v10 players:v9 completionHandler:v8];

  return v12;
}

- (id)challengeComposeControllerWithMessage:()GKChallenge players:completion:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  _gkScore = [self _gkScore];
  v12 = [_gkScore challengeComposeControllerWithMessage:v10 players:v9 completion:v8];

  return v12;
}

@end