@interface DOCStaticBadgedFolderThumbnailRequest
- (DOCStaticBadgedFolderThumbnailRequest)initWithFolderType:(unint64_t)type descriptor:(id)descriptor;
- (void)generateThumbnailWithCompletionHandler:(id)handler;
@end

@implementation DOCStaticBadgedFolderThumbnailRequest

- (DOCStaticBadgedFolderThumbnailRequest)initWithFolderType:(unint64_t)type descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v11.receiver = self;
  v11.super_class = DOCStaticBadgedFolderThumbnailRequest;
  v8 = [(DOCStaticBadgedFolderThumbnailRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_folderType = type;
    objc_storeStrong(&v8->_descriptor, descriptor);
  }

  return v9;
}

- (void)generateThumbnailWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [DOCThumbnailFolderIcon folderIconForDescriptor:self->_descriptor];
  if (!v4)
  {
    [DOCStaticBadgedFolderThumbnailRequest generateThumbnailWithCompletionHandler:];
  }

  if ([(DOCStaticBadgedFolderThumbnailRequest *)self onlyCallbackOnOverlayImage])
  {
    [v4 badgeForFolderType:self->_folderType];
  }

  else
  {
    [v4 badgedFolderIconForFolderType:self->_folderType style:{-[DOCThumbnailDescriptor style](self->_descriptor, "style")}];
  }
  v5 = ;
  handlerCopy[2](handlerCopy, v5, 0);
}

- (void)generateThumbnailWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end