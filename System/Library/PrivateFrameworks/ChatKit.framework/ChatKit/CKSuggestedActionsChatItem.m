@interface CKSuggestedActionsChatItem
- (CKSuggestedActionsChatItem)init;
- (Class)balloonViewClass;
@end

@implementation CKSuggestedActionsChatItem

- (Class)balloonViewClass
{
  type metadata accessor for SuggestedActionsBalloonView();

  return swift_getObjCClassFromMetadata();
}

- (CKSuggestedActionsChatItem)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SuggestedActionsChatItem();
  return [(CKMessagePartChatItem *)&v3 init];
}

@end