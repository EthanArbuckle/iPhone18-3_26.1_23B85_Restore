@interface CRKFileWrapperBackedFileSystemNode
- (BOOL)writeToURL:(id)l error:(id *)error;
- (CRKFileWrapperBackedFileSystemNode)initWithFileWrapper:(id)wrapper parentFileWrapper:(id)fileWrapper;
- (NSData)content;
- (NSDictionary)children;
- (NSString)fileName;
- (id)addChildWithDescriptor:(id)descriptor;
- (int64_t)type;
- (void)removeFromParent;
- (void)setFileName:(id)name;
@end

@implementation CRKFileWrapperBackedFileSystemNode

- (CRKFileWrapperBackedFileSystemNode)initWithFileWrapper:(id)wrapper parentFileWrapper:(id)fileWrapper
{
  wrapperCopy = wrapper;
  fileWrapperCopy = fileWrapper;
  v12.receiver = self;
  v12.super_class = CRKFileWrapperBackedFileSystemNode;
  v9 = [(CRKFileWrapperBackedFileSystemNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileWrapper, wrapper);
    objc_storeStrong(&v10->_parentFileWrapper, fileWrapper);
  }

  return v10;
}

- (NSString)fileName
{
  fileWrapper = [(CRKFileWrapperBackedFileSystemNode *)self fileWrapper];
  filename = [fileWrapper filename];

  return filename;
}

- (void)setFileName:(id)name
{
  nameCopy = name;
  fileWrapper = [(CRKFileWrapperBackedFileSystemNode *)self fileWrapper];
  [fileWrapper setFilename:nameCopy];
}

- (int64_t)type
{
  fileWrapper = [(CRKFileWrapperBackedFileSystemNode *)self fileWrapper];
  v3 = [fileWrapper isDirectory] ^ 1;

  return v3;
}

- (NSData)content
{
  fileWrapper = [(CRKFileWrapperBackedFileSystemNode *)self fileWrapper];
  regularFileContents = [fileWrapper regularFileContents];

  return regularFileContents;
}

- (NSDictionary)children
{
  fileWrapper = [(CRKFileWrapperBackedFileSystemNode *)self fileWrapper];
  fileWrappers = [fileWrapper fileWrappers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__CRKFileWrapperBackedFileSystemNode_children__block_invoke;
  v7[3] = &unk_278DC2678;
  v7[4] = self;
  v5 = [fileWrappers crk_mapToDictionary:v7];

  return v5;
}

void __46__CRKFileWrapperBackedFileSystemNode_children__block_invoke(uint64_t a1, void *a2, void *a3, void (**a4)(void, void, void))
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [CRKFileWrapperBackedFileSystemNode alloc];
  v13 = [*(a1 + 32) fileWrapper];
  v12 = [(CRKFileWrapperBackedFileSystemNode *)v11 initWithFileWrapper:v9 parentFileWrapper:v13];

  (a4)[2](v8, v10, v12);
}

- (id)addChildWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  type = [descriptorCopy type];
  if (type == 1)
  {
    v8 = objc_alloc(MEMORY[0x277CCAA20]);
    content = [descriptorCopy content];
    v7 = [v8 initRegularFileWithContents:content];

    goto LABEL_5;
  }

  if (!type)
  {
    v6 = objc_alloc(MEMORY[0x277CCAA20]);
    v7 = [v6 initDirectoryWithFileWrappers:MEMORY[0x277CBEC10]];
LABEL_5:
    fileName = [descriptorCopy fileName];
    [v7 setFilename:fileName];

    fileName2 = [descriptorCopy fileName];
    [v7 setPreferredFilename:fileName2];

    fileWrapper = [(CRKFileWrapperBackedFileSystemNode *)self fileWrapper];
    v13 = [fileWrapper addFileWrapper:v7];

    v14 = [CRKFileWrapperBackedFileSystemNode alloc];
    fileWrapper2 = [(CRKFileWrapperBackedFileSystemNode *)self fileWrapper];
    v16 = [(CRKFileWrapperBackedFileSystemNode *)v14 initWithFileWrapper:v7 parentFileWrapper:fileWrapper2];

    goto LABEL_7;
  }

  v16 = 0;
LABEL_7:

  return v16;
}

- (void)removeFromParent
{
  parentFileWrapper = [(CRKFileWrapperBackedFileSystemNode *)self parentFileWrapper];
  fileWrapper = [(CRKFileWrapperBackedFileSystemNode *)self fileWrapper];
  [parentFileWrapper removeFileWrapper:fileWrapper];
}

- (BOOL)writeToURL:(id)l error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  fileWrapper = [(CRKFileWrapperBackedFileSystemNode *)self fileWrapper];
  if ([fileWrapper writeToURL:lCopy options:1 originalContentsURL:0 error:error])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v13 = *MEMORY[0x277CCA110];
    v14[0] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    path = [lCopy path];
    v11 = [defaultManager setAttributes:v9 ofItemAtPath:path error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end