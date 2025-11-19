@interface DCDocumentInfoCollectionActivityItemSource
- (id)activityViewController:(id)a3 attachmentNameForActivityType:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation DCDocumentInfoCollectionActivityItemSource

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [(DCActivityItemSource *)self docInfoCollection];
  v5 = [DCDocCamPDFGenerator versionPDFPathForDocumentInfoCollection:v4];
  v6 = [v3 fileURLWithPath:v5];

  return v6;
}

- (id)activityViewController:(id)a3 attachmentNameForActivityType:(id)a4
{
  v4 = [(DCActivityItemSource *)self docInfoCollection:a3];
  v5 = [v4 title];

  v6 = UTTypeCopyPreferredTagWithClass(*MEMORY[0x277CC2108], *MEMORY[0x277CC1F58]);
  if (v6)
  {
    v7 = [v5 pathExtension];
    v8 = [v7 isEqual:v6];

    if ((v8 & 1) == 0)
    {
      v9 = [v5 stringByAppendingPathExtension:v6];

      v5 = v9;
    }
  }

  return v5;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v5 = MEMORY[0x277CBEBC0];
  v6 = a4;
  v7 = [(DCActivityItemSource *)self docInfoCollection];
  v8 = [DCDocCamPDFGenerator versionPDFPathForDocumentInfoCollection:v7];
  v9 = [v5 fileURLWithPath:v8];

  LODWORD(v5) = [v6 isEqualToString:*MEMORY[0x277D54720]];
  if (v5)
  {

    v9 = 0;
  }

  return v9;
}

@end