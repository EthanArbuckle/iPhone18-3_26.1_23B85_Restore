@interface WFFileRepresentation
+ (BOOL)coordinateFileOperation:(unint64_t)a3 shouldCoordinate:(BOOL)a4 fileURL:(id)a5 destinationURL:(id)a6 accessor:(id)a7;
+ (BOOL)fileIsInDisallowedDirectory:(id)a3;
+ (BOOL)isAllowedToRepresentFileURL:(id)a3;
+ (id)fileWithData:(id)a3 ofType:(id)a4 proposedFilename:(id)a5 originalURL:(id)a6;
+ (id)fileWithURL:(id)a3 options:(int64_t)a4 ofType:(id)a5 proposedFilename:(id)a6 originalURL:(id)a7;
+ (id)proposedFilenameForFile:(id)a3 ofType:(id)a4 unsanitizedName:(id *)a5;
+ (id)sanitizedFilename:(id)a3 withExtension:(id)a4 unsanitizedName:(id *)a5;
+ (id)typeOfData:(id)a3;
+ (id)typeOfFile:(id)a3;
+ (void)addDisallowedDirectory:(id)a3;
- (BOOL)atomicReplaceAcrossVolumesIfNeededWithURLForReplacing:(id)a3 sourceURL:(id)a4 error:(id *)a5;
- (BOOL)writeToFileURL:(id)a3 copy:(BOOL)a4 overwrite:(BOOL)a5 error:(id *)a6;
- (BOOL)writeToTemporaryFileURL:(id)a3 error:(id *)a4;
- (NSData)data;
- (NSString)wfName;
- (NSURL)fileURL;
- (WFFileRepresentation)initWithCoder:(id)a3;
- (WFFileRepresentation)initWithData:(id)a3 ofType:(id)a4 proposedFilename:(id)a5 originalURL:(id)a6;
- (WFFileRepresentation)initWithFileURL:(id)a3 options:(int64_t)a4 ofType:(id)a5 proposedFilename:(id)a6 originalURL:(id)a7;
- (id)copyWithName:(id)a3 addingExtensionIfNecessary:(BOOL)a4 zone:(_NSZone *)a5;
- (id)description;
- (id)inputStream;
- (id)mappedDataWithError:(id *)a3;
- (id)typeForUserEnteredName:(id)a3 addingExtensionIfNecessary:(BOOL)a4;
- (id)updatedFilenameForUserEnteredName:(id)a3 addingExtensionIfNecessary:(BOOL)a4;
- (int64_t)fileSize;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFFileRepresentation

- (void)encodeWithCoder:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 encodeBool:self->_isTemporaryFile forKey:@"isTemporaryFile"];
  wfName = self->_wfName;
  if (wfName)
  {
    [v4 encodeObject:wfName forKey:@"wfName"];
  }

  wfType = self->_wfType;
  if (wfType)
  {
    [v4 encodeObject:wfType forKey:@"wfType"];
  }

  originalURL = self->_originalURL;
  if (originalURL)
  {
    [v4 encodeObject:originalURL forKey:@"originalURL"];
  }

  creationDate = self->_creationDate;
  if (creationDate)
  {
    [v4 encodeObject:creationDate forKey:@"creationDate"];
  }

  modificationDate = self->_modificationDate;
  if (modificationDate)
  {
    [v4 encodeObject:modificationDate forKey:@"modificationDate"];
  }

  if (self->_isHidden)
  {
    [v4 encodeBool:1 forKey:@"isHidden"];
  }

  v10 = [v4 wfFileCoder];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 sharedDirectory];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v14 = [(NSURL *)self->_fileURL wf_isContainedByDirectoryAtURL:v12];
    if (v12 || (isKindOfClass) && ([v11 deletionResponsibility] == 1 && -[WFFileRepresentation deletesFileOnDeallocation](self, "deletesFileOnDeallocation") || ((self->_fileURL != 0) & (isKindOfClass | v14)) == 0))
    {
      v18 = [(WFFileRepresentation *)self filename];
      v19 = [v11 sharedTemporaryDirectory];
      v20 = [WFTemporaryFileManager proposedFileURLForFilename:v18 inDirectory:v19];

      v28 = 0;
      LOBYTE(v18) = [(WFFileRepresentation *)self writeToFileURL:v20 copy:1 overwrite:0 error:&v28];
      v21 = v28;
      if ((v18 & 1) == 0)
      {
        v22 = getWFFileRepresentationLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v30 = "[WFFileRepresentation encodeWithCoder:]";
          v31 = 2112;
          v32 = v21;
          _os_log_impl(&dword_21E1BD000, v22, OS_LOG_TYPE_FAULT, "%s Couldn't write data to file when encoding WFFileRepresentation: %@", buf, 0x16u);
        }
      }

      v23 = MEMORY[0x277CCAA00];
      v24 = v20;
      v25 = [v23 defaultManager];
      [v25 wf_removeExtendedAttributeName:@"INFileURLAssociatedAuditToken" ofItemAtURL:v24];

      v26 = [MEMORY[0x277CCAA00] defaultManager];
      [v26 wf_removeExtendedAttributeName:@"INFileURLHasAssociatedAuditToken" ofItemAtURL:v24];

      [v11 archiveFileAtURL:v24 fileShouldBeDeletedOnDeallocation:1 withCoder:v4];
    }

    else
    {
      v15 = [(WFFileRepresentation *)self fileURL];
      [v11 archiveFileAtURL:v15 fileShouldBeDeletedOnDeallocation:0 withCoder:v4];
    }

    filename = self->_filename;
    if (filename)
    {
      [v4 encodeObject:filename forKey:@"filename"];
    }
  }

  else
  {
    v16 = [(WFFileRepresentation *)self data];
    [v4 encodeObject:v16 forKey:@"data"];

    v17 = [(WFFileRepresentation *)self filename];
    [v4 encodeObject:v17 forKey:@"filename"];
  }
}

