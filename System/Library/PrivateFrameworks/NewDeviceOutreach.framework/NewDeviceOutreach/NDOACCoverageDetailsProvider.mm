@interface NDOACCoverageDetailsProvider
+ (void)getCachedCoverageDetailsForSerialNumber:(id)number requester:(unint64_t)requester completion:(id)completion;
- (NDOACCoverageDetailsProvider)init;
@end

@implementation NDOACCoverageDetailsProvider

+ (void)getCachedCoverageDetailsForSerialNumber:(id)number requester:(unint64_t)requester completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = sub_25BD797B8();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  sub_25BD54F8C(v7, v9, requester, sub_25BD54CA0, v10);
}

- (NDOACCoverageDetailsProvider)init
{
  v3.receiver = self;
  v3.super_class = NDOACCoverageDetailsProvider;
  return [(NDOACCoverageDetailsProvider *)&v3 init];
}

@end