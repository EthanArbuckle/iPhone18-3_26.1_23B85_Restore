@interface MFAttachment
+ (BOOL)isSinglePagePDF:(id)a3;
+ (id)fileTypeForFilename:(id)a3 mimeType:(id)a4;
- (BOOL)_isSinglePagePDFFileFetchLocalData:(BOOL)a3;
- (BOOL)conformsToType:(id)a3;
- (BOOL)conformsToTypeIdentifier:(id)a3;
- (BOOL)contentTypeConformsToEvent;
- (BOOL)contentTypeConformsToIWork;
- (BOOL)contentTypeConformsToMarkup;
- (BOOL)contentTypeConformsToPassbook;
- (BOOL)contentTypeConformsToProvisionment;
- (BOOL)hasCalendarMetadata;
- (BOOL)isAvailable;
- (BOOL)isCached;
- (BOOL)isCalendarFile;
- (BOOL)isContainedInCompose;
- (BOOL)isContainedInRFC822;
- (BOOL)isDataAvailableLocally;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMailDrop;
- (BOOL)isMailDropPhotoArchive;
- (BOOL)isMediaFile;
- (BOOL)isPlaceholder;
- (BOOL)isRFC822;
- (BOOL)shouldAutoDownload;
- (BOOL)shouldPreserveFidelity;
- (CGSize)imageDimensions;
- (MFAttachment)initWithURL:(id)a3 attachmentManager:(id)a4;
- (MFAttachmentPlaceholder)placeholder;
- (NSString)ef_publicDescription;
- (NSString)fileUTType;
- (NSString)inferredMimeType;
- (NSString)mimeType;
- (id)_dataProvider;
- (id)_fileUTTypeForFileName:(id)a3;
- (id)attachmentContentTypeForFileName:(id)a3;
- (id)decodeFilterWithDataConsumer:(id)a3;
- (id)fetchDataSynchronously:(id *)a3 stripPrivateMetadata:(BOOL)a4;
- (id)fetchDataToURL:(id *)a3;
- (id)fetchLocalData:(id *)a3 stripPrivateMetadata:(BOOL)a4;
- (id)fetchPlaceholderData;
- (id)fileAttributes;
- (id)fileNameByStrippingZipIfNeeded:(BOOL)a3;
- (id)fileURL;
- (id)fileWrapperUsingFetchedLocalData;
- (id)filterData:(id)a3;
- (id)filterVCSData:(id)a3;
- (id)metadataValueForKey:(id)a3;
- (id)newDownloadProgress;
- (id)readFromDisk;
- (id)textEncodingGuessWithData:(id)a3;
- (id)textEncodingNameForData:(id)a3 mimeType:(id)a4;
- (unint64_t)decodedFileSize;
- (unint64_t)encodedFileSize;
- (unint64_t)hash;
- (unint64_t)sizeOnDisk;
- (void)_dataProvider;
- (void)fetchPlaceholderData;
- (void)readFromDisk;
- (void)setDecodedFileSize:(unint64_t)a3;
- (void)setEncodedFileSize:(unint64_t)a3;
- (void)setFileName:(id)a3;
- (void)setRemoteImageFileName:(id)a3;
- (void)updatePath;
- (void)updatePathIfNeeded;
@end

@implementation MFAttachment

- (MFAttachment)initWithURL:(id)a3 attachmentManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MFAttachment;
  v9 = [(MFAttachment *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, a3);
    objc_storeStrong(&v10->_attachmentManager, a4);
  }

  return v10;
}

- (NSString)ef_publicDescription
{
  v3 = [MEMORY[0x1E699B7B0] currentDevice];
  v4 = [v3 isInternal];

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  if (v4)
  {
    v7 = [(MFAttachment *)self url];
    v8 = [(MFAttachment *)self path];
    v9 = [(MFAttachment *)self contentID];
    v10 = [(MFAttachment *)self mimeType];
    v11 = [(MFAttachment *)self part];
    v12 = [v5 stringWithFormat:@"<%@: %p> url=%@, path=%@, contentID=%@, mimeType=%@, mimePart=%@, isMailDrop=%d", v6, self, v7, v8, v9, v10, v11, -[MFAttachment isMailDrop](self, "isMailDrop")];
  }

  else
  {
    v7 = [(MFAttachment *)self contentID];
    v8 = [(MFAttachment *)self mimeType];
    v9 = [(MFAttachment *)self disposition];
    v13 = [(MFAttachment *)self isMailDrop];
    v10 = [(MFAttachment *)self path];
    v14 = @"Has path";
    if (!v10)
    {
      v14 = @"Does not have path";
    }

    v12 = [v5 stringWithFormat:@"<%@: %p> contentID=%@, mimeType=%@, disposition=%@, isMailDrop=%d %@", v6, self, v7, v8, v9, v13, v14];
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MFAttachment *)self contentID];
      v7 = [(MFAttachment *)v5 contentID];
      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(MFAttachment *)self contentID];
  v3 = [v2 hash];

  return v3;
}

