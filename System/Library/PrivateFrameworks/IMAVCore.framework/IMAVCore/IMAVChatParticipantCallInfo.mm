@interface IMAVChatParticipantCallInfo
- (IMAVChatParticipantCallInfo)init;
- (id)description;
- (void)dealloc;
@end

@implementation IMAVChatParticipantCallInfo

- (IMAVChatParticipantCallInfo)init
{
  v3.receiver = self;
  v3.super_class = IMAVChatParticipantCallInfo;
  result = [(IMAVChatParticipantCallInfo *)&v3 init];
  if (result)
  {
    result->_state = 0;
  }

  return result;
}

- (void)dealloc
{
  objc_msgSend_setRelayInitiate_(self, a2, 0, v2, v3);
  objc_msgSend_setRelayUpdate_(self, v5, 0, v6, v7);
  objc_msgSend_setRelayCancel_(self, v8, 0, v9, v10);
  objc_msgSend_setLocalNATType_(self, v11, 0, v12, v13);
  objc_msgSend_setRemoteNATType_(self, v14, 0, v15, v16);
  objc_msgSend_setRemoteNATIP_(self, v17, 0, v18, v19);
  objc_msgSend_setLocalNATIP_(self, v20, 0, v21, v22);
  objc_msgSend_setRemoteSKEData_(self, v23, 0, v24, v25);
  objc_msgSend_setLocalSKEData_(self, v26, 0, v27, v28);
  objc_msgSend_setPeerCN_(self, v29, 0, v30, v31);
  objc_msgSend_setPeerProtocolVersion_(self, v32, 0, v33, v34);
  objc_msgSend_setRemoteICEData_(self, v35, 0, v36, v37);
  objc_msgSend_setLocalICEData_(self, v38, 0, v39, v40);
  v41.receiver = self;
  v41.super_class = IMAVChatParticipantCallInfo;
  [(IMAVChatParticipantCallInfo *)&v41 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v9 = objc_msgSend_state(self, v5, v6, v7, v8);
  isFinished = objc_msgSend_isFinished(self, v10, v11, v12, v13);
  isBeingHandedOff = objc_msgSend_isBeingHandedOff(self, v15, v16, v17, v18);
  return objc_msgSend_stringWithFormat_(v3, v20, @"<%@ %p state = %d, isFinished = %d, isBeingHandedOff = %d, callID = %d, inviteNeedsDelivery = %d>", v21, v22, v4, self, v9, isFinished, isBeingHandedOff, self->_callID, self->_inviteNeedsDelivery);
}

@end