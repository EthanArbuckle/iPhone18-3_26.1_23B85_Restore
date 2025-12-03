@interface CKReplyContextDeletedMessagePartChatItem
- (BOOL)isFromMe;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (CKBalloonDescriptor_t)balloonDescriptor;
- (char)transcriptOrientation;
- (id)contact;
- (id)loadTranscriptText;
@end

@implementation CKReplyContextDeletedMessagePartChatItem

- (char)transcriptOrientation
{
  if ([(CKReplyContextDeletedMessagePartChatItem *)self isFromMe])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (id)loadTranscriptText
{
  v2 = objc_opt_new();

  return v2;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  if (insets)
  {
    fits = *MEMORY[0x1E69DDCE0];
    *&fits.height = *(MEMORY[0x1E69DDCE0] + 16);
    *&insets->top = *MEMORY[0x1E69DDCE0];
    *&insets->bottom = *&fits.height;
  }

  v4 = [CKUIBehavior sharedBehaviors:fits.width];
  [v4 deletedReplyBalloonMaskSizeWithTailShape:1];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)contact
{
  if (contact_onceToken != -1)
  {
    [CKReplyContextDeletedMessagePartChatItem contact];
  }

  v3 = contact_blankContact;

  return v3;
}

void __51__CKReplyContextDeletedMessagePartChatItem_contact__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695CD58]);
  v1 = contact_blankContact;
  contact_blankContact = v0;
}

- (BOOL)isFromMe
{
  imReplyContextDeletedMessageChatItem = [(CKReplyContextDeletedMessagePartChatItem *)self imReplyContextDeletedMessageChatItem];
  deletedMessageIsFromMe = [imReplyContextDeletedMessageChatItem deletedMessageIsFromMe];

  return deletedMessageIsFromMe;
}

- (CKBalloonDescriptor_t)balloonDescriptor
{
  *&retstr->var9 = 0u;
  *&retstr->var11 = 0u;
  *&retstr->var8.red = 0u;
  *&retstr->var8.blue = 0u;
  *&retstr->var7.red = 0u;
  *&retstr->var7.blue = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var5 = 0u;
  v5.receiver = self;
  v5.super_class = CKReplyContextDeletedMessagePartChatItem;
  result = [(CKBalloonDescriptor_t *)&v5 balloonDescriptor];
  retstr->var0 = 5;
  retstr->var2 = 3;
  retstr->var13 = 1;
  return result;
}

@end