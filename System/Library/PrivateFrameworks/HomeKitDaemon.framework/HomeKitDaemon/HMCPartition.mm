@interface HMCPartition
- (HMCPartition)init;
@end

@implementation HMCPartition

- (HMCPartition)init
{
  v6.receiver = self;
  v6.super_class = HMCPartition;
  v2 = [(HMCPartition *)&v6 init];
  if (v2)
  {
    v3 = [[HMCRedirector alloc] initWithLabel:@"REDIR" partition:v2];
    redirections = v2->_redirections;
    v2->_redirections = v3;
  }

  return v2;
}

@end