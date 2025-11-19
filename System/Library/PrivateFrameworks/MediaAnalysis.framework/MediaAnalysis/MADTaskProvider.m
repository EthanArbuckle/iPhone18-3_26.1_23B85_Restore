@interface MADTaskProvider
- (id)logDescription;
- (unint64_t)taskID;
@end

@implementation MADTaskProvider

- (unint64_t)taskID
{
  v2 = objc_opt_class();

  return [v2 taskID];
}

- (id)logDescription
{
  [(MADTaskProvider *)self taskID];

  return VCPTaskIDDescription();
}

@end