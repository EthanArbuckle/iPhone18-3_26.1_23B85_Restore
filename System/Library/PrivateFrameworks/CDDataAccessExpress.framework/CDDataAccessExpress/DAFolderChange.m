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
    [v19 handleFailureInMethod:a2 object:self file:@"DAFolderChange.m" lineNumber:38 description:{@"Can't handle folder change type %ld", a3}];
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
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [DAFolderChange initWithCoder:];
  }

  v14.receiver = self;
  v14.super_class = DAFolderChange;
  v5 = [(DAFolderChange *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeIntForKey:@"DAFCChangeType"];
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
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DAFCFolderId"];
    [(DAFolderChange *)v5 setFolderId:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DAFCParentFolderId"];
    [(DAFolderChange *)v5 setParentFolderId:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DAFCDisplayName"];
    [(DAFolderChange *)v5 setDisplayName:v11];

    -[DAFolderChange setDataclass:](v5, "setDataclass:", [v4 decodeIntForKey:@"DAFCDataclass"]);
    -[DAFolderChange setRenameOnCollision:](v5, "setRenameOnCollision:", [v4 decodeBoolForKey:@"DAFCRenameOnCollision"]);
  }

  v12 = *MEMORY[0x277D85DE8];
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