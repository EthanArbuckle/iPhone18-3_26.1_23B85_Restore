@interface EDAttachmentMetadata
+ (id)attachmentMetadataFromRow:(id)a3;
- (EDAttachmentMetadata)initWithAttachmentID:(id)a3 attachmentHash:(id)a4 nameOnDisk:(id)a5 size:(id)a6 downloadDate:(id)a7 viewCount:(id)a8 lastViewed:(id)a9 viewCountByTapped:(id)a10;
- (id)description;
@end

@implementation EDAttachmentMetadata

- (EDAttachmentMetadata)initWithAttachmentID:(id)a3 attachmentHash:(id)a4 nameOnDisk:(id)a5 size:(id)a6 downloadDate:(id)a7 viewCount:(id)a8 lastViewed:(id)a9 viewCountByTapped:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v21 = a9;
  v17 = a10;
  v28.receiver = self;
  v28.super_class = EDAttachmentMetadata;
  v18 = [(EDAttachmentMetadata *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_attachmentID, a3);
    objc_storeStrong(&v19->_attachmentHash, a4);
    objc_storeStrong(&v19->_nameOnDisk, a5);
    objc_storeStrong(&v19->_size, a6);
    objc_storeStrong(&v19->_downloadDate, a7);
    objc_storeStrong(&v19->_viewCount, a8);
    objc_storeStrong(&v19->_lastViewed, a9);
    objc_storeStrong(&v19->_viewCountByTapped, a10);
  }

  return v19;
}

- (id)description
{
  v31[8] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v30 = [(EDAttachmentMetadata *)self attachmentID];
  v29 = [v3 stringWithFormat:@"attachmentID: %@", v30];
  v31[0] = v29;
  v4 = MEMORY[0x1E696AEC0];
  v28 = [(EDAttachmentMetadata *)self attachmentHash];
  v27 = [v4 stringWithFormat:@"attachmentHash: %@", v28];
  v31[1] = v27;
  v5 = MEMORY[0x1E696AEC0];
  v26 = [(EDAttachmentMetadata *)self nameOnDisk];
  v25 = [v5 stringWithFormat:@"nameOnDisk: %@", v26];
  v31[2] = v25;
  v6 = MEMORY[0x1E696AEC0];
  v24 = [(EDAttachmentMetadata *)self downloadDate];
  v7 = [v6 stringWithFormat:@"downloadDate: %@", v24];
  v31[3] = v7;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [(EDAttachmentMetadata *)self size];
  v10 = [v8 stringWithFormat:@"size: %@", v9];
  v31[4] = v10;
  v11 = MEMORY[0x1E696AEC0];
  v12 = [(EDAttachmentMetadata *)self viewCount];
  v13 = [v11 stringWithFormat:@"viewCount: %@", v12];
  v31[5] = v13;
  v14 = MEMORY[0x1E696AEC0];
  v15 = [(EDAttachmentMetadata *)self lastViewed];
  v16 = [v14 stringWithFormat:@"lastViewed: %@", v15];
  v31[6] = v16;
  v17 = MEMORY[0x1E696AEC0];
  v18 = [(EDAttachmentMetadata *)self viewCountByTapped];
  v19 = [v17 stringWithFormat:@"viewCountByTapped: %@", v18];
  v31[7] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:8];

  v21 = [v20 componentsJoinedByString:@"\n"];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)attachmentMetadataFromRow:(id)a3
{
  v3 = a3;
  v4 = [EDAttachmentMetadata alloc];
  v5 = [v3 objectForKeyedSubscript:@"attachment"];
  v6 = [v5 numberValue];
  v7 = [v3 objectForKeyedSubscript:@"file_name_on_file_system"];
  v8 = [v7 stringValue];
  v9 = [(EDAttachmentMetadata *)v4 initWithAttachmentID:v6 nameOnDisk:v8];

  return v9;
}

@end