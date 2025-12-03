@interface DCDocumentInfoCollectionActivityItemSource
- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation DCDocumentInfoCollectionActivityItemSource

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = MEMORY[0x277CBEBC0];
  docInfoCollection = [(DCActivityItemSource *)self docInfoCollection];
  v5 = [DCDocCamPDFGenerator versionPDFPathForDocumentInfoCollection:docInfoCollection];
  v6 = [v3 fileURLWithPath:v5];

  return v6;
}

- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type
{
  v4 = [(DCActivityItemSource *)self docInfoCollection:controller];
  title = [v4 title];

  v6 = UTTypeCopyPreferredTagWithClass(*MEMORY[0x277CC2108], *MEMORY[0x277CC1F58]);
  if (v6)
  {
    pathExtension = [title pathExtension];
    v8 = [pathExtension isEqual:v6];

    if ((v8 & 1) == 0)
    {
      v9 = [title stringByAppendingPathExtension:v6];

      title = v9;
    }
  }

  return title;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  v5 = MEMORY[0x277CBEBC0];
  typeCopy = type;
  docInfoCollection = [(DCActivityItemSource *)self docInfoCollection];
  v8 = [DCDocCamPDFGenerator versionPDFPathForDocumentInfoCollection:docInfoCollection];
  v9 = [v5 fileURLWithPath:v8];

  LODWORD(v5) = [typeCopy isEqualToString:*MEMORY[0x277D54720]];
  if (v5)
  {

    v9 = 0;
  }

  return v9;
}

@end