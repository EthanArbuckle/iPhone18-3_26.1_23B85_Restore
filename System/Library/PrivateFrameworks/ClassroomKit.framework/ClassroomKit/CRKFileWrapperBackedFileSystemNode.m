@interface CRKFileWrapperBackedFileSystemNode
- (BOOL)writeToURL:(id)a3 error:(id *)a4;
- (CRKFileWrapperBackedFileSystemNode)initWithFileWrapper:(id)a3 parentFileWrapper:(id)a4;
- (NSData)content;
- (NSDictionary)children;
- (NSString)fileName;
- (id)addChildWithDescriptor:(id)a3;
- (int64_t)type;
- (void)removeFromParent;
- (void)setFileName:(id)a3;
@end

@implementation CRKFileWrapperBackedFileSystemNode

- (CRKFileWrapperBackedFileSystemNode)initWithFileWrapper:(id)a3 parentFileWrapper:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRKFileWrapperBackedFileSystemNode;
  v9 = [(CRKFileWrapperBackedFileSystemNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileWrapper, a3);
    objc_storeStrong(&v10->_parentFileWrapper, a4);
  }

  return v10;
}

- (NSString)fileName
{
  v2 = [(CRKFileWrapperBackedFileSystemNode *)self fileWrapper];
  v3 = [v2 filename];

  return v3;
}

- (void)setFileName:(id)a3
{
  v4 = a3;
  v5 = [(CRKFileWrapperBackedFileSystemNode *)self fileWrapper];
  [v5 setFilename:v4];
}

- (int64_t)type
{
  v2 = [(CRKFileWrapperBackedFileSystemNode *)self fileWrapper];
  v3 = [v2 isDirectory] ^ 1;

  return v3;
}

- (NSData)content
{
  v2 = [(CRKFileWrapperBackedFileSystemNode *)self fileWrapper];
  v3 = [v2 regularFileContents];

  return v3;
}

- (NSDictionary)children
{
  v3 = [(CRKFileWrapperBackedFileSystemNode *)self fileWrapper];
  v4 = [v3 fileWrappers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__CRKFileWrapperBackedFileSystemNode_children__block_invoke;
  v7[3] = &unk_278DC2678;
  v7[4] = self;
  v5 = [v4 crk_mapToDictionary:v7];

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

- (id)addChildWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 == 1)
  {
    v8 = objc_alloc(MEMORY[0x277CCAA20]);
    v9 = [v4 content];
    v7 = [v8 initRegularFileWithContents:v9];

    goto LABEL_5;
  }

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCAA20]);
    v7 = [v6 initDirectoryWithFileWrappers:MEMORY[0x277CBEC10]];
LABEL_5:
    v10 = [v4 fileName];
    [v7 setFilename:v10];

    v11 = [v4 fileName];
    [v7 setPreferredFilename:v11];

    v12 = [(CRKFileWrapperBackedFileSystemNode *)self fileWrapper];
    v13 = [v12 addFileWrapper:v7];

    v14 = [CRKFileWrapperBackedFileSystemNode alloc];
    v15 = [(CRKFileWrapperBackedFileSystemNode *)self fileWrapper];
    v16 = [(CRKFileWrapperBackedFileSystemNode *)v14 initWithFileWrapper:v7 parentFileWrapper:v15];

    goto LABEL_7;
  }

  v16 = 0;
LABEL_7:

  return v16;
}

- (void)removeFromParent
{
  v4 = [(CRKFileWrapperBackedFileSystemNode *)self parentFileWrapper];
  v3 = [(CRKFileWrapperBackedFileSystemNode *)self fileWrapper];
  [v4 removeFileWrapper:v3];
}

- (BOOL)writeToURL:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(CRKFileWrapperBackedFileSystemNode *)self fileWrapper];
  if ([v7 writeToURL:v6 options:1 originalContentsURL:0 error:a4])
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = *MEMORY[0x277CCA110];
    v14[0] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v10 = [v6 path];
    v11 = [v8 setAttributes:v9 ofItemAtPath:v10 error:a4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end