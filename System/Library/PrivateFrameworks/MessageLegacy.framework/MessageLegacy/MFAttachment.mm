@interface MFAttachment
- (BOOL)conformsToType:(id)type;
- (BOOL)contentTypeConformsToEvent;
- (BOOL)contentTypeConformsToIWork;
- (BOOL)contentTypeConformsToMarkup;
- (BOOL)contentTypeConformsToPassbook;
- (BOOL)contentTypeConformsToProvisionment;
- (BOOL)contentTypeConformsToVCard;
- (BOOL)isCached;
- (BOOL)isContainedInCompose;
- (BOOL)isContainedInRFC822;
- (BOOL)isDataAvailableLocally;
- (BOOL)isEqual:(id)equal;
- (BOOL)isImageFile;
- (BOOL)isPlaceholder;
- (MFAttachment)initWithURL:(id)l attachmentManager:(id)manager;
- (MFAttachmentPlaceholder)placeholder;
- (NSProgress)downloadProgress;
- (NSString)fileUTType;
- (NSString)inferredMimeType;
- (NSString)mimeType;
- (id)_dataProvider;
- (id)_fileUTTypeForFileName:(id)name;
- (id)attachmentContentTypeForFileName:(id)name;
- (id)decodeFilterWithDataConsumer:(id)consumer;
- (id)fetchDataSynchronously:(id *)synchronously stripPrivateMetadata:(BOOL)metadata;
- (id)fetchDataToURL:(id *)l;
- (id)fetchLocalData:(id *)data stripPrivateMetadata:(BOOL)metadata;
- (id)fetchPlaceholderData;
- (id)fileAttributes;
- (id)fileNameByStrippingZipIfNeeded:(BOOL)needed;
- (id)fileURL;
- (id)filterData:(id)data;
- (id)filterVCSData:(id)data;
- (id)readFromDisk;
- (id)textEncodingGuessWithData:(id)data;
- (id)textEncodingNameForData:(id)data mimeType:(id)type;
- (unint64_t)decodedFileSize;
- (unint64_t)encodedFileSize;
- (unint64_t)hash;
- (unint64_t)sizeOnDisk;
- (void)_dataProvider;
- (void)dealloc;
- (void)fetchData;
- (void)fetchPlaceholderData;
- (void)readFromDisk;
- (void)setDecodedFileSize:(unint64_t)size;
- (void)setEncodedFileSize:(unint64_t)size;
- (void)setFileName:(id)name;
- (void)setRemoteImageFileName:(id)name;
- (void)writeToDiskWithData:(id)data;
@end

@implementation MFAttachment

