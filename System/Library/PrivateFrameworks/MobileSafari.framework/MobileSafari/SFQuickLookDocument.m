@interface SFQuickLookDocument
+ (BOOL)_hasSuitableApplicationForOpeningDocument:(id)a3;
+ (id)properFilenameForOriginalFilename:(id)a3 typeIdentifier:(id)a4 mimeType:(id)a5 sourceURL:(id)a6;
- (BOOL)shouldUnzipByUIDocumentInteractionController;
- (LSDocumentProxy)documentProxy;
- (NSString)fileName;
- (NSString)inferredUTI;
- (NSString)localizedType;
- (NSString)savedPathWithProperExtension;
- (NSURL)savedURLWithProperExtension;
- (SFQuickLookDocument)initWithFileName:(id)a3 mimeType:(id)a4 uti:(id)a5 needsQuickLookDocumentView:(BOOL)a6;
- (SFQuickLookDocumentSource)documentSource;
- (id)createTemporaryFile;
- (unint64_t)fileSize;
- (void)_deleteSavedPathIfNecessary;
- (void)_deleteSavedPathWithProperExtensionIfNecessary;
- (void)addQuickLookPrintSettingsToPrintInfo:(id)a3;
- (void)dealloc;
- (void)fileSize;
- (void)saveToFileIfNeeded:(id)a3;
- (void)setFileNameForPDFDocument:(id)a3;
- (void)setSavedPath:(id)a3 shouldDelete:(BOOL)a4;
- (void)setSavedPathWithProperExtension:(id)a3 shouldDelete:(BOOL)a4;
@end

@implementation SFQuickLookDocument

+ (id)properFilenameForOriginalFilename:(id)a3 typeIdentifier:(id)a4 mimeType:(id)a5 sourceURL:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 pathExtension];
  v14 = [@"zip" compare:v13 options:9];

  v15 = [v9 safari_lastPathComponentWithoutZipExtension];
  v16 = [v15 pathExtension];

  v17 = [(__CFString *)v16 length];
  v18 = MEMORY[0x1E6963710];
  if (!v17)
  {
LABEL_12:
    if (v11)
    {
      PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963718], v11, 0);
      v25 = PreferredIdentifierForTag;
      if (PreferredIdentifierForTag)
      {
        v20 = UTTypeCopyPreferredTagWithClass(PreferredIdentifierForTag, *v18);
      }

      else
      {
        v20 = 0;
      }

      if (!v10)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v20 = 0;
      if (!v10)
      {
        goto LABEL_21;
      }
    }

    if (!v20)
    {
      v20 = UTTypeCopyPreferredTagWithClass(v10, *v18);
    }

LABEL_21:
    if (v20)
    {
      if (([(__CFString *)v16 isEqualToString:v20]& 1) == 0)
      {
        v26 = [@"zip" compare:v20 options:9];
        if (v14 | v26)
        {
          if (v14)
          {
            v27 = [v9 pathExtension];
            v28 = [v27 length];

            if (v28 && !v26)
            {
              v22 = [MEMORY[0x1E6963658] sf_documentProxyForName:v9 type:0 MIMEType:0 sourceURL:v12];
              if (v22 && [SFQuickLookDocument _hasSuitableApplicationForOpeningDocument:v22])
              {
                goto LABEL_36;
              }
            }

            v29 = v9;
          }

          else
          {
            v30 = v9;
            v31 = [v30 stringByDeletingPathExtension];

            v29 = v31;
          }

          v23 = [v29 stringByAppendingPathExtension:v20];

          if (v14)
          {
            v22 = v9;
            v9 = v23;
LABEL_36:

            goto LABEL_37;
          }

          [(__CFString *)v23 stringByAppendingPathExtension:@"zip"];
          v9 = v22 = v9;
LABEL_35:

          goto LABEL_36;
        }
      }
    }

    goto LABEL_37;
  }

  v19 = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], v16, 0);
  v20 = v19;
  if (!v19)
  {
    goto LABEL_11;
  }

  if (v11)
  {
    v21 = *MEMORY[0x1E6963718];
    v22 = UTTypeCopyPreferredTagWithClass(v19, *MEMORY[0x1E6963718]);
    if (v22 && ![(__CFString *)v11 compare:v22 options:9])
    {
      goto LABEL_36;
    }

    v23 = UTTypeCreatePreferredIdentifierForTag(v21, v11, 0);
    if (v23 && UTTypeConformsTo(v20, v23))
    {
      goto LABEL_35;
    }
  }

  if (!v10 || !UTTypeConformsTo(v20, v10))
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_37:

  return v9;
}

