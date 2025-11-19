@interface FCFeedTransformationIdentity
+ (id)sharedInstance;
- (id)transformFeedItems:(id)a3;
@end

@implementation FCFeedTransformationIdentity

+ (id)sharedInstance
{
  if (qword_1EDB275D0 != -1)
  {
    dispatch_once(&qword_1EDB275D0, &__block_literal_global_103);
  }

  v3 = _MergedGlobals_175;

  return v3;
}

uint64_t __46__FCFeedTransformationIdentity_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MergedGlobals_175;
  _MergedGlobals_175 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)transformFeedItems:(id)a3
{
  v3 = [a3 copy];

  return v3;
}

@end