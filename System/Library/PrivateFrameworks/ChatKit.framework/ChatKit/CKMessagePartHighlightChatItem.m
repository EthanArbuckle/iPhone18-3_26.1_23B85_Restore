@interface CKMessagePartHighlightChatItem
- (BOOL)failed;
- (BOOL)parentMessageIsFromMe;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (CKMessagePartHighlightChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4;
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

- (CKMessagePartHighlightChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4
{
  v5.receiver = self;
  v5.super_class = CKMessagePartHighlightChatItem;
  return [(CKChatItem *)&v5 initWithIMChatItem:a3 maxWidth:a4];
}

- (id)guid
{
  v2 = [(CKMessagePartHighlightChatItem *)self messagePartHighlightChatItem];
  v3 = [v2 guid];

  return v3;
}

- (id)associatedChatItemGUID
{
  v2 = [(CKMessagePartHighlightChatItem *)self messagePartHighlightChatItem];
  v3 = [v2 highlightedMessagePartGUID];

  return v3;
}

- (BOOL)parentMessageIsFromMe
{
  v2 = [(CKMessagePartHighlightChatItem *)self messagePartHighlightChatItem];
  v3 = [v2 highlightedMessageIsFromMe];

  return v3;
}

- (BOOL)failed
{
  v3 = [(CKChatItem *)self isFromMe];
  if (v3)
  {
    v4 = [(CKMessagePartHighlightChatItem *)self messagePartHighlightChatItem];
    v5 = [v4 failed];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (IMAssociatedMessageGeometryDescriptor)geometryDescriptor
{
  v4 = [(CKMessagePartHighlightChatItem *)self messagePartHighlightChatItem];
  if (v4)
  {
    v6 = v4;
    [v4 geometryDescriptor];
    v4 = v6;
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
  v2 = [(CKMessagePartHighlightChatItem *)self messagePartHighlightChatItem];
  v3 = [v2 time];

  return v3;
}

- (id)sender
{
  v2 = [(CKMessagePartHighlightChatItem *)self messagePartHighlightChatItem];
  v3 = [v2 sender];

  return v3;
}

- (_NSRange)associatedMessageRange
{
  v2 = [(CKMessagePartHighlightChatItem *)self messagePartHighlightChatItem];
  v3 = [v2 highlightedMessagePartRange];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  v4 = [CKUIBehavior sharedBehaviors:a4];
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