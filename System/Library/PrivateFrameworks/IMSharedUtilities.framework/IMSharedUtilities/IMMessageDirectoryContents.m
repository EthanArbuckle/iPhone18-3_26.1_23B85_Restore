@interface IMMessageDirectoryContents
- (BOOL)gatherIfNeeded;
- (IMMessageDirectoryContents)init;
- (void)gather;
@end

@implementation IMMessageDirectoryContents

- (IMMessageDirectoryContents)init
{
  v22[2] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = IMMessageDirectoryContents;
  v2 = [(IMMessageDirectoryContents *)&v19 init];
  if (v2)
  {
    v3 = [@"/var/mobile/Library/SMS" stringByAppendingPathComponent:@"Attachments"];
    v4 = [@"/var/mobile/Library/SMS" stringByAppendingPathComponent:@"Sync"];
    v5 = [v4 stringByAppendingPathComponent:@"Assets"];

    v6 = [@"/var/mobile/Library/SMS" stringByAppendingPathComponent:@"StickerCache"];
    v7 = [[IMDirectoryContents alloc] initWithRootPath:@"/var/mobile/Library/SMS" attachmentsPath:v3 syncAssetsPath:v5 stickersPath:v6];
    messagesDirectoryContents = v2->_messagesDirectoryContents;
    v2->_messagesDirectoryContents = v7;

    v9 = [[IMDirectoryContents alloc] initWithRootPath:@"/var/mobile/Library/MessagesMetaData" attachmentsPath:0 syncAssetsPath:v5 stickersPath:0];
    metaDataDirectoryContents = v2->_metaDataDirectoryContents;
    v2->_metaDataDirectoryContents = v9;

    v11 = [IMCombinedDirectoryContents alloc];
    v12 = v2->_metaDataDirectoryContents;
    v22[0] = v2->_messagesDirectoryContents;
    v22[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v14 = [(IMCombinedDirectoryContents *)v11 initWithCombinedDirectoryContents:v13];
    allDirectoryContents = v2->_allDirectoryContents;
    v2->_allDirectoryContents = v14;

    v20 = *&v2->_messagesDirectoryContents;
    v21 = v2->_allDirectoryContents;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:3];
    directoryContents = v2->_directoryContents;
    v2->_directoryContents = v16;

    v2->_needsGathering = 1;
  }

  return v2;
}

- (void)gather
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = IMLogHandleForCategory("DiskSpace");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Gathering directory info...", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = self;
  v4 = self->_directoryContents;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = IMLogHandleForCategory("DiskSpace");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [v9 rootPath];
          *buf = 138412290;
          v18 = v11;
          _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Gathering directory info for: %@", buf, 0xCu);
        }

        [v9 gather];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  v12->_needsGathering = 0;
}

- (BOOL)gatherIfNeeded
{
  v3 = [(IMMessageDirectoryContents *)self needsGathering];
  if (v3)
  {
    [(IMMessageDirectoryContents *)self gather];
  }

  return v3;
}

@end