- (MFAttachment)initWithURL:(id)l attachmentManager:(id)manager
{
  v8.receiver = self;
  v8.super_class = MFAttachment;
  v6 = [(MFAttachment *)&v8 init];
  if (v6)
  {
    v6->_url = l;
    v6->_attachmentManager = manager;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFAttachment;
  [(MFAttachment *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  contentID = [(MFAttachment *)self contentID];
  contentID2 = [equal contentID];

  return [(NSString *)contentID isEqualToString:contentID2];
}

- (unint64_t)hash
{
  contentID = [(MFAttachment *)self contentID];

  return [(NSString *)contentID hash];
}

- (id)decodeFilterWithDataConsumer:(id)consumer
{
  v26 = *MEMORY[0x277D85DE8];
  contentTransferEncoding = [(MFMimePart *)[(MFAttachment *)self part] contentTransferEncoding];
  if ([(MFAttachment *)self isMailDrop]&& ![(MFAttachment *)self part])
  {
    v6 = [MEMORY[0x277D24EE0] filterWithConsumer:consumer];
    v13 = MFLogGeneral();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v16 = 138413570;
    selfCopy6 = self;
    v18 = 1024;
    *v19 = [(MFAttachment *)self isDataAvailableLocally];
    *&v19[4] = 1024;
    *&v19[6] = [(MFAttachment *)self isContainedInRFC822];
    v20 = 1024;
    isMailDrop = [(MFAttachment *)self isMailDrop];
    v22 = 2048;
    part = [(MFAttachment *)self part];
    v24 = 2114;
    v25 = contentTransferEncoding;
    v8 = "#Attachments %@ performing no conversion (isDataAvailableLocally=%d, isContainedInRFC822=%d, isMailDrop=%d, part=%p, contentTransferEncoding=%{public}@)";
    v9 = v13;
    v10 = 50;
    goto LABEL_10;
  }

  if (contentTransferEncoding && ([contentTransferEncoding isEqualToString:@"7bit"] & 1) == 0 && (objc_msgSend(contentTransferEncoding, "isEqualToString:", @"8bit") & 1) == 0 && !objc_msgSend(contentTransferEncoding, "isEqualToString:", @"binary"))
  {
    if ([contentTransferEncoding isEqualToString:@"quoted-printable"])
    {
      v14 = [MEMORY[0x277D24F90] filterWithConsumer:consumer];
      v6 = [MEMORY[0x277D24F20] filterWithConsumer:v14];
      [v14 setForTextPart:{objc_msgSend(-[MFMimePart type](-[MFAttachment part](self, "part"), "type"), "isEqualToString:", @"text"}];
      v15 = MFLogGeneral();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v16 = 138412290;
      selfCopy6 = self;
      v8 = "#Attachments %@ quoted-printable";
    }

    else if ([contentTransferEncoding isEqualToString:@"base64"])
    {
      v6 = [MEMORY[0x277D24ED0] filterWithConsumer:consumer];
      v15 = MFLogGeneral();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v16 = 138412290;
      selfCopy6 = self;
      v8 = "#Attachments %@ base64";
    }

    else
    {
      if (![contentTransferEncoding isEqualToString:@"x-uuencode"])
      {
        v6 = [MEMORY[0x277D24EE0] filterWithConsumer:consumer];
        v7 = MFLogGeneral();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_11;
        }

        v16 = 138412546;
        selfCopy6 = self;
        v18 = 2114;
        *v19 = contentTransferEncoding;
        v8 = "#Attachments %@ unknown encoding (contentTransferEncoding=%{public}@)";
        goto LABEL_9;
      }

      v6 = [MEMORY[0x277D24FB8] filterWithConsumer:consumer];
      v15 = MFLogGeneral();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v16 = 138412290;
      selfCopy6 = self;
      v8 = "#Attachments %@ uuencode";
    }

    v9 = v15;
    v10 = 12;
    goto LABEL_10;
  }

  v6 = [MEMORY[0x277D24F20] filterWithConsumer:consumer];
  v7 = MFLogGeneral();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    selfCopy6 = self;
    v18 = 2114;
    *v19 = contentTransferEncoding;
    v8 = "#Attachments %@ stripping line endings (contentTransferEncoding=%{public}@)";
LABEL_9:
    v9 = v7;
    v10 = 22;
LABEL_10:
    _os_log_impl(&dword_258BDA000, v9, OS_LOG_TYPE_DEFAULT, v8, &v16, v10);
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)fetchData
{
  [(MFAttachmentManager *)self->_attachmentManager fetchDataForAttachment:self];
  downloadProgress = [(MFAttachment *)self downloadProgress];

  [(NSProgress *)downloadProgress resume];
}

- (id)fetchLocalData:(id *)data stripPrivateMetadata:(BOOL)metadata
{
  metadataCopy = metadata;
  if ([(MFAttachment *)self isContainedInRFC822]|| [(MFAttachment *)self isContainedInCompose])
  {
    if (!self->_attachmentManager)
    {
      self->_attachmentManager = +[MFAttachmentManager defaultManager];
    }

    promise = [MEMORY[0x277D071A8] promise];
    v7 = objc_alloc_init(MEMORY[0x277D24EE8]);
    v8 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:-1];
    _dataProvider = [(MFAttachment *)self _dataProvider];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __EFPromiseAttachmentDataHandler_block_invoke;
    v14[3] = &unk_2798B6EB0;
    v14[4] = v7;
    v14[5] = promise;
    [_dataProvider fetchDataForAttachment:self consumer:v7 progress:v8 completion:{objc_msgSend(v14, "copy")}];
    readFromDisk = [objc_msgSend(promise "future")];
  }

  else
  {
    readFromDisk = [(MFAttachment *)self readFromDisk];
  }

  v11 = readFromDisk;
  if ([(__CFData *)readFromDisk length])
  {
    if (metadataCopy && [(MFAttachment *)self isImageFile])
    {
      v11 = _stripPrivateFileMetadata(v11);
    }

    return [(MFAttachment *)self filterData:v11];
  }

  else
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MFAttachment fetchLocalData:? stripPrivateMetadata:?];
    }
  }

  return v11;
}

