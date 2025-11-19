@interface CHXDrawingState
- (CHXDrawingState)initWithCHXState:(id)a3;
@end

@implementation CHXDrawingState

- (CHXDrawingState)initWithCHXState:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(OAXClient);
  v10.receiver = self;
  v10.super_class = CHXDrawingState;
  v7 = [(OAXDrawingState *)&v10 initWithClient:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->mCHXState, a3);
  }

  return v8;
}

@end