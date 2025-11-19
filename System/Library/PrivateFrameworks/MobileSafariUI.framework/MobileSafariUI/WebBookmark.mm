@interface WebBookmark
- (id)safari_bestCurrentURL;
@end

@implementation WebBookmark

- (id)safari_bestCurrentURL
{
  v1 = a1;
  if (a1)
  {
    if (([a1 isReadingListItem] & 1) == 0 || (objc_msgSend(MEMORY[0x277CEC5B8], "sharedNetworkObserver"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isNetworkReachable"), v2, v3))
    {
      v4 = [v1 address];
      v5 = [v4 _web_bestURLForUserTypedString];
      goto LABEL_5;
    }

    if ([v1 isFullArchiveAvailable])
    {
      v10 = 0;
      v4 = [v1 webarchivePathInReaderForm:0 fileExists:&v10];
      if (v10 != 1)
      {
        v7 = WBS_LOG_CHANNEL_PREFIXReadingList();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [(WebBookmark *)v7 safari_bestCurrentURL];
        }

        if ([MEMORY[0x277D7B5A8] lockSync])
        {
          [v1 setArchiveStatus:6];
          v8 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
          [v8 saveBookmark:v1];

          [MEMORY[0x277D7B5A8] unlockSync];
        }

        else
        {
          v9 = WBS_LOG_CHANNEL_PREFIXReadingList();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            [(WebBookmark *)v9 safari_bestCurrentURL];
          }
        }

        v1 = 0;
        goto LABEL_6;
      }

      v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:0];
LABEL_5:
      v1 = v5;
LABEL_6:

      goto LABEL_7;
    }

    v1 = 0;
  }

LABEL_7:

  return v1;
}

@end