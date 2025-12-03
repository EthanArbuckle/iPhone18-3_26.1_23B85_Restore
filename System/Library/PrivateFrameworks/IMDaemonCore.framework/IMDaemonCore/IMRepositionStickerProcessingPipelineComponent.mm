@interface IMRepositionStickerProcessingPipelineComponent
- (IMRepositionStickerProcessingPipelineComponent)initWithPipelineResources:(id)resources;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMRepositionStickerProcessingPipelineComponent

- (IMRepositionStickerProcessingPipelineComponent)initWithPipelineResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = IMRepositionStickerProcessingPipelineComponent;
  v6 = [(IMRepositionStickerProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, resources);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)input
{
  v43 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  gUID = [inputCopy GUID];

  v6 = IMOSLoggingEnabled();
  if (gUID)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        gUID2 = [inputCopy GUID];
        v41 = 138412290;
        v42 = gUID2;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "<IMRepositionStickerProcessingPipelineComponent> Started processing reposition sticker command for message GUID: %@", &v41, 0xCu);
      }
    }

    stickerAttachmentInfo = [inputCopy stickerAttachmentInfo];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v11 = MEMORY[0x277CCABB0];
    [stickerAttachmentInfo stickerOffset];
    v12 = [v11 numberWithDouble:?];
    [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x277D1A778]];

    v13 = MEMORY[0x277CCABB0];
    [stickerAttachmentInfo stickerOffset];
    v15 = [v13 numberWithDouble:v14];
    [dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x277D1A780]];

    v16 = MEMORY[0x277CCABB0];
    [stickerAttachmentInfo stickerScale];
    v17 = [v16 numberWithDouble:?];
    [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x277D1A730]];

    v18 = MEMORY[0x277CCABB0];
    [stickerAttachmentInfo stickerRotation];
    v19 = [v18 numberWithDouble:?];
    [dictionary setObject:v19 forKeyedSubscript:*MEMORY[0x277D1A728]];

    v20 = MEMORY[0x277CCABB0];
    [stickerAttachmentInfo parentPreviewWidth];
    v21 = [v20 numberWithDouble:?];
    [dictionary setObject:v21 forKeyedSubscript:*MEMORY[0x277D1A720]];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(stickerAttachmentInfo, "stickerPositionVersion")}];
    [dictionary setObject:v22 forKeyedSubscript:*MEMORY[0x277D1A768]];

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(stickerAttachmentInfo, "positionIntent")}];
    [dictionary setObject:v23 forKeyedSubscript:*MEMORY[0x277D1A718]];

    pipelineResources = [(IMRepositionStickerProcessingPipelineComponent *)self pipelineResources];
    messageStore = [pipelineResources messageStore];
    stickerEditedMessageGuid = [inputCopy stickerEditedMessageGuid];
    v27 = [messageStore messageWithGUID:stickerEditedMessageGuid];

    if (v27)
    {
      fileTransferGUIDs = [v27 fileTransferGUIDs];
      firstObject = [fileTransferGUIDs firstObject];

      if (firstObject)
      {
        pipelineResources2 = [(IMRepositionStickerProcessingPipelineComponent *)self pipelineResources];
        messageStore2 = [pipelineResources2 messageStore];
        fileTransferGUIDs2 = [v27 fileTransferGUIDs];
        firstObject2 = [fileTransferGUIDs2 firstObject];
        v34 = [messageStore2 storeRepositionedStickerWithMetadata:dictionary fileTransferGUID:firstObject2 repositioningFromLocalChange:0];
      }

      else if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          LOWORD(v41) = 0;
          _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Ignoring reposition sticker chat command, no file transfer found locally", &v41, 2u);
        }
      }

      v36 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          LOWORD(v41) = 0;
          _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Ignoring reposition sticker chat command, no valid message for GUID", &v41, 2u);
        }
      }

      v36 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
    }
  }

  else
  {
    if (v6)
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        LOWORD(v41) = 0;
        _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Ignoring reposition sticker chat command, no message guid received", &v41, 2u);
      }
    }

    v36 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
  }

  v39 = *MEMORY[0x277D85DE8];

  return v36;
}

@end