@interface HMDAppleHomePodAccessoryModel
- (id)_initWithObjectChangeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d;
@end

@implementation HMDAppleHomePodAccessoryModel

- (id)_initWithObjectChangeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d
{
  v6.receiver = self;
  v6.super_class = HMDAppleHomePodAccessoryModel;
  return [(HMDAppleMediaAccessoryModel *)&v6 _initWithObjectChangeType:type uuid:uuid parentUUID:d];
}

@end