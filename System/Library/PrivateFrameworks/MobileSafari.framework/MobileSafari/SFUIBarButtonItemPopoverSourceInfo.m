@interface SFUIBarButtonItemPopoverSourceInfo
- (NSString)description;
- (SFUIBarButtonItemPopoverSourceInfo)initWithItem:(id)a3;
@end

@implementation SFUIBarButtonItemPopoverSourceInfo

- (SFUIBarButtonItemPopoverSourceInfo)initWithItem:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SFUIBarButtonItemPopoverSourceInfo;
  v6 = [(SFUIBarButtonItemPopoverSourceInfo *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
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