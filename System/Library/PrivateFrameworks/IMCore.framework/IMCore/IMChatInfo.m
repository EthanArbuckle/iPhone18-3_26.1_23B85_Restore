@interface IMChatInfo
- (IMChatInfo)initWithChatDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)updateWithChatDictionary:(id)a3;
@end

@implementation IMChatInfo

- (IMChatInfo)initWithChatDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IMChatInfo;
  v5 = [(IMChatInfo *)&v9 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_updateWithChatDictionary_(v5, v6, v4);
  }

  return v7;
}

- (void)updateWithChatDictionary:(id)a3
{
  v4 = *MEMORY[0x1E69A6BF0];
  v5 = a3;
  v7 = objc_msgSend_objectForKeyedSubscript_(v5, v6, v4);
  lastAddressedLocalHandle = self->_lastAddressedLocalHandle;
  self->_lastAddressedLocalHandle = v7;

  v10 = objc_msgSend_objectForKeyedSubscript_(v5, v9, *MEMORY[0x1E69A6BF8]);
  lastAddressedSIMID = self->_lastAddressedSIMID;
  self->_lastAddressedSIMID = v10;

  v13 = objc_msgSend_objectForKeyedSubscript_(v5, v12, *MEMORY[0x1E69A6CD0]);
  self->_unreadMessageCount = objc_msgSend_unsignedIntValue(v13, v14, v15);

  v17 = objc_msgSend_objectForKeyedSubscript_(v5, v16, *MEMORY[0x1E69A6C60]);
  self->_pendingIncomingSatelliteMessageCount = objc_msgSend_unsignedIntValue(v17, v18, v19);

  v21 = objc_msgSend_objectForKeyedSubscript_(v5, v20, @"downloadingPendingSatelliteMessages");
  self->_downloadingPendingSatelliteMessages = objc_msgSend_BOOLValue(v21, v22, v23);

  v25 = objc_msgSend_objectForKeyedSubscript_(v5, v24, *MEMORY[0x1E69A6BC0]);
  self->_isFiltered = objc_msgSend_intValue(v25, v26, v27);

  v29 = objc_msgSend_objectForKeyedSubscript_(v5, v28, *MEMORY[0x1E69A6B88]);
  self->_hasCancellableScheduledMessage = objc_msgSend_BOOLValue(v29, v30, v31);

  v32 = *MEMORY[0x1E69A6C70];
  v34 = objc_msgSend_objectForKeyedSubscript_(v5, v33, *MEMORY[0x1E69A6C70]);
  v36 = objc_msgSend_objectForKeyedSubscript_(v34, v35, *MEMORY[0x1E69A6CC8]);
  transcriptBackgroundDetails = self->_transcriptBackgroundDetails;
  self->_transcriptBackgroundDetails = v36;

  v42 = objc_msgSend_objectForKeyedSubscript_(v5, v38, v32);

  v40 = objc_msgSend_objectForKeyedSubscript_(v42, v39, *MEMORY[0x1E69A6CC0]);
  transcriptBackgroundChannelTransferGUID = self->_transcriptBackgroundChannelTransferGUID;
  self->_transcriptBackgroundChannelTransferGUID = v40;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(IMChatInfo);
  v7 = objc_msgSend_copy(self->_lastAddressedLocalHandle, v5, v6);
  objc_msgSend_setLastAddressedLocalHandle_(v4, v8, v7);

  v11 = objc_msgSend_copy(self->_lastAddressedSIMID, v9, v10);
  objc_msgSend_setLastAddressedSIMID_(v4, v12, v11);

  objc_msgSend_setUnreadMessageCount_(v4, v13, self->_unreadMessageCount);
  objc_msgSend_setPendingIncomingSatelliteMessageCount_(v4, v14, self->_pendingIncomingSatelliteMessageCount);
  objc_msgSend_setDownloadingPendingSatelliteMessages_(v4, v15, self->_downloadingPendingSatelliteMessages);
  objc_msgSend_setIsFiltered_(v4, v16, self->_isFiltered);
  objc_msgSend_setHasCancellableScheduledMessage_(v4, v17, self->_hasCancellableScheduledMessage);
  objc_msgSend_setTranscriptBackgroundDetails_(v4, v18, self->_transcriptBackgroundDetails);
  objc_msgSend_setTranscriptBackgroundChannelTransferGUID_(v4, v19, self->_transcriptBackgroundChannelTransferGUID);
  return v4;
}

@end