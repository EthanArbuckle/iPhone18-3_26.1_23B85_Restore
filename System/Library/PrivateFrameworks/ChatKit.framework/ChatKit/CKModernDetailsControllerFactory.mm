@interface CKModernDetailsControllerFactory
+ (id)detailsControllerWithConversation:(id)conversation delegate:(id)delegate;
- (CKModernDetailsControllerFactory)init;
@end

@implementation CKModernDetailsControllerFactory

+ (id)detailsControllerWithConversation:(id)conversation delegate:(id)delegate
{
  v5 = objc_allocWithZone(type metadata accessor for ModernDetailsController());
  conversationCopy = conversation;
  swift_unknownObjectRetain();
  v7 = sub_1908F2900(conversationCopy);

  swift_unknownObjectRelease();

  return v7;
}

- (CKModernDetailsControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ModernDetailsControllerFactory();
  return [(CKModernDetailsControllerFactory *)&v3 init];
}

@end