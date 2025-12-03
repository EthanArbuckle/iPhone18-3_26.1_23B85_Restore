@interface CKDetonatedChatItem
- (unint64_t)balloonCorners;
@end

@implementation CKDetonatedChatItem

- (unint64_t)balloonCorners
{
  attachmentContiguousType = [(CKChatItem *)self attachmentContiguousType];

  return CKBalloonCornersForAttachmentContiguousType(attachmentContiguousType);
}

@end