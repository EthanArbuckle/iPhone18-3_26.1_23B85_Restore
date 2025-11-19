@interface _MCDStackItem
+ (id)stackItemWithContainer:(id)a3;
- (id)description;
@end

@implementation _MCDStackItem

+ (id)stackItemWithContainer:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 indexPath];
  v7 = [v6 copy];
  v8 = v5[2];
  v5[2] = v7;

  v9 = [v4 identifier];

  v10 = [v9 copy];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  identifier = self->_identifier;
  v4 = _MCDStringFromIndexPath(self->_indexPath);
  v5 = [v2 stringWithFormat:@"[%@:%@]", identifier, v4];

  return v5;
}

@end