- (WFFileRepresentation)initWithCoder:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wfType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filename"];
  v29 = 0;
  v7 = [v4 wfFileCoder];
  v8 = [v7 decodeFileWithCoder:v4 fileShouldBeDeletedOnDeallocation:&v29 + 1 fileIsSecurityScoped:&v29];

  if (v29 == 1)
  {
    v9 = HIBYTE(v29);
LABEL_3:
    v10 = v9 | 8u;
    goto LABEL_4;
  }

  if (![v8 wf_fileIsReadable])
  {
    v11 = [(WFFileRepresentation *)self init];
    if (!v11)
    {
      goto LABEL_23;
    }

    if (v8)
    {
      v27 = getWFFileRepresentationLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v31 = "[WFFileRepresentation initWithCoder:]";
        v32 = 2112;
        v33 = v8;
        _os_log_impl(&dword_21E1BD000, v27, OS_LOG_TYPE_FAULT, "%s Unable to read file at fileURL while decoding file representation: %@", buf, 0x16u);
      }
    }

    goto LABEL_5;
  }

  v9 = HIBYTE(v29);
  if (v29)
  {
    goto LABEL_3;
  }

  if (HIBYTE(v29))
  {
    v10 = 1;
  }

  else
  {
    v10 = 5;
  }

LABEL_4:
  v11 = [(WFFileRepresentation *)self initWithFileURL:v8 options:v10 ofType:v5 proposedFilename:v6 originalURL:v8];
  if (!v11)
  {
    v11 = getWFFileRepresentationLogObject();
    if (os_log_type_enabled(&v11->super.super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[WFFileRepresentation initWithCoder:]";
      v32 = 2114;
      v33 = v8;
      _os_log_impl(&dword_21E1BD000, &v11->super.super, OS_LOG_TYPE_ERROR, "%s Unable to decode file representation for fileURL: %{public}@", buf, 0x16u);
    }

    goto LABEL_17;
  }

LABEL_5:
  v12 = [v6 copy];
  filename = v11->_filename;
  v11->_filename = v12;

  objc_storeStrong(&v11->_wfType, v5);
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wfName"];
  v15 = [v14 copy];
  wfName = v11->_wfName;
  v11->_wfName = v15;

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  v18 = [v17 copy];
  data = v11->_data;
  v11->_data = v18;

  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalURL"];
  originalURL = v11->_originalURL;
  v11->_originalURL = v20;

  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  creationDate = v11->_creationDate;
  v11->_creationDate = v22;

  v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modificationDate"];
  modificationDate = v11->_modificationDate;
  v11->_modificationDate = v24;

  v11->_isHidden = [v4 decodeBoolForKey:@"isHidden"];
  v11->_isTemporaryFile = [v4 decodeBoolForKey:@"isTemporaryFile"];
  if (!v11->_data && !v11->_fileURL)
  {
    v26 = getWFFileRepresentationLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v31 = "[WFFileRepresentation initWithCoder:]";
      _os_log_impl(&dword_21E1BD000, v26, OS_LOG_TYPE_FAULT, "%s Failing to decode file representation because both _data and _fileURL are nil", buf, 0xCu);
    }

LABEL_17:
    v11 = 0;
  }

LABEL_23:

  return v11;
}

- (id)copyWithName:(id)a3 addingExtensionIfNecessary:(BOOL)a4 zone:(_NSZone *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(WFFileRepresentation *)self typeForUserEnteredName:v8 addingExtensionIfNecessary:v6];
  v10 = [(WFFileRepresentation *)self representationType];
  v11 = [objc_opt_class() allocWithZone:a5];
  if (v10 == 1)
  {
    v12 = [(WFFileRepresentation *)self fileURL];
    if (v8)
    {
      v13 = [v11 initWithFileURL:v12 options:5 ofType:v9 proposedFilename:v8 originalURL:self->_originalURL];
LABEL_6:
      v14 = v13;
      goto LABEL_10;
    }

    v15 = [(WFFileRepresentation *)self wfName];
    v16 = [v11 initWithFileURL:v12 options:5 ofType:v9 proposedFilename:v15 originalURL:self->_originalURL];
  }

  else
  {
    v12 = [(WFFileRepresentation *)self data];
    if (v8)
    {
      v13 = [v11 initWithData:v12 ofType:v9 proposedFilename:v8 originalURL:self->_originalURL];
      goto LABEL_6;
    }

    v15 = [(WFFileRepresentation *)self wfName];
    v16 = [v11 initWithData:v12 ofType:v9 proposedFilename:v15 originalURL:self->_originalURL];
  }

  v14 = v16;

LABEL_10:
  if (v14)
  {
    objc_storeStrong((v14 + 56), self->_creationDate);
    objc_storeStrong((v14 + 64), self->_modificationDate);
    *(v14 + 8) = self->_isHidden;
    v17 = v14;
  }

  return v14;
}

- (NSString)wfName
{
  wfName = self->_wfName;
  if (wfName)
  {
    v3 = wfName;
  }

  else
  {
    v4 = [(WFFileRepresentation *)self filename];
    v3 = [v4 stringByDeletingPathExtension];
  }

  return v3;
}

- (id)updatedFilenameForUserEnteredName:(id)a3 addingExtensionIfNecessary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(WFFileRepresentation *)self typeForUserEnteredName:v6 addingExtensionIfNecessary:v4];
  v8 = [WFFileRepresentation proposedFilenameForFile:v6 ofType:v7];

  return v8;
}

- (id)typeForUserEnteredName:(id)a3 addingExtensionIfNecessary:(BOOL)a4
{
  v4 = a4;
  v6 = [MEMORY[0x277D79F68] typeFromFilename:a3];
  if (([v6 isDeclared] & 1) == 0)
  {
    if (v4)
    {
      [(WFFileRepresentation *)self wfType];
    }

    else
    {
      [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D48]];
    }
    v7 = ;

    v6 = v7;
  }

  return v6;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = WFFileRepresentation;
  v3 = [(WFFileRepresentation *)&v7 description];
  v4 = [(WFFileRepresentation *)self filename];
  v5 = [v3 stringByAppendingFormat:@": %@", v4];

  return v5;
}

- (id)mappedDataWithError:(id *)a3
{
  v14 = *MEMORY[0x277D85DE8];
  data = self->_data;
  if (data)
  {
    v4 = data;
  }

  else
  {
    fileURL = self->_fileURL;
    if (fileURL)
    {
      v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:fileURL options:8 error:a3];
    }

    else
    {
      v8 = getWFFileRepresentationLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v10 = 136315394;
        v11 = "[WFFileRepresentation mappedDataWithError:]";
        v12 = 2112;
        v13 = self;
        _os_log_impl(&dword_21E1BD000, v8, OS_LOG_TYPE_FAULT, "%s Both _data and _fileURL are nil in fileRepresentation: %@", &v10, 0x16u);
      }

      v4 = 0;
    }
  }

  return v4;
}

