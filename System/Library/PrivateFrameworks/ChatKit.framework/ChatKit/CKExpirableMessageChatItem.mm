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
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isPlayed = [iMChatItem isPlayed];

  return isPlayed;
}

- (BOOL)isSaved
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isSaved = [iMChatItem isSaved];

  return isSaved;
}

@end