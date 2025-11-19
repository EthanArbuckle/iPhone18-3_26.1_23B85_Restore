@interface SUUITabularLockupColumn
- (CGSize)size;
- (SUUITabularLockupColumn)initWithColumnIdentifier:(int64_t)a3;
- (id)description;
@end

@implementation SUUITabularLockupColumn

- (SUUITabularLockupColumn)initWithColumnIdentifier:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = SUUITabularLockupColumn;
  v4 = [(SUUITabularLockupColumn *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    childViewElements = v4->_childViewElements;
    v4->_childViewElements = v5;

    v4->_identifier = a3;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = SUUITabularLockupColumn;
  v4 = [(SUUITabularLockupColumn *)&v9 description];
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