- (id)metadataValueForKey:(id)a3
{
  v3 = [(MFAttachmentManager *)self->_attachmentManager metadataForAttachment:self forKey:a3];

  return v3;
}

- (id)decodeFilterWithDataConsumer:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(MFAttachment *)self part];
  v7 = [v6 contentTransferEncoding];

  v8 = [(MFAttachment *)self isMailDrop];
  if (v8)
  {
    v3 = [(MFAttachment *)self part];
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  v9 = [v7 isEqualToString:@"binary"];
  v10 = v9;
  if (v8)
  {

    if ((v10 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    v11 = [MEMORY[0x1E69AD688] filterWithConsumer:v5];
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(MFAttachment *)self isDataAvailableLocally];
      v17 = [(MFAttachment *)self isContainedInRFC822];
      v18 = [(MFAttachment *)self isMailDrop];
      v19 = [(MFAttachment *)self part];
      v26 = 138413570;
      v27 = self;
      v28 = 1024;
      *v29 = v16;
      *&v29[4] = 1024;
      *&v29[6] = v17;
      v30 = 1024;
      v31 = v18;
      v32 = 2048;
      v33 = v19;
      v34 = 2114;
      v35 = v7;
      _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "#Attachments %@ performing no conversion (isDataAvailableLocally=%d, isContainedInRFC822=%d, isMailDrop=%d, part=%p, contentTransferEncoding=%{public}@)", &v26, 0x32u);
    }

    goto LABEL_15;
  }

  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (!v7 || ([v7 isEqualToString:@"7bit"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"8bit"))
  {
    v11 = [MEMORY[0x1E69AD6D0] filterWithConsumer:v5];
    v12 = MFLogGeneral();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v26 = 138412546;
    v27 = self;
    v28 = 2114;
    *v29 = v7;
    v13 = "#Attachments %@ stripping line endings (contentTransferEncoding=%{public}@)";
    goto LABEL_10;
  }

  if ([v7 isEqualToString:@"quoted-printable"])
  {
    v12 = [MEMORY[0x1E69AD758] filterWithConsumer:v5];
    v22 = [MEMORY[0x1E69AD6D0] filterWithConsumer:v12];
    v23 = [(MFAttachment *)self part];
    v24 = [v23 type];
    -[NSObject setForTextPart:](v12, "setForTextPart:", [v24 isEqualToString:@"text"]);

    v11 = v22;
    v25 = MFLogGeneral();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = self;
      _os_log_impl(&dword_1B0389000, v25, OS_LOG_TYPE_DEFAULT, "#Attachments %@ quoted-printable", &v26, 0xCu);
    }

    goto LABEL_15;
  }

  if ([v7 isEqualToString:@"base64"])
  {
    v11 = [MEMORY[0x1E69AD678] filterWithConsumer:v5];
    v12 = MFLogGeneral();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v26 = 138412290;
    v27 = self;
    v13 = "#Attachments %@ base64";
    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"x-uuencode"])
  {
    v11 = [MEMORY[0x1E69AD780] filterWithConsumer:v5];
    v12 = MFLogGeneral();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v26 = 138412290;
    v27 = self;
    v13 = "#Attachments %@ uuencode";
LABEL_28:
    v14 = v12;
    v15 = 12;
    goto LABEL_11;
  }

  v11 = [MEMORY[0x1E69AD688] filterWithConsumer:v5];
  v12 = MFLogGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412546;
    v27 = self;
    v28 = 2114;
    *v29 = v7;
    v13 = "#Attachments %@ unknown encoding (contentTransferEncoding=%{public}@)";
LABEL_10:
    v14 = v12;
    v15 = 22;
LABEL_11:
    _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, v13, &v26, v15);
  }

