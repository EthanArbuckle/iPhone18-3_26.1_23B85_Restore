@interface DDLookupAction
- (DDLookupAction)initWithQueryString:(id)string range:(_NSRange)range context:(id)context;
- (DDLookupAction)initWithRVQuery:(id)query context:(id)context;
- (DDLookupAction)initWithRVQuery:(id)query reportAnIssueBlock:(id)block metadataFetchingBlock:(id)fetchingBlock context:(id)context;
- (id)createViewController;
- (id)menuActions;
@end

@implementation DDLookupAction

- (DDLookupAction)initWithRVQuery:(id)query context:(id)context
{
  queryCopy = query;
  v11.receiver = self;
  v11.super_class = DDLookupAction;
  v8 = [(DDParsecPreviewAction *)&v11 initWithURL:0 result:0 context:context];
  v9 = v8;
  if (v8)
  {
    [(DDParsecPreviewAction *)v8 setPreviewMode:0];
    objc_storeStrong(&v9->_query, query);
  }

  return v9;
}

- (DDLookupAction)initWithQueryString:(id)string range:(_NSRange)range context:(id)context
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v15.receiver = self;
  v15.super_class = DDLookupAction;
  v10 = [(DDParsecPreviewAction *)&v15 initWithURL:0 result:0 context:context];
  v11 = v10;
  if (v10)
  {
    [(DDParsecPreviewAction *)v10 setPreviewMode:0];
    v12 = [stringCopy copy];
    queryString = v11->_queryString;
    v11->_queryString = v12;

    v11->_queryStringRange.location = location;
    v11->_queryStringRange.length = length;
  }

  return v11;
}

- (DDLookupAction)initWithRVQuery:(id)query reportAnIssueBlock:(id)block metadataFetchingBlock:(id)fetchingBlock context:(id)context
{
  queryCopy = query;
  blockCopy = block;
  fetchingBlockCopy = fetchingBlock;
  v21.receiver = self;
  v21.super_class = DDLookupAction;
  v14 = [(DDParsecPreviewAction *)&v21 initWithURL:0 result:0 context:context];
  v15 = v14;
  if (v14)
  {
    [(DDParsecPreviewAction *)v14 setPreviewMode:0];
    objc_storeStrong(&v15->_query, query);
    v16 = _Block_copy(blockCopy);
    reportAnIssueBlock = v15->_reportAnIssueBlock;
    v15->_reportAnIssueBlock = v16;

    v18 = _Block_copy(fetchingBlockCopy);
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
    title = [(RVQuery *)query title];
    length = [(NSString *)title length];
    location = 0;
  }

  else
  {
    title = self->_queryString;
    location = self->_queryStringRange.location;
    length = self->_queryStringRange.length;
  }

  v7 = [[DDCopyAction alloc] initWithQueryString:title range:location context:length, self->super.super.super.super._context];
  v8 = [[DDSearchWebAction alloc] initWithQueryString:title range:location context:length, self->super.super.super.super._context];
  v13[0] = v8;
  v13[1] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [DDActionGroup groupWithActions:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end