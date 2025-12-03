@interface IMDirectoryContentsSizes
- (IMDirectoryContentsSizes)initWithDirectoryContents:(id)contents;
- (IMFileSize)totalAttachmentSize;
- (IMFileSize)totalPurgableSize;
- (IMFileSize)totalSize;
@end

@implementation IMDirectoryContentsSizes

- (IMDirectoryContentsSizes)initWithDirectoryContents:(id)contents
{
  v42 = *MEMORY[0x1E69E9840];
  contentsCopy = contents;
  v38.receiver = self;
  v38.super_class = IMDirectoryContentsSizes;
  v5 = [(IMDirectoryContentsSizes *)&v38 init];
  if (v5)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    fileInfoMap = [contentsCopy fileInfoMap];
    allValues = [fileInfoMap allValues];

    v8 = [allValues countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          if (([v12 isDirectory] & 1) == 0)
          {
            fileSize = [v12 fileSize];
            v15 = *(v5 + 2) + v14;
            *(v5 + 1) += fileSize;
            *(v5 + 2) = v15;
            if ([v12 isAttachment])
            {
              fileSize2 = [v12 fileSize];
              v18 = *(v5 + 6) + v17;
              *(v5 + 5) += fileSize2;
              *(v5 + 6) = v18;
            }

            if ([v12 isPurgableOnDisk])
            {
              fileSize3 = [v12 fileSize];
              v21 = *(v5 + 4) + v20;
              *(v5 + 3) += fileSize3;
              *(v5 + 4) = v21;
            }
          }
        }

        v9 = [allValues countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v9);
    }

    v22 = IMLogHandleForCategory("DiskSpace");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      fileInfoMap2 = [contentsCopy fileInfoMap];
      v24 = [fileInfoMap2 count];
      *buf = 134217984;
      v40 = v24;
      _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "Total Item Count: %ld", buf, 0xCu);
    }

    v25 = IMLogHandleForCategory("DiskSpace");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [MEMORY[0x1E696ADA0] stringFromFileSize:{*(v5 + 1), *(v5 + 2)}];
      *buf = 138412290;
      v40 = v26;
      _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Total Size: %@", buf, 0xCu);
    }

    v27 = IMLogHandleForCategory("DiskSpace");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [MEMORY[0x1E696ADA0] stringFromFileSize:{*(v5 + 3), *(v5 + 4)}];
      *buf = 138412290;
      v40 = v28;
      _os_log_impl(&dword_1A85E5000, v27, OS_LOG_TYPE_INFO, "Total Purgable Size: %@", buf, 0xCu);
    }

    v29 = IMLogHandleForCategory("DiskSpace");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = [MEMORY[0x1E696ADA0] stringFromFileSize:{vsubq_s64(*(v5 + 8), *(v5 + 24))}];
      *buf = 138412290;
      v40 = v30;
      _os_log_impl(&dword_1A85E5000, v29, OS_LOG_TYPE_INFO, "Total Non-Purgable Size: %@", buf, 0xCu);
    }

    v31 = IMLogHandleForCategory("DiskSpace");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [MEMORY[0x1E696ADA0] stringFromFileSize:{*(v5 + 5), *(v5 + 6)}];
      *buf = 138412290;
      v40 = v32;
      _os_log_impl(&dword_1A85E5000, v31, OS_LOG_TYPE_INFO, "Total Attachment Size: %@", buf, 0xCu);
    }
  }

  return v5;
}

- (IMFileSize)totalSize
{
  disk_allocation_size = self->_totalSize.disk_allocation_size;
  file_size = self->_totalSize.file_size;
  result.disk_allocation_size = disk_allocation_size;
  result.file_size = file_size;
  return result;
}

- (IMFileSize)totalPurgableSize
{
  disk_allocation_size = self->_totalPurgableSize.disk_allocation_size;
  file_size = self->_totalPurgableSize.file_size;
  result.disk_allocation_size = disk_allocation_size;
  result.file_size = file_size;
  return result;
}

- (IMFileSize)totalAttachmentSize
{
  disk_allocation_size = self->_totalAttachmentSize.disk_allocation_size;
  file_size = self->_totalAttachmentSize.file_size;
  result.disk_allocation_size = disk_allocation_size;
  result.file_size = file_size;
  return result;
}

@end