@interface HMHomeManagerDelegateAdapter
- (void)homeManagerDidUpdateHomes:(id)a3;
@end

@implementation HMHomeManagerDelegateAdapter

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v6 = a3;
  v4 = [(HMHomeManagerDelegateAdapter *)self didUpdateHomes];

  if (v4)
  {
    v5 = [(HMHomeManagerDelegateAdapter *)self didUpdateHomes];
    (v5)[2](v5, v6);
  }
}

@end