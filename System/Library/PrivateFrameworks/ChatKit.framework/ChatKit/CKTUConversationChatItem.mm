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
  iMChatItem = [(CKChatItem *)self IMChatItem];
  time = [iMChatItem time];

  return time;
}

- (id)sender
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  conversationInitiator = [iMChatItem conversationInitiator];

  return conversationInitiator;
}

- (char)color
{
  v2 = MEMORY[0x1E69A5B78];
  faceTimeConversation = [(CKTUConversationChatItem *)self faceTimeConversation];
  LODWORD(v2) = [v2 conversationIsAVLessSharePlay:faceTimeConversation];

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
  iMChatItem = [(CKChatItem *)self IMChatItem];
  tuConversationUUID = [iMChatItem tuConversationUUID];

  return tuConversationUUID;
}

- (id)faceTimeConversation
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  tuConversation = [iMChatItem tuConversation];

  return tuConversation;
}

- (BOOL)isSendersUnknown
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  message = [iMChatItem message];
  if ([message isSenderUnknown])
  {
    chatContext = [iMChatItem chatContext];
    v5 = [chatContext hasResponded] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)conversationAVMode
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  conversationAVMode = [iMChatItem conversationAVMode];

  return conversationAVMode;
}

@end