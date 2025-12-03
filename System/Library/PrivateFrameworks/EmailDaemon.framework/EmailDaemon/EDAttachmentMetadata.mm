@interface EDAttachmentMetadata
+ (id)attachmentMetadataFromRow:(id)row;
- (EDAttachmentMetadata)initWithAttachmentID:(id)d attachmentHash:(id)hash nameOnDisk:(id)disk size:(id)size downloadDate:(id)date viewCount:(id)count lastViewed:(id)viewed viewCountByTapped:(id)self0;
- (id)description;
@end

@implementation EDAttachmentMetadata

- (EDAttachmentMetadata)initWithAttachmentID:(id)d attachmentHash:(id)hash nameOnDisk:(id)disk size:(id)size downloadDate:(id)date viewCount:(id)count lastViewed:(id)viewed viewCountByTapped:(id)self0
{
  dCopy = d;
  hashCopy = hash;
  diskCopy = disk;
  sizeCopy = size;
  dateCopy = date;
  countCopy = count;
  viewedCopy = viewed;
  tappedCopy = tapped;
  v28.receiver = self;
  v28.super_class = EDAttachmentMetadata;
  v18 = [(EDAttachmentMetadata *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_attachmentID, d);
    objc_storeStrong(&v19->_attachmentHash, hash);
    objc_storeStrong(&v19->_nameOnDisk, disk);
    objc_storeStrong(&v19->_size, size);
    objc_storeStrong(&v19->_downloadDate, date);
    objc_storeStrong(&v19->_viewCount, count);
    objc_storeStrong(&v19->_lastViewed, viewed);
    objc_storeStrong(&v19->_viewCountByTapped, tapped);
  }

  return v19;
}

- (id)description
{
  v31[8] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  attachmentID = [(EDAttachmentMetadata *)self attachmentID];
  v29 = [v3 stringWithFormat:@"attachmentID: %@", attachmentID];
  v31[0] = v29;
  v4 = MEMORY[0x1E696AEC0];
  attachmentHash = [(EDAttachmentMetadata *)self attachmentHash];
  v27 = [v4 stringWithFormat:@"attachmentHash: %@", attachmentHash];
  v31[1] = v27;
  v5 = MEMORY[0x1E696AEC0];
  nameOnDisk = [(EDAttachmentMetadata *)self nameOnDisk];
  v25 = [v5 stringWithFormat:@"nameOnDisk: %@", nameOnDisk];
  v31[2] = v25;
  v6 = MEMORY[0x1E696AEC0];
  downloadDate = [(EDAttachmentMetadata *)self downloadDate];
  v7 = [v6 stringWithFormat:@"downloadDate: %@", downloadDate];
  v31[3] = v7;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [(EDAttachmentMetadata *)self size];
  v10 = [v8 stringWithFormat:@"size: %@", v9];
  v31[4] = v10;
  v11 = MEMORY[0x1E696AEC0];
  viewCount = [(EDAttachmentMetadata *)self viewCount];
  v13 = [v11 stringWithFormat:@"viewCount: %@", viewCount];
  v31[5] = v13;
  v14 = MEMORY[0x1E696AEC0];
  lastViewed = [(EDAttachmentMetadata *)self lastViewed];
  v16 = [v14 stringWithFormat:@"lastViewed: %@", lastViewed];
  v31[6] = v16;
  v17 = MEMORY[0x1E696AEC0];
  viewCountByTapped = [(EDAttachmentMetadata *)self viewCountByTapped];
  v19 = [v17 stringWithFormat:@"viewCountByTapped: %@", viewCountByTapped];
  v31[7] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:8];

  v21 = [v20 componentsJoinedByString:@"\n"];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)attachmentMetadataFromRow:(id)row
{
  rowCopy = row;
  v4 = [EDAttachmentMetadata alloc];
  v5 = [rowCopy objectForKeyedSubscript:@"attachment"];
  numberValue = [v5 numberValue];
  v7 = [rowCopy objectForKeyedSubscript:@"file_name_on_file_system"];
  stringValue = [v7 stringValue];
  v9 = [(EDAttachmentMetadata *)v4 initWithAttachmentID:numberValue nameOnDisk:stringValue];

  return v9;
}

@end