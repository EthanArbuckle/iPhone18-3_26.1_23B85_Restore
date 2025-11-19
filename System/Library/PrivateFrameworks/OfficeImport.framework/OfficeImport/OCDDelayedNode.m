@interface OCDDelayedNode
- (BOOL)load;
- (void)setDelayedContext:(id)a3;
@end

@implementation OCDDelayedNode

- (BOOL)load
{
  if ([(OCDDelayedNode *)self isLoaded])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(OCDDelayedNodeContext *)self->mDelayedContext loadDelayedNode:self];
    if (v3)
    {
      mDelayedContext = self->mDelayedContext;
      self->mDelayedContext = 0;

      LOBYTE(v3) = 1;
      self->mLoaded = 1;
    }
  }

  return v3;
}

- (void)setDelayedContext:(id)a3
{
  v5 = a3;
  mDelayedContext = self->mDelayedContext;
  p_mDelayedContext = &self->mDelayedContext;
  if (mDelayedContext != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mDelayedContext, a3);
    v5 = v8;
  }
}

@end