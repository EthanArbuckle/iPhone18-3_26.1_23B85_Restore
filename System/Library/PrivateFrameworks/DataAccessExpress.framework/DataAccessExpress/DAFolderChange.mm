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
    [currentHandler handleFailureInMethod:a2 object:self file:@"DAFolderChange.m" lineNumber:37 description:{@"Can't handle folder change type %ld", type}];
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
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [DAFolderChange initWithCoder:];
  }

  v10.receiver = self;
  v10.super_class = DAFolderChange;
  v5 = [(DAFolderChange *)&v10 init];
  if (v5)
  {
    -[DAFolderChange setChangeType:](v5, "setChangeType:", [coderCopy decodeIntForKey:@"DAFCChangeType"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DAFCFolderId"];
    [(DAFolderChange *)v5 setFolderId:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DAFCParentFolderId"];
    [(DAFolderChange *)v5 setParentFolderId:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DAFCDisplayName"];
    [(DAFolderChange *)v5 setDisplayName:v8];

    -[DAFolderChange setDataclass:](v5, "setDataclass:", [coderCopy decodeIntForKey:@"DAFCDataclass"]);
    -[DAFolderChange setRenameOnCollision:](v5, "setRenameOnCollision:", [coderCopy decodeBoolForKey:@"DAFCRenameOnCollision"]);
  }

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

  return [v3 handleFailureInMethod:v2 object:v1 file:@"DAFolderChange.m" lineNumber:34 description:@"Modify change types require a folder id"];
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

  return [v3 handleFailureInMethod:v2 object:v1 file:@"DAFolderChange.m" lineNumber:31 description:@"Modify change types require a display name"];
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

  return [v3 handleFailureInMethod:v2 object:v1 file:@"DAFolderChange.m" lineNumber:27 description:@"Add change types require a display name"];
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