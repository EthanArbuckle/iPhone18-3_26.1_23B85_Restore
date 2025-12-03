@interface CKTranscriptDetailsResizableCell
- (CKTranscriptDetailsResizableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation CKTranscriptDetailsResizableCell

- (CKTranscriptDetailsResizableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v17.receiver = self;
  v17.super_class = CKTranscriptDetailsResizableCell;
  v4 = [(CKDetailsCell *)&v17 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(CKTranscriptDetailsResizableCell *)v4 textLabel];
    [textLabel setNumberOfLines:0];

    textLabel2 = [(CKTranscriptDetailsResizableCell *)v5 textLabel];
    [textLabel2 setLineBreakMode:0];

    textLabel3 = [(CKTranscriptDetailsResizableCell *)v5 textLabel];
    v9 = +[CKUIBehavior sharedBehaviors];
    theme = [v9 theme];
    detailsCellStaticTextColor = [theme detailsCellStaticTextColor];
    [textLabel3 setTextColor:detailsCellStaticTextColor];

    if (CKIsRunningInMacCatalyst())
    {
      textLabel4 = [(CKTranscriptDetailsResizableCell *)v5 textLabel];
      v13 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v13 theme];
      conversationListDateColor = [theme2 conversationListDateColor];
      [textLabel4 setHighlightedTextColor:conversationListDateColor];
    }
  }

  return v5;
}

@end