LABEL_15:

  v20 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)fetchLocalData:(id *)a3 stripPrivateMetadata:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  if ([(MFAttachment *)self isContainedInRFC822]|| [(MFAttachment *)self isContainedInCompose])
  {
    if (!self->_attachmentManager)
    {
      v6 = +[MFAttachmentManager defaultManager];
      attachmentManager = self->_attachmentManager;
      self->_attachmentManager = v6;
    }

    v8 = [MEMORY[0x1E699B868] promise];
    v9 = objc_alloc_init(MEMORY[0x1E69AD698]);
    v10 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:-1];
    v11 = [(MFAttachment *)self _dataProvider];
    v12 = EFPromiseAttachmentDataHandler(v8, v9);
    [v11 fetchDataForAttachment:self consumer:v9 progress:v10 completion:v12];

    v13 = [v8 future];
    v14 = [v13 result:0];

    v15 = v14;
  }

  else
  {
    v15 = [(MFAttachment *)self readFromDisk];
  }

  if ([v15 length])
  {
    if (v4 && [(MFAttachment *)self isImageFile])
    {
      v16 = _stripPrivateFileMetadata(v15);

      v15 = v16;
    }

    v17 = [(MFAttachment *)self filterData:v15];

    v15 = v17;
  }

  else
  {
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(MFAttachment *)self fileURL];
      objc_claimAutoreleasedReturnValue();
      [MFAttachment fetchLocalData:stripPrivateMetadata:];
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)fetchDataSynchronously:(id *)a3 stripPrivateMetadata:(BOOL)a4
{
  v4 = a4;
  v27[4] = *MEMORY[0x1E69E9840];
  if (![MEMORY[0x1E696AF00] isMainThread] || (EFIsRunningUnitTests() & 1) != 0)
  {
    v11 = [MEMORY[0x1E699B868] promise];
    v12 = [(MFAttachment *)self fetchCompletionBlock];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __60__MFAttachment_fetchDataSynchronously_stripPrivateMetadata___block_invoke;
    v24[3] = &unk_1E7AA4C10;
    v13 = v12;
    v26 = v13;
    v24[4] = self;
    v14 = v11;
    v25 = v14;
    [(MFAttachment *)self setFetchCompletionBlock:v24];
    [(MFAttachmentManager *)self->_attachmentManager fetchDataSynchronouslyForAttachment:self];
    v15 = [v14 future];
    v23 = 0;
    v16 = [v15 result:&v23];
    v9 = v23;

    v10 = v16;
  }

  else
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [MFAttachment fetchDataSynchronously:v7 stripPrivateMetadata:?];
    }

    v27[0] = 0;
    v8 = [(MFAttachment *)self fetchLocalData:v27 stripPrivateMetadata:0];
    v9 = v27[0];
    v10 = v8;
  }

  if (![v10 length])
  {
    v19 = MFLogGeneral();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(MFAttachment *)self fileURL];
      objc_claimAutoreleasedReturnValue();
      [v9 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [MFAttachment fetchDataSynchronously:stripPrivateMetadata:];
    }

    goto LABEL_17;
  }

  if ([MFAttachmentPlaceholder isPlaceholderSerializedRepresentation:v10])
  {
    v17 = [MFAttachmentPlaceholder placeholderFromSerializedRepresentation:v10];
    if (v17)
    {
      v18 = [MFAttachmentPlaceholder dataForPlaceholder:v17];

      v10 = v18;
      [(MFAttachment *)self setPlaceholder:v17];
    }
  }

  if (v4 && [(MFAttachment *)self isImageFile])
  {
    _stripPrivateFileMetadata(v10);
    v10 = v19 = v10;
LABEL_17:
  }

  if (a3)
  {
    v20 = v9;
    *a3 = v9;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v10;
}

void __60__MFAttachment_fetchDataSynchronously_stripPrivateMetadata___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, v11, v7, v8);
  }

  if (v7)
  {
    v10 = [*(a1 + 32) filterData:v7];

    v7 = v10;
  }

  [*(a1 + 40) finishWithResult:v7 error:v8];
}

- (id)fetchDataToURL:(id *)a3
{
  v13[6] = *MEMORY[0x1E69E9840];
  if ([(MFAttachment *)self isPlaceholder])
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(MFAttachment *)self fileName];
      objc_claimAutoreleasedReturnValue();
      [MFAttachment fetchDataToURL:];
    }

    v5 = [(MFAttachment *)self placeholder];
    v6 = [v5 fileURL];
  }

  else
  {
    v13[0] = 0;
    v7 = [(MFAttachment *)self fetchDataSynchronously:v13];
    v5 = v13[0];
    if (v7)
    {
      v8 = [(MFAttachment *)self fileName];
      v9 = [MFAttachmentUtilities writeData:v7 toTemporaryFileURLWithFileName:v8];

      if (v9)
      {
        v9 = v9;
        v6 = v9;
      }

      else
      {
        v10 = MFLogGeneral();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          [v7 length];
          [(MFAttachment *)self fileName];
          objc_claimAutoreleasedReturnValue();
          [MFAttachment fetchDataToURL:];
        }

        v6 = 0;
      }
    }

    else
    {
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(MFAttachment *)self fileName];
        objc_claimAutoreleasedReturnValue();
        [MFAttachment fetchDataToURL:];
      }

      v6 = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)fileWrapperUsingFetchedLocalData
{
  v3 = objc_alloc(MEMORY[0x1E696AC38]);
  v4 = [(MFAttachment *)self fetchLocalData];
  v5 = [v3 initRegularFileWithContents:v4];

  v6 = [(MFAttachment *)self fileName];
  [v5 setPreferredFilename:v6];

  return v5;
}

- (BOOL)isMailDrop
{
  v3 = [(NSURL *)self->_url scheme];
  if ([v3 isEqualToString:@"x-attach-maildrop"])
  {
    v4 = 1;
LABEL_6:

    return v4;
  }

  v5 = [(NSURL *)self->_url scheme];
  v6 = [v5 isEqualToString:@"x-attach-maildrop-image"];

  if ((v6 & 1) == 0)
  {
    v3 = [(MFAttachment *)self mailDropMetadata];
    v7 = [v3 directUrl];
    v4 = v7 != 0;

    goto LABEL_6;
  }

  return 1;
}

