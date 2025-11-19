@interface DOCPlainFolderThumbnailRequest
- (DOCPlainFolderThumbnailRequest)initWithNode:(id)a3 descriptor:(id)a4;
- (void)generateThumbnailWithCompletionHandler:(id)a3;
@end

@implementation DOCPlainFolderThumbnailRequest

- (DOCPlainFolderThumbnailRequest)initWithNode:(id)a3 descriptor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DOCPlainFolderThumbnailRequest;
  v9 = [(DOCPlainFolderThumbnailRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_node, a3);
    objc_storeStrong(&v10->_descriptor, a4);
  }

  return v10;
}

- (void)generateThumbnailWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [DOCFolderIcon alloc];
  node = self->_node;
  [(DOCThumbnailDescriptor *)self->_descriptor size];
  v8 = v7;
  v10 = v9;
  [(DOCThumbnailDescriptor *)self->_descriptor scale];
  v12 = [(DOCFolderIcon *)v5 initWithNode:node size:v8 scale:v10, v11];
  v13 = [(DOCFolderIcon *)v12 imageWithMinimalIO];
  v4[2](v4, v13, 0);

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__DOCPlainFolderThumbnailRequest_generateThumbnailWithCompletionHandler___block_invoke;
  v15[3] = &unk_278FB39F0;
  v16 = v4;
  v14 = v4;
  [(DOCFolderIcon *)v12 fetchImageWithCompletionHandler:v15];
}

@end