+ (BOOL)_hasSuitableApplicationForOpeningDocument:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x1E69636D0];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69636D0]];
  v6 = [v3 applicationsAvailableForOpeningWithHandlerRanks:v5 error:0];
  v7 = [v6 objectForKeyedSubscript:v4];
  v8 = [v7 count] != 0;

  return v8;
}

- (SFQuickLookDocument)initWithFileName:(id)a3 mimeType:(id)a4 uti:(id)a5 needsQuickLookDocumentView:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = SFQuickLookDocument;
  v14 = [(SFQuickLookDocument *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_fileName, a3);
    objc_storeStrong(&v15->_mimeType, a4);
    objc_storeStrong(&v15->_uti, a5);
    v15->_needsQuickLookDocumentView = a6;
    v16 = v15;
  }

  return v15;
}

- (void)dealloc
{
  [(SFQuickLookDocument *)self _deleteSavedPathIfNecessary];
  [(SFQuickLookDocument *)self _deleteSavedPathWithProperExtensionIfNecessary];
  v3.receiver = self;
  v3.super_class = SFQuickLookDocument;
  [(SFQuickLookDocument *)&v3 dealloc];
}

- (NSString)fileName
{
  fileName = self->_fileName;
  if (!fileName)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SFQuickLookDocument *)v4 fileName:v5];
    }

    fileName = self->_fileName;
  }

  return fileName;
}

- (void)setFileNameForPDFDocument:(id)a3
{
  v5 = a3;
  fileName = self->_fileName;
  p_fileName = &self->_fileName;
  v6 = fileName;
  if (fileName)
  {
    if (![(NSString *)v6 isEqualToString:v5])
    {
      v9 = WBS_LOG_CHANNEL_PREFIXDownloads();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(SFQuickLookDocument *)v9 setFileNameForPDFDocument:v10, v11, v12, v13, v14, v15, v16];
      }
    }
  }

  else
  {
    objc_storeStrong(p_fileName, a3);
  }
}

- (unint64_t)fileSize
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(SFQuickLookDocument *)self savedPath];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  v4 = [v3 attributesOfItemAtPath:v2 error:&v12];
  v5 = v12;

  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v5 safari_privacyPreservingDescription];
      [(SFQuickLookDocument *)v7 fileSize];
    }
  }

  if (v4)
  {
    v8 = [v4 safari_numberForKey:*MEMORY[0x1E696A3B8]];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 unsignedLongLongValue];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_deleteSavedPathIfNecessary
{
  if (self->_shouldDeleteSavedPath)
  {
    v8 = v2;
    v9 = v3;
    v4 = [(SFQuickLookDocument *)self savedPath];
    if (v4)
    {
      v5 = dispatch_get_global_queue(-2, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__SFQuickLookDocument__deleteSavedPathIfNecessary__block_invoke;
      block[3] = &unk_1E721D568;
      v7 = v4;
      dispatch_async(v5, block);
    }
  }
}

void __50__SFQuickLookDocument__deleteSavedPathIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  [v2 _web_removeFileOnlyAtPath:*(a1 + 32)];
}

- (void)_deleteSavedPathWithProperExtensionIfNecessary
{
  if (self->_shouldDeleteSavedPathWithProperExtension)
  {
    v8 = v2;
    v9 = v3;
    v4 = [(SFQuickLookDocument *)self savedPathWithProperExtension];
    if (v4)
    {
      v5 = dispatch_get_global_queue(-2, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__SFQuickLookDocument__deleteSavedPathWithProperExtensionIfNecessary__block_invoke;
      block[3] = &unk_1E721D568;
      v7 = v4;
      dispatch_async(v5, block);
    }
  }
}

void __69__SFQuickLookDocument__deleteSavedPathWithProperExtensionIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  [v2 _web_removeFileOnlyAtPath:*(a1 + 32)];
}