- (id)fetchDataSynchronously:(id *)synchronously stripPrivateMetadata:(BOOL)metadata
{
  metadataCopy = metadata;
  v17 = 0;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [MFAttachment fetchDataSynchronously:v7 stripPrivateMetadata:?];
    }

    v8 = [(MFAttachment *)self fetchLocalData:&v17 stripPrivateMetadata:0];
  }

  else
  {
    promise = [MEMORY[0x277D071A8] promise];
    fetchCompletionBlock = [(MFAttachment *)self fetchCompletionBlock];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__MFAttachment_fetchDataSynchronously_stripPrivateMetadata___block_invoke;
    v16[3] = &unk_2798B6E88;
    v16[5] = promise;
    v16[6] = fetchCompletionBlock;
    v16[4] = self;
    [(MFAttachment *)self setFetchCompletionBlock:v16];
    [(MFAttachmentManager *)self->_attachmentManager fetchDataSynchronouslyForAttachment:self];
    v8 = [objc_msgSend(promise "future")];
  }

  v11 = v8;
  if ([(__CFData *)v8 length])
  {
    if ([MFAttachmentPlaceholder isPlaceholderSerializedRepresentation:v11])
    {
      v12 = [MFAttachmentPlaceholder placeholderFromSerializedRepresentation:v11];
      if (v12)
      {
        v13 = v12;
        v11 = [MFAttachmentPlaceholder dataForPlaceholder:v12];
        [(MFAttachment *)self setPlaceholder:v13];
      }
    }

    if (metadataCopy && [(MFAttachment *)self isImageFile])
    {
      v11 = _stripPrivateFileMetadata(v11);
      if (!synchronously)
      {
        return v11;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v14 = MFLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MFAttachment fetchDataSynchronously:&v17 stripPrivateMetadata:?];
      if (!synchronously)
      {
        return v11;
      }

      goto LABEL_16;
    }
  }

  if (synchronously)
  {
LABEL_16:
    *synchronously = v17;
  }

  return v11;
}

uint64_t __60__MFAttachment_fetchDataSynchronously_stripPrivateMetadata___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, a3);
  }

  if (a2)
  {
    v7 = [*(a1 + 32) filterData:a2];
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);

  return [v8 finishWithResult:v7 error:a3];
}

- (id)fetchDataToURL:(id *)l
{
  v8 = 0;
  if ([(MFAttachment *)self isPlaceholder])
  {
    placeholder = [(MFAttachment *)self placeholder];

    return [(MFAttachmentPlaceholder *)placeholder fileURL];
  }

  else
  {
    v6 = [(MFAttachment *)self fetchDataSynchronously:&v8];
    result = [MFAttachmentUtilities temporaryFileURLWithFileName:[(MFAttachment *)self fileName]];
    if (result)
    {
      v7 = result;
      if ([v6 writeToURL:result options:0 error:&v8])
      {
        return v7;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (id)fetchPlaceholderData
{
  placeholder = self->_placeholder;
  if (placeholder)
  {

    return [(MFAttachmentPlaceholder *)placeholder serializedRepresentation];
  }

  else
  {
    _dataProvider = [(MFAttachment *)self _dataProvider];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [-[MFAttachment _dataProvider](self "_dataProvider")];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277D24EE8]);
      v8 = [MEMORY[0x277D24FA0] rangedFilterWithConsumer:v7 range:{0, 2100}];
      promise = [MEMORY[0x277D071A8] promise];
      v10 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:-1];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __EFPromiseAttachmentDataHandler_block_invoke;
      v15[3] = &unk_2798B6EB0;
      v15[4] = v7;
      v15[5] = promise;
      [_dataProvider fetchDataForAttachment:self consumer:v8 progress:v10 completion:{objc_msgSend(v15, "copy")}];
      v6 = [objc_msgSend(promise "future")];
    }

    v11 = v6;
    if (v6)
    {
      v12 = [MFAttachmentPlaceholder placeholderFromSerializedRepresentation:v6];
      if (v12)
      {
        v13 = v12;

        self->_placeholder = v13;
      }
    }

    else
    {
      v14 = MFLogGeneral();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(MFAttachment *)self fetchPlaceholderData];
      }

      return 0;
    }

    return v11;
  }
}