- (id)inputStream
{
  v3 = [(WFFileRepresentation *)self representationType];
  v4 = objc_alloc(MEMORY[0x277CBEAE0]);
  if (v3 == 1)
  {
    v5 = [(WFFileRepresentation *)self fileURL];
    v6 = [v4 initWithURL:v5];

    objc_setAssociatedObject(v6, sel_inputStream, self, 1);
  }

  else
  {
    v7 = [(WFFileRepresentation *)self data];
    v6 = [v4 initWithData:v7];
  }

  return v6;
}

- (int64_t)fileSize
{
  data = self->_data;
  if (data)
  {

    return [(NSData *)data length];
  }

  else if (self->_fileURL)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [(NSURL *)self->_fileURL path];
    v7 = [v5 attributesOfItemAtPath:v6 error:0];
    v8 = [v7 fileSize];

    return v8;
  }

  else
  {
    return 0;
  }
}

- (BOOL)atomicReplaceAcrossVolumesIfNeededWithURLForReplacing:(id)a3 sourceURL:(id)a4 error:(id *)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 wf_fileIsOnSameVolumeAsURL:v8])
  {
    v9 = getWFFilesLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v34 = "[WFFileRepresentation atomicReplaceAcrossVolumesIfNeededWithURLForReplacing:sourceURL:error:]";
      v35 = 2112;
      v36 = v7;
      v37 = 2112;
      v38 = v8;
      _os_log_impl(&dword_21E1BD000, v9, OS_LOG_TYPE_DEFAULT, "%s Files are on the same volume not attempting replace across volumes (%@) - (%@)", buf, 0x20u);
    }

    v10 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v32 = 0;
    v11 = [v9 URLForDirectory:99 inDomain:1 appropriateForURL:v7 create:1 error:&v32];
    v12 = v32;
    [MEMORY[0x277CCAD78] UUID];
    v13 = v27 = a5;
    v14 = [v13 UUIDString];
    v15 = [v11 URLByAppendingPathComponent:v14];

    v16 = v11;
    v31 = v12;
    v17 = [v9 copyItemAtURL:v8 toURL:v15 error:&v31];
    v18 = v31;

    v30 = v18;
    v28 = v15;
    v19 = [v9 replaceItemAtURL:v7 withItemAtURL:v15 backupItemName:0 options:0 resultingItemURL:0 error:&v30];
    v20 = v30;

    if (v11)
    {
      v10 = v19 & v17;
    }

    else
    {
      v10 = 0;
    }

    if (v27 && v20)
    {
      v21 = v20;
      *v27 = v20;
    }

    if (v11)
    {
      v29 = 0;
      v22 = [v9 removeItemAtURL:v16 error:&v29];
      v23 = v29;
      if ((v22 & 1) == 0)
      {
        v24 = getWFFilesLogObject();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v34 = "[WFFileRepresentation atomicReplaceAcrossVolumesIfNeededWithURLForReplacing:sourceURL:error:]";
          v35 = 2114;
          v36 = v23;
          _os_log_impl(&dword_21E1BD000, v24, OS_LOG_TYPE_ERROR, "%s Failed to cleanup staging directory during atomic replace: %{public}@", buf, 0x16u);
        }
      }
    }

    if ((v10 & 1) == 0)
    {
      v25 = getWFFilesLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v34 = "[WFFileRepresentation atomicReplaceAcrossVolumesIfNeededWithURLForReplacing:sourceURL:error:]";
        v35 = 2114;
        v36 = v20;
        _os_log_impl(&dword_21E1BD000, v25, OS_LOG_TYPE_ERROR, "%s Failed to replace across volumes: %{public}@", buf, 0x16u);
      }
    }
  }

  return v10;
}

- (BOOL)writeToFileURL:(id)a3 copy:(BOOL)a4 overwrite:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a4;
  v43 = *MEMORY[0x277D85DE8];
  v10 = a3;
  if (![objc_opt_class() fileIsInDisallowedDirectory:v10])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v40 = __Block_byref_object_copy__8915;
    v41 = __Block_byref_object_dispose__8916;
    v42 = 0;
    v13 = [v10 wf_fileIsShortcutsOwned];
    if (self->_fileURL)
    {
      v14 = [MEMORY[0x277CCAA00] defaultManager];
      if (v7)
      {
        v15 = self->_fileURL;
        if (v8)
        {
          v16 = [MEMORY[0x277CCAD78] UUID];
          v17 = [v16 UUIDString];
          v18 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:v17];

          if (([v14 copyItemAtURL:self->_fileURL toURL:v18 error:a6] & 1) == 0)
          {

            v12 = 0;
LABEL_19:
            _Block_object_dispose(buf, 8);

            goto LABEL_20;
          }

          v15 = v18;
        }

        v19 = objc_opt_class();
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __60__WFFileRepresentation_writeToFileURL_copy_overwrite_error___block_invoke;
        v34[3] = &unk_278346868;
        v35 = v14;
        v20 = v15;
        v37 = self;
        v38 = buf;
        v36 = v20;
        v12 = [v19 coordinateFileOperation:1 shouldCoordinate:v13 ^ 1u fileURL:v10 destinationURL:0 accessor:v34];
      }

      else
      {
        v22 = objc_opt_class();
        fileURL = self->_fileURL;
        if (v8)
        {
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __60__WFFileRepresentation_writeToFileURL_copy_overwrite_error___block_invoke_73;
          v31[3] = &unk_278346840;
          v32 = v14;
          v33 = buf;
          v12 = [v22 coordinateFileOperation:3 shouldCoordinate:v13 ^ 1u fileURL:fileURL destinationURL:v10 accessor:v31];
          v20 = v32;
        }

        else
        {
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __60__WFFileRepresentation_writeToFileURL_copy_overwrite_error___block_invoke_74;
          v28[3] = &unk_278346840;
          v29 = v14;
          v30 = buf;
          v12 = [v22 coordinateFileOperation:4 shouldCoordinate:v13 ^ 1u fileURL:fileURL destinationURL:v10 accessor:v28];
          v20 = v29;
        }
      }
    }

    else
    {
      v21 = objc_opt_class();
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __60__WFFileRepresentation_writeToFileURL_copy_overwrite_error___block_invoke_75;
      v26[3] = &unk_278346890;
      v27 = v7;
      v26[4] = self;
      v26[5] = buf;
      v12 = [v21 coordinateFileOperation:1 shouldCoordinate:v13 ^ 1u fileURL:v10 destinationURL:0 accessor:v26];
    }

    if (a6)
    {
      v24 = *(*&buf[8] + 40);
      if (v24)
      {
        *a6 = v24;
      }
    }

    goto LABEL_19;
  }

  v11 = getWFFileRepresentationLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[WFFileRepresentation writeToFileURL:copy:overwrite:error:]";
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_21E1BD000, v11, OS_LOG_TYPE_ERROR, "%s Cannot save file URL to disallowed directory: %@", buf, 0x16u);
  }

  v12 = 0;
