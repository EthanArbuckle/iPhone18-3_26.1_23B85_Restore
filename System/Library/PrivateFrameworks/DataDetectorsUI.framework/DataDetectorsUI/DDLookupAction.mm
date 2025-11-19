@interface DDLookupAction
- (DDLookupAction)initWithQueryString:(id)a3 range:(_NSRange)a4 context:(id)a5;
- (DDLookupAction)initWithRVQuery:(id)a3 context:(id)a4;
- (DDLookupAction)initWithRVQuery:(id)a3 reportAnIssueBlock:(id)a4 metadataFetchingBlock:(id)a5 context:(id)a6;
- (id)createViewController;
- (id)menuActions;
@end

@implementation DDLookupAction

- (DDLookupAction)initWithRVQuery:(id)a3 context:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = DDLookupAction;
  v8 = [(DDParsecPreviewAction *)&v11 initWithURL:0 result:0 context:a4];
  v9 = v8;
  if (v8)
  {
    [(DDParsecPreviewAction *)v8 setPreviewMode:0];
    objc_storeStrong(&v9->_query, a3);
  }

  return v9;
}

- (DDLookupAction)initWithQueryString:(id)a3 range:(_NSRange)a4 context:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v15.receiver = self;
  v15.super_class = DDLookupAction;
  v10 = [(DDParsecPreviewAction *)&v15 initWithURL:0 result:0 context:a5];
  v11 = v10;
  if (v10)
  {
    [(DDParsecPreviewAction *)v10 setPreviewMode:0];
    v12 = [v9 copy];
    queryString = v11->_queryString;
    v11->_queryString = v12;

    v11->_queryStringRange.location = location;
    v11->_queryStringRange.length = length;
  }

  return v11;
}

- (DDLookupAction)initWithRVQuery:(id)a3 reportAnIssueBlock:(id)a4 metadataFetchingBlock:(id)a5 context:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = DDLookupAction;
  v14 = [(DDParsecPreviewAction *)&v21 initWithURL:0 result:0 context:a6];
  v15 = v14;
  if (v14)
  {
    [(DDParsecPreviewAction *)v14 setPreviewMode:0];
    objc_storeStrong(&v15->_query, a3);
    v16 = _Block_copy(v12);
    reportAnIssueBlock = v15->_reportAnIssueBlock;
    v15->_reportAnIssueBlock = v16;

    v18 = _Block_copy(v13);
    reportAnIssueMetadataFetchingBlock = v15->_reportAnIssueMetadataFetchingBlock;
    v15->_reportAnIssueMetadataFetchingBlock = v18;
  }

  return v15;
}

- (id)createViewController
{
  query = self->_query;
  if (self->_queryString)
  {
    if (!query)
    {
      v4 = [[DDParsecCollectionViewController alloc] initWithString:self->_queryString range:self->_queryStringRange.location, self->_queryStringRange.length];
      parsecViewController = self->super.super._parsecViewController;
      self->super.super._parsecViewController = v4;

      goto LABEL_6;
    }

LABEL_5:
    v6 = [[DDParsecCollectionViewController alloc] initWithQuery:self->_query];
    v7 = self->super.super._parsecViewController;
    self->super.super._parsecViewController = v6;

    [(DDParsecCollectionViewController *)self->super.super._parsecViewController setReportAnIssueBlock:self->_reportAnIssueBlock];
    [(DDParsecCollectionViewController *)self->super.super._parsecViewController setReportAnIssueMetadataFetchingBlock:self->_reportAnIssueMetadataFetchingBlock];
LABEL_6:
    [(DDParsecCollectionViewController *)self->super.super._parsecViewController setPreviewMode:self->super.super._previewMode];
    [(DDParsecCollectionViewController *)self->super.super._parsecViewController setParsecDelegate:self];
    v8 = self->super.super._parsecViewController;

    return v8;
  }

  if (query)
  {
    goto LABEL_5;
  }

  v8 = 0;

  return v8;
}

- (id)menuActions
{
  v13[2] = *MEMORY[0x277D85DE8];
  query = self->_query;
  if (query)
  {
    v4 = [(RVQuery *)query title];
    length = [(NSString *)v4 length];
    location = 0;
  }

  else
  {
    v4 = self->_queryString;
    location = self->_queryStringRange.location;
    length = self->_queryStringRange.length;
  }

  v7 = [[DDCopyAction alloc] initWithQueryString:v4 range:location context:length, self->super.super.super.super._context];
  v8 = [[DDSearchWebAction alloc] initWithQueryString:v4 range:location context:length, self->super.super.super.super._context];
  v13[0] = v8;
  v13[1] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [DDActionGroup groupWithActions:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end