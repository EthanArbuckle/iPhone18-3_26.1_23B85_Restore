@interface CKTUConversationChatItem
- (BOOL)isSendersUnknown;
- (NSUUID)tuConversationUUID;
- (char)color;
- (id)faceTimeConversation;
- (id)sender;
- (id)time;
- (unint64_t)conversationAVMode;
@end

@implementation CKTUConversationChatItem

- (id)time
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 time];

  return v3;
}

- (id)sender
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 conversationInitiator];

  return v3;
}

- (char)color
{
  v2 = MEMORY[0x1E69A5B78];
  v3 = [(CKTUConversationChatItem *)self faceTimeConversation];
  LODWORD(v2) = [v2 conversationIsAVLessSharePlay:v3];

  if (v2)
  {
    return -1;
  }

  else
  {
    return 7;
  }
}

- (NSUUID)tuConversationUUID
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 tuConversationUUID];

  return v3;
}

- (id)faceTimeConversation
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 tuConversation];

  return v3;
}

- (BOOL)isSendersUnknown
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 message];
  if ([v3 isSenderUnknown])
  {
    v4 = [v2 chatContext];
    v5 = [v4 hasResponded] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)conversationAVMode
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 conversationAVMode];

  return v3;
}

@end