LABEL_20:

  return v12;
}

uint64_t __60__WFFileRepresentation_writeToFileURL_copy_overwrite_error___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v15 = getWFFilesLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "[WFFileRepresentation writeToFileURL:copy:overwrite:error:]_block_invoke";
      v25 = 2112;
      v26 = 0;
      v27 = 2114;
      v28 = v7;
      _os_log_impl(&dword_21E1BD000, v15, OS_LOG_TYPE_ERROR, "%s Failed to coordinate write to %@: %{public}@", buf, 0x20u);
    }

    v14 = 0;
    goto LABEL_8;
  }

  v10 = a1[4];
  v11 = a1[5];
  v12 = *(a1[7] + 8);
  obj = *(v12 + 40);
  v13 = [v10 replaceItemAtURL:v8 withItemAtURL:v11 backupItemName:0 options:0 resultingItemURL:0 error:&obj];
  objc_storeStrong((v12 + 40), obj);
  if ((v13 & 1) == 0)
  {
    v16 = a1[6];
    v17 = v16[4];
    v18 = *(a1[7] + 8);
    v21 = *(v18 + 40);
    v14 = [v16 atomicReplaceAcrossVolumesIfNeededWithURLForReplacing:v8 sourceURL:v17 error:&v21];
    v19 = v21;
    v15 = *(v18 + 40);
    *(v18 + 40) = v19;
LABEL_8:

    goto LABEL_9;
  }

  v14 = 1;
LABEL_9:

  return v14;
}

uint64_t __60__WFFileRepresentation_writeToFileURL_copy_overwrite_error___block_invoke_73(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && v9)
  {
    v11 = *(a1 + 32);
    v12 = *(*(a1 + 40) + 8);
    v17 = *(v12 + 40);
    v13 = [v11 copyItemAtURL:v8 toURL:v10 error:&v17];
    v14 = v17;
    v15 = *(v12 + 40);
    *(v12 + 40) = v14;
  }

  else
  {
    v15 = getWFFilesLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v19 = "[WFFileRepresentation writeToFileURL:copy:overwrite:error:]_block_invoke";
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v10;
      v24 = 2114;
      v25 = v7;
      _os_log_impl(&dword_21E1BD000, v15, OS_LOG_TYPE_ERROR, "%s Failed to coordinate copy from %@ to %@: %{public}@", buf, 0x2Au);
    }

    v13 = 0;
  }

  return v13;
}

uint64_t __60__WFFileRepresentation_writeToFileURL_copy_overwrite_error___block_invoke_74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && v9)
  {
    v11 = *(a1 + 32);
    v12 = *(*(a1 + 40) + 8);
    v17 = *(v12 + 40);
    v13 = [v11 moveItemAtURL:v8 toURL:v10 error:&v17];
    v14 = v17;
    v15 = *(v12 + 40);
    *(v12 + 40) = v14;
  }

  else
  {
    v15 = getWFFilesLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v19 = "[WFFileRepresentation writeToFileURL:copy:overwrite:error:]_block_invoke";
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v10;
      v24 = 2114;
      v25 = v7;
      _os_log_impl(&dword_21E1BD000, v15, OS_LOG_TYPE_ERROR, "%s Failed to coordinate move from %@ to %@: %{public}@", buf, 0x2Au);
    }

    v13 = 0;
  }

  return v13;
}

uint64_t __60__WFFileRepresentation_writeToFileURL_copy_overwrite_error___block_invoke_75(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 24);
  if (*(a1 + 48))
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  v5 = *(*(a1 + 40) + 8);
  obj = *(v5 + 40);
  v6 = [v3 writeToURL:a3 options:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  return v6;
}

- (BOOL)writeToTemporaryFileURL:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (v7 && [(WFFileRepresentation *)self writeToFileURL:v7 copy:[(WFFileRepresentation *)self deletesFileOnDeallocation]^ 1 overwrite:0 error:a4])
  {
    v8 = 1;
    self->_deletesFileOnDeallocation = 1;
    self->_isTemporaryFile = 1;
    objc_storeStrong(&self->_fileURL, a3);
    INFileURLSetMarkedForDeletionOnDeallocation();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSURL)fileURL
{
  fileURL = self->_fileURL;
  if (!fileURL)
  {
    if (self->_data)
    {
      v4 = [(WFFileRepresentation *)self filename];
      v5 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:v4];

      [(WFFileRepresentation *)self writeToTemporaryFileURL:v5 error:0];
      fileURL = self->_fileURL;
    }

    else
    {
      fileURL = 0;
    }
  }

  return fileURL;
}

