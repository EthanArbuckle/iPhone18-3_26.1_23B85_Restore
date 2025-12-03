@interface CKLocatingChatItem
- (BOOL)failed;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
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
  locationText = [(CKLocatingChatItem *)self locationText];
  v6 = [v3 stringWithFormat:@"[%@ locationText:%@]", v4, locationText];

  return v6;
}

- (BOOL)failed
{
  message = [(CKLocatingChatItem *)self message];
  error = [message error];
  v4 = error != 0;

  return v4;
}

- (id)time
{
  message = [(CKLocatingChatItem *)self message];
  time = [message time];

  return time;
}

- (id)sender
{
  message = [(CKLocatingChatItem *)self message];
  sender = [message sender];

  return sender;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  v4 = [CKUIBehavior sharedBehaviors:insets];
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
  iMChatItem = [(CKChatItem *)self IMChatItem];
  message = [iMChatItem message];

  return message;
}

@end