@interface HMHomeManagerDelegateAdapter
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation HMHomeManagerDelegateAdapter

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  didUpdateHomes = [(HMHomeManagerDelegateAdapter *)self didUpdateHomes];

  if (didUpdateHomes)
  {
    didUpdateHomes2 = [(HMHomeManagerDelegateAdapter *)self didUpdateHomes];
    (didUpdateHomes2)[2](didUpdateHomes2, homesCopy);
  }
}

@end