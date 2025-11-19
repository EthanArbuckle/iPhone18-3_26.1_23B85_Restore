@interface CRKBlockCancelable
+ (id)cancelableWithBlock:(id)a3;
- (CRKBlockCancelable)initWithBlock:(id)a3;
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

- (CRKBlockCancelable)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKBlockCancelable;
  v5 = [(CRKBlockCancelable *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x245D3AAD0](v4);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

+ (id)cancelableWithBlock:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBlock:v4];

  return v5;
}

- (void)cancel
{
  v4 = [(CRKBlockCancelable *)self block];
  [(CRKBlockCancelable *)self setBlock:0];
  v3 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
    v3 = v4;
  }
}

@end