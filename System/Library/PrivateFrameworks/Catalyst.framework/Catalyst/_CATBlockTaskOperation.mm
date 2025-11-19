@interface _CATBlockTaskOperation
- (_CATBlockTaskOperation)initWithBlock:(id)a3 request:(id)a4;
- (void)main;
@end

@implementation _CATBlockTaskOperation

- (_CATBlockTaskOperation)initWithBlock:(id)a3 request:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _CATBlockTaskOperation;
  v7 = [(CATTaskOperation *)&v11 initWithRequest:a4];
  if (v7)
  {
    v8 = MEMORY[0x245D2F510](v6);
    mBlock = v7->mBlock;
    v7->mBlock = v8;
  }

  return v7;
}

- (void)main
{
  mBlock = self->mBlock;
  v4 = [(CATTaskOperation *)self request];
  v7 = 0;
  v5 = mBlock[2](mBlock, v4, &v7);
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