- (BOOL)isMailDropPhotoArchive
{
  LODWORD(v3) = [(MFAttachment *)self isMailDrop];
  if (v3)
  {
    v4 = [(MFAttachment *)self mailDropMetadata];
    v5 = [v4 flags];

    return (v5 >> 1) & 1;
  }

  return v3;
}

- (id)fetchPlaceholderData
{
  v3 = *MEMORY[0x1E69E9840];
  p_placeholder = &self->_placeholder;
  placeholder = self->_placeholder;
  if (placeholder)
  {
    v6 = [(MFAttachmentPlaceholder *)placeholder serializedRepresentation];
  }

  else
  {
    v7 = [(MFAttachment *)self _dataProvider];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(MFAttachment *)self _dataProvider];
      v9 = [(MFAttachment *)self contentID];
      v6 = [v8 rawDataForContentID:v9];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E69AD698]);
      v9 = [MEMORY[0x1E69AD768] rangedFilterWithConsumer:v8 range:{0, 2100}];
      v10 = [MEMORY[0x1E699B868] promise];
      v11 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:-1];
      v12 = EFPromiseAttachmentDataHandler(v10, v8);
      [v7 fetchDataForAttachment:self consumer:v9 progress:v11 completion:v12];

      v13 = [v10 future];
      v6 = [v13 result:0];
    }

    if (v6)
    {
      v14 = [MFAttachmentPlaceholder placeholderFromSerializedRepresentation:v6];
      if (v14)
      {
        objc_storeStrong(p_placeholder, v14);
      }
    }

    else
    {
      v14 = MFLogGeneral();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(MFAttachment *)self fileURL];
        objc_claimAutoreleasedReturnValue();
        [MFAttachment fetchPlaceholderData];
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

- (MFAttachmentPlaceholder)placeholder
{
  if (!self->_placeholder && +[MFAttachmentCapabilities placeholdersAvailable])
  {
    v3 = [(NSURL *)self->_url scheme];
    if (([v3 isEqualToString:@"x-attach-maildrop"] & 1) == 0)
    {
      v4 = [(MFAttachment *)self fetchPlaceholderData];
    }
  }

  placeholder = self->_placeholder;

  return placeholder;
}

- (BOOL)isPlaceholder
{
  v3 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentIsPlaceholder"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v6 = [(MFAttachment *)self placeholder];
    v5 = v6 != 0;
  }

  return v5;
}

- (id)newDownloadProgress
{
  v3 = [(MFAttachment *)self encodedFileSize];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = -1;
  }

  v5 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v4];
  if ([(MFAttachment *)self isDataAvailableLocally])
  {
    [v5 setCompletedUnitCount:v4];
  }

  return v5;
}

- (id)fileURL
{
  v3 = [(MFAttachment *)self path];

  if (v3)
  {
    v4 = MEMORY[0x1E695DFF8];
    v5 = [(MFAttachment *)self path];
    v3 = [v4 fileURLWithPath:v5 isDirectory:0];
  }

  return v3;
}

- (id)filterData:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695E000] em_userDefaults];
  v6 = [v5 BOOLForKey:@"DisableAttachmentFilters"];

  v7 = v4;
  if ((v6 & 1) == 0)
  {
    v7 = v4;
    if ([v4 length])
    {
      v7 = v4;
      if ([(MFAttachment *)self contentTypeConformsToEventVCS])
      {
        v7 = [(MFAttachment *)self filterVCSData:v4];
      }
    }
  }

  return v7;
}

- (id)filterVCSData:(id)a3
{
  v3 = a3;
  v4 = [@"\nVERSION:1.0" dataUsingEncoding:4];
  v5 = [v3 rangeOfData:v4 options:0 range:{0, objc_msgSend(v3, "length")}];
  v7 = v6;

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v3 mutableCopy];
    [v8 replaceBytesInRange:v5 + 1 withBytes:v7 - 1 length:{objc_msgSend(@"VERSION:2.0", "UTF8String"), objc_msgSend(@"VERSION:2.0", "length")}];
    if (v8)
    {
      v8 = v8;

      v3 = v8;
    }
  }

  return v3;
}

- (BOOL)isAvailable
{
  if (![(MFAttachment *)self isMailDrop])
  {
    return 1;
  }

  v3 = [(MFAttachment *)self mailDropMetadata];
  v7 = 0;
  if (v3)
  {
    v4 = v3;
    v5 = [(MFAttachment *)self mailDropMetadata];
    v6 = [v5 isInvalid];

    if (!v6)
    {
      v7 = 1;
    }
  }

  v8 = [(MFAttachment *)self mailDropMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(MFAttachment *)self mailDropMetadata];
    if ([v10 isExpired])
    {
      v11 = [(MFAttachment *)self isCached];

      return v7 && v11;
    }

    else
    {
    }
  }

  return v7;
}

