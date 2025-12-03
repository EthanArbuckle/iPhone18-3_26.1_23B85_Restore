@interface CKMessagePartHighlightChatItem
- (BOOL)failed;
- (BOOL)parentMessageIsFromMe;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (CKMessagePartHighlightChatItem)initWithIMChatItem:(id)item maxWidth:(double)width;
- (IMAssociatedMessageGeometryDescriptor)geometryDescriptor;
- (UIEdgeInsets)contentInsets;
- (_NSRange)associatedMessageRange;
- (char)transcriptOrientation;
- (id)associatedChatItemGUID;
- (id)guid;
- (id)sender;
- (id)time;
@end

@implementation CKMessagePartHighlightChatItem

- (CKMessagePartHighlightChatItem)initWithIMChatItem:(id)item maxWidth:(double)width
{
  v5.receiver = self;
  v5.super_class = CKMessagePartHighlightChatItem;
  return [(CKChatItem *)&v5 initWithIMChatItem:item maxWidth:width];
}

- (id)guid
{
  messagePartHighlightChatItem = [(CKMessagePartHighlightChatItem *)self messagePartHighlightChatItem];
  guid = [messagePartHighlightChatItem guid];

  return guid;
}

- (id)associatedChatItemGUID
{
  messagePartHighlightChatItem = [(CKMessagePartHighlightChatItem *)self messagePartHighlightChatItem];
  highlightedMessagePartGUID = [messagePartHighlightChatItem highlightedMessagePartGUID];

  return highlightedMessagePartGUID;
}

- (BOOL)parentMessageIsFromMe
{
  messagePartHighlightChatItem = [(CKMessagePartHighlightChatItem *)self messagePartHighlightChatItem];
  highlightedMessageIsFromMe = [messagePartHighlightChatItem highlightedMessageIsFromMe];

  return highlightedMessageIsFromMe;
}

- (BOOL)failed
{
  isFromMe = [(CKChatItem *)self isFromMe];
  if (isFromMe)
  {
    messagePartHighlightChatItem = [(CKMessagePartHighlightChatItem *)self messagePartHighlightChatItem];
    failed = [messagePartHighlightChatItem failed];

    LOBYTE(isFromMe) = failed;
  }

  return isFromMe;
}

- (IMAssociatedMessageGeometryDescriptor)geometryDescriptor
{
  messagePartHighlightChatItem = [(CKMessagePartHighlightChatItem *)self messagePartHighlightChatItem];
  if (messagePartHighlightChatItem)
  {
    v6 = messagePartHighlightChatItem;
    [messagePartHighlightChatItem geometryDescriptor];
    messagePartHighlightChatItem = v6;
  }

  else
  {
    retstr->rotation = 0.0;
    *&retstr->parentPreviewWidth = 0u;
    *&retstr->yScalar = 0u;
    *&retstr->layoutIntent = 0u;
  }

  return result;
}

- (id)time
{
  messagePartHighlightChatItem = [(CKMessagePartHighlightChatItem *)self messagePartHighlightChatItem];
  time = [messagePartHighlightChatItem time];

  return time;
}

- (id)sender
{
  messagePartHighlightChatItem = [(CKMessagePartHighlightChatItem *)self messagePartHighlightChatItem];
  sender = [messagePartHighlightChatItem sender];

  return sender;
}

- (_NSRange)associatedMessageRange
{
  messagePartHighlightChatItem = [(CKMessagePartHighlightChatItem *)self messagePartHighlightChatItem];
  highlightedMessagePartRange = [messagePartHighlightChatItem highlightedMessagePartRange];
  v5 = v4;

  v6 = highlightedMessagePartRange;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  v4 = [CKUIBehavior sharedBehaviors:insets];
  [v4 messageHighlightTranscriptBalloonSize];
  v6 = v5;
  v8 = v7;

  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 messageHighlightTranscriptBalloonBorderWidth];
  v11 = v8 + v10 * 2.0;

  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 messageHighlightTranscriptBalloonBorderWidth];
  v14 = v6 + v13 * 2.0;

  v15 = v14;
  v16 = v11;
  result.height = v16;
  result.width = v15;
  return result;
}

- (char)transcriptOrientation
{
  if ([(CKMessagePartHighlightChatItem *)self parentMessageIsFromMe])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (UIEdgeInsets)contentInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 balloonTranscriptInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

@end