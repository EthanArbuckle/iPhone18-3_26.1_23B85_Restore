@interface ICASAttachmentSnapshotData
- (ICASAttachmentSnapshotData)initWithAttachmentSnapshotSummary:(id)a3 docScanSnapshotSummary:(id)a4 drawingSnapshotSummary:(id)a5 tableSnapshotSummary:(id)a6;
- (id)toDict;
@end

@implementation ICASAttachmentSnapshotData

- (ICASAttachmentSnapshotData)initWithAttachmentSnapshotSummary:(id)a3 docScanSnapshotSummary:(id)a4 drawingSnapshotSummary:(id)a5 tableSnapshotSummary:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ICASAttachmentSnapshotData;
  v15 = [(ICASAttachmentSnapshotData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_attachmentSnapshotSummary, a3);
    objc_storeStrong(&v16->_docScanSnapshotSummary, a4);
    objc_storeStrong(&v16->_drawingSnapshotSummary, a5);
    objc_storeStrong(&v16->_tableSnapshotSummary, a6);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"attachmentSnapshotSummary";
  v3 = [(ICASAttachmentSnapshotData *)self attachmentSnapshotSummary];
  if (v3)
  {
    v4 = [(ICASAttachmentSnapshotData *)self attachmentSnapshotSummary];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v19[0] = v4;
  v18[1] = @"docScanSnapshotSummary";
  v6 = [(ICASAttachmentSnapshotData *)self docScanSnapshotSummary];
  if (v6)
  {
    v7 = [(ICASAttachmentSnapshotData *)self docScanSnapshotSummary];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v19[1] = v7;
  v18[2] = @"drawingSnapshotSummary";
  v9 = [(ICASAttachmentSnapshotData *)self drawingSnapshotSummary];
  if (v9)
  {
    v10 = [(ICASAttachmentSnapshotData *)self drawingSnapshotSummary];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v19[2] = v10;
  v18[3] = @"tableSnapshotSummary";
  v12 = [(ICASAttachmentSnapshotData *)self tableSnapshotSummary];
  if (v12)
  {
    v13 = [(ICASAttachmentSnapshotData *)self tableSnapshotSummary];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v19[3] = v13;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end