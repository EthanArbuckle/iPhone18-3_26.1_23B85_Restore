@interface DAFolderChange
- (DAFolderChange)initWithCoder:(id)coder;
- (DAFolderChangeConsumer)consumer;
- (id)description;
- (id)initFolderChangeWithChangeType:(unint64_t)type folderId:(id)id parentFolderId:(id)folderId displayName:(id)name dataclass:(int64_t)dataclass consumer:(id)consumer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAFolderChange

- (id)initFolderChangeWithChangeType:(unint64_t)type folderId:(id)id parentFolderId:(id)folderId displayName:(id)name dataclass:(int64_t)dataclass consumer:(id)consumer
{
  idCopy = id;
  folderIdCopy = folderId;
  nameCopy = name;
  consumerCopy = consumer;
  if (dataclass != 1)
  {
    [DAFolderChange initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:];
  }

  if (type == 2)
  {
    if (idCopy)
    {
      goto LABEL_17;
    }

    [DAFolderChange initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:];
    goto LABEL_14;
  }

  if (type == 1)
  {
    if (idCopy)
    {
      if (nameCopy)
      {
        goto LABEL_17;
      }
    }

    else
    {
      [DAFolderChange initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:];
      if (nameCopy)
      {
        goto LABEL_17;
      }
    }

    [DAFolderChange initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:];
    goto LABEL_14;
  }

  if (type)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"DAFolderChange.m" lineNumber:38 description:{@"Can't handle folder change type %ld", type}];
    goto LABEL_16;
  }

  if (folderIdCopy)
  {
    if (nameCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  [DAFolderChange initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:];
  if (!nameCopy)
  {
LABEL_8:
    [DAFolderChange initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:];
LABEL_14:
    currentHandler = v24;
LABEL_16:
  }

LABEL_17:
  if ([nameCopy isEqualToString:@"70FB9178-576E-4CAA-A08E-F68D57BFD01E"])
  {
    [DAFolderChange initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:];
  }

  v23.receiver = self;
  v23.super_class = DAFolderChange;
  v20 = [(DAFolderChange *)&v23 init];
  v21 = v20;
  if (v20)
  {
    [(DAFolderChange *)v20 setChangeType:type];
    [(DAFolderChange *)v21 setFolderId:idCopy];
    [(DAFolderChange *)v21 setParentFolderId:folderIdCopy];
    [(DAFolderChange *)v21 setDisplayName:nameCopy];
    [(DAFolderChange *)v21 setDataclass:dataclass];
    [(DAFolderChange *)v21 setConsumer:consumerCopy];
  }

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  changeType = [(DAFolderChange *)self changeType];
  folderId = [(DAFolderChange *)self folderId];
  parentFolderId = [(DAFolderChange *)self parentFolderId];
  displayName = [(DAFolderChange *)self displayName];
  v10 = [v3 stringWithFormat:@"%@ %p: changeType %ld folderId %@ parentFolderId %@ displayName %@ dataclass %ld", v5, self, changeType, folderId, parentFolderId, displayName, -[DAFolderChange dataclass](self, "dataclass")];

  return v10;
}

- (DAFolderChange)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [DAFolderChange initWithCoder:];
  }

  v14.receiver = self;
  v14.super_class = DAFolderChange;
  v5 = [(DAFolderChange *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeIntForKey:@"DAFCChangeType"];
    v7 = v6;
    if (v6 >= 0xA)
    {
      v8 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v16 = v7;
        _os_log_impl(&dword_242505000, v8, OS_LOG_TYPE_FAULT, "Unknown DAItemChangeType %ld", buf, 0xCu);
      }

      v7 = 1;
    }

    [(DAFolderChange *)v5 setChangeType:v7];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DAFCFolderId"];
    [(DAFolderChange *)v5 setFolderId:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DAFCParentFolderId"];
    [(DAFolderChange *)v5 setParentFolderId:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DAFCDisplayName"];
    [(DAFolderChange *)v5 setDisplayName:v11];

    -[DAFolderChange setDataclass:](v5, "setDataclass:", [coderCopy decodeIntForKey:@"DAFCDataclass"]);
    -[DAFolderChange setRenameOnCollision:](v5, "setRenameOnCollision:", [coderCopy decodeBoolForKey:@"DAFCRenameOnCollision"]);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [DAFolderChange encodeWithCoder:];
  }

  [coderCopy encodeInt:-[DAFolderChange changeType](self forKey:{"changeType"), @"DAFCChangeType"}];
  folderId = [(DAFolderChange *)self folderId];
  [coderCopy encodeObject:folderId forKey:@"DAFCFolderId"];

  parentFolderId = [(DAFolderChange *)self parentFolderId];
  [coderCopy encodeObject:parentFolderId forKey:@"DAFCParentFolderId"];

  displayName = [(DAFolderChange *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"DAFCDisplayName"];

  [coderCopy encodeInt:-[DAFolderChange dataclass](self forKey:{"dataclass"), @"DAFCDataclass"}];
  [coderCopy encodeBool:-[DAFolderChange renameOnCollision](self forKey:{"renameOnCollision"), @"DAFCRenameOnCollision"}];
}

- (DAFolderChangeConsumer)consumer
{
  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  return WeakRetained;
}

- (void)initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  *v0 = v3;

  return [v3 handleFailureInMethod:v2 object:v1 file:@"DAFolderChange.m" lineNumber:35 description:@"Modify change types require a folder id"];
}

- (void)initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:.cold.4()
{
  OUTLINED_FUNCTION_2();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  *v0 = v3;

  return [v3 handleFailureInMethod:v2 object:v1 file:@"DAFolderChange.m" lineNumber:32 description:@"Modify change types require a display name"];
}

- (void)initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:.cold.5()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:.cold.6()
{
  OUTLINED_FUNCTION_2();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  *v0 = v3;

  return [v3 handleFailureInMethod:v2 object:v1 file:@"DAFolderChange.m" lineNumber:28 description:@"Add change types require a display name"];
}

- (void)initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:.cold.7()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)encodeWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end