- (NSData)data
{
  v16 = *MEMORY[0x277D85DE8];
  data = self->_data;
  if (!data)
  {
    if (self->_fileURL)
    {
      v4 = objc_alloc(MEMORY[0x277CBEA90]);
      fileURL = self->_fileURL;
      v11 = 0;
      v6 = [v4 initWithContentsOfURL:fileURL options:0 error:&v11];
      v7 = v11;
      v8 = self->_data;
      self->_data = v6;

      if (!self->_data)
      {
        v9 = getWFFileRepresentationLogObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v13 = "[WFFileRepresentation data]";
          v14 = 2112;
          v15 = v7;
          _os_log_impl(&dword_21E1BD000, v9, OS_LOG_TYPE_ERROR, "%s Failed to read file: %{error}@", buf, 0x16u);
        }
      }

      data = self->_data;
    }

    else
    {
      data = 0;
    }
  }

  return data;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_fileURL)
  {
    if (self->_deletesFileOnDeallocation)
    {
      if (!INFileURLHasAssociatedAuditToken())
      {
        goto LABEL_8;
      }

      v3 = [MEMORY[0x277CCAC38] processInfo];
      v4 = v3;
      if (v3)
      {
        [v3 if_auditToken];
      }

      else
      {
        memset(buf, 0, 32);
      }

      v5 = INFileURLAuditTokenEquals();

      if (v5)
      {
LABEL_8:
        v6 = getWFFileRepresentationLogObject();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [(NSURL *)self->_fileURL absoluteString];
          *buf = 136315394;
          *&buf[4] = "[WFFileRepresentation dealloc]";
          *&buf[12] = 2112;
          *&buf[14] = v7;
          _os_log_impl(&dword_21E1BD000, v6, OS_LOG_TYPE_DEFAULT, "%s Deleting file on deallocation: %@", buf, 0x16u);
        }

        v8 = [MEMORY[0x277CCAA00] defaultManager];
        [v8 removeItemAtURL:self->_fileURL error:0];
      }
    }

    if (self->_securityScopedResource)
    {
      v9 = getWFFileRepresentationLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        fileURL = self->_fileURL;
        *buf = 136315394;
        *&buf[4] = "[WFFileRepresentation dealloc]";
        *&buf[12] = 2112;
        *&buf[14] = fileURL;
        _os_log_impl(&dword_21E1BD000, v9, OS_LOG_TYPE_DEFAULT, "%s Revoking access to security scoped URL: %@", buf, 0x16u);
      }

      [(NSURL *)self->_fileURL stopAccessingSecurityScopedResource];
    }
  }

  v11.receiver = self;
  v11.super_class = WFFileRepresentation;
  [(WFFileRepresentation *)&v11 dealloc];
}

- (WFFileRepresentation)initWithFileURL:(id)a3 options:(int64_t)a4 ofType:(id)a5 proposedFilename:(id)a6 originalURL:(id)a7
{
  v77 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 isFileURL])
  {
    if ((a4 & 8) != 0)
    {
      if ([v12 startAccessingSecurityScopedResource])
      {
        v16 = 1;
        goto LABEL_10;
      }

      v17 = getWFFileRepresentationLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "[WFFileRepresentation initWithFileURL:options:ofType:proposedFilename:originalURL:]";
        _os_log_impl(&dword_21E1BD000, v17, OS_LOG_TYPE_ERROR, "%s Failed to start accessing a security scoped resource.", buf, 0xCu);
      }
    }

    v16 = 0;
LABEL_10:
    if ([objc_opt_class() fileIsInDisallowedDirectory:v12])
    {
      v18 = getWFFileRepresentationLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[WFFileRepresentation initWithFileURL:options:ofType:proposedFilename:originalURL:]";
        *&buf[12] = 2112;
        *&buf[14] = v12;
        _os_log_impl(&dword_21E1BD000, v18, OS_LOG_TYPE_ERROR, "%s Cannot represent file URL, returning nil: %@", buf, 0x16u);
      }

      if (v16)
      {
        [v12 stopAccessingSecurityScopedResource];
      }

      goto LABEL_37;
    }

    if ((v16 & 1) == 0 && ([objc_opt_class() sandboxAllowsRepresentingFileURL:v12] & 1) == 0)
    {
      v25 = getWFFileRepresentationLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[WFFileRepresentation initWithFileURL:options:ofType:proposedFilename:originalURL:]";
        *&buf[12] = 2112;
        *&buf[14] = v12;
        _os_log_impl(&dword_21E1BD000, v25, OS_LOG_TYPE_ERROR, "%s Cannot represent file URL, returning nil: %@", buf, 0x16u);
      }

      goto LABEL_37;
    }

    v52 = v12;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v74 = __Block_byref_object_copy__8915;
    v75 = __Block_byref_object_dispose__8916;
    v76 = 0;
    if (v13)
    {
      obj = v13;
    }

    else
    {
      obj = [objc_opt_class() typeOfFile:v52];
    }

    v19 = objc_opt_class();
    v20 = v14;
    if (!v14)
    {
      v20 = [v52 lastPathComponent];
    }

    v64 = 0;
    v50 = [v19 proposedFilenameForFile:v20 ofType:obj unsanitizedName:&v64];
    v49 = v64;
    if (!v14)
    {
    }

    if ((a4 & 5) != 5 && (a4 & 3) != 3)
    {
      v21 = *&buf[8];
      v22 = v52;
      v23 = *(v21 + 40);
      *(v21 + 40) = v22;
LABEL_27:

LABEL_28:
      v56.receiver = self;
      v56.super_class = WFFileRepresentation;
      self = [(WFFileRepresentation *)&v56 init];
      if (self)
      {
        if ((a4 & 8) != 0)
        {
          if (*(*&buf[8] + 40) == v52)
          {
            self->_securityScopedResource = 1;
          }

          else
          {
            [v52 stopAccessingSecurityScopedResource];
          }
        }

        self->_deletesFileOnDeallocation = a4 & 1;
        self->_isTemporaryFile = a4 & 1;
        objc_storeStrong(&self->_fileURL, *(*&buf[8] + 40));
        v38 = [v50 copy];
        filename = self->_filename;
        self->_filename = v38;

        v40 = [v49 copy];
        wfName = self->_wfName;
        self->_wfName = v40;

        objc_storeStrong(&self->_wfType, obj);
        v55 = 0;
        [v22 getResourceValue:&v55 forKey:*MEMORY[0x277CBE7C0] error:0];
        v34 = v55;
        v42 = v34;
        if (!v34)
        {
          v42 = [MEMORY[0x277CBEAA8] date];
        }

        objc_storeStrong(&self->_creationDate, v42);
        if (!v34)
        {
        }

        v54 = 0;
        [v22 getResourceValue:&v54 forKey:*MEMORY[0x277CBE7B0] error:0];
        v43 = v54;
        v44 = v54;
        objc_storeStrong(&self->_modificationDate, v43);
        v53 = 0;
        [v22 getResourceValue:&v53 forKey:*MEMORY[0x277CBE888] error:0];
        v45 = v53;
        self->_isHidden = [v45 BOOLValue];
        objc_storeStrong(&self->_originalURL, a7);
        self->_initialRepresentationType = 1;
        self = self;

        v52 = v22;
        v26 = self;
        goto LABEL_60;
      }

LABEL_44:
      v26 = 0;
LABEL_61:

      _Block_object_dispose(buf, 8);
      goto LABEL_38;
    }

    v46 = [v52 wf_fileIsDirectory];
    if (v46)
    {
      [WFTemporaryFileManager createTemporaryDirectoryWithFilename:v50];
    }

    else
    {
      [WFTemporaryFileManager createTemporaryFileWithFilename:v50];
    }
    v24 = ;
    v28 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v24;

    if (*(*&buf[8] + 40))
    {
      if ((a4 & 5) != 5)
      {
        v48 = objc_opt_class();
        v36 = *(*&buf[8] + 40);
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __84__WFFileRepresentation_initWithFileURL_options_ofType_proposedFilename_originalURL___block_invoke_68;
        v57[3] = &unk_278346840;
        v37 = v52;
        v58 = v37;
        v59 = buf;
        if ([v48 coordinateFileOperation:4 shouldCoordinate:(a4 >> 4) & 1 fileURL:v37 destinationURL:v36 accessor:v57])
        {
          v22 = *(*&buf[8] + 40);

          v23 = v58;
          goto LABEL_27;
        }

        v26 = 0;
        v34 = v58;
        v52 = v37;
LABEL_60:

        v22 = v52;
        goto LABEL_61;
      }

      v29 = [MEMORY[0x277CCAD78] UUID];
      v30 = [v29 UUIDString];
      v31 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:v30];

      if (v31)
      {
        v47 = objc_opt_class();
        v32 = *(*&buf[8] + 40);
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __84__WFFileRepresentation_initWithFileURL_options_ofType_proposedFilename_originalURL___block_invoke;
        v60[3] = &unk_278346818;
        v22 = v52;
        v61 = v22;
        v63 = buf;
        v33 = v31;
        v62 = v33;
        LOBYTE(v32) = [v47 coordinateFileOperation:3 shouldCoordinate:(a4 >> 4) & 1 fileURL:v22 destinationURL:v32 accessor:v60];

        if ((v32 & 1) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_28;
      }

      v34 = getWFFileRepresentationLogObject();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *v65 = 136315906;
        v66 = "[WFFileRepresentation initWithFileURL:options:ofType:proposedFilename:originalURL:]";
        v67 = 2050;
        v68 = a4;
        v69 = 1026;
        v70 = v46;
        v71 = 2112;
        v72 = v50;
        v35 = "%s Failed to create temporary file URL, adoptionBehavior = %{public}ld, isDirectory = %{public}d, filename = %@";
        goto LABEL_58;
      }
    }

    else
    {
      v34 = getWFFileRepresentationLogObject();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *v65 = 136315906;
        v66 = "[WFFileRepresentation initWithFileURL:options:ofType:proposedFilename:originalURL:]";
        v67 = 2050;
        v68 = a4;
        v69 = 1026;
        v70 = v46;
        v71 = 2112;
        v72 = v50;
        v35 = "%s Failed to create new file URL, adoptionBehavior = %{public}ld, isDirectory = %{public}d, filename = %@";
LABEL_58:
        _os_log_impl(&dword_21E1BD000, v34, OS_LOG_TYPE_ERROR, v35, v65, 0x26u);
      }
    }

    v26 = 0;
    goto LABEL_60;
  }

