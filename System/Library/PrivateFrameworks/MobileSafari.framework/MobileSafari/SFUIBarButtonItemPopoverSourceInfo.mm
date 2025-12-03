@interface SFUIBarButtonItemPopoverSourceInfo
- (NSString)description;
- (SFUIBarButtonItemPopoverSourceInfo)initWithItem:(id)item;
@end

@implementation SFUIBarButtonItemPopoverSourceInfo

- (SFUIBarButtonItemPopoverSourceInfo)initWithItem:(id)item
{
  itemCopy = item;
  v10.receiver = self;
  v10.super_class = SFUIBarButtonItemPopoverSourceInfo;
  v6 = [(SFUIBarButtonItemPopoverSourceInfo *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, item);
    v8 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p item = %@>", v5, self, self->_item];;

  return v6;
}

@end