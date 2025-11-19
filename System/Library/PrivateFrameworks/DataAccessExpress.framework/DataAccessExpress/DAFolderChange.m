@interface DAFolderChange
- (DAFolderChange)initWithCoder:(id)a3;
- (DAFolderChangeConsumer)consumer;
- (id)description;
- (id)initFolderChangeWithChangeType:(unint64_t)a3 folderId:(id)a4 parentFolderId:(id)a5 displayName:(id)a6 dataclass:(int64_t)a7 consumer:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAFolderChange

- (id)initFolderChangeWithChangeType:(unint64_t)a3 folderId:(id)a4 parentFolderId:(id)a5 displayName:(id)a6 dataclass:(int64_t)a7 consumer:(id)a8
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if (a7 != 1)
  {
    [DAFolderChange initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:];
  }

  if (a3 == 2)
  {
    if (v15)
    {
      goto LABEL_17;
    }

    [DAFolderChange initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:];
    goto LABEL_14;
  }

  if (a3 == 1)
  {
    if (v15)
    {
      if (v17)
      {
        goto LABEL_17;
      }
    }

    else
    {
      [DAFolderChange initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:];
      if (v17)
      {
        goto LABEL_17;
      }
    }

    [DAFolderChange initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:];
    goto LABEL_14;
  }

  if (a3)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"DAFolderChange.m" lineNumber:37 description:{@"Can't handle folder change type %ld", a3}];
    goto LABEL_16;
  }

  if (v16)
  {
    if (v17)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  [DAFolderChange initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:];
  if (!v17)
  {
LABEL_8:
    [DAFolderChange initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:];
LABEL_14:
    v19 = v24;
LABEL_16:
  }

LABEL_17:
  if ([v17 isEqualToString:@"70FB9178-576E-4CAA-A08E-F68D57BFD01E"])
  {
    [DAFolderChange initFolderChangeWithChangeType:folderId:parentFolderId:displayName:dataclass:consumer:];
  }

  v23.receiver = self;
  v23.super_class = DAFolderChange;
  v20 = [(DAFolderChange *)&v23 init];
  v21 = v20;
  if (v20)
  {
    [(DAFolderChange *)v20 setChangeType:a3];
    [(DAFolderChange *)v21 setFolderId:v15];
    [(DAFolderChange *)v21 setParentFolderId:v16];
    [(DAFolderChange *)v21 setDisplayName:v17];
    [(DAFolderChange *)v21 setDataclass:a7];
    [(DAFolderChange *)v21 setConsumer:v18];
  }

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(DAFolderChange *)self changeType];
  v7 = [(DAFolderChange *)self folderId];
  v8 = [(DAFolderChange *)self parentFolderId];
  v9 = [(DAFolderChange *)self displayName];
  v10 = [v3 stringWithFormat:@"%@ %p: changeType %ld folderId %@ parentFolderId %@ displayName %@ dataclass %ld", v5, self, v6, v7, v8, v9, -[DAFolderChange dataclass](self, "dataclass")];

  return v10;
}

- (DAFolderChange)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [DAFolderChange initWithCoder:];
  }

  v10.receiver = self;
  v10.super_class = DAFolderChange;
  v5 = [(DAFolderChange *)&v10 init];
  if (v5)
  {
    -[DAFolderChange setChangeType:](v5, "setChangeType:", [v4 decodeIntForKey:@"DAFCChangeType"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DAFCFolderId"];
    [(DAFolderChange *)v5 setFolderId:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DAFCParentFolderId"];
    [(DAFolderChange *)v5 setParentFolderId:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DAFCDisplayName"];
    [(DAFolderChange *)v5 setDisplayName:v8];

    -[DAFolderChange setDataclass:](v5, "setDataclass:", [v4 decodeIntForKey:@"DAFCDataclass"]);
    -[DAFolderChange setRenameOnCollision:](v5, "setRenameOnCollision:", [v4 decodeBoolForKey:@"DAFCRenameOnCollision"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  if (([v7 allowsKeyedCoding] & 1) == 0)
  {
    [DAFolderChange encodeWithCoder:];
  }

  [v7 encodeInt:-[DAFolderChange changeType](self forKey:{"changeType"), @"DAFCChangeType"}];
  v4 = [(DAFolderChange *)self folderId];
  [v7 encodeObject:v4 forKey:@"DAFCFolderId"];

  v5 = [(DAFolderChange *)self parentFolderId];
  [v7 encodeObject:v5 forKey:@"DAFCParentFolderId"];

  v6 = [(DAFolderChange *)self displayName];
  [v7 encodeObject:v6 forKey:@"DAFCDisplayName"];

  [v7 encodeInt:-[DAFolderChange dataclass](self forKey:{"dataclass"), @"DAFCDataclass"}];
  [v7 encodeBool:-[DAFolderChange renameOnCollision](self forKey:{"renameOnCollision"), @"DAFCRenameOnCollision"}];
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