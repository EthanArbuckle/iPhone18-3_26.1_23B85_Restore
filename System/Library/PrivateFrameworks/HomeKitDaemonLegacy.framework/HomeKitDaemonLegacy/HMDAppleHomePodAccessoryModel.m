@interface HMDAppleHomePodAccessoryModel
- (id)_initWithObjectChangeType:(unint64_t)a3 uuid:(id)a4 parentUUID:(id)a5;
@end

@implementation HMDAppleHomePodAccessoryModel

- (id)_initWithObjectChangeType:(unint64_t)a3 uuid:(id)a4 parentUUID:(id)a5
{
  v6.receiver = self;
  v6.super_class = HMDAppleHomePodAccessoryModel;
  return [(HMDAppleMediaAccessoryModel *)&v6 _initWithObjectChangeType:a3 uuid:a4 parentUUID:a5];
}

@end