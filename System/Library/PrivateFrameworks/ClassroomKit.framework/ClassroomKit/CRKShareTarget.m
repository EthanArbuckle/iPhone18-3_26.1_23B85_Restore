@interface CRKShareTarget
+ (id)sandboxExtensionForPath:(id)a3;
+ (id)sandboxExtensionsForFileURLs:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToShareTarget:(id)a3;
- (CRKShareTarget)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
- (id)operationToSendItems:(id)a3 fromBundleIdentifier:(id)a4 description:(id)a5 previewImageData:(id)a6;
- (unint64_t)hash;
@end

@implementation CRKShareTarget

- (CRKShareTarget)initWithDictionary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(CRKShareTarget *)a2 initWithDictionary:?];
  }

  v31.receiver = self;
  v31.super_class = CRKShareTarget;
  v6 = [(CRKShareTarget *)&v31 init];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D04C00]);
    v8 = [v5 objectForKeyedSubscript:@"CourseIdentifier"];
    v9 = [v7 initWithString:v8];
    courseIdentifier = v6->_courseIdentifier;
    v6->_courseIdentifier = v9;

    v11 = [v5 objectForKeyedSubscript:@"Type"];
    v12 = [v11 copy];
    type = v6->_type;
    v6->_type = v12;

    v14 = [v5 objectForKeyedSubscript:@"Identifier"];
    v15 = [v14 copy];
    identifier = v6->_identifier;
    v6->_identifier = v15;

    v17 = [v5 objectForKeyedSubscript:@"DisplayName"];
    v18 = [v17 copy];
    displayName = v6->_displayName;
    v6->_displayName = v18;

    v20 = [v5 objectForKeyedSubscript:@"SecondaryName"];
    v21 = [v20 copy];
    secondaryName = v6->_secondaryName;
    v6->_secondaryName = v21;

    v23 = [v5 objectForKeyedSubscript:@"IconImageData"];
    v24 = [v23 copy];
    iconImageData = v6->_iconImageData;
    v6->_iconImageData = v24;

    v26 = [v5 objectForKeyedSubscript:@"IsCourse"];
    v6->_course = [v26 BOOLValue];

    v27 = [v5 objectForKeyedSubscript:@"IsGroup"];
    v6->_group = [v27 BOOLValue];

    v28 = [v5 objectForKeyedSubscript:@"IsInstructor"];
    v6->_instructor = [v28 BOOLValue];

    v29 = [v5 objectForKeyedSubscript:@"SupportsFileURLs"];
    v6->_supportsFileURLs = [v29 BOOLValue];
  }

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(CRKShareTarget *)self courseIdentifier];

  if (v4)
  {
    v5 = [(CRKShareTarget *)self courseIdentifier];
    v6 = [v5 stringValue];
    [v3 setObject:v6 forKeyedSubscript:@"CourseIdentifier"];
  }

  v7 = [(CRKShareTarget *)self type];

  if (v7)
  {
    v8 = [(CRKShareTarget *)self type];
    [v3 setObject:v8 forKeyedSubscript:@"Type"];
  }

  v9 = [(CRKShareTarget *)self identifier];

  if (v9)
  {
    v10 = [(CRKShareTarget *)self identifier];
    [v3 setObject:v10 forKeyedSubscript:@"Identifier"];
  }

  v11 = [(CRKShareTarget *)self displayName];

  if (v11)
  {
    v12 = [(CRKShareTarget *)self displayName];
    [v3 setObject:v12 forKeyedSubscript:@"DisplayName"];
  }

  v13 = [(CRKShareTarget *)self secondaryName];

  if (v13)
  {
    v14 = [(CRKShareTarget *)self secondaryName];
    [v3 setObject:v14 forKeyedSubscript:@"SecondaryName"];
  }

  v15 = [(CRKShareTarget *)self iconImageData];

  if (v15)
  {
    v16 = [(CRKShareTarget *)self iconImageData];
    [v3 setObject:v16 forKeyedSubscript:@"IconImageData"];
  }

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKShareTarget isCourse](self, "isCourse")}];
  [v3 setObject:v17 forKeyedSubscript:@"IsCourse"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKShareTarget isGroup](self, "isGroup")}];
  [v3 setObject:v18 forKeyedSubscript:@"IsGroup"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKShareTarget isInstructor](self, "isInstructor")}];
  [v3 setObject:v19 forKeyedSubscript:@"IsInstructor"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKShareTarget supportsFileURLs](self, "supportsFileURLs")}];
  [v3 setObject:v20 forKeyedSubscript:@"SupportsFileURLs"];

  v21 = [v3 copy];

  return v21;
}

