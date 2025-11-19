@interface IMDStickerRegistry
+ (id)sharedInstance;
- (BOOL)_isRecipeBasedSticker:(id)a3;
- (IMDStickerRegistry)init;
- (void)dealloc;
@end

@implementation IMDStickerRegistry

+ (id)sharedInstance
{
  if (qword_2814211D8 != -1)
  {
    sub_22B7D971C();
  }

  return qword_281421060;
}

- (IMDStickerRegistry)init
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = IMDStickerRegistry;
  v2 = [(IMDStickerRegistry *)&v9 init];
  if (v2)
  {
    if ([objc_msgSend(MEMORY[0x277D19268] "sharedInstance")])
    {
      v3 = [@"/var/mobile/Library/SMS/Stickers" stringByExpandingTildeInPath];
      if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
      {
        v8 = 0;
        [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
        if (IMOSLoggingEnabled())
        {
          v4 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v11 = v3;
            v12 = 2112;
            v13 = v8;
            _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Deleting legacy Sticker folder at path %@, error %@", buf, 0x16u);
          }
        }
      }
    }

    if (!v2->_stickerPackGUIDToPackMap)
    {
      v2->_stickerPackGUIDToPackMap = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Initialized IMDStickerStore", buf, 2u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMDStickerRegistry;
  [(IMDStickerRegistry *)&v3 dealloc];
}

- (BOOL)_isRecipeBasedSticker:(id)a3
{
  if ([a3 count])
  {
    v4 = [objc_msgSend(a3 objectForKey:{*MEMORY[0x277D1A738]), "length"}];
    if (v4)
    {
      LOBYTE(v4) = [objc_msgSend(a3 objectForKey:{*MEMORY[0x277D1A770]), "length"}] != 0;
    }
  }

  else
  {
    LODWORD(v4) = IMOSLoggingEnabled();
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      LODWORD(v4) = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
      if (v4)
      {
        *v7 = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "_isRecipeBasedSticker invalid properties", v7, 2u);
        LOBYTE(v4) = 0;
      }
    }
  }

  return v4;
}

@end