- (MFAttachmentPlaceholder)placeholder
{
  result = self->_placeholder;
  if (!result)
  {
    [(MFAttachment *)self fetchPlaceholderData];
    return self->_placeholder;
  }

  return result;
}

- (BOOL)isPlaceholder
{
  v3 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentIsPlaceholder"];
  if (!v3)
  {
    return [(MFAttachment *)self placeholder]!= 0;
  }

  return [v3 BOOLValue];
}

- (NSProgress)downloadProgress
{
  result = self->_downloadProgress;
  if (!result)
  {
    encodedFileSize = [(MFAttachment *)self encodedFileSize];
    if (encodedFileSize)
    {
      v5 = encodedFileSize;
    }

    else
    {
      v5 = -1;
    }

    v6 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:v5];
    if ([(MFAttachment *)self isDataAvailableLocally])
    {
      [v6 setCompletedUnitCount:v5];
    }

    else
    {
      [v6 pause];
    }

    [(MFAttachment *)self setDownloadProgress:v6];
    return self->_downloadProgress;
  }

  return result;
}

- (id)fileURL
{
  result = [(MFAttachment *)self path];
  if (result)
  {
    v4 = MEMORY[0x277CBEBC0];
    path = [(MFAttachment *)self path];

    return [v4 fileURLWithPath:path isDirectory:0];
  }

  return result;
}

- (id)filterData:(id)data
{
  if (([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")] & 1) != 0 || !objc_msgSend(data, "length") || !-[MFAttachment contentTypeConformsToEventVCS](self, "contentTypeConformsToEventVCS"))
  {
    return data;
  }

  return [(MFAttachment *)self filterVCSData:data];
}

- (id)filterVCSData:(id)data
{
  v4 = [data rangeOfData:objc_msgSend(@"\nVERSION:1.0" options:"dataUsingEncoding:" range:{4), 0, 0, objc_msgSend(data, "length")}];
  v6 = 0;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v4;
    v8 = v5;
    v6 = [data mutableCopy];
    [v6 replaceBytesInRange:v7 + 1 withBytes:v8 - 1 length:{objc_msgSend(@"VERSION:2.0", "UTF8String"), objc_msgSend(@"VERSION:2.0", "length")}];
  }

  if (v6)
  {
    return v6;
  }

  else
  {
    return data;
  }
}

- (id)_dataProvider
{
  if (![(MFAttachment *)self url])
  {
    return 0;
  }

  v6 = 0;
  v3 = [(MFAttachmentManager *)self->_attachmentManager _dataProviderForAttachmentURL:[(MFAttachment *)self url] error:&v6];
  if (v6)
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(MFAttachment *)self _dataProvider];
    }
  }

  return v3;
}

- (BOOL)isDataAvailableLocally
{
  if ([(MFAttachment *)self isContainedInRFC822]|| [(MFAttachment *)self isContainedInCompose])
  {
    LOBYTE(fileURL) = 1;
  }

  else
  {
    fileURL = [(MFAttachment *)self fileURL];
    if (fileURL)
    {
      v4 = [MFAttachmentDataProvider dataProviderWithURL:fileURL];

      LOBYTE(fileURL) = [(MFAttachmentDataProvider *)v4 exists];
    }
  }

  return fileURL;
}

- (NSString)inferredMimeType
{
  v2 = MEMORY[0x277CCACA8];
  fileName = [(MFAttachment *)self fileName];

  return [v2 mf_stringForMimeTypeFromFileName:fileName];
}

