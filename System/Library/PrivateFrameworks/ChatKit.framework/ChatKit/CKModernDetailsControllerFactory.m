@interface CKModernDetailsControllerFactory
+ (id)detailsControllerWithConversation:(id)a3 delegate:(id)a4;
- (CKModernDetailsControllerFactory)init;
@end

@implementation CKModernDetailsControllerFactory

+ (id)detailsControllerWithConversation:(id)a3 delegate:(id)a4
{
  v5 = objc_allocWithZone(type metadata accessor for ModernDetailsController());
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = sub_1908F2900(v6);

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