@interface _MCDStackItem
+ (id)stackItemWithContainer:(id)container;
- (id)description;
@end

@implementation _MCDStackItem

+ (id)stackItemWithContainer:(id)container
{
  containerCopy = container;
  v5 = objc_alloc_init(self);
  indexPath = [containerCopy indexPath];
  v7 = [indexPath copy];
  v8 = v5[2];
  v5[2] = v7;

  identifier = [containerCopy identifier];

  v10 = [identifier copy];
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