- (BOOL)isContainedInRFC822
{
  if (([objc_msgSend(objc_msgSend(objc_msgSend(-[MFAttachment _dataProvider](self "_dataProvider")] & 1) == 0)
  {
    parentPart = [(MFMimePart *)[(MFAttachment *)self part] parentPart];
    if (!parentPart)
    {
      return parentPart;
    }

    v4 = parentPart;
    while (1)
    {
      type = [v4 type];
      subtype = [v4 subtype];
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", type, subtype];
      if (type)
      {
        v8 = v7;
        if (![v7 caseInsensitiveCompare:@"message/rfc822"] || !objc_msgSend(v8, "caseInsensitiveCompare:", @"message/delivery-status"))
        {
          break;
        }
      }

      parentPart = [v4 parentPart];
      v4 = parentPart;
      if (!parentPart)
      {
        return parentPart;
      }
    }
  }

  LOBYTE(parentPart) = 1;
  return parentPart;
}

- (BOOL)isContainedInCompose
{
  scheme = [(NSURL *)self->_url scheme];

  return [(NSString *)scheme isEqualToString:@"x-attach-compose"];
}

- (BOOL)isImageFile
{
  v3 = objc_alloc_init(MEMORY[0x277D24FB0]);
  [(MFAttachment *)v3 setPathExtension:[(NSString *)[(MFAttachment *)self fileName] pathExtension]];
  [(MFAttachment *)v3 setFilename:[(MFAttachment *)self fileName]];
  if (!MFGetTypeInfo())
  {
    if (![(MFAttachment *)self mimeType])
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = [(NSString *)[(MFAttachment *)self mimeType] rangeOfString:@"image/" options:9]!= 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_6;
  }

  self = v3;
  if ([(MFAttachment *)v3 mimeType])
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 0;
LABEL_6:

  return v4;
}

- (id)fileNameByStrippingZipIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v4 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentFileNameKey"];
  v5 = v4;
  if (!neededCopy || [objc_msgSend(v4 "pathExtension")])
  {
    return v5;
  }

  return [v5 stringByDeletingPathExtension];
}

- (void)setFileName:(id)name
{
  [(MFAttachment *)self setMetadataValue:name forKey:@"MFAttachmentFileNameKey"];
  if (name)
  {
    v5 = [(MFAttachmentManager *)self->_attachmentManager _filePathForAttachment:self];

    [(MFAttachment *)self setMetadataValue:v5 forKey:@"MFAttachmentPathKey"];
  }
}

- (void)setRemoteImageFileName:(id)name
{
  [(MFAttachment *)self setMetadataValue:name forKey:@"MFAttachmentRemoteImageFileNameKey"];
  if (name)
  {
    v5 = [(MFAttachmentManager *)self->_attachmentManager _filePathForAttachment:self];

    [(MFAttachment *)self setMetadataValue:v5 forKey:@"MFAttachmentPathKey"];
  }
}

- (id)_fileUTTypeForFileName:(id)name
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentUTTypeKey"];
  if (v5)
  {
    v6 = v5;
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(MFAttachment *)v6 _fileUTTypeForFileName:?];
    }

    goto LABEL_21;
  }

  mimeType = [(MFAttachment *)self mimeType];
  v9 = [objc_msgSend(name "pathExtension")];
  if ([(__CFString *)mimeType isEqualToString:@"application/zip"]&& (!v9 || [(__CFString *)v9 isEqualToString:@"zip"]))
  {
    v9 = [objc_msgSend(objc_msgSend(name "stringByDeletingPathExtension")];
    if (![(__CFString *)v9 length])
    {
      v9 = @"zip";
    }
  }

  if ([(__CFString *)v9 length])
  {
    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], v9, 0);
    if (PreferredIdentifierForTag)
    {
      v11 = PreferredIdentifierForTag;
      if (UTTypeIsDynamic(PreferredIdentifierForTag))
      {
        CFRelease(v11);
      }

      else
      {
        [(MFAttachment *)self setMetadataValue:v11 forKey:@"MFAttachmentUTTypeKey"];
        v6 = v11;
        v19 = MFLogGeneral();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v21 = 138413058;
          nameCopy = v6;
          v23 = 2112;
          p_isa = [(MFAttachment *)self fileName];
          v25 = 2112;
          v26 = v9;
          v27 = 2112;
          v28 = mimeType;
          _os_log_debug_impl(&dword_258BDA000, v19, OS_LOG_TYPE_DEBUG, "UTType [%@] for filename:[%@] via extension:[%@] mimeType:[%@]", &v21, 0x2Au);
        }

        CFRelease(v11);
        if (v6)
        {
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [MFAttachment _fileUTTypeForFileName:?];
    }
  }

  v13 = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F60], mimeType, 0);
  if (!v13)
  {
LABEL_18:
    v15 = MFLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412802;
      nameCopy = name;
      v23 = 2112;
      p_isa = &v9->isa;
      v25 = 2112;
      v26 = mimeType;
      _os_log_error_impl(&dword_258BDA000, v15, OS_LOG_TYPE_ERROR, "#Attachments UTType for filename:[%@] extension:[%@] mimeType:[%@] indeterminate", &v21, 0x20u);
    }

    -[MFAttachment setMetadataValue:forKey:](self, "setMetadataValue:forKey:", [MEMORY[0x277CBEB68] null], @"MFAttachmentUTTypeKey");
    v6 = 0;
    goto LABEL_21;
  }

  v14 = v13;
  if (UTTypeIsDynamic(v13))
  {
    CFRelease(v14);
    goto LABEL_18;
  }

  [(MFAttachment *)self setMetadataValue:v14 forKey:@"MFAttachmentUTTypeKey"];
  v6 = v14;
  v18 = MFLogGeneral();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    fileName = [(MFAttachment *)self fileName];
    v21 = 138413058;
    nameCopy = v6;
    v23 = 2112;
    p_isa = fileName;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = mimeType;
    _os_log_debug_impl(&dword_258BDA000, v18, OS_LOG_TYPE_DEBUG, "UTType [%@] for filename:[%@] extension:[%@] via mimeType:[%@]", &v21, 0x2Au);
  }

  CFRelease(v14);
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_21:
  if (v6 == [MEMORY[0x277CBEB68] null])
  {
    result = 0;
  }

  else
  {
    result = v6;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSString)fileUTType
{
  fileName = [(MFAttachment *)self fileName];

  return [(MFAttachment *)self _fileUTTypeForFileName:fileName];
}

