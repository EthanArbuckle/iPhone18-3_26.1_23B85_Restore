@interface DEDCloudKitAttachmentModel
- (DEDCloudKitAttachmentModel)initWithURL:(id)l withQueueItem:(id)item parameters:(id)parameters;
@end

@implementation DEDCloudKitAttachmentModel

- (DEDCloudKitAttachmentModel)initWithURL:(id)l withQueueItem:(id)item parameters:(id)parameters
{
  lCopy = l;
  itemCopy = item;
  v27.receiver = self;
  v27.super_class = DEDCloudKitAttachmentModel;
  v10 = [(DEDCloudKitBaseModel *)&v27 initModelWithDictionary:parameters];
  v11 = v10;
  if (v10)
  {
    [(DEDCloudKitAttachmentModel *)v10 setUrl:lCopy];
    [(DEDCloudKitAttachmentModel *)v11 setQueueItem:itemCopy];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [lCopy path];
    v14 = [defaultManager attributesOfItemAtPath:path error:0];
    fileSize = [v14 fileSize];

    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:fileSize];
    [(DEDCloudKitAttachmentModel *)v11 setFileSize:v16];

    v17 = objc_alloc(MEMORY[0x277CBC190]);
    v18 = [(DEDCloudKitAttachmentModel *)v11 url];
    v19 = [v17 initWithFileURL:v18];

    cloudKitModel = [(DEDCloudKitBaseModel *)v11 cloudKitModel];
    [cloudKitModel setObject:v19 forKeyedSubscript:@"asset"];

    v21 = [(DEDCloudKitAttachmentModel *)v11 url];
    lastPathComponent = [v21 lastPathComponent];
    cloudKitModel2 = [(DEDCloudKitBaseModel *)v11 cloudKitModel];
    [cloudKitModel2 setObject:lastPathComponent forKeyedSubscript:@"fileName"];

    queueItem = [(DEDCloudKitAttachmentModel *)v11 queueItem];
    cloudKitModel3 = [(DEDCloudKitBaseModel *)v11 cloudKitModel];
    [cloudKitModel3 setObject:queueItem forKeyedSubscript:@"queueItem"];
  }

  return v11;
}

@end