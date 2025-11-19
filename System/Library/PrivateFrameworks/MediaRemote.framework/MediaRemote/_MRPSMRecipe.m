@interface _MRPSMRecipe
+ (id)legacySetPlaybackSessionWithSessionType:(id)a3;
+ (id)notPossibleWithError:(id)a3;
+ (id)oneShotSetPlaybackSessionWithCommandInfo:(id)a3;
@end

@implementation _MRPSMRecipe

+ (id)notPossibleWithError:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v4[2] = 0;
  v5 = [v3 copy];

  v6 = *(v4 + 2);
  *(v4 + 2) = v5;

  return v4;
}

+ (id)legacySetPlaybackSessionWithSessionType:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v4[2] = 1;
  v5 = [v3 copy];

  v6 = *(v4 + 3);
  *(v4 + 3) = v5;

  return v4;
}

+ (id)oneShotSetPlaybackSessionWithCommandInfo:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v4[2] = 2;
  v5 = *(v4 + 4);
  *(v4 + 4) = v3;

  return v4;
}

@end