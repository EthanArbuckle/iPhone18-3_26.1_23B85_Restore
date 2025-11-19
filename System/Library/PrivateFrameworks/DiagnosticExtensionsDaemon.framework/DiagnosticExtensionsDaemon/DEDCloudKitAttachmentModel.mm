@interface DEDCloudKitAttachmentModel
- (DEDCloudKitAttachmentModel)initWithURL:(id)a3 withQueueItem:(id)a4 parameters:(id)a5;
@end

@implementation DEDCloudKitAttachmentModel

- (DEDCloudKitAttachmentModel)initWithURL:(id)a3 withQueueItem:(id)a4 parameters:(id)a5
{
  v8 = a3;
  v9 = a4;
  v27.receiver = self;
  v27.super_class = DEDCloudKitAttachmentModel;
  v10 = [(DEDCloudKitBaseModel *)&v27 initModelWithDictionary:a5];
  v11 = v10;
  if (v10)
  {
    [(DEDCloudKitAttachmentModel *)v10 setUrl:v8];
    [(DEDCloudKitAttachmentModel *)v11 setQueueItem:v9];
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [v8 path];
    v14 = [v12 attributesOfItemAtPath:v13 error:0];
    v15 = [v14 fileSize];

    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v15];
    [(DEDCloudKitAttachmentModel *)v11 setFileSize:v16];

    v17 = objc_alloc(MEMORY[0x277CBC190]);
    v18 = [(DEDCloudKitAttachmentModel *)v11 url];
    v19 = [v17 initWithFileURL:v18];

    v20 = [(DEDCloudKitBaseModel *)v11 cloudKitModel];
    [v20 setObject:v19 forKeyedSubscript:@"asset"];

    v21 = [(DEDCloudKitAttachmentModel *)v11 url];
    v22 = [v21 lastPathComponent];
    v23 = [(DEDCloudKitBaseModel *)v11 cloudKitModel];
    [v23 setObject:v22 forKeyedSubscript:@"fileName"];

    v24 = [(DEDCloudKitAttachmentModel *)v11 queueItem];
    v25 = [(DEDCloudKitBaseModel *)v11 cloudKitModel];
    [v25 setObject:v24 forKeyedSubscript:@"queueItem"];
  }

  return v11;
}

@end