@interface IMAVChatParticipantProxy
- (BOOL)_inviteDelivered;
- (BOOL)isLocalParticipant;
- (IMAVChatParticipantProxy)initWithDictionary:(id)a3 chat:(id)a4;
- (void)forwardInvocation:(id)a3;
@end

@implementation IMAVChatParticipantProxy

- (IMAVChatParticipantProxy)initWithDictionary:(id)a3 chat:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IMAVChatParticipantProxy;
  v9 = [(IMAVChatParticipantProxy *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_info, a3);
    objc_storeStrong(&v10->_chat, a4);
  }

  return v10;
}

- (BOOL)_inviteDelivered
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"IsInvitationDelivered", v2, v3);
  v9 = objc_msgSend_BOOLValue(v4, v5, v6, v7, v8);

  return v9;
}

- (BOOL)isLocalParticipant
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"IsLocalParticipant", v2, v3);
  v9 = objc_msgSend_BOOLValue(v4, v5, v6, v7, v8);

  return v9;
}

- (void)forwardInvocation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = sub_254761764();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_msgSend_selector(v3, v5, v6, v7, v8);
    v10 = NSStringFromSelector(v9);
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "[WARN] ********** IMAVChatParticipantProxy does not respond to selector %@, please file a radar **********", &v12, 0xCu);
  }

  IMLogBacktrace();
  v11 = *MEMORY[0x277D85DE8];
}

@end