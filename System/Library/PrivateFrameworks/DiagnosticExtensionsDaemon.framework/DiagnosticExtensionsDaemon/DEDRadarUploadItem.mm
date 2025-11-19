@interface DEDRadarUploadItem
- (DEDRadarUploadItem)initWithUploadTask:(id)a3 andAttachment:(id)a4;
- (id)description;
@end

@implementation DEDRadarUploadItem

- (DEDRadarUploadItem)initWithUploadTask:(id)a3 andAttachment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DEDRadarUploadItem;
  v8 = [(DEDRadarUploadItem *)&v14 init];
  if (v8)
  {
    -[DEDRadarUploadItem setTaskIdentifier:](v8, "setTaskIdentifier:", [v6 taskIdentifier]);
    [(DEDAttachmentItem *)v8 setAttachedPath:v7];
    [(DEDRadarUploadItem *)v8 setTotalBytesSent:0];
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [(DEDAttachmentItem *)v8 attachedPath];
    v11 = [v10 path];
    v12 = [v9 attributesOfItemAtPath:v11 error:0];
    -[DEDRadarUploadItem setTotalBytesExpectedToSend:](v8, "setTotalBytesExpectedToSend:", [v12 fileSize]);

    [(DEDRadarUploadItem *)v8 setIsUploaded:0];
  }

  return v8;
}

- (id)description
{
  v16[5] = *MEMORY[0x277D85DE8];
  v15[0] = @"taskIdentifier";
  v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:{-[DEDRadarUploadItem taskIdentifier](self, "taskIdentifier")}];
  v16[0] = v3;
  v15[1] = @"attachedPath";
  v4 = [(DEDAttachmentItem *)self attachedPath];
  v16[1] = v4;
  v15[2] = @"totalBytesSent";
  v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{-[DEDRadarUploadItem totalBytesSent](self, "totalBytesSent")}];
  v16[2] = v5;
  v15[3] = @"totalBytesExpectedToSend";
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{-[DEDRadarUploadItem totalBytesExpectedToSend](self, "totalBytesExpectedToSend")}];
  v16[3] = v6;
  v15[4] = @"isUploaded";
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", -[DEDRadarUploadItem isUploaded](self, "isUploaded")];
  v16[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];

  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"%@: %@", v11, v8];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end