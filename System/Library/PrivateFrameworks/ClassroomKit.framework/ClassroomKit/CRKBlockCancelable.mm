@interface CRKBlockCancelable
+ (id)cancelableWithBlock:(id)block;
- (CRKBlockCancelable)initWithBlock:(id)block;
- (void)cancel;
- (void)dealloc;
@end

@implementation CRKBlockCancelable

- (void)dealloc
{
  [(CRKBlockCancelable *)self cancel];
  v3.receiver = self;
  v3.super_class = CRKBlockCancelable;
  [(CRKBlockCancelable *)&v3 dealloc];
}

- (CRKBlockCancelable)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = CRKBlockCancelable;
  v5 = [(CRKBlockCancelable *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x245D3AAD0](blockCopy);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

+ (id)cancelableWithBlock:(id)block
{
  blockCopy = block;
  v5 = [[self alloc] initWithBlock:blockCopy];

  return v5;
}

- (void)cancel
{
  block = [(CRKBlockCancelable *)self block];
  [(CRKBlockCancelable *)self setBlock:0];
  v3 = block;
  if (block)
  {
    (*(block + 16))(block);
    v3 = block;
  }
}

@end