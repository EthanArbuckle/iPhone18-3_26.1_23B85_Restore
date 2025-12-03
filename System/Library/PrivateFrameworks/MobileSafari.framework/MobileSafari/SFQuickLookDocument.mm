@interface SFQuickLookDocument
+ (BOOL)_hasSuitableApplicationForOpeningDocument:(id)document;
+ (id)properFilenameForOriginalFilename:(id)filename typeIdentifier:(id)identifier mimeType:(id)type sourceURL:(id)l;
- (BOOL)shouldUnzipByUIDocumentInteractionController;
- (LSDocumentProxy)documentProxy;
- (NSString)fileName;
- (NSString)inferredUTI;
- (NSString)localizedType;
- (NSString)savedPathWithProperExtension;
- (NSURL)savedURLWithProperExtension;
- (SFQuickLookDocument)initWithFileName:(id)name mimeType:(id)type uti:(id)uti needsQuickLookDocumentView:(BOOL)view;
- (SFQuickLookDocumentSource)documentSource;
- (id)createTemporaryFile;
- (unint64_t)fileSize;
- (void)_deleteSavedPathIfNecessary;
- (void)_deleteSavedPathWithProperExtensionIfNecessary;
- (void)addQuickLookPrintSettingsToPrintInfo:(id)info;
- (void)dealloc;
- (void)fileSize;
- (void)saveToFileIfNeeded:(id)needed;
- (void)setFileNameForPDFDocument:(id)document;
- (void)setSavedPath:(id)path shouldDelete:(BOOL)delete;
- (void)setSavedPathWithProperExtension:(id)extension shouldDelete:(BOOL)delete;
@end

@implementation SFQuickLookDocument

+ (id)properFilenameForOriginalFilename:(id)filename typeIdentifier:(id)identifier mimeType:(id)type sourceURL:(id)l
{
  filenameCopy = filename;
  identifierCopy = identifier;
  typeCopy = type;
  lCopy = l;
  pathExtension = [filenameCopy pathExtension];
  v14 = [@"zip" compare:pathExtension options:9];

  safari_lastPathComponentWithoutZipExtension = [filenameCopy safari_lastPathComponentWithoutZipExtension];
  pathExtension2 = [safari_lastPathComponentWithoutZipExtension pathExtension];

  v17 = [(__CFString *)pathExtension2 length];
  v18 = MEMORY[0x1E6963710];
  if (!v17)
  {
LABEL_12:
    if (typeCopy)
    {
      PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963718], typeCopy, 0);
      v25 = PreferredIdentifierForTag;
      if (PreferredIdentifierForTag)
      {
        v20 = UTTypeCopyPreferredTagWithClass(PreferredIdentifierForTag, *v18);
      }

      else
      {
        v20 = 0;
      }

      if (!identifierCopy)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v20 = 0;
      if (!identifierCopy)
      {
        goto LABEL_21;
      }
    }

    if (!v20)
    {
      v20 = UTTypeCopyPreferredTagWithClass(identifierCopy, *v18);
    }

LABEL_21:
    if (v20)
    {
      if (([(__CFString *)pathExtension2 isEqualToString:v20]& 1) == 0)
      {
        v26 = [@"zip" compare:v20 options:9];
        if (v14 | v26)
        {
          if (v14)
          {
            pathExtension3 = [filenameCopy pathExtension];
            v28 = [pathExtension3 length];

            if (v28 && !v26)
            {
              v22 = [MEMORY[0x1E6963658] sf_documentProxyForName:filenameCopy type:0 MIMEType:0 sourceURL:lCopy];
              if (v22 && [SFQuickLookDocument _hasSuitableApplicationForOpeningDocument:v22])
              {
                goto LABEL_36;
              }
            }

            v29 = filenameCopy;
          }

          else
          {
            v30 = filenameCopy;
            stringByDeletingPathExtension = [v30 stringByDeletingPathExtension];

            v29 = stringByDeletingPathExtension;
          }

          v23 = [v29 stringByAppendingPathExtension:v20];

          if (v14)
          {
            v22 = filenameCopy;
            filenameCopy = v23;
LABEL_36:

            goto LABEL_37;
          }

          [(__CFString *)v23 stringByAppendingPathExtension:@"zip"];
          filenameCopy = v22 = filenameCopy;
LABEL_35:

          goto LABEL_36;
        }
      }
    }

    goto LABEL_37;
  }

  v19 = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], pathExtension2, 0);
  v20 = v19;
  if (!v19)
  {
    goto LABEL_11;
  }

  if (typeCopy)
  {
    v21 = *MEMORY[0x1E6963718];
    v22 = UTTypeCopyPreferredTagWithClass(v19, *MEMORY[0x1E6963718]);
    if (v22 && ![(__CFString *)typeCopy compare:v22 options:9])
    {
      goto LABEL_36;
    }

    v23 = UTTypeCreatePreferredIdentifierForTag(v21, typeCopy, 0);
    if (v23 && UTTypeConformsTo(v20, v23))
    {
      goto LABEL_35;
    }
  }

  if (!identifierCopy || !UTTypeConformsTo(v20, identifierCopy))
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_37:

  return filenameCopy;
}

