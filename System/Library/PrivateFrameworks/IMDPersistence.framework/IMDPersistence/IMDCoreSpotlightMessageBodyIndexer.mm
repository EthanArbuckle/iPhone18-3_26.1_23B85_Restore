@interface IMDCoreSpotlightMessageBodyIndexer
+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler;
@end

@implementation IMDCoreSpotlightMessageBodyIndexer

+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler
{
  v42 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  chatCopy = chat;
  contextCopy = context;
  updateCopy = update;
  profilerCopy = profiler;
  v18 = objc_msgSend_objectForKey_(itemCopy, v16, @"balloonBundleID");
  if (v18)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(v40) = 0;
        _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Message is a balloon plugin type, deferring to later indexers", &v40, 2u);
      }
    }
  }

  else
  {
    v20 = objc_msgSend_objectForKey_(itemCopy, v17, @"attributedBody");
    v23 = objc_msgSend_string(v20, v21, v22);

    v24 = _IMDCoreSpotlightStrippedBody(itemCopy, @"plainBody", v23);
    v27 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v25, v26);
    if (objc_msgSend_isInternalInstall(v27, v28, v29))
    {
      v30 = IMGetCachedDomainBoolForKeyWithDefaultValue();

      if (v30)
      {
        if (objc_msgSend_isEqualToString_(v24, v31, @"poison_abort"))
        {
          if (IMOSLoggingEnabled())
          {
            v39 = OSLogHandleForIMFoundationCategory();
            sub_1B7CFA38C(v39);
          }

          abort();
        }

        if (objc_msgSend_isEqualToString_(v24, v32, @"poison_spin"))
        {
          if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              LOWORD(v40) = 0;
              _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "(IMDCoreSpotlightMessageBodyIndexer - Poison pill spin detected, hanging!", &v40, 2u);
            }
          }

            ;
          }
        }
      }
    }

    else
    {
    }

    objc_msgSend_setTextContent_(updateCopy, v31, v24);
    objc_msgSend_setMessageType_(updateCopy, v34, @"msg");
    if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v35, v36) && IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v40 = 138412290;
        v41 = v24;
        _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_INFO, "setting text content %@", &v40, 0xCu);
      }
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

@end