- (id)attachmentContentTypeForFileName:(id)name
{
  result = [(MFAttachment *)self _fileUTTypeForFileName:name];
  if (!result)
  {
    return *MEMORY[0x277CC20C0];
  }

  return result;
}

- (NSString)mimeType
{
  v3 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentMimetypeKey"];
  if ([-[MFAttachment metadataValueForKey:](self metadataValueForKey:{@"MFAttachmentIsPlaceholder", "BOOLValue"}])
  {
    mimeType = [(MFAttachmentPlaceholder *)[(MFAttachment *)self placeholder] mimeType];
    if (mimeType)
    {
      return mimeType;
    }
  }

  return v3;
}

- (unint64_t)decodedFileSize
{
  v3 = [-[MFAttachment metadataValueForKey:](self metadataValueForKey:{@"MFAttachmentDecodedFileSizeKey", "unsignedIntegerValue"}];
  if ([-[MFAttachment metadataValueForKey:](self metadataValueForKey:{@"MFAttachmentIsPlaceholder", "BOOLValue"}])
  {
    fileSize = [(MFAttachmentPlaceholder *)[(MFAttachment *)self placeholder] fileSize];
    if (fileSize)
    {
      return fileSize;
    }
  }

  return v3;
}

- (void)setDecodedFileSize:(unint64_t)size
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:size];

  [(MFAttachment *)self setMetadataValue:v4 forKey:@"MFAttachmentDecodedFileSizeKey"];
}

- (unint64_t)encodedFileSize
{
  v3 = [-[MFAttachment metadataValueForKey:](self metadataValueForKey:{@"MFAttachmentEncodedFileSizeKey", "unsignedIntegerValue"}];
  if ([-[MFAttachment metadataValueForKey:](self metadataValueForKey:{@"MFAttachmentIsPlaceholder", "BOOLValue"}])
  {
    fileSize = [(MFAttachmentPlaceholder *)[(MFAttachment *)self placeholder] fileSize];
    if (fileSize)
    {
      return fileSize;
    }
  }

  return v3;
}

- (void)setEncodedFileSize:(unint64_t)size
{
  -[MFAttachment setMetadataValue:forKey:](self, "setMetadataValue:forKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?], @"MFAttachmentEncodedFileSizeKey");
  downloadProgress = [(MFAttachment *)self downloadProgress];

  [(NSProgress *)downloadProgress setTotalUnitCount:size];
}

- (BOOL)isCached
{
  sizeOnDisk = [(MFAttachment *)self sizeOnDisk];
  decodedFileSize = [(MFAttachment *)self decodedFileSize];
  encodedFileSize = [(MFAttachment *)self encodedFileSize];
  if (sizeOnDisk)
  {
    v6 = sizeOnDisk >= decodedFileSize;
  }

  else
  {
    v6 = 0;
  }

  return v6 && sizeOnDisk <= encodedFileSize;
}

- (id)fileAttributes
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  v4 = [(MFMimePart *)[(MFAttachment *)self part] bodyParameterForKey:@"x-unix-mode"];
  if (v4)
  {
    v5 = strtoul([v4 ef_lossyDefaultCStringBytes], 0, 8) & 0x1FF;
    if (v5)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v5];
      [v3 setObject:v6 forKey:*MEMORY[0x277CCA180]];
    }
  }

  return v3;
}

- (unint64_t)sizeOnDisk
{
  v5 = 0;
  v2 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v3 = 0;
  if (!v5)
  {
    return [objc_msgSend(v2 valueForKey:{*MEMORY[0x277CCA1C0]), "unsignedIntegerValue"}];
  }

  return v3;
}

- (void)writeToDiskWithData:(id)data
{
  v30 = *MEMORY[0x277D85DE8];
  path = [(MFAttachment *)self path];
  if (data && path)
  {
    v6 = [(NSString *)[(MFAttachment *)self path] copy];
    stringByDeletingLastPathComponent = [v6 stringByDeletingLastPathComponent];
    if (stringByDeletingLastPathComponent)
    {
      v8 = stringByDeletingLastPathComponent;
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v21 = 0;
      if ([defaultManager createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v21])
      {
        v10 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{-[MFAttachment fileAttributes](self, "fileAttributes")}];
        [v10 setObject:*MEMORY[0x277CCA198] forKey:*MEMORY[0x277CCA1B0]];
        if ([defaultManager createFileAtPath:v6 contents:data attributes:v10])
        {
          goto LABEL_9;
        }

        v11 = MFLogGeneral();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }

        fileURL = [(MFAttachment *)self fileURL];
        ef_publicDescription = [v21 ef_publicDescription];
        *buf = 138413058;
        v23 = v6;
        v24 = 2048;
        selfCopy = self;
        v26 = 2112;
        v27 = fileURL;
        v28 = 2114;
        v29 = ef_publicDescription;
        v14 = "#Attachments Failed to create path %@ for attachment [%p, %@]: %{public}@";
        v15 = v11;
        v16 = 42;
        goto LABEL_12;
      }

      v17 = MFLogGeneral();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        fileURL2 = [(MFAttachment *)self fileURL];
        ef_publicDescription2 = [v21 ef_publicDescription];
        *buf = 138412802;
        v23 = v8;
        v24 = 2112;
        selfCopy = fileURL2;
        v26 = 2114;
        v27 = ef_publicDescription2;
        v14 = "#Attachments Failed to create directory %@ for attachment [%@]: %{public}@";
        v15 = v17;
        v16 = 32;
LABEL_12:
        _os_log_error_impl(&dword_258BDA000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
      }
    }

LABEL_9:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)readFromDisk
{
  v9 = *MEMORY[0x277D85DE8];
  if (![(MFAttachment *)self path]|| [(MFAttachment *)self isContainedInRFC822])
  {
LABEL_3:
    v3 = 0;
    goto LABEL_4;
  }

  if (![objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 138412290;
      *&v8[4] = [(MFAttachment *)self fileURL];
      _os_log_impl(&dword_258BDA000, v7, OS_LOG_TYPE_INFO, "#Attachments Unable to read file URL [%@]", v8, 0xCu);
    }

    goto LABEL_3;
  }

  *v8 = 0;
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:-[MFAttachment fileURL](self options:"fileURL") error:{3, v8}];
  if (*v8)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MFAttachment *)self readFromDisk];
    }
  }

LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)textEncodingNameForData:(id)data mimeType:(id)type
{
  if (!type)
  {
    return 0;
  }

  if (!strcmp("text/html", [type UTF8String]))
  {
    Default = CFAllocatorGetDefault();
    v9 = MFGetMappedAllocator();
    CFAllocatorSetDefault(v9);
    v10 = CFStringCreateWithBytes(v9, [data bytes], objc_msgSend(data, "length"), 0x8000100u, 0);
    CFAllocatorSetDefault(Default);
    if (v10)
    {
      CFRelease(v10);
      return @"UTF-8";
    }

    return 0;
  }

  if (![type hasPrefix:@"text/"])
  {
    return 0;
  }

  result = [(MFAttachment *)self textEncodingGuessWithData:data];
  if (!result)
  {
    return @"UTF-8";
  }

  return result;
}

- (id)textEncodingGuessWithData:(id)data
{
  v5 = [(MFAttachment *)self metadataValueForKey:@"_MFAttachmentEncodingKey"];
  v6 = v5;
  if (data && !v5)
  {
    [data bytes];
    [data length];
    v7 = MFGuessEncodingForBytes();
    if (v7 == -1)
    {
      return 0;
    }

    else
    {
      v6 = CFStringConvertEncodingToIANACharSetName(v7);
      [(MFAttachment *)self setMetadataValue:v6 forKey:@"_MFAttachmentEncodingKey"];
    }
  }

  return v6;
}

