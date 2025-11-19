@interface XRSpaceBlockOp
- (XRSpaceBlockOp)initWithSpaceBlock:(id)a3;
- (void)main;
@end

@implementation XRSpaceBlockOp

- (XRSpaceBlockOp)initWithSpaceBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = XRSpaceBlockOp;
  v5 = [(XRSpaceBlockOp *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x24C1C5B20](v4);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)main
{
  (*(self->_block + 2))();
  block = self->_block;
  self->_block = 0;
}

@end