+ (BOOL)_hasSuitableApplicationForOpeningDocument:(id)document
{
  documentCopy = document;
  v4 = *MEMORY[0x1E69636D0];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69636D0]];
  v6 = [documentCopy applicationsAvailableForOpeningWithHandlerRanks:v5 error:0];
  v7 = [v6 objectForKeyedSubscript:v4];
  v8 = [v7 count] != 0;

  return v8;
}

- (SFQuickLookDocument)initWithFileName:(id)name mimeType:(id)type uti:(id)uti needsQuickLookDocumentView:(BOOL)view
{
  nameCopy = name;
  typeCopy = type;
  utiCopy = uti;
  v18.receiver = self;
  v18.super_class = SFQuickLookDocument;
  v14 = [(SFQuickLookDocument *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_fileName, name);
    objc_storeStrong(&v15->_mimeType, type);
    objc_storeStrong(&v15->_uti, uti);
    v15->_needsQuickLookDocumentView = view;
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

- (void)setFileNameForPDFDocument:(id)document
{
  documentCopy = document;
  fileName = self->_fileName;
  p_fileName = &self->_fileName;
  v6 = fileName;
  if (fileName)
  {
    if (![(NSString *)v6 isEqualToString:documentCopy])
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
    objc_storeStrong(p_fileName, document);
  }
}

- (unint64_t)fileSize
{
  v14 = *MEMORY[0x1E69E9840];
  savedPath = [(SFQuickLookDocument *)self savedPath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  v4 = [defaultManager attributesOfItemAtPath:savedPath error:&v12];
  v5 = v12;

  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      safari_privacyPreservingDescription = [v5 safari_privacyPreservingDescription];
      [(SFQuickLookDocument *)safari_privacyPreservingDescription fileSize];
    }
  }

  if (v4)
  {
    v8 = [v4 safari_numberForKey:*MEMORY[0x1E696A3B8]];
    v9 = v8;
    if (v8)
    {
      unsignedLongLongValue = [v8 unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
    }
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (void)_deleteSavedPathIfNecessary
{
  if (self->_shouldDeleteSavedPath)
  {
    v8 = v2;
    v9 = v3;
    savedPath = [(SFQuickLookDocument *)self savedPath];
    if (savedPath)
    {
      v5 = dispatch_get_global_queue(-2, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__SFQuickLookDocument__deleteSavedPathIfNecessary__block_invoke;
      block[3] = &unk_1E721D568;
      v7 = savedPath;
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
    savedPathWithProperExtension = [(SFQuickLookDocument *)self savedPathWithProperExtension];
    if (savedPathWithProperExtension)
    {
      v5 = dispatch_get_global_queue(-2, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__SFQuickLookDocument__deleteSavedPathWithProperExtensionIfNecessary__block_invoke;
      block[3] = &unk_1E721D568;
      v7 = savedPathWithProperExtension;
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
      savedPathWithProperExtension = [(SFQuickLookDocument *)self savedPathWithProperExtension];
      v6 = savedPathWithProperExtension;
      if (savedPathWithProperExtension)
      {
        fileName = savedPathWithProperExtension;
      }

      else
      {
        fileName = [(SFQuickLookDocument *)self fileName];
      }

      v8 = fileName;

      pathExtension = [v8 pathExtension];
      PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], pathExtension, 0);
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
    fileName = [(SFQuickLookDocument *)self fileName];
    v6 = [(SFQuickLookDocument *)self uti];
    mimeType = [(SFQuickLookDocument *)self mimeType];
    v8 = [v4 sf_documentProxyForName:fileName type:v6 MIMEType:mimeType sourceURL:self->_sourceURL];
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
    savedPath = [(SFQuickLookDocument *)self savedPath];
    lastPathComponent = [savedPath lastPathComponent];
    if (lastPathComponent)
    {
      v7 = [SFQuickLookDocument properFilenameForOriginalFilename:lastPathComponent typeIdentifier:self->_uti mimeType:self->_mimeType sourceURL:self->_sourceURL];
      stringByDeletingLastPathComponent = [savedPath stringByDeletingLastPathComponent];
      v9 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v7];

      if ([v7 isEqualToString:lastPathComponent])
      {
        v10 = 0;
      }

      else
      {
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v12 = [defaultManager _web_pathWithUniqueFilenameForPath:v9];
        if (v12 && ([defaultManager linkItemAtPath:savedPath toPath:v12 error:0] & 1) != 0)
        {
          v10 = 1;
        }

        else
        {
          v13 = savedPath;

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
  savedPathWithProperExtension = [(SFQuickLookDocument *)self savedPathWithProperExtension];
  if (savedPathWithProperExtension)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:savedPathWithProperExtension];
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
    pathExtension = [v5 pathExtension];
    if ([pathExtension compare:v6 options:9])
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

- (void)saveToFileIfNeeded:(id)needed
{
  neededCopy = needed;
  if (self->_savedPath)
  {
    WeakRetained = [(SFQuickLookDocument *)self savedURLWithProperExtension];
    neededCopy[2](neededCopy, WeakRetained);
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
      v7 = neededCopy;
      [WeakRetained dataForQuickLookDocument:self completionHandler:v6];
    }

    else
    {
      neededCopy[2](neededCopy, 0);
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

- (void)setSavedPath:(id)path shouldDelete:(BOOL)delete
{
  pathCopy = path;
  [(SFQuickLookDocument *)self _deleteSavedPathIfNecessary];
  objc_storeStrong(&self->_savedPath, path);
  self->_shouldDeleteSavedPath = delete;
  [(SFQuickLookDocument *)self setSavedPathWithProperExtension:0 shouldDelete:0];
}

- (void)setSavedPathWithProperExtension:(id)extension shouldDelete:(BOOL)delete
{
  extensionCopy = extension;
  [(SFQuickLookDocument *)self _deleteSavedPathWithProperExtensionIfNecessary];
  savedPathWithProperExtension = self->_savedPathWithProperExtension;
  self->_savedPathWithProperExtension = extensionCopy;

  self->_shouldDeleteSavedPathWithProperExtension = delete;
}

- (void)addQuickLookPrintSettingsToPrintInfo:(id)info
{
  infoCopy = info;
  v4 = [getQLPreviewConverterClass() isIWorkDocumentType:self->_uti];
  if (v4)
  {
    [infoCopy setScaleUp:1];
  }

  v5 = [getQLPreviewConverterClass() isSpreadSheetDocumentType:self->_uti];
  if (UTTypeConformsTo(self->_uti, @"public.presentation") || (v4 & v5) != 0)
  {
    [infoCopy setOrientation:1];
  }
}

- (BOOL)shouldUnzipByUIDocumentInteractionController
{
  fileName = [(SFQuickLookDocument *)self fileName];
  pathExtension = [fileName pathExtension];

  if ([pathExtension safari_isCaseInsensitiveEqualToString:@"playground"] & 1) != 0 || (objc_msgSend(pathExtension, "safari_isCaseInsensitiveEqualToString:", @"playgroundbook"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathExtension safari_isCaseInsensitiveEqualToString:@"band"];
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
  *(buf + 4) = self;
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