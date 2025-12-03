@interface EFResource
- (BOOL)returnResource;
- (EFResource)init;
@end

@implementation EFResource

- (EFResource)init
{
  v3.receiver = self;
  v3.super_class = EFResource;
  result = [(EFResource *)&v3 init];
  if (result)
  {
    result->_unfair_lock._os_unfair_lock_opaque = 0;
    atomic_store(0, &result->_lockCount);
  }

  return result;
}

- (BOOL)returnResource
{
  add = atomic_fetch_add(&self->_lockCount, 0xFFFFFFFFFFFFFFFFLL);
  if (add <= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFResource.m" lineNumber:130 description:@"returnResource called too many times"];
  }

  return add == 1;
}

@end