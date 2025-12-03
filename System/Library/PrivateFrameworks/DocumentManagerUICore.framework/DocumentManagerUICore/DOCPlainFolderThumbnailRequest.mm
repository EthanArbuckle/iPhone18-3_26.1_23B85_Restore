@interface DOCPlainFolderThumbnailRequest
- (DOCPlainFolderThumbnailRequest)initWithNode:(id)node descriptor:(id)descriptor;
- (void)generateThumbnailWithCompletionHandler:(id)handler;
@end

@implementation DOCPlainFolderThumbnailRequest

- (DOCPlainFolderThumbnailRequest)initWithNode:(id)node descriptor:(id)descriptor
{
  nodeCopy = node;
  descriptorCopy = descriptor;
  v12.receiver = self;
  v12.super_class = DOCPlainFolderThumbnailRequest;
  v9 = [(DOCPlainFolderThumbnailRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_node, node);
    objc_storeStrong(&v10->_descriptor, descriptor);
  }

  return v10;
}

- (void)generateThumbnailWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [DOCFolderIcon alloc];
  node = self->_node;
  [(DOCThumbnailDescriptor *)self->_descriptor size];
  v8 = v7;
  v10 = v9;
  [(DOCThumbnailDescriptor *)self->_descriptor scale];
  v12 = [(DOCFolderIcon *)v5 initWithNode:node size:v8 scale:v10, v11];
  imageWithMinimalIO = [(DOCFolderIcon *)v12 imageWithMinimalIO];
  handlerCopy[2](handlerCopy, imageWithMinimalIO, 0);

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__DOCPlainFolderThumbnailRequest_generateThumbnailWithCompletionHandler___block_invoke;
  v15[3] = &unk_278FB39F0;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(DOCFolderIcon *)v12 fetchImageWithCompletionHandler:v15];
}

@end