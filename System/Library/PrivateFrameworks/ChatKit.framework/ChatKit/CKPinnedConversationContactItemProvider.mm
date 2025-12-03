@interface CKPinnedConversationContactItemProvider
+ (id)contactItemFromEntity:(id)entity;
@end

@implementation CKPinnedConversationContactItemProvider

+ (id)contactItemFromEntity:(id)entity
{
  entityCopy = entity;
  v4 = [[CKPinnedConversationContactItemFromHandle alloc] initWithEntity:entityCopy];

  return v4;
}

@end