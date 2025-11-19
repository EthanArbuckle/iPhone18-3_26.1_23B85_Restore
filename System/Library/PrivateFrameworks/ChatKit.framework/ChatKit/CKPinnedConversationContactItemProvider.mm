@interface CKPinnedConversationContactItemProvider
+ (id)contactItemFromEntity:(id)a3;
@end

@implementation CKPinnedConversationContactItemProvider

+ (id)contactItemFromEntity:(id)a3
{
  v3 = a3;
  v4 = [[CKPinnedConversationContactItemFromHandle alloc] initWithEntity:v3];

  return v4;
}

@end