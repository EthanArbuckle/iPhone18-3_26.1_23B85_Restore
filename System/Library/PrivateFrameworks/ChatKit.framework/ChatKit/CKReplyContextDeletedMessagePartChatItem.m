@interface CKReplyContextDeletedMessagePartChatItem
- (BOOL)isFromMe;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
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

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  if (a4)
  {
    a3 = *MEMORY[0x1E69DDCE0];
    *&a3.height = *(MEMORY[0x1E69DDCE0] + 16);
    *&a4->top = *MEMORY[0x1E69DDCE0];
    *&a4->bottom = *&a3.height;
  }

  v4 = [CKUIBehavior sharedBehaviors:a3.width];
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
  v2 = [(CKReplyContextDeletedMessagePartChatItem *)self imReplyContextDeletedMessageChatItem];
  v3 = [v2 deletedMessageIsFromMe];

  return v3;
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