- (BOOL)isCalendarFile
{
  v2 = [(MFAttachment *)self mimeType];
  v3 = [v2 isEqualToString:@"text/calendar"];

  return v3;
}

- (BOOL)hasCalendarMetadata
{
  v3 = [(MFAttachment *)self icsRepresentation];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MFAttachment *)self eventID];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(MFAttachment *)self meetingStorePersistentID];
      v4 = v6 != 0;
    }
  }

  return v4;
}

- (id)_dataProvider
{
  v10[4] = *MEMORY[0x1E69E9840];
  v3 = [(MFAttachment *)self url];

  if (v3)
  {
    attachmentManager = self->_attachmentManager;
    v5 = [(MFAttachment *)self url];
    v10[0] = 0;
    v3 = [(MFAttachmentManager *)attachmentManager _dataProviderForAttachmentURL:v5 error:v10];
    v6 = v10[0];

    if (v6)
    {
      v7 = MFLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(MFAttachment *)self fileURL];
        objc_claimAutoreleasedReturnValue();
        [v6 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [MFAttachment _dataProvider];
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isDataAvailableLocally
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(MFAttachment *)self isContainedInRFC822]|| [(MFAttachment *)self isContainedInCompose])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = [(MFAttachment *)self fileURL];
    if (v4)
    {
      v5 = [MFAttachmentDataProvider dataProviderWithURL:v4];
      v3 = [v5 exists];
    }

    else
    {
      v3 = 0;
    }

    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = [(MFAttachment *)self mimePartNumber];
      v10 = [(MFAttachment *)self fileURL];
      v11 = 138543874;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      v15 = 1024;
      v16 = v3;
      _os_log_debug_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEBUG, "#Attachments Attachment '%{public}@' '%{public}@' has data available locally: %{BOOL}d", &v11, 0x1Cu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)shouldAutoDownload
{
  if ([(MFAttachment *)self isDataAvailableLocally])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = [(MFAttachment *)self _dataProvider];
    v5 = [v4 messageForAttachment:self];

    v6 = [v5 messageStore];
    v7 = [v6 account];

    v8 = [v7 fetchLimits];
    if (v8 && ((v9 = -[MFAttachment encodedFileSize](self, "encodedFileSize"), v9 > [v8 fetchMaxBytes]) || v9 > +[MFAttachmentCapabilities currentDownloadLimit](MFAttachmentCapabilities, "currentDownloadLimit")) || -[MFAttachment isMailDrop](self, "isMailDrop"))
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v3 = [v7 connectionsAreConstrained] ^ 1;
    }
  }

  return v3;
}

- (NSString)inferredMimeType
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(MFAttachment *)self fileName];
  v4 = [v2 mf_stringForMimeTypeFromFileName:v3];

  return v4;
}

- (BOOL)isContainedInRFC822
{
  v3 = [(MFAttachment *)self _dataProvider];
  v4 = [v3 messageForAttachment:self];

  v5 = [v4 messageURL];
  v6 = [v5 scheme];
  v7 = [v6 isEqualToString:@"x-attach-RFC822"];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [(MFAttachment *)self part];
    v10 = [v9 parentPart];

    v8 = v10 != 0;
    if (v10)
    {
      while (1)
      {
        v11 = [v10 type];
        v12 = [v10 subtype];
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v11, v12];
        v14 = v13;
        if (v11)
        {
          if (![v13 caseInsensitiveCompare:@"message/rfc822"] || !objc_msgSend(v14, "caseInsensitiveCompare:", @"message/delivery-status"))
          {
            break;
          }
        }

        v15 = [v10 parentPart];

        v8 = v15 != 0;
        v10 = v15;
        if (!v15)
        {
          goto LABEL_11;
        }
      }
    }

    v15 = v10;
LABEL_11:
  }

  return v8;
}

- (BOOL)isContainedInCompose
{
  v2 = [(NSURL *)self->_url scheme];
  v3 = [v2 isEqualToString:@"x-attach-compose"];

  return v3;
}

- (BOOL)isRFC822
{
  v5 = [(MFAttachment *)self mimeType];
  if (v5)
  {
    v2 = [(MFAttachment *)self mimeType];
    if (![v2 caseInsensitiveCompare:@"message/rfc822"])
    {
      v6 = 1;
      goto LABEL_8;
    }

    v3 = [(MFAttachment *)self mimeType];
    if (![v3 caseInsensitiveCompare:@"message/delivery-status"])
    {
      v6 = 1;
LABEL_6:

LABEL_8:
      goto LABEL_9;
    }
  }

  v7 = [(MFAttachment *)self fileName];
  v8 = [v7 pathExtension];
  v9 = [v8 lowercaseString];
  v6 = [v9 isEqualToString:@"eml"];

  if (v5)
  {
    goto LABEL_6;
  }

LABEL_9:

  return v6;
}

- (BOOL)isMediaFile
{
  if ([(MFAttachment *)self isImageFile])
  {
    return 1;
  }

  return [(MFAttachment *)self isVideoFile];
}