- (NSString)inferredUTI
{
  uti = self->_uti;
  if (uti)
  {
    PreferredIdentifierForTag = uti;
  }

  else
  {
    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963718], self->_mimeType, 0);
    if (!PreferredIdentifierForTag)
    {
      v5 = [(SFQuickLookDocument *)self savedPathWithProperExtension];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = [(SFQuickLookDocument *)self fileName];
      }

      v8 = v7;

      v9 = [v8 pathExtension];
      PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], v9, 0);
    }
  }

  return PreferredIdentifierForTag;
}

- (NSString)localizedType
{
  mimeType = self->_mimeType;
  if (!mimeType || (PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963718], mimeType, 0), v5 = UTTypeCopyDescription(PreferredIdentifierForTag), PreferredIdentifierForTag, !v5))
  {
    uti = self->_uti;
    if (!uti || (v5 = UTTypeCopyDescription(uti)) == 0)
    {
      v5 = _WBSLocalizedString();
    }
  }

  return v5;
}

- (LSDocumentProxy)documentProxy
{
  documentProxy = self->_documentProxy;
  if (!documentProxy)
  {
    v4 = MEMORY[0x1E6963658];
    v5 = [(SFQuickLookDocument *)self fileName];
    v6 = [(SFQuickLookDocument *)self uti];
    v7 = [(SFQuickLookDocument *)self mimeType];
    v8 = [v4 sf_documentProxyForName:v5 type:v6 MIMEType:v7 sourceURL:self->_sourceURL];
    v9 = self->_documentProxy;
    self->_documentProxy = v8;

    documentProxy = self->_documentProxy;
  }

  return documentProxy;
}

- (NSString)savedPathWithProperExtension
{
  savedPathWithProperExtension = self->_savedPathWithProperExtension;
  if (savedPathWithProperExtension)
  {
    v3 = savedPathWithProperExtension;
  }

  else
  {
    v5 = [(SFQuickLookDocument *)self savedPath];
    v6 = [v5 lastPathComponent];
    if (v6)
    {
      v7 = [SFQuickLookDocument properFilenameForOriginalFilename:v6 typeIdentifier:self->_uti mimeType:self->_mimeType sourceURL:self->_sourceURL];
      v8 = [v5 stringByDeletingLastPathComponent];
      v9 = [v8 stringByAppendingPathComponent:v7];

      if ([v7 isEqualToString:v6])
      {
        v10 = 0;
      }

      else
      {
        v11 = [MEMORY[0x1E696AC08] defaultManager];
        v12 = [v11 _web_pathWithUniqueFilenameForPath:v9];
        if (v12 && ([v11 linkItemAtPath:v5 toPath:v12 error:0] & 1) != 0)
        {
          v10 = 1;
        }

        else
        {
          v13 = v5;

          v10 = 0;
          v9 = v13;
        }
      }

      [(SFQuickLookDocument *)self setSavedPathWithProperExtension:v9 shouldDelete:v10];
      v3 = self->_savedPathWithProperExtension;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (NSURL)savedURLWithProperExtension
{
  v2 = [(SFQuickLookDocument *)self savedPathWithProperExtension];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)createTemporaryFile
{
  WeakRetained = objc_loadWeakRetained(&self->_documentSource);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained suggestedFileNameForQuickLookDocument:self];
    v6 = [v4 suggestedFileExtensionForQuickLookDocument:self];
    v7 = [v5 pathExtension];
    if ([v7 compare:v6 options:9])
    {
      v8 = [v5 stringByAppendingPathExtension:v6];

      v5 = v8;
    }

    v9 = [MEMORY[0x1E696AC08] _web_createTemporaryFileForQuickLook:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)saveToFileIfNeeded:(id)a3
{
  v4 = a3;
  if (self->_savedPath)
  {
    WeakRetained = [(SFQuickLookDocument *)self savedURLWithProperExtension];
    v4[2](v4, WeakRetained);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_documentSource);
    if (WeakRetained)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __42__SFQuickLookDocument_saveToFileIfNeeded___block_invoke;
      v6[3] = &unk_1E721FB00;
      v6[4] = self;
      v7 = v4;
      [WeakRetained dataForQuickLookDocument:self completionHandler:v6];
    }

    else
    {
      v4[2](v4, 0);
    }
  }
}

void __42__SFQuickLookDocument_saveToFileIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) createTemporaryFile];
    if (v4)
    {
      v21 = 0;
      v5 = [v3 writeToFile:v4 options:1 error:&v21];
      v6 = v21;
      if (v5)
      {
        [*(a1 + 32) setSavedPath:v4 shouldDelete:1];
        v7 = *(a1 + 40);
        v8 = [*(a1 + 32) savedURLWithProperExtension];
        (*(v7 + 16))(v7, v8);
      }

      else
      {
        v18 = WBS_LOG_CHANNEL_PREFIXDownloads();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [v6 safari_privacyPreservingDescription];
          __42__SFQuickLookDocument_saveToFileIfNeeded___block_invoke_cold_1(v19, buf, v18);
        }

        v20 = WBS_LOG_CHANNEL_PREFIXDownloads();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          __42__SFQuickLookDocument_saveToFileIfNeeded___block_invoke_cold_2(v4, v20);
        }

        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      v9 = WBS_LOG_CHANNEL_PREFIXDownloads();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __42__SFQuickLookDocument_saveToFileIfNeeded___block_invoke_cold_3(v9, v10, v11, v12, v13, v14, v15, v16);
      }

      v17 = WBS_LOG_CHANNEL_PREFIXDownloads();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __42__SFQuickLookDocument_saveToFileIfNeeded___block_invoke_cold_4(v17);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)setSavedPath:(id)a3 shouldDelete:(BOOL)a4
{
  v7 = a3;
  [(SFQuickLookDocument *)self _deleteSavedPathIfNecessary];
  objc_storeStrong(&self->_savedPath, a3);
  self->_shouldDeleteSavedPath = a4;
  [(SFQuickLookDocument *)self setSavedPathWithProperExtension:0 shouldDelete:0];
}

