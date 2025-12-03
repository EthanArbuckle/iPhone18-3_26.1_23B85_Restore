@interface _CATBlockTaskOperation
- (_CATBlockTaskOperation)initWithBlock:(id)block request:(id)request;
- (void)main;
@end

@implementation _CATBlockTaskOperation

- (_CATBlockTaskOperation)initWithBlock:(id)block request:(id)request
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = _CATBlockTaskOperation;
  v7 = [(CATTaskOperation *)&v11 initWithRequest:request];
  if (v7)
  {
    v8 = MEMORY[0x245D2F510](blockCopy);
    mBlock = v7->mBlock;
    v7->mBlock = v8;
  }

  return v7;
}

- (void)main
{
  mBlock = self->mBlock;
  request = [(CATTaskOperation *)self request];
  v7 = 0;
  v5 = mBlock[2](mBlock, request, &v7);
  v6 = v7;

  if (v6)
  {
    [(CATOperation *)self endOperationWithError:v6];
  }

  else
  {
    [(CATOperation *)self endOperationWithResultObject:v5];
  }
}

@end