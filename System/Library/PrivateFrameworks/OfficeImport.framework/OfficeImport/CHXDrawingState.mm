@interface CHXDrawingState
- (CHXDrawingState)initWithCHXState:(id)state;
@end

@implementation CHXDrawingState

- (CHXDrawingState)initWithCHXState:(id)state
{
  stateCopy = state;
  v6 = objc_alloc_init(OAXClient);
  v10.receiver = self;
  v10.super_class = CHXDrawingState;
  v7 = [(OAXDrawingState *)&v10 initWithClient:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->mCHXState, state);
  }

  return v8;
}

@end