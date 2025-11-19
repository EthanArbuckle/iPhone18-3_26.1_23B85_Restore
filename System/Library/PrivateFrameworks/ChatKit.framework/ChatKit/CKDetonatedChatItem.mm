@interface CKDetonatedChatItem
- (unint64_t)balloonCorners;
@end

@implementation CKDetonatedChatItem

- (unint64_t)balloonCorners
{
  v2 = [(CKChatItem *)self attachmentContiguousType];

  return CKBalloonCornersForAttachmentContiguousType(v2);
}

@end