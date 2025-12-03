@interface DOCThumbnailRequest
+ (id)iconRequestForNode:(id)node descriptor:(id)descriptor thumbnailGenerator:(id)generator;
+ (id)iconRequestForURL:(id)l descriptor:(id)descriptor thumbnailGenerator:(id)generator;
+ (id)requestForNode:(id)node descriptor:(id)descriptor thumbnailGenerator:(id)generator;
- (void)generateThumbnailWithCompletionHandler:(id)handler;
@end

@implementation DOCThumbnailRequest

+ (id)requestForNode:(id)node descriptor:(id)descriptor thumbnailGenerator:(id)generator
{
  nodeCopy = node;
  descriptorCopy = descriptor;
  generatorCopy = generator;
  if (!nodeCopy)
  {
    +[DOCThumbnailRequest requestForNode:descriptor:thumbnailGenerator:];
  }

  if ([nodeCopy isActionable])
  {
    if (descriptorCopy)
    {
      goto LABEL_5;
    }

LABEL_16:
    +[DOCThumbnailRequest requestForNode:descriptor:thumbnailGenerator:];
    if (generatorCopy)
    {
      goto LABEL_6;
    }

LABEL_17:
    +[DOCThumbnailRequest requestForNode:descriptor:thumbnailGenerator:];
    goto LABEL_6;
  }

  +[DOCThumbnailRequest requestForNode:descriptor:thumbnailGenerator:];
  if (!descriptorCopy)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (!generatorCopy)
  {
    goto LABEL_17;
  }

LABEL_6:
  if ([nodeCopy isRootItem] && (objc_msgSend(nodeCopy, "providerID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277D060B8]), v10, v11))
  {
    v12 = [[DOCVolumeThumbnailRequest alloc] initWithDescriptor:descriptorCopy];
  }

  else if ([nodeCopy isFolder])
  {
    v12 = [[DOCPlainFolderThumbnailRequest alloc] initWithNode:nodeCopy descriptor:descriptorCopy];
  }

  else
  {
    v12 = [[DOCRegularNodeThumbnailRequest alloc] initWithNode:nodeCopy descriptor:descriptorCopy thumbnailGenerator:generatorCopy];
  }

  v13 = v12;

  return v13;
}

+ (id)iconRequestForURL:(id)l descriptor:(id)descriptor thumbnailGenerator:(id)generator
{
  lCopy = l;
  descriptorCopy = descriptor;
  generatorCopy = generator;
  if (lCopy)
  {
    if (descriptorCopy)
    {
      goto LABEL_3;
    }

LABEL_13:
    +[DOCThumbnailRequest iconRequestForURL:descriptor:thumbnailGenerator:];
    if (generatorCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  +[DOCThumbnailRequest iconRequestForURL:descriptor:thumbnailGenerator:];
  if (!descriptorCopy)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (generatorCopy)
  {
    goto LABEL_4;
  }

LABEL_14:
  +[DOCThumbnailRequest iconRequestForURL:descriptor:thumbnailGenerator:];
LABEL_4:
  v16 = 0;
  v10 = [lCopy getPromisedItemResourceValue:&v16 forKey:*MEMORY[0x277CBE7B8] error:0];
  v11 = v16;
  v12 = v11;
  v13 = 0;
  if (v10)
  {
    if ([v11 conformsToType:*MEMORY[0x277CE1D80]])
    {
      v14 = [[DOCPlainFolderThumbnailRequest alloc] initWithNode:0 descriptor:descriptorCopy];
    }

    else
    {
      v14 = [[DOCIconThumbnailRequest alloc] initWithURL:lCopy descriptor:descriptorCopy thumbnailGenerator:generatorCopy];
    }

    v13 = v14;
  }

  return v13;
}

+ (id)iconRequestForNode:(id)node descriptor:(id)descriptor thumbnailGenerator:(id)generator
{
  nodeCopy = node;
  descriptorCopy = descriptor;
  generatorCopy = generator;
  if (nodeCopy)
  {
    if (descriptorCopy)
    {
      goto LABEL_3;
    }

LABEL_11:
    +[DOCThumbnailRequest iconRequestForNode:descriptor:thumbnailGenerator:];
    if (generatorCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  +[DOCThumbnailRequest iconRequestForNode:descriptor:thumbnailGenerator:];
  if (!descriptorCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (generatorCopy)
  {
    goto LABEL_4;
  }

LABEL_12:
  +[DOCThumbnailRequest iconRequestForNode:descriptor:thumbnailGenerator:];
LABEL_4:
  contentType = [nodeCopy contentType];
  v11 = [contentType conformsToType:*MEMORY[0x277CE1D80]];

  if (v11)
  {
    v12 = [[DOCPlainFolderThumbnailRequest alloc] initWithNode:nodeCopy descriptor:descriptorCopy];
  }

  else
  {
    v12 = [[DOCIconThumbnailRequest alloc] initWithNode:nodeCopy descriptor:descriptorCopy thumbnailGenerator:generatorCopy];
  }

  v13 = v12;

  return v13;
}

- (void)generateThumbnailWithCompletionHandler:(id)handler
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"DOCThumbnailRequest.m" lineNumber:139 description:{@"Subclasses should override %@", v5}];
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