@interface DOCStaticBadgedFolderThumbnailRequest
- (DOCStaticBadgedFolderThumbnailRequest)initWithFolderType:(unint64_t)a3 descriptor:(id)a4;
- (void)generateThumbnailWithCompletionHandler:(id)a3;
@end

@implementation DOCStaticBadgedFolderThumbnailRequest

- (DOCStaticBadgedFolderThumbnailRequest)initWithFolderType:(unint64_t)a3 descriptor:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DOCStaticBadgedFolderThumbnailRequest;
  v8 = [(DOCStaticBadgedFolderThumbnailRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_folderType = a3;
    objc_storeStrong(&v8->_descriptor, a4);
  }

  return v9;
}

- (void)generateThumbnailWithCompletionHandler:(id)a3
{
  v6 = a3;
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
  v6[2](v6, v5, 0);
}

- (void)generateThumbnailWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end