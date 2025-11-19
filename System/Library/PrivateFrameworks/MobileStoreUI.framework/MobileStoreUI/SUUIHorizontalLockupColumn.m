@interface SUUIHorizontalLockupColumn
- (CGSize)size;
- (SUUIHorizontalLockupColumn)init;
- (id)description;
@end

@implementation SUUIHorizontalLockupColumn

- (SUUIHorizontalLockupColumn)init
{
  v6.receiver = self;
  v6.super_class = SUUIHorizontalLockupColumn;
  v2 = [(SUUIHorizontalLockupColumn *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    childViewElements = v2->_childViewElements;
    v2->_childViewElements = v3;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = SUUIHorizontalLockupColumn;
  v4 = [(SUUIHorizontalLockupColumn *)&v9 description];
  identifier = self->_identifier;
  v6 = NSStringFromCGSize(self->_size);
  v7 = [v3 stringWithFormat:@"%@: [%ld, %@, %@]", v4, identifier, v6, self->_childViewElements];

  return v7;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end