LABEL_37:
  v26 = 0;
LABEL_38:

  return v26;
}

uint64_t __84__WFFileRepresentation_initWithFileURL_options_ofType_proposedFilename_originalURL___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = a1[5];
    v30 = 0;
    v13 = [v11 copyItemAtURL:v8 toURL:v12 error:&v30];
    v14 = v30;

    if ((v13 & 1) == 0)
    {
      v22 = getWFFileRepresentationLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v26 = a1[5];
        *buf = 136315906;
        v32 = "[WFFileRepresentation initWithFileURL:options:ofType:proposedFilename:originalURL:]_block_invoke";
        v33 = 2112;
        v34 = v8;
        v35 = 2112;
        v36 = v26;
        v37 = 2114;
        v38 = v14;
        _os_log_impl(&dword_21E1BD000, v22, OS_LOG_TYPE_ERROR, "%s Failed to copy file from %@ to %@: %{public}@", buf, 0x2Au);
      }

      goto LABEL_13;
    }

    v15 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = a1[5];
    v17 = *(a1[6] + 8);
    v18 = *(v17 + 40);
    v28 = v14;
    obj = v18;
    v19 = 1;
    v20 = [v15 replaceItemAtURL:v10 withItemAtURL:v16 backupItemName:0 options:1 resultingItemURL:&obj error:&v28];
    objc_storeStrong((v17 + 40), obj);
    v21 = v28;

    if ((v20 & 1) == 0)
    {
      v22 = getWFFileRepresentationLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = a1[5];
        *buf = 136315906;
        v32 = "[WFFileRepresentation initWithFileURL:options:ofType:proposedFilename:originalURL:]_block_invoke";
        v33 = 2112;
        v34 = v10;
        v35 = 2112;
        v36 = v23;
        v37 = 2114;
        v38 = v21;
        _os_log_impl(&dword_21E1BD000, v22, OS_LOG_TYPE_ERROR, "%s Failed to replace file at %@ with %@: %{public}@", buf, 0x2Au);
      }

      v14 = v21;
LABEL_13:

      v19 = 0;
      v21 = v14;
    }
  }

  else
  {
    v21 = getWFFileRepresentationLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = a1[4];
      v25 = *(*(a1[6] + 8) + 40);
      *buf = 136315906;
      v32 = "[WFFileRepresentation initWithFileURL:options:ofType:proposedFilename:originalURL:]_block_invoke";
      v33 = 2112;
      v34 = v24;
      v35 = 2112;
      v36 = v25;
      v37 = 2114;
      v38 = v7;
      _os_log_impl(&dword_21E1BD000, v21, OS_LOG_TYPE_ERROR, "%s Failed to coordinate file copy from %@ to %@: %{public}@", buf, 0x2Au);
    }

    v19 = 0;
  }

  return v19;
}