- (id)fileNameByStrippingZipIfNeeded:(BOOL)a3
{
  v3 = a3;
  v4 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentFileNameKey"];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 pathExtension];
    v7 = [v6 caseInsensitiveCompare:@"zip"];

    if (!v7)
    {
      v8 = [v5 stringByDeletingPathExtension];

      v5 = v8;
    }
  }

  return v5;
}

- (void)setFileName:(id)a3
{
  v4 = a3;
  [MFAttachment setMetadataValue:"setMetadataValue:forKey:" forKey:?];
  if (v4)
  {
    [(MFAttachment *)self updatePath];
  }
}

- (void)setRemoteImageFileName:(id)a3
{
  v4 = a3;
  [MFAttachment setMetadataValue:"setMetadataValue:forKey:" forKey:?];
  if (v4)
  {
    [(MFAttachment *)self updatePath];
  }
}

- (void)updatePath
{
  v3 = [(MFAttachmentManager *)self->_attachmentManager _filePathForAttachment:self];
  [MFAttachment setMetadataValue:"setMetadataValue:forKey:" forKey:?];
}

- (void)updatePathIfNeeded
{
  v3 = [(MFAttachment *)self path];

  if (!v3)
  {

    [(MFAttachment *)self updatePath];
  }
}

- (id)_fileUTTypeForFileName:(id)a3
{
  v4 = a3;
  v5 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentUTTypeKey"];
  if (!v5)
  {
    v6 = objc_opt_class();
    v7 = [(MFAttachment *)self mimeType];
    v8 = [v6 fileTypeForFilename:v4 mimeType:v7];

    v5 = [v8 identifier];
    if (v5)
    {
      [(MFAttachment *)self setMetadataValue:v5 forKey:@"MFAttachmentUTTypeKey"];
    }

    else if ([v4 length])
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [(MFAttachment *)self setMetadataValue:v9 forKey:@"MFAttachmentUTTypeKey"];
    }
  }

  v10 = [MEMORY[0x1E695DFB0] null];

  if (v5 == v10)
  {

    v5 = 0;
  }

  return v5;
}

- (NSString)fileUTType
{
  v3 = [(MFAttachment *)self fileName];
  v4 = [(MFAttachment *)self _fileUTTypeForFileName:v3];

  return v4;
}

- (id)attachmentContentTypeForFileName:(id)a3
{
  v3 = [(MFAttachment *)self _fileUTTypeForFileName:a3];
  if (!v3)
  {
    v3 = [*MEMORY[0x1E6982E48] identifier];
  }

  return v3;
}

- (NSString)mimeType
{
  v3 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentMimetypeKey"];
  v4 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentIsPlaceholder"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [(MFAttachment *)self placeholder];
    v7 = [v6 mimeType];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    v10 = v9;

    v3 = v10;
  }

  return v3;
}

+ (BOOL)isSinglePagePDF:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E695E000] em_lockdownModeEnabled])
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [MFAttachment isSinglePagePDF:v4];
    }

    goto LABEL_10;
  }

  if (!v3)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_15;
  }

  v5 = CGDataProviderCreateWithCFData(v3);
  v6 = CGPDFDocumentCreateWithProvider(v5);
  v7 = v6;
  if (v6)
  {
    v8 = CGPDFDocumentIsUnlocked(v6) && CGPDFDocumentGetNumberOfPages(v7) == 1 && CGPDFDocumentGetPage(v7, 1uLL) != 0;
    CGPDFDocumentRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  CGDataProviderRelease(v5);
LABEL_15:

  return v8;
}

- (BOOL)_isSinglePagePDFFileFetchLocalData:(BOOL)a3
{
  v3 = a3;
  v5 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentIsSinglePagePDFKey"];
  v6 = v5;
  if (v5)
  {
    LOBYTE(v7) = [v5 BOOLValue];
    goto LABEL_13;
  }

  v8 = [(MFAttachment *)self isPDFFile];
  v9 = [(MFAttachment *)self isDataAvailableLocally];
  v10 = [(MFAttachment *)self disposition];
  if (!v10)
  {
    if (v8 && (v9 || v3))
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_11;
  }

  v11 = [(MFAttachment *)self disposition];
  if (![v11 caseInsensitiveCompare:@"attachment"])
  {

    v7 = 0;
    goto LABEL_10;
  }

  if (!v8 || !v9 && !v3)
  {
    goto LABEL_8;
  }

LABEL_6:
  v12 = objc_opt_class();
  v10 = [(MFAttachment *)self fetchLocalData];
  v7 = [v12 isSinglePagePDF:v10];
LABEL_10:

LABEL_11:
  if (v9 || !v8)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v7];
    [(MFAttachment *)self setMetadataValue:v13 forKey:@"MFAttachmentIsSinglePagePDFKey"];
  }

LABEL_13:

  return v7;
}

