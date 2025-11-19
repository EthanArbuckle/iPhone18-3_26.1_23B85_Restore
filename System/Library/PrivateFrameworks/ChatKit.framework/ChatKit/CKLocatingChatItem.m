@interface CKLocatingChatItem
- (BOOL)failed;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (NSString)locationText;
- (id)description;
- (id)message;
- (id)sender;
- (id)time;
@end

@implementation CKLocatingChatItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CKLocatingChatItem;
  v4 = [(CKBalloonChatItem *)&v8 description];
  v5 = [(CKLocatingChatItem *)self locationText];
  v6 = [v3 stringWithFormat:@"[%@ locationText:%@]", v4, v5];

  return v6;
}

- (BOOL)failed
{
  v2 = [(CKLocatingChatItem *)self message];
  v3 = [v2 error];
  v4 = v3 != 0;

  return v4;
}

- (id)time
{
  v2 = [(CKLocatingChatItem *)self message];
  v3 = [v2 time];

  return v3;
}

- (id)sender
{
  v2 = [(CKLocatingChatItem *)self message];
  v3 = [v2 sender];

  return v3;
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  v4 = [CKUIBehavior sharedBehaviors:a4];
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 previewMaxWidth];
  [v4 mapThumbnailFillSizeForWidth:?];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (NSString)locationText
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"LOCATING" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (id)message
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 message];

  return v3;
}

@end