uint64_t __84__WFFileRepresentation_initWithFileURL_options_ofType_proposedFilename_originalURL___block_invoke_68(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || !v9)
  {
    v16 = getWFFileRepresentationLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 136315906;
      v24 = "[WFFileRepresentation initWithFileURL:options:ofType:proposedFilename:originalURL:]_block_invoke";
      v25 = 2112;
      v26 = v18;
      v27 = 2112;
      v28 = v19;
      v29 = 2114;
      v30 = v7;
      _os_log_impl(&dword_21E1BD000, v16, OS_LOG_TYPE_ERROR, "%s Failed to coordinate file move from %@ to %@: %{public}@", buf, 0x2Au);
    }

    goto LABEL_9;
  }

  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  v21 = 0;
  obj = v13;
  v14 = 1;
  v15 = [v11 replaceItemAtURL:v10 withItemAtURL:v8 backupItemName:0 options:1 resultingItemURL:&obj error:&v21];
  objc_storeStrong((v12 + 40), obj);
  v16 = v21;

  if ((v15 & 1) == 0)
  {
    v17 = getWFFileRepresentationLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v24 = "[WFFileRepresentation initWithFileURL:options:ofType:proposedFilename:originalURL:]_block_invoke";
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v8;
      v29 = 2114;
      v30 = v16;
      _os_log_impl(&dword_21E1BD000, v17, OS_LOG_TYPE_ERROR, "%s Failed to replace file at %@ with %@: %{public}@", buf, 0x2Au);
    }

LABEL_9:
    v14 = 0;
  }

  return v14;
}

- (WFFileRepresentation)initWithData:(id)a3 ofType:(id)a4 proposedFilename:(id)a5 originalURL:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = [MEMORY[0x277CCA890] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"WFFileRepresentation.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"[data isKindOfClass:[NSData class]]"}];
  }

  v15 = [(WFFileRepresentation *)self init];
  if (v15)
  {
    v16 = [v11 copy];
    data = v15->_data;
    v15->_data = v16;

    v18 = [MEMORY[0x277CBEAA8] date];
    creationDate = v15->_creationDate;
    v15->_creationDate = v18;

    objc_storeStrong(&v15->_originalURL, a6);
    v15->_isTemporaryFile = 1;
    v15->_initialRepresentationType = 0;
    if (v12)
    {
      v20 = v12;
      wfType = v15->_wfType;
      v15->_wfType = v20;
    }

    else
    {
      wfType = [MEMORY[0x277D79F68] typeFromFilename:v13];
      if ([wfType isDeclared])
      {
        v22 = wfType;
      }

      else
      {
        v22 = [objc_opt_class() typeOfData:v15->_data];
      }

      v23 = v15->_wfType;
      v15->_wfType = v22;
    }

    v24 = objc_opt_class();
    v25 = v15->_wfType;
    v34 = 0;
    v26 = [v24 proposedFilenameForFile:v13 ofType:v25 unsanitizedName:&v34];
    v27 = v34;
    filename = v15->_filename;
    v15->_filename = v26;

    v29 = [v27 copy];
    wfName = v15->_wfName;
    v15->_wfName = v29;

    v31 = v15;
  }

  return v15;
}

+ (BOOL)coordinateFileOperation:(unint64_t)a3 shouldCoordinate:(BOOL)a4 fileURL:(id)a5 destinationURL:(id)a6 accessor:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v15)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_19:
    v18 = v15[2](v15, 0, v13, v14);
    goto LABEL_20;
  }

  v27 = [MEMORY[0x277CCA890] currentHandler];
  [v27 handleFailureInMethod:a2 object:a1 file:@"WFFileRepresentation.m" lineNumber:615 description:{@"Invalid parameter not satisfying: %@", @"accessor"}];

  if (!a4)
  {
    goto LABEL_19;
  }

LABEL_3:
  v16 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
  v17 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v18 = 1;
  v42 = 1;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v23 = v31;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __97__WFFileRepresentation_coordinateFileOperation_shouldCoordinate_fileURL_destinationURL_accessor___block_invoke_3;
      v31[3] = &unk_2783468E0;
      v31[6] = &v39;
      v32 = 0;
      v26 = v15;
      v31[4] = 0;
      v31[5] = v26;
      v20 = &v32;
      [v16 coordinateReadingItemAtURL:v13 options:2 writingItemAtURL:v14 options:8 error:&v32 byAccessor:v31];
      goto LABEL_15;
    }

    if (a3 == 4)
    {
      v23 = v29;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __97__WFFileRepresentation_coordinateFileOperation_shouldCoordinate_fileURL_destinationURL_accessor___block_invoke_4;
      v29[3] = &unk_2783468E0;
      v29[6] = &v39;
      v30 = 0;
      v24 = v15;
      v29[4] = 0;
      v29[5] = v24;
      v20 = &v30;
      [v16 coordinateWritingItemAtURL:v13 options:2 writingItemAtURL:v14 options:8 error:&v30 byAccessor:v29];
LABEL_15:
      v21 = (v23 + 5);
      v22 = (v23 + 4);
LABEL_16:
      v17 = *v20;

      v18 = *(v40 + 24);
    }
  }

  else
  {
    if (a3 - 1 < 2)
    {
      if (a3 == 2)
      {
        v19 = 1;
      }

      else
      {
        v19 = 8;
      }

      v36 = 0;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __97__WFFileRepresentation_coordinateFileOperation_shouldCoordinate_fileURL_destinationURL_accessor___block_invoke_2;
      v33[3] = &unk_2783468B8;
      v35[1] = &v39;
      v34 = 0;
      v35[0] = v15;
      v20 = &v36;
      [v16 coordinateWritingItemAtURL:v13 options:v19 error:&v36 byAccessor:v33];
      v21 = v35;
      v22 = &v34;
      goto LABEL_16;
    }

    if (!a3)
    {
      v23 = v37;
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __97__WFFileRepresentation_coordinateFileOperation_shouldCoordinate_fileURL_destinationURL_accessor___block_invoke;
      v37[3] = &unk_2783468B8;
      v37[6] = &v39;
      v38 = 0;
      v25 = v15;
      v37[4] = 0;
      v37[5] = v25;
      v20 = &v38;
      [v16 coordinateReadingItemAtURL:v13 options:2 error:&v38 byAccessor:v37];
      goto LABEL_15;
    }
  }

  _Block_object_dispose(&v39, 8);

LABEL_20:
  return v18 & 1;
}