- (void)setSavedPathWithProperExtension:(id)a3 shouldDelete:(BOOL)a4
{
  v6 = a3;
  [(SFQuickLookDocument *)self _deleteSavedPathWithProperExtensionIfNecessary];
  savedPathWithProperExtension = self->_savedPathWithProperExtension;
  self->_savedPathWithProperExtension = v6;

  self->_shouldDeleteSavedPathWithProperExtension = a4;
}

- (void)addQuickLookPrintSettingsToPrintInfo:(id)a3
{
  v6 = a3;
  v4 = [getQLPreviewConverterClass() isIWorkDocumentType:self->_uti];
  if (v4)
  {
    [v6 setScaleUp:1];
  }

  v5 = [getQLPreviewConverterClass() isSpreadSheetDocumentType:self->_uti];
  if (UTTypeConformsTo(self->_uti, @"public.presentation") || (v4 & v5) != 0)
  {
    [v6 setOrientation:1];
  }
}

- (BOOL)shouldUnzipByUIDocumentInteractionController
{
  v2 = [(SFQuickLookDocument *)self fileName];
  v3 = [v2 pathExtension];

  if ([v3 safari_isCaseInsensitiveEqualToString:@"playground"] & 1) != 0 || (objc_msgSend(v3, "safari_isCaseInsensitiveEqualToString:", @"playgroundbook"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 safari_isCaseInsensitiveEqualToString:@"band"];
  }

  return v4;
}

- (SFQuickLookDocumentSource)documentSource
{
  WeakRetained = objc_loadWeakRetained(&self->_documentSource);

  return WeakRetained;
}

- (void)fileSize
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_18B7AC000, log, OS_LOG_TYPE_ERROR, "Error reading file attributes to calculate file size: %{public}@", buf, 0xCu);
}

void __42__SFQuickLookDocument_saveToFileIfNeeded___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_18B7AC000, log, OS_LOG_TYPE_ERROR, "Failed to write QuickLook file to disk: %{public}@", buf, 0xCu);
}

void __42__SFQuickLookDocument_saveToFileIfNeeded___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_debug_impl(&dword_18B7AC000, a2, OS_LOG_TYPE_DEBUG, "Path on disk: %{private}@", &v2, 0xCu);
}

void __42__SFQuickLookDocument_saveToFileIfNeeded___block_invoke_cold_4(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138477827;
  v2 = 0;
  _os_log_debug_impl(&dword_18B7AC000, log, OS_LOG_TYPE_DEBUG, "QuickLook document temporary path: %{private}@", &v1, 0xCu);
}

@end