@interface CRKShareTarget
+ (id)sandboxExtensionForPath:(id)path;
+ (id)sandboxExtensionsForFileURLs:(id)ls;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToShareTarget:(id)target;
- (CRKShareTarget)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
- (id)operationToSendItems:(id)items fromBundleIdentifier:(id)identifier description:(id)description previewImageData:(id)data;
- (unint64_t)hash;
@end

@implementation CRKShareTarget

- (CRKShareTarget)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    [(CRKShareTarget *)a2 initWithDictionary:?];
  }

  v31.receiver = self;
  v31.super_class = CRKShareTarget;
  v6 = [(CRKShareTarget *)&v31 init];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D04C00]);
    v8 = [dictionaryCopy objectForKeyedSubscript:@"CourseIdentifier"];
    v9 = [v7 initWithString:v8];
    courseIdentifier = v6->_courseIdentifier;
    v6->_courseIdentifier = v9;

    v11 = [dictionaryCopy objectForKeyedSubscript:@"Type"];
    v12 = [v11 copy];
    type = v6->_type;
    v6->_type = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"Identifier"];
    v15 = [v14 copy];
    identifier = v6->_identifier;
    v6->_identifier = v15;

    v17 = [dictionaryCopy objectForKeyedSubscript:@"DisplayName"];
    v18 = [v17 copy];
    displayName = v6->_displayName;
    v6->_displayName = v18;

    v20 = [dictionaryCopy objectForKeyedSubscript:@"SecondaryName"];
    v21 = [v20 copy];
    secondaryName = v6->_secondaryName;
    v6->_secondaryName = v21;

    v23 = [dictionaryCopy objectForKeyedSubscript:@"IconImageData"];
    v24 = [v23 copy];
    iconImageData = v6->_iconImageData;
    v6->_iconImageData = v24;

    v26 = [dictionaryCopy objectForKeyedSubscript:@"IsCourse"];
    v6->_course = [v26 BOOLValue];

    v27 = [dictionaryCopy objectForKeyedSubscript:@"IsGroup"];
    v6->_group = [v27 BOOLValue];

    v28 = [dictionaryCopy objectForKeyedSubscript:@"IsInstructor"];
    v6->_instructor = [v28 BOOLValue];

    v29 = [dictionaryCopy objectForKeyedSubscript:@"SupportsFileURLs"];
    v6->_supportsFileURLs = [v29 BOOLValue];
  }

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_opt_new();
  courseIdentifier = [(CRKShareTarget *)self courseIdentifier];

  if (courseIdentifier)
  {
    courseIdentifier2 = [(CRKShareTarget *)self courseIdentifier];
    stringValue = [courseIdentifier2 stringValue];
    [v3 setObject:stringValue forKeyedSubscript:@"CourseIdentifier"];
  }

  type = [(CRKShareTarget *)self type];

  if (type)
  {
    type2 = [(CRKShareTarget *)self type];
    [v3 setObject:type2 forKeyedSubscript:@"Type"];
  }

  identifier = [(CRKShareTarget *)self identifier];

  if (identifier)
  {
    identifier2 = [(CRKShareTarget *)self identifier];
    [v3 setObject:identifier2 forKeyedSubscript:@"Identifier"];
  }

  displayName = [(CRKShareTarget *)self displayName];

  if (displayName)
  {
    displayName2 = [(CRKShareTarget *)self displayName];
    [v3 setObject:displayName2 forKeyedSubscript:@"DisplayName"];
  }

  secondaryName = [(CRKShareTarget *)self secondaryName];

  if (secondaryName)
  {
    secondaryName2 = [(CRKShareTarget *)self secondaryName];
    [v3 setObject:secondaryName2 forKeyedSubscript:@"SecondaryName"];
  }

  iconImageData = [(CRKShareTarget *)self iconImageData];

  if (iconImageData)
  {
    iconImageData2 = [(CRKShareTarget *)self iconImageData];
    [v3 setObject:iconImageData2 forKeyedSubscript:@"IconImageData"];
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

- (id)operationToSendItems:(id)items fromBundleIdentifier:(id)identifier description:(id)description previewImageData:(id)data
{
  v10 = MEMORY[0x277CCAC30];
  dataCopy = data;
  descriptionCopy = description;
  identifierCopy = identifier;
  itemsCopy = items;
  v15 = [v10 predicateWithFormat:@"isFileURL == %@", MEMORY[0x277CBEC38]];
  v16 = [itemsCopy filteredArrayUsingPredicate:v15];

  v17 = objc_opt_new();
  courseIdentifier = [(CRKShareTarget *)self courseIdentifier];
  [v17 setCourseIdentifier:courseIdentifier];

  type = [(CRKShareTarget *)self type];
  [v17 setTargetType:type];

  identifier = [(CRKShareTarget *)self identifier];
  [v17 setTargetIdentifier:identifier];

  [v17 setUrls:itemsCopy];
  v21 = [MEMORY[0x277CBEBC0] crk_overriddenDescriptionForItems:itemsCopy originalDescription:descriptionCopy];

  [v17 setShareDescription:v21];
  [v17 setPreviewImageData:dataCopy];

  v22 = [objc_opt_class() sandboxExtensionsForFileURLs:v16];
  [v17 setSandboxExtensions:v22];

  [v17 setSourceBundleIdentifier:identifierCopy];
  taskClient = [(CRKShareTarget *)self taskClient];
  v24 = [taskClient prepareTaskOperationForRequest:v17];

  return v24;
}

+ (id)sandboxExtensionsForFileURLs:(id)ls
{
  v21 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = lsCopy;
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

        path = [*(*(&v16 + 1) + 8 * i) path];
        if (path)
        {
          v12 = [self sandboxExtensionForPath:path];
          if (v12)
          {
            [v5 setObject:v12 forKeyedSubscript:path];
          }
        }

        stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
        if (stringByDeletingLastPathComponent)
        {
          v14 = [self sandboxExtensionForPath:stringByDeletingLastPathComponent];
          if (v14)
          {
            [v5 setObject:v14 forKeyedSubscript:stringByDeletingLastPathComponent];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)sandboxExtensionForPath:(id)path
{
  v12 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [@"com.apple.app-sandbox.read" UTF8String];
  [pathCopy UTF8String];
  v4 = sandbox_extension_issue_file();
  if (_CRKLogGeneral_onceToken_3 != -1)
  {
    +[CRKShareTarget sandboxExtensionForPath:];
  }

  v5 = _CRKLogGeneral_logObj_3;
  if (os_log_type_enabled(_CRKLogGeneral_logObj_3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = pathCopy;
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
  courseIdentifier = [(CRKShareTarget *)self courseIdentifier];
  v4 = [courseIdentifier hash];
  type = [(CRKShareTarget *)self type];
  v6 = [type hash] ^ v4;
  identifier = [(CRKShareTarget *)self identifier];
  v8 = [identifier hash];
  displayName = [(CRKShareTarget *)self displayName];
  v10 = v6 ^ v8 ^ [displayName hash];
  secondaryName = [(CRKShareTarget *)self secondaryName];
  v12 = [secondaryName hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CRKShareTarget *)self isEqualToShareTarget:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToShareTarget:(id)target
{
  targetCopy = target;
  courseIdentifier = [(CRKShareTarget *)self courseIdentifier];
  courseIdentifier2 = [targetCopy courseIdentifier];
  v7 = courseIdentifier;
  v8 = courseIdentifier2;
  if (v7 | v8 && (v9 = [v7 isEqual:v8], v8, v7, !v9))
  {
    LOBYTE(v31) = 0;
  }

  else
  {
    type = [(CRKShareTarget *)self type];
    type2 = [targetCopy type];
    v12 = type;
    v13 = type2;
    if (v12 | v13 && (v14 = [v12 isEqual:v13], v13, v12, !v14))
    {
      LOBYTE(v31) = 0;
    }

    else
    {
      identifier = [(CRKShareTarget *)self identifier];
      identifier2 = [targetCopy identifier];
      v17 = identifier;
      v18 = identifier2;
      if (v17 | v18 && (v19 = [v17 isEqual:v18], v18, v17, !v19))
      {
        LOBYTE(v31) = 0;
      }

      else
      {
        displayName = [(CRKShareTarget *)self displayName];
        displayName2 = [targetCopy displayName];
        v22 = displayName;
        v36 = displayName2;
        v37 = v22;
        if (v22 | v36 && (v34 = [v22 isEqual:v36], v36, v22, !v34))
        {
          LOBYTE(v31) = 0;
        }

        else
        {
          v35 = v17;
          secondaryName = [(CRKShareTarget *)self secondaryName];
          secondaryName2 = [targetCopy secondaryName];
          v25 = secondaryName;
          v26 = secondaryName2;
          if ((!(v25 | v26) || (v27 = [v25 isEqual:v26], v26, v25, v27)) && (v28 = -[CRKShareTarget isCourse](self, "isCourse"), v28 == objc_msgSend(targetCopy, "isCourse")) && (v29 = -[CRKShareTarget isGroup](self, "isGroup"), v29 == objc_msgSend(targetCopy, "isGroup")) && (v30 = -[CRKShareTarget isInstructor](self, "isInstructor"), v30 == objc_msgSend(targetCopy, "isInstructor")))
          {
            supportsFileURLs = [(CRKShareTarget *)self supportsFileURLs];
            v31 = supportsFileURLs ^ [targetCopy supportsFileURLs] ^ 1;
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
  identifier = [(CRKShareTarget *)self identifier];
  displayName = [(CRKShareTarget *)self displayName];
  v7 = [v3 stringWithFormat:@"<%@: %p {identifier = %@, displayName = %@}>", v4, self, identifier, displayName];

  return v7;
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKShareTarget.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
}

@end