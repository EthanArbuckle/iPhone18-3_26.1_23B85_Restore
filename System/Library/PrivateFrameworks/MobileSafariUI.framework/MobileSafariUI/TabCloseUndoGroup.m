@interface TabCloseUndoGroup
- (id)_initWithType:(int64_t)a3 name:(id)a4;
@end

@implementation TabCloseUndoGroup

- (id)_initWithType:(int64_t)a3 name:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = TabCloseUndoGroup;
  v7 = [(TabCloseUndoGroup *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = v8;
  }

  return v8;
}

@end