@interface IMMessageChatItem
- (BOOL)canReply;
- (BOOL)failed;
- (BOOL)isFromMe;
- (IMHandle)sender;
- (IMMessage)message;
- (NSDate)time;
@end

@implementation IMMessageChatItem

- (IMMessage)message
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_message(v3, v4, v5);

  return v6;
}

- (BOOL)isFromMe
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_isFromMe(v3, v4, v5);

  return v6;
}

- (BOOL)failed
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_errorCode(v3, v4, v5) != 0;

  return v6;
}

- (NSDate)time
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_time(v3, v4, v5);

  return v6;
}

- (IMHandle)sender
{
  v3 = objc_msgSend_message(self, a2, v2);
  v6 = objc_msgSend_sender(v3, v4, v5);

  return v6;
}

- (BOOL)canReply
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_service(v3, v4, v5);
  v8 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v7, v6);

  v9 = MEMORY[0x1E69A7990];
  if (objc_msgSend_supportsCapability_(v8, v10, *MEMORY[0x1E69A7990]))
  {
    v12 = 1;
  }

  else
  {
    v12 = objc_msgSend_supportsReplicationCapability_(v8, v11, *v9);
  }

  return v12;
}

@end