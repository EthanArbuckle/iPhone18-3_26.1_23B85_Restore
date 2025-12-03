@interface CKRichActionCarouselCountChatItem
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (CKRichActionCarouselCountChatItem)init;
- (UIEdgeInsets)contentInsets;
- (id)loadTranscriptText;
@end

@implementation CKRichActionCarouselCountChatItem

- (UIEdgeInsets)contentInsets
{
  v2 = 0.0;
  v3 = 16.0;
  v4 = -4.0;
  v5 = 16.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)loadTranscriptText
{
  selfCopy = self;
  sub_190C0EC80();
  v4 = v3;

  return v4;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  loadTranscriptText = [(CKRichActionCarouselCountChatItem *)selfCopy loadTranscriptText];
  [loadTranscriptText boundingRectWithSize:3 options:0 context:{width, height}];
  v9 = v8;

  v10 = 0.0;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CKRichActionCarouselCountChatItem)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RichActionCarouselCountChatItem();
  return [(CKRichActionCarouselCountChatItem *)&v3 init];
}

@end