@interface _MRPSMRecipe
+ (id)legacySetPlaybackSessionWithSessionType:(id)type;
+ (id)notPossibleWithError:(id)error;
+ (id)oneShotSetPlaybackSessionWithCommandInfo:(id)info;
@end

@implementation _MRPSMRecipe

+ (id)notPossibleWithError:(id)error
{
  errorCopy = error;
  v4 = objc_alloc_init(objc_opt_class());
  v4[2] = 0;
  v5 = [errorCopy copy];

  v6 = *(v4 + 2);
  *(v4 + 2) = v5;

  return v4;
}

+ (id)legacySetPlaybackSessionWithSessionType:(id)type
{
  typeCopy = type;
  v4 = objc_alloc_init(objc_opt_class());
  v4[2] = 1;
  v5 = [typeCopy copy];

  v6 = *(v4 + 3);
  *(v4 + 3) = v5;

  return v4;
}

+ (id)oneShotSetPlaybackSessionWithCommandInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(objc_opt_class());
  v4[2] = 2;
  v5 = *(v4 + 4);
  *(v4 + 4) = infoCopy;

  return v4;
}

@end