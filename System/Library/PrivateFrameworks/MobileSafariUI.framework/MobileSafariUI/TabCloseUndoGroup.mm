@interface TabCloseUndoGroup
- (id)_initWithType:(int64_t)type name:(id)name;
@end

@implementation TabCloseUndoGroup

- (id)_initWithType:(int64_t)type name:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = TabCloseUndoGroup;
  v7 = [(TabCloseUndoGroup *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = v8;
  }

  return v8;
}

@end