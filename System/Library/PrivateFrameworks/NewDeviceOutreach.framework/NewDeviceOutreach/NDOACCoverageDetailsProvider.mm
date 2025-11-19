@interface NDOACCoverageDetailsProvider
+ (void)getCachedCoverageDetailsForSerialNumber:(id)a3 requester:(unint64_t)a4 completion:(id)a5;
- (NDOACCoverageDetailsProvider)init;
@end

@implementation NDOACCoverageDetailsProvider

+ (void)getCachedCoverageDetailsForSerialNumber:(id)a3 requester:(unint64_t)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_25BD797B8();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  sub_25BD54F8C(v7, v9, a4, sub_25BD54CA0, v10);
}

- (NDOACCoverageDetailsProvider)init
{
  v3.receiver = self;
  v3.super_class = NDOACCoverageDetailsProvider;
  return [(NDOACCoverageDetailsProvider *)&v3 init];
}

@end