@interface IMRepositionStickerProcessingPipelineComponent
- (IMRepositionStickerProcessingPipelineComponent)initWithPipelineResources:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMRepositionStickerProcessingPipelineComponent

- (IMRepositionStickerProcessingPipelineComponent)initWithPipelineResources:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMRepositionStickerProcessingPipelineComponent;
  v6 = [(IMRepositionStickerProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, a3);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 GUID];

  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v4 GUID];
        v41 = 138412290;
        v42 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "<IMRepositionStickerProcessingPipelineComponent> Started processing reposition sticker command for message GUID: %@", &v41, 0xCu);
      }
    }

    v9 = [v4 stickerAttachmentInfo];
    v10 = [MEMORY[0x277CBEB38] dictionary];
    v11 = MEMORY[0x277CCABB0];
    [v9 stickerOffset];
    v12 = [v11 numberWithDouble:?];
    [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x277D1A778]];

    v13 = MEMORY[0x277CCABB0];
    [v9 stickerOffset];
    v15 = [v13 numberWithDouble:v14];
    [v10 setObject:v15 forKeyedSubscript:*MEMORY[0x277D1A780]];

    v16 = MEMORY[0x277CCABB0];
    [v9 stickerScale];
    v17 = [v16 numberWithDouble:?];
    [v10 setObject:v17 forKeyedSubscript:*MEMORY[0x277D1A730]];

    v18 = MEMORY[0x277CCABB0];
    [v9 stickerRotation];
    v19 = [v18 numberWithDouble:?];
    [v10 setObject:v19 forKeyedSubscript:*MEMORY[0x277D1A728]];

    v20 = MEMORY[0x277CCABB0];
    [v9 parentPreviewWidth];
    v21 = [v20 numberWithDouble:?];
    [v10 setObject:v21 forKeyedSubscript:*MEMORY[0x277D1A720]];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "stickerPositionVersion")}];
    [v10 setObject:v22 forKeyedSubscript:*MEMORY[0x277D1A768]];

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "positionIntent")}];
    [v10 setObject:v23 forKeyedSubscript:*MEMORY[0x277D1A718]];

    v24 = [(IMRepositionStickerProcessingPipelineComponent *)self pipelineResources];
    v25 = [v24 messageStore];
    v26 = [v4 stickerEditedMessageGuid];
    v27 = [v25 messageWithGUID:v26];

    if (v27)
    {
      v28 = [v27 fileTransferGUIDs];
      v29 = [v28 firstObject];

      if (v29)
      {
        v30 = [(IMRepositionStickerProcessingPipelineComponent *)self pipelineResources];
        v31 = [v30 messageStore];
        v32 = [v27 fileTransferGUIDs];
        v33 = [v32 firstObject];
        v34 = [v31 storeRepositionedStickerWithMetadata:v10 fileTransferGUID:v33 repositioningFromLocalChange:0];
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

      v36 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
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

      v36 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
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

    v36 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
  }

  v39 = *MEMORY[0x277D85DE8];

  return v36;
}

@end