uint64_t __97__WFFileRepresentation_coordinateFileOperation_shouldCoordinate_fileURL_destinationURL_accessor___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __97__WFFileRepresentation_coordinateFileOperation_shouldCoordinate_fileURL_destinationURL_accessor___block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __97__WFFileRepresentation_coordinateFileOperation_shouldCoordinate_fileURL_destinationURL_accessor___block_invoke_3(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __97__WFFileRepresentation_coordinateFileOperation_shouldCoordinate_fileURL_destinationURL_accessor___block_invoke_4(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

+ (id)proposedFilenameForFile:(id)a3 ofType:(id)a4 unsanitizedName:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 pathExtension];
  v10 = [v8 fileExtension];
  v11 = [MEMORY[0x277D79F68] typeFromFileExtension:v9];
  if (([v11 isDeclared] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", v10))
  {
    v12 = [v7 hasSuffix:@".rtfd.zip"];
    v13 = [v7 stringByDeletingPathExtension];
    v14 = v13;
    if (v12)
    {
      v15 = [v13 stringByDeletingPathExtension];

      v7 = v14;
      v14 = v15;
    }

    v7 = v14;
  }

  v16 = v7;
  if ([v11 isEqualToType:v8])
  {
    goto LABEL_7;
  }

  v18 = [v8 fileExtension];
  if ([v18 length])
  {

    v17 = v10;
  }

  else
  {
    v19 = [v11 conformsToType:v8];

    v17 = v10;
    if (v19)
    {
LABEL_7:
      v17 = v9;
    }
  }

  v20 = v17;
  if ([v16 length])
  {
    v21 = [a1 sanitizedFilename:v16 withExtension:v20 unsanitizedName:a5];
    goto LABEL_22;
  }

  v22 = *MEMORY[0x277CE1DB0];
  if ([v8 conformsToUTType:*MEMORY[0x277CE1DB0]])
  {
    v31 = a5;
    v23 = [MEMORY[0x277D79F68] typeWithUTType:v22];
    v24 = [v23 typeDescription];
    v25 = [MEMORY[0x277CBEAF8] currentLocale];
    v26 = [v24 capitalizedStringWithLocale:v25];
  }

  else
  {
    v27 = [v8 typeDescription];
    if (v27)
    {
      v28 = v27;
      v29 = v28;
LABEL_20:
      v26 = v28;

      goto LABEL_21;
    }

    v31 = a5;
    v24 = [v8 typesConformedTo];
    v25 = [v24 firstObject];
    v26 = [v25 typeDescription];
    v23 = 0;
  }

  a5 = v31;
  if (!v26)
  {
    v29 = [MEMORY[0x277CCAD78] UUID];
    v28 = [v29 UUIDString];
    goto LABEL_20;
  }

LABEL_21:
  v21 = [a1 sanitizedFilename:v26 withExtension:v20 unsanitizedName:a5];

LABEL_22:

  return v21;
}

+ (id)sanitizedFilename:(id)a3 withExtension:(id)a4 unsanitizedName:(id *)a5
{
  v7 = a4;
  if (a5)
  {
    v8 = a3;
    *a5 = a3;
  }

  v9 = [a3 stringByReplacingOccurrencesOfString:@"/" withString:@":"];
  if ([v7 length])
  {
    v10 = [v9 stringByAppendingPathExtension:v7];
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;
  v12 = [v10 wf_filenameTruncatedToMaximumLength];

  return v12;
}

+ (id)typeOfFile:(id)a3
{
  v3 = a3;
  v4 = [v3 wfFileType];
  v5 = v4;
  if (!v4 || [v4 isEqualToUTType:*MEMORY[0x277CE1D48]])
  {
    WFFaultIfLoadingMagicKitInDaemon();
    v6 = MEMORY[0x277D79F68];
    v7 = [GEMagicKit magicForFileAtURL:v3];
    v8 = [v7 uniformType];
    v9 = [v6 typeWithString:v8];

    v5 = v9;
    if (!v9)
    {
      v5 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E20]];
    }
  }

  return v5;
}

+ (id)typeOfData:(id)a3
{
  v3 = a3;
  WFFaultIfLoadingMagicKitInDaemon();
  v4 = MEMORY[0x277D79F68];
  v5 = [GEMagicKit magicForData:v3];

  v6 = [v5 uniformType];
  v7 = [v4 typeWithString:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E20]];
  }

  v9 = v8;

  return v9;
}

+ (BOOL)isAllowedToRepresentFileURL:(id)a3
{
  v4 = a3;
  if ([a1 sandboxAllowsRepresentingFileURL:v4])
  {
    v5 = [a1 fileIsInDisallowedDirectory:v4] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)fileIsInDisallowedDirectory:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a3 URLByResolvingSymlinksInPath];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [a1 disallowedDirectoryURLs];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (([v4 wf_proposedFileIsContainedByDirectoryAtURL:v10] & 1) == 0)
        {
          v11 = [v4 absoluteString];
          v12 = [v10 absoluteString];
          v13 = [v11 hasPrefix:v12];

          if ((v13 & 1) == 0)
          {
            continue;
          }
        }

        v14 = 1;
        goto LABEL_13;
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v14 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_13:

  return v14;
}

+ (void)addDisallowedDirectory:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = _disallowedDirectoryURLs;
    if (!_disallowedDirectoryURLs)
    {
      v4 = MEMORY[0x277CBEBF8];
    }

    v8 = v4;
    v5 = [v8 arrayByAddingObject:a3];
    v6 = _disallowedDirectoryURLs;
    _disallowedDirectoryURLs = v5;
  }

  else
  {
    v7 = getWFFileRepresentationLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v10 = "+[WFFileRepresentation addDisallowedDirectory:]";
      _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_FAULT, "%s Adding disallowed directory failed because the URL is nil", buf, 0xCu);
    }
  }
}

+ (id)fileWithURL:(id)a3 options:(int64_t)a4 ofType:(id)a5 proposedFilename:(id)a6 originalURL:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [[a1 alloc] initWithFileURL:v15 options:a4 ofType:v14 proposedFilename:v13 originalURL:v12];

  return v16;
}

+ (id)fileWithData:(id)a3 ofType:(id)a4 proposedFilename:(id)a5 originalURL:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithData:v13 ofType:v12 proposedFilename:v11 originalURL:v10];

  return v14;
}

@end