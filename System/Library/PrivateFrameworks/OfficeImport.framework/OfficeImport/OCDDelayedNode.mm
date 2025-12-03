@interface OCDDelayedNode
- (BOOL)load;
- (void)setDelayedContext:(id)context;
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

- (void)setDelayedContext:(id)context
{
  contextCopy = context;
  mDelayedContext = self->mDelayedContext;
  p_mDelayedContext = &self->mDelayedContext;
  if (mDelayedContext != contextCopy)
  {
    v8 = contextCopy;
    objc_storeStrong(p_mDelayedContext, context);
    contextCopy = v8;
  }
}

@end