- (id)operationToSendItems:(id)a3 fromBundleIdentifier:(id)a4 description:(id)a5 previewImageData:(id)a6
{
  v10 = MEMORY[0x277CCAC30];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 predicateWithFormat:@"isFileURL == %@", MEMORY[0x277CBEC38]];
  v16 = [v14 filteredArrayUsingPredicate:v15];

  v17 = objc_opt_new();
  v18 = [(CRKShareTarget *)self courseIdentifier];
  [v17 setCourseIdentifier:v18];

  v19 = [(CRKShareTarget *)self type];
  [v17 setTargetType:v19];

  v20 = [(CRKShareTarget *)self identifier];
  [v17 setTargetIdentifier:v20];

  [v17 setUrls:v14];
  v21 = [MEMORY[0x277CBEBC0] crk_overriddenDescriptionForItems:v14 originalDescription:v12];

  [v17 setShareDescription:v21];
  [v17 setPreviewImageData:v11];

  v22 = [objc_opt_class() sandboxExtensionsForFileURLs:v16];
  [v17 setSandboxExtensions:v22];

  [v17 setSourceBundleIdentifier:v13];
  v23 = [(CRKShareTarget *)self taskClient];
  v24 = [v23 prepareTaskOperationForRequest:v17];

  return v24;
}

+ (id)sandboxExtensionsForFileURLs:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) path];
        if (v11)
        {
          v12 = [a1 sandboxExtensionForPath:v11];
          if (v12)
          {
            [v5 setObject:v12 forKeyedSubscript:v11];
          }
        }

        v13 = [v11 stringByDeletingLastPathComponent];
        if (v13)
        {
          v14 = [a1 sandboxExtensionForPath:v13];
          if (v14)
          {
            [v5 setObject:v14 forKeyedSubscript:v13];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)sandboxExtensionForPath:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [@"com.apple.app-sandbox.read" UTF8String];
  [v3 UTF8String];
  v4 = sandbox_extension_issue_file();
  if (_CRKLogGeneral_onceToken_3 != -1)
  {
    +[CRKShareTarget sandboxExtensionForPath:];
  }

  v5 = _CRKLogGeneral_logObj_3;
  if (os_log_type_enabled(_CRKLogGeneral_logObj_3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = v3;
    v10 = 2082;
    v11 = v4;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Created sandbox extension for file with path %{public}@: %{public}s", &v8, 0x16u);
  }

  if (v4)
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:strlen(v4) + 1];
    free(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(CRKShareTarget *)self courseIdentifier];
  v4 = [v3 hash];
  v5 = [(CRKShareTarget *)self type];
  v6 = [v5 hash] ^ v4;
  v7 = [(CRKShareTarget *)self identifier];
  v8 = [v7 hash];
  v9 = [(CRKShareTarget *)self displayName];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(CRKShareTarget *)self secondaryName];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CRKShareTarget *)self isEqualToShareTarget:v4];
  }

  return v5;
}

- (BOOL)isEqualToShareTarget:(id)a3
{
  v4 = a3;
  v5 = [(CRKShareTarget *)self courseIdentifier];
  v6 = [v4 courseIdentifier];
  v7 = v5;
  v8 = v6;
  if (v7 | v8 && (v9 = [v7 isEqual:v8], v8, v7, !v9))
  {
    LOBYTE(v31) = 0;
  }

  else
  {
    v10 = [(CRKShareTarget *)self type];
    v11 = [v4 type];
    v12 = v10;
    v13 = v11;
    if (v12 | v13 && (v14 = [v12 isEqual:v13], v13, v12, !v14))
    {
      LOBYTE(v31) = 0;
    }

    else
    {
      v15 = [(CRKShareTarget *)self identifier];
      v16 = [v4 identifier];
      v17 = v15;
      v18 = v16;
      if (v17 | v18 && (v19 = [v17 isEqual:v18], v18, v17, !v19))
      {
        LOBYTE(v31) = 0;
      }

      else
      {
        v20 = [(CRKShareTarget *)self displayName];
        v21 = [v4 displayName];
        v22 = v20;
        v36 = v21;
        v37 = v22;
        if (v22 | v36 && (v34 = [v22 isEqual:v36], v36, v22, !v34))
        {
          LOBYTE(v31) = 0;
        }

        else
        {
          v35 = v17;
          v23 = [(CRKShareTarget *)self secondaryName];
          v24 = [v4 secondaryName];
          v25 = v23;
          v26 = v24;
          if ((!(v25 | v26) || (v27 = [v25 isEqual:v26], v26, v25, v27)) && (v28 = -[CRKShareTarget isCourse](self, "isCourse"), v28 == objc_msgSend(v4, "isCourse")) && (v29 = -[CRKShareTarget isGroup](self, "isGroup"), v29 == objc_msgSend(v4, "isGroup")) && (v30 = -[CRKShareTarget isInstructor](self, "isInstructor"), v30 == objc_msgSend(v4, "isInstructor")))
          {
            v33 = [(CRKShareTarget *)self supportsFileURLs];
            v31 = v33 ^ [v4 supportsFileURLs] ^ 1;
          }

          else
          {
            LOBYTE(v31) = 0;
          }

          v17 = v35;
        }
      }
    }
  }

  return v31;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRKShareTarget *)self identifier];
  v6 = [(CRKShareTarget *)self displayName];
  v7 = [v3 stringWithFormat:@"<%@: %p {identifier = %@, displayName = %@}>", v4, self, v5, v6];

  return v7;
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKShareTarget.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
}

@end