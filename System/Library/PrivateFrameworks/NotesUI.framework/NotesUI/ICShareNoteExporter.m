@interface ICShareNoteExporter
- (NSURL)exportDirectory;
- (id)exportRTFDFileFromNote:(id)a3;
- (id)fileWrapperForNote:(id)a3;
- (id)filenameFromTitle:(id)a3;
- (void)cleanUpExportedFiles;
@end

@implementation ICShareNoteExporter

- (NSURL)exportDirectory
{
  exportDirectory = self->_exportDirectory;
  if (!exportDirectory)
  {
    v4 = MEMORY[0x1E695DFF8];
    v5 = NSTemporaryDirectory();
    v6 = [v4 fileURLWithPath:v5];
    v7 = [v6 URLByAppendingPathComponent:@"export" isDirectory:1];

    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    v10 = [v7 URLByAppendingPathComponent:v9 isDirectory:1];
    v11 = self->_exportDirectory;
    self->_exportDirectory = v10;

    exportDirectory = self->_exportDirectory;
  }

  return exportDirectory;
}

- (id)exportRTFDFileFromNote:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 isSharable])
    {
      v31 = 0;
      v32 = &v31;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy__38;
      v35 = __Block_byref_object_dispose__38;
      v36 = 0;
      v6 = [MEMORY[0x1E69B7800] sharedContext];
      v7 = [v6 snapshotManagedObjectContext];

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __46__ICShareNoteExporter_exportRTFDFileFromNote___block_invoke;
      v26[3] = &unk_1E846A2B0;
      v27 = v5;
      v8 = v7;
      v28 = v8;
      v29 = self;
      v30 = &v31;
      [v8 performBlockAndWait:v26];
      v9 = v32[5];

      _Block_object_dispose(&v31, 8);
      goto LABEL_9;
    }

    v10 = os_log_create("com.apple.notes", "Export");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(ICShareNoteExporter *)v10 exportRTFDFileFromNote:v18, v19, v20, v21, v22, v23, v24];
    }
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "Export");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(ICShareNoteExporter *)v10 exportRTFDFileFromNote:v11, v12, v13, v14, v15, v16, v17];
    }
  }

  v9 = 0;
LABEL_9:

  return v9;
}

void __46__ICShareNoteExporter_exportRTFDFileFromNote___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69B77F0];
  v3 = [*(a1 + 32) objectID];
  v4 = [v2 ic_existingObjectWithID:v3 context:*(a1 + 40)];

  v5 = [*(a1 + 48) fileWrapperForNote:v4];
  if (v5)
  {
    v6 = [v4 title];
    if (v6)
    {
      v7 = [*(a1 + 48) filenameFromTitle:v6];
    }

    else
    {
      v7 = @"Note.rtfd";
    }

    v15 = [*(a1 + 48) exportDirectory];
    v16 = [v15 URLByAppendingPathComponent:v7 isDirectory:0];
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = *(*(*(a1 + 56) + 8) + 40);
    v25 = 0;
    v20 = [v5 writeToURL:v19 options:1 originalContentsURL:0 error:&v25];
    v21 = v25;
    if ((v20 & 1) == 0)
    {
      v22 = os_log_create("com.apple.notes", "Export");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __46__ICShareNoteExporter_exportRTFDFileFromNote___block_invoke_cold_1(v21);
      }

      v23 = *(*(a1 + 56) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = 0;
    }
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "Export");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __46__ICShareNoteExporter_exportRTFDFileFromNote___block_invoke_cold_2(v6, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

- (void)cleanUpExportedFiles
{
  v6 = [a1 exportDirectory];
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (id)fileWrapperForNote:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 textStorage];
  v5 = [v4 filterSubstringAttributes];
  [v4 setFilterSubstringAttributes:1];
  v6 = [v3 textStorage];
  v7 = [v6 length];

  [v3 filterAttachmentsInTextStorage:v4 range:{0, v7}];
  v8 = [v4 attributedSubstringFromRange:{0, v7}];
  [v4 setFilterSubstringAttributes:v5];
  v9 = [v8 length];
  v16 = *MEMORY[0x1E69DB628];
  v17[0] = *MEMORY[0x1E69DB698];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v15 = 0;
  v11 = [v8 fileWrapperFromRange:0 documentAttributes:v9 error:{v10, &v15}];
  v12 = v15;

  if (v12)
  {
    v13 = os_log_create("com.apple.notes", "Export");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ICShareNoteExporter fileWrapperForNote:v12];
    }
  }

  return v11;
}

- (id)filenameFromTitle:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!filenameFromTitle__invalidCharacters)
  {
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"/", @":", 0}];
    v5 = filenameFromTitle__invalidCharacters;
    filenameFromTitle__invalidCharacters = v4;
  }

  v6 = [v3 mutableCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = filenameFromTitle__invalidCharacters;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 replaceOccurrencesOfString:*(*(&v17 + 1) + 8 * i) withString:@" " options:0 range:{0, objc_msgSend(v3, "length")}];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v12 = [v6 copy];
  if ([v12 length] >= 0x100)
  {
    v13 = [v12 substringWithRange:{0, 255}];
    v14 = [v13 mutableCopy];

    v12 = v14;
  }

  v15 = [v12 stringByAppendingPathExtension:@"rtfd"];

  return v15;
}

void __46__ICShareNoteExporter_exportRTFDFileFromNote___block_invoke_cold_1(void *a1)
{
  v6 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)fileWrapperForNote:(void *)a1 .cold.1(void *a1)
{
  v6 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end