- (BOOL)conformsToType:(id)type
{
  fileUTType = [(MFAttachment *)self fileUTType];
  if (fileUTType)
  {
    LOBYTE(fileUTType) = UTTypeConformsTo(fileUTType, type) != 0;
  }

  return fileUTType;
}

- (BOOL)contentTypeConformsToVCard
{
  fileUTType = [(MFAttachment *)self fileUTType];
  if (fileUTType)
  {
    LOBYTE(fileUTType) = UTTypeConformsTo(fileUTType, *MEMORY[0x277CC21A0]) != 0;
  }

  return fileUTType;
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
  fileUTType = [(MFAttachment *)self fileUTType];
  if (UTTypeConformsTo(fileUTType, @"com.apple.mobileconfig") || UTTypeConformsTo(fileUTType, *MEMORY[0x277CC2118]) || UTTypeConformsTo(fileUTType, *MEMORY[0x277CC21A8]) || (v3 = UTTypeConformsTo(fileUTType, @"com.apple.mobileprovision")) != 0)
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)contentTypeConformsToMarkup
{
  fileUTType = [(MFAttachment *)self fileUTType];
  if (UTTypeConformsTo(fileUTType, *MEMORY[0x277CC20B0]) || (v3 = UTTypeConformsTo(fileUTType, *MEMORY[0x277CC2108])) != 0)
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)contentTypeConformsToPassbook
{
  fileUTType = [(MFAttachment *)self fileUTType];
  if (UTTypeConformsTo(fileUTType, *MEMORY[0x277CC1F48]) || (v3 = UTTypeConformsTo(fileUTType, *MEMORY[0x277CC1F40])) != 0)
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)contentTypeConformsToIWork
{
  fileUTType = [(MFAttachment *)self fileUTType];

  return [(NSString *)fileUTType hasPrefix:@"com.apple.iwork"];
}

- (void)fetchLocalData:(void *)a1 stripPrivateMetadata:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 fileURL];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchDataSynchronously:(void *)a1 stripPrivateMetadata:(id *)a2 .cold.2(void *a1, id *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 fileURL];
  [*a2 ef_publicDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchPlaceholderData
{
  v7 = *MEMORY[0x277D85DE8];
  [self fileURL];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_dataProvider
{
  v9 = *MEMORY[0x277D85DE8];
  [self fileURL];
  [*a2 ef_publicDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_fileUTTypeForFileName:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [a2 fileName];
  OUTLINED_FUNCTION_2_0(&dword_258BDA000, v2, v3, "UTType [%@] for filename:[%@] via cache", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_fileUTTypeForFileName:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 fileName];
  OUTLINED_FUNCTION_2_0(&dword_258BDA000, v1, v2, "UTType [%@] for filename:[%@] could not derive extension", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)readFromDisk
{
  v9 = *MEMORY[0x277D85DE8];
  [self fileURL];
  [*a2 ef_publicDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

@end