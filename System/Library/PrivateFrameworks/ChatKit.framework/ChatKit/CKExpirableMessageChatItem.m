@interface CKExpirableMessageChatItem
- (BOOL)canCopy;
- (BOOL)canExport;
- (BOOL)canForward;
- (BOOL)isPlayed;
- (BOOL)isSaved;
@end

@implementation CKExpirableMessageChatItem

- (BOOL)canCopy
{
  if ([(CKMessagePartChatItem *)self isFromMe]|| (v3 = [(CKExpirableMessageChatItem *)self isSaved]))
  {
    v5.receiver = self;
    v5.super_class = CKExpirableMessageChatItem;
    LOBYTE(v3) = [(CKAttachmentMessagePartChatItem *)&v5 canCopy];
  }

  return v3;
}

- (BOOL)canForward
{
  if ([(CKMessagePartChatItem *)self isFromMe]|| (v3 = [(CKExpirableMessageChatItem *)self isSaved]))
  {
    v5.receiver = self;
    v5.super_class = CKExpirableMessageChatItem;
    LOBYTE(v3) = [(CKAttachmentMessagePartChatItem *)&v5 canForward];
  }

  return v3;
}

- (BOOL)canExport
{
  if ([(CKMessagePartChatItem *)self isFromMe]|| (v3 = [(CKExpirableMessageChatItem *)self isSaved]))
  {
    v5.receiver = self;
    v5.super_class = CKExpirableMessageChatItem;
    LOBYTE(v3) = [(CKAttachmentMessagePartChatItem *)&v5 canExport];
  }

  return v3;
}

- (BOOL)isPlayed
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 isPlayed];

  return v3;
}

- (BOOL)isSaved
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 isSaved];

  return v3;
}

@end