- (BOOL)shouldPreserveFidelity
{
  v2 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentPreserveFidelityKey"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)decodedFileSize
{
  v3 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentDecodedFileSizeKey"];
  v4 = [v3 unsignedIntegerValue];

  v5 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentIsPlaceholder"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [(MFAttachment *)self placeholder];
    v8 = [v7 fileSize];
    if (v8)
    {
      v4 = v8;
    }
  }

  return v4;
}

- (void)setDecodedFileSize:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [MFAttachment setMetadataValue:"setMetadataValue:forKey:" forKey:?];
}

- (unint64_t)encodedFileSize
{
  v3 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentEncodedFileSizeKey"];
  v4 = [v3 unsignedIntegerValue];

  v5 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentIsPlaceholder"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [(MFAttachment *)self placeholder];
    v8 = [v7 fileSize];
    if (v8)
    {
      v4 = v8;
    }
  }

  return v4;
}

- (void)setEncodedFileSize:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [MFAttachment setMetadataValue:"setMetadataValue:forKey:" forKey:?];
}

- (BOOL)isCached
{
  v3 = [(MFAttachment *)self sizeOnDisk];
  v4 = [(MFAttachment *)self decodedFileSize];
  v5 = [(MFAttachment *)self encodedFileSize];
  if (v3)
  {
    v6 = v3 >= v4;
  }

  else
  {
    v6 = 0;
  }

  return v6 && v3 <= v5;
}

- (id)fileAttributes
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v4 = [(MFAttachment *)self part];
  v5 = [v4 bodyParameterForKey:@"x-unix-mode"];

  if (v5)
  {
    v6 = strtoul([v5 ef_lossyDefaultCStringBytes], 0, 8) & 0x1FF;
    if (v6)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v6];
      [v3 setObject:v7 forKey:*MEMORY[0x1E696A370]];
    }
  }

  return v3;
}

- (unint64_t)sizeOnDisk
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(MFAttachment *)self path];
  v10 = 0;
  v5 = [v3 attributesOfItemAtPath:v4 error:&v10];
  v6 = v10;

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v5 valueForKey:*MEMORY[0x1E696A3B8]];
    v7 = [v8 unsignedIntegerValue];
  }

  return v7;
}

