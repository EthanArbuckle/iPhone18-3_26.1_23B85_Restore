@interface CKTranscriptDetailsResizableCell
- (CKTranscriptDetailsResizableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation CKTranscriptDetailsResizableCell

- (CKTranscriptDetailsResizableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v17.receiver = self;
  v17.super_class = CKTranscriptDetailsResizableCell;
  v4 = [(CKDetailsCell *)&v17 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(CKTranscriptDetailsResizableCell *)v4 textLabel];
    [v6 setNumberOfLines:0];

    v7 = [(CKTranscriptDetailsResizableCell *)v5 textLabel];
    [v7 setLineBreakMode:0];

    v8 = [(CKTranscriptDetailsResizableCell *)v5 textLabel];
    v9 = +[CKUIBehavior sharedBehaviors];
    v10 = [v9 theme];
    v11 = [v10 detailsCellStaticTextColor];
    [v8 setTextColor:v11];

    if (CKIsRunningInMacCatalyst())
    {
      v12 = [(CKTranscriptDetailsResizableCell *)v5 textLabel];
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 theme];
      v15 = [v14 conversationListDateColor];
      [v12 setHighlightedTextColor:v15];
    }
  }

  return v5;
}

@end