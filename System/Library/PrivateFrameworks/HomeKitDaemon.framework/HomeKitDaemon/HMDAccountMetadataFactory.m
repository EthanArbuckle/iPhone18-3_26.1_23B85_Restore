@interface HMDAccountMetadataFactory
+ (id)makeInstance;
- (HMDAccountMetadataFactory)init;
@end

@implementation HMDAccountMetadataFactory

+ (id)makeInstance
{
  if (qword_281402A78 != -1)
  {
    swift_once();
  }

  v3 = qword_2814050B0;

  return v3;
}

- (HMDAccountMetadataFactory)init
{
  v3.receiver = self;
  v3.super_class = HMDAccountMetadataFactory;
  return [(HMDAccountMetadataFactory *)&v3 init];
}

@end