- (id)readFromDisk
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = [(MFAttachment *)self path];
  if (v3 && (v4 = [(MFAttachment *)self isContainedInRFC822], v3, !v4))
  {
    v6 = MEMORY[0x1E695DEF0];
    v7 = [(MFAttachment *)self fileURL];
    v12[0] = 0;
    v5 = [v6 dataWithContentsOfURL:v7 options:3 error:v12];
    v8 = v12[0];

    if (!v5)
    {
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(MFAttachment *)self fileURL];
        objc_claimAutoreleasedReturnValue();
        [v8 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [MFAttachment readFromDisk];
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)textEncodingNameForData:(id)a3 mimeType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  if (!strcmp("text/html", [v7 UTF8String]))
  {
    Default = CFAllocatorGetDefault();
    v14 = MFGetMappedAllocator();
    CFAllocatorSetDefault(v14);
    v15 = CFStringCreateWithBytes(v14, [v6 bytes], objc_msgSend(v6, "length"), 0x8000100u, 0);
    CFAllocatorSetDefault(Default);
    if (v15)
    {
      CFRelease(v15);
      v12 = @"UTF-8";
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (![v8 hasPrefix:@"text/"])
  {
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v9 = [(MFAttachment *)self textEncodingGuessWithData:v6];
  v10 = v9;
  v11 = @"UTF-8";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

LABEL_10:

  return v12;
}

- (id)textEncodingGuessWithData:(id)a3
{
  v4 = a3;
  v5 = [(MFAttachment *)self metadataValueForKey:@"_MFAttachmentEncodingKey"];
  v6 = v5;
  if (v4 && !v5)
  {
    [v4 bytes];
    [v4 length];
    v7 = MFGuessEncodingForBytes();
    if (v7 == -1)
    {
      v6 = 0;
    }

    else
    {
      v6 = CFStringConvertEncodingToIANACharSetName(v7);
      [(MFAttachment *)self setMetadataValue:v6 forKey:@"_MFAttachmentEncodingKey"];
    }
  }

  return v6;
}

- (BOOL)conformsToType:(id)a3
{
  v4 = a3;
  v5 = [(MFAttachment *)self fileUTType];
  if (v5)
  {
    v6 = MEMORY[0x1E6982C40];
    v7 = [(MFAttachment *)self fileUTType];
    v8 = [v6 typeWithIdentifier:v7];

    LOBYTE(v5) = 0;
    if (v4 && v8)
    {
      LOBYTE(v5) = [v8 conformsToType:v4];
    }
  }

  else
  {
    v8 = 0;
  }

  return v5;
}

- (BOOL)conformsToTypeIdentifier:(id)a3
{
  v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:a3];
  LOBYTE(self) = [(MFAttachment *)self conformsToType:v4];

  return self;
}

- (BOOL)contentTypeConformsToEvent
{
  if ([(MFAttachment *)self contentTypeConformsToEventICS]|| (v3 = [(MFAttachment *)self contentTypeConformsToEventVCS]))
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)contentTypeConformsToProvisionment
{
  if ([(MFAttachment *)self conformsToTypeIdentifier:@"com.apple.mobileconfig"]|| [(MFAttachment *)self conformsToTypeIdentifier:@"com.apple.mobileprovision"]|| [(MFAttachment *)self conformsToType:*MEMORY[0x1E6982F20]])
  {
    return 1;
  }

  v4 = *MEMORY[0x1E69830A8];

  return [(MFAttachment *)self conformsToType:v4];
}

- (BOOL)contentTypeConformsToMarkup
{
  if ([(MFAttachment *)self conformsToType:*MEMORY[0x1E6982E30]])
  {
    return 1;
  }

  v4 = *MEMORY[0x1E6982F10];

  return [(MFAttachment *)self conformsToType:v4];
}

- (BOOL)contentTypeConformsToPassbook
{
  if ([(MFAttachment *)self conformsToType:*MEMORY[0x1E6983198]])
  {
    return 1;
  }

  v4 = *MEMORY[0x1E6983190];

  return [(MFAttachment *)self conformsToType:v4];
}

- (BOOL)contentTypeConformsToIWork
{
  v2 = [(MFAttachment *)self fileUTType];
  v3 = [v2 hasPrefix:@"com.apple.iwork"];

  return v3;
}

- (CGSize)imageDimensions
{
  width = self->_imageDimensions.width;
  height = self->_imageDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (id)fileTypeForFilename:(id)a3 mimeType:(id)a4
{
  v12 = a1;
  v18 = a3;
  v16 = a4;
  swift_getObjCClassMetadata();
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FE0, &qword_1B0E9B2B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v18);
  v19 = &v9 - v11;
  MEMORY[0x1E69E5928](v4);
  MEMORY[0x1E69E5928](v16);
  v14 = sub_1B0E44AD8();
  v17 = v5;
  v13 = sub_1B0E44AD8();
  v15 = v6;
  swift_getObjCClassMetadata();
  sub_1B08C7AF8(v14, v17, v13, v15, v19);

  MEMORY[0x1E69E5920](v16);

  MEMORY[0x1E69E5920](v18);
  v20 = sub_1B0E43788();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  if ((*(v21 + 48))(v19, 1) == 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = sub_1B0E43658();
    (*(v21 + 8))(v19, v20);
    v10 = v9;
  }

  v7 = v10;

  return v7;
}

- (void)fetchLocalData:stripPrivateMetadata:.cold.1()
{
  OUTLINED_FUNCTION_0();
  *v1 = 138412290;
  *(v1 + 4) = v2;
  _os_log_error_impl(&dword_1B0389000, v3, OS_LOG_TYPE_ERROR, "#Attachments Failed to fetch data for attachment [%@]", v4, 0xCu);
}

- (void)fetchDataSynchronously:stripPrivateMetadata:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_1(v2, v3, v4, 5.778e-34);
  OUTLINED_FUNCTION_4_0(&dword_1B0389000, "#Attachments Failed to fetch data for attachment [%@] due to %{public}@", v5, v6);
}

- (void)fetchDataToURL:.cold.1()
{
  OUTLINED_FUNCTION_0();
  *v1 = 134218498;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2160;
  *(v1 + 14) = 1752392040;
  *(v1 + 22) = 2112;
  *(v1 + 24) = v3;
  _os_log_fault_impl(&dword_1B0389000, v5, OS_LOG_TYPE_FAULT, "#Attachments Unable to create temp file for data (%{bytes}llu) for '%{mask.hash}@'.", v4, 0x20u);
}

- (void)fetchDataToURL:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(v1, v2, 7.2225e-34);
  _os_log_fault_impl(&dword_1B0389000, v3, OS_LOG_TYPE_FAULT, "#Attachments Failed to get attachment data for '%{mask.hash}@'.", v4, 0x16u);
}

- (void)fetchDataToURL:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(v1, v2, 7.2225e-34);
  _os_log_debug_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEBUG, "#Attachments Using placeholder file for '%{mask.hash}@'.", v4, 0x16u);
}

- (void)fetchPlaceholderData
{
  OUTLINED_FUNCTION_0();
  *v1 = 138412290;
  *(v1 + 4) = v2;
  _os_log_error_impl(&dword_1B0389000, v3, OS_LOG_TYPE_ERROR, "#Attachments Failed to fetch candidate placeholder contents for attachment [%@]", v4, 0xCu);
}

- (void)_dataProvider
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_1(v2, v3, v4, 5.778e-34);
  OUTLINED_FUNCTION_4_0(&dword_1B0389000, "#Attachments Unable to obtain data provider for attachemnt [%@] due to %{public}@", v5, v6);
}

- (void)readFromDisk
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_1(v2, v3, v4, 5.778e-34);
  OUTLINED_FUNCTION_4_0(&dword_1B0389000, "#Attachments Unable to read file URL [%@] due to error: %{public}@", v5, v6);
}

@end