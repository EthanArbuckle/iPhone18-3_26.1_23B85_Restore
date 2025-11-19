@interface DOCThumbnailRequest
+ (id)iconRequestForNode:(id)a3 descriptor:(id)a4 thumbnailGenerator:(id)a5;
+ (id)iconRequestForURL:(id)a3 descriptor:(id)a4 thumbnailGenerator:(id)a5;
+ (id)requestForNode:(id)a3 descriptor:(id)a4 thumbnailGenerator:(id)a5;
- (void)generateThumbnailWithCompletionHandler:(id)a3;
@end

@implementation DOCThumbnailRequest

+ (id)requestForNode:(id)a3 descriptor:(id)a4 thumbnailGenerator:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    +[DOCThumbnailRequest requestForNode:descriptor:thumbnailGenerator:];
  }

  if ([v7 isActionable])
  {
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_16:
    +[DOCThumbnailRequest requestForNode:descriptor:thumbnailGenerator:];
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_17:
    +[DOCThumbnailRequest requestForNode:descriptor:thumbnailGenerator:];
    goto LABEL_6;
  }

  +[DOCThumbnailRequest requestForNode:descriptor:thumbnailGenerator:];
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_6:
  if ([v7 isRootItem] && (objc_msgSend(v7, "providerID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277D060B8]), v10, v11))
  {
    v12 = [[DOCVolumeThumbnailRequest alloc] initWithDescriptor:v8];
  }

  else if ([v7 isFolder])
  {
    v12 = [[DOCPlainFolderThumbnailRequest alloc] initWithNode:v7 descriptor:v8];
  }

  else
  {
    v12 = [[DOCRegularNodeThumbnailRequest alloc] initWithNode:v7 descriptor:v8 thumbnailGenerator:v9];
  }

  v13 = v12;

  return v13;
}

+ (id)iconRequestForURL:(id)a3 descriptor:(id)a4 thumbnailGenerator:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:
    +[DOCThumbnailRequest iconRequestForURL:descriptor:thumbnailGenerator:];
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  +[DOCThumbnailRequest iconRequestForURL:descriptor:thumbnailGenerator:];
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v9)
  {
    goto LABEL_4;
  }

LABEL_14:
  +[DOCThumbnailRequest iconRequestForURL:descriptor:thumbnailGenerator:];
LABEL_4:
  v16 = 0;
  v10 = [v7 getPromisedItemResourceValue:&v16 forKey:*MEMORY[0x277CBE7B8] error:0];
  v11 = v16;
  v12 = v11;
  v13 = 0;
  if (v10)
  {
    if ([v11 conformsToType:*MEMORY[0x277CE1D80]])
    {
      v14 = [[DOCPlainFolderThumbnailRequest alloc] initWithNode:0 descriptor:v8];
    }

    else
    {
      v14 = [[DOCIconThumbnailRequest alloc] initWithURL:v7 descriptor:v8 thumbnailGenerator:v9];
    }

    v13 = v14;
  }

  return v13;
}

+ (id)iconRequestForNode:(id)a3 descriptor:(id)a4 thumbnailGenerator:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_11:
    +[DOCThumbnailRequest iconRequestForNode:descriptor:thumbnailGenerator:];
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  +[DOCThumbnailRequest iconRequestForNode:descriptor:thumbnailGenerator:];
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v9)
  {
    goto LABEL_4;
  }

LABEL_12:
  +[DOCThumbnailRequest iconRequestForNode:descriptor:thumbnailGenerator:];
LABEL_4:
  v10 = [v7 contentType];
  v11 = [v10 conformsToType:*MEMORY[0x277CE1D80]];

  if (v11)
  {
    v12 = [[DOCPlainFolderThumbnailRequest alloc] initWithNode:v7 descriptor:v8];
  }

  else
  {
    v12 = [[DOCIconThumbnailRequest alloc] initWithNode:v7 descriptor:v8 thumbnailGenerator:v9];
  }

  v13 = v12;

  return v13;
}

- (void)generateThumbnailWithCompletionHandler:(id)a3
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:@"DOCThumbnailRequest.m" lineNumber:139 description:{@"Subclasses should override %@", v5}];
}

+ (void)requestForNode:descriptor:thumbnailGenerator:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"node" object:? file:? lineNumber:? description:?];
}

+ (void)requestForNode:descriptor:thumbnailGenerator:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)requestForNode:descriptor:thumbnailGenerator:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"descriptor" object:? file:? lineNumber:? description:?];
}

+ (void)requestForNode:descriptor:thumbnailGenerator:.cold.4()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"thumbnailGenerator" object:? file:? lineNumber:? description:?];
}

+ (void)iconRequestForURL:descriptor:thumbnailGenerator:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"url" object:? file:? lineNumber:? description:?];
}

+ (void)iconRequestForURL:descriptor:thumbnailGenerator:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"descriptor" object:? file:? lineNumber:? description:?];
}

+ (void)iconRequestForURL:descriptor:thumbnailGenerator:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"thumbnailGenerator" object:? file:? lineNumber:? description:?];
}

+ (void)iconRequestForNode:descriptor:thumbnailGenerator:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"node" object:? file:? lineNumber:? description:?];
}

+ (void)iconRequestForNode:descriptor:thumbnailGenerator:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"descriptor" object:? file:? lineNumber:? description:?];
}

+ (void)iconRequestForNode:descriptor:thumbnailGenerator:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"thumbnailGenerator" object:? file:? lineNumber:? description:?];
}

@end