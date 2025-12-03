@interface NEIssueLinkPresentationSource
- (LPLinkMetadata)linkMetadata;
- (NEIssueLinkPresentationSource)initWithIssue:(id)issue;
- (id)imageItemProviderFromIssue:(id)issue;
- (id)urlFromIssue:(id)issue;
@end

@implementation NEIssueLinkPresentationSource

- (NEIssueLinkPresentationSource)initWithIssue:(id)issue
{
  issueCopy = issue;
  v9.receiver = self;
  v9.super_class = NEIssueLinkPresentationSource;
  v6 = [(NEIssueLinkPresentationSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_issue, issue);
  }

  return v7;
}

- (LPLinkMetadata)linkMetadata
{
  issue = [(NEIssueLinkPresentationSource *)self issue];
  v4 = [(NEIssueLinkPresentationSource *)self titleFromIssue:issue];

  issue2 = [(NEIssueLinkPresentationSource *)self issue];
  v6 = [(NEIssueLinkPresentationSource *)self subtitleFromIssue:issue2];

  issue3 = [(NEIssueLinkPresentationSource *)self issue];
  v8 = [(NEIssueLinkPresentationSource *)self urlFromIssue:issue3];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v4, v6];
  issue4 = [(NEIssueLinkPresentationSource *)self issue];
  v11 = [(NEIssueLinkPresentationSource *)self imageItemProviderFromIssue:issue4];

  v12 = [[NELinkMetadataSource alloc] initWithTitle:v9 url:v8 imageProvider:v11 iconProvider:v11];
  linkMetadata = [(NELinkMetadataSource *)v12 linkMetadata];

  return linkMetadata;
}

- (id)imageItemProviderFromIssue:(id)issue
{
  issueCopy = issue;
  v4 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  identifier = [*MEMORY[0x1E6982F28] identifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__NEIssueLinkPresentationSource_imageItemProviderFromIssue___block_invoke;
  v8[3] = &unk_1E84CD0B8;
  v9 = issueCopy;
  v6 = issueCopy;
  [v4 registerItemForTypeIdentifier:identifier loadHandler:v8];

  return v4;
}

void __60__NEIssueLinkPresentationSource_imageItemProviderFromIssue___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = v4;
  v3 = FCFetchThumbnailForIssue();
}

void __60__NEIssueLinkPresentationSource_imageItemProviderFromIssue___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__NEIssueLinkPresentationSource_imageItemProviderFromIssue___block_invoke_3;
  v7[3] = &unk_1E84CD068;
  v8 = v4;
  v9 = *(a1 + 32);
  v6 = v4;
  dispatch_async(v5, v7);
}

void __60__NEIssueLinkPresentationSource_imageItemProviderFromIssue___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [*(a1 + 32) filePath];
  v4 = [v2 imageWithContentsOfFile:v3];
  v5 = UIImagePNGRepresentation(v4);

  (*(*(a1 + 40) + 16))();
}

- (id)urlFromIssue:(id)issue
{
  v3 = MEMORY[0x1E695DFF8];
  identifier = [issue identifier];
  v5 = [v3 nss_NewsURLForIssueID:identifier];

  return v5;
}

@end