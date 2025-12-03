@interface NDDownloadRequest
- (BOOL)isEqual:(id)equal;
- (NDDownloadRequest)initWithCoder:(id)coder;
- (NDDownloadRequest)initWithContentID:(id)d options:(int64_t)options;
- (NSString)articleID;
- (NSString)issueID;
- (NSString)puzzleID;
- (NSString)recipeID;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NDDownloadRequest

- (NDDownloadRequest)initWithContentID:(id)d options:(int64_t)options
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = NDDownloadRequest;
  v7 = [(NDDownloadRequest *)&v13 init];
  if (v7)
  {
    v8 = [dCopy copy];
    contentID = v7->_contentID;
    v7->_contentID = v8;

    v7->_options = options;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__NDDownloadRequest_initWithContentID_options___block_invoke;
    v11[3] = &unk_27997C0E0;
    v12 = dCopy;
    v7->_contentType = __47__NDDownloadRequest_initWithContentID_options___block_invoke(v11);
  }

  return v7;
}

uint64_t __47__NDDownloadRequest_initWithContentID_options___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if ([*(a1 + 32) hasPrefix:*MEMORY[0x277D304F8]])
  {
    return 0;
  }

  if ([*v1 hasPrefix:@"N"])
  {
    return 1;
  }

  if ([*v1 hasPrefix:*MEMORY[0x277D309F8]])
  {
    return 2;
  }

  if ([*v1 hasPrefix:*MEMORY[0x277D30C40]])
  {
    return 3;
  }

  if (([*v1 hasPrefix:*MEMORY[0x277D30C58]] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __47__NDDownloadRequest_initWithContentID_options___block_invoke_cold_1(v1);
    }

    return 0;
  }

  return 4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5)
  {
    contentID = [(NDDownloadRequest *)self contentID];
    contentID2 = [v5 contentID];
    if ([contentID isEqualToString:contentID2])
    {
      options = [(NDDownloadRequest *)self options];
      v9 = options == [v5 options];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  contentID = [(NDDownloadRequest *)self contentID];
  v4 = [contentID hash];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NDDownloadRequest options](self, "options")}];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277D30F48]) initWithObject:self];
  v4 = [(NDDownloadRequest *)self contentType]- 1;
  if (v4 > 3)
  {
    v5 = @"Article";
  }

  else
  {
    v5 = off_27997C128[v4];
  }

  [v3 addField:@"type" object:v5];
  contentID = [(NDDownloadRequest *)self contentID];
  [v3 addField:@"id" object:contentID];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NDDownloadRequest options](self, "options")}];
  [v3 addField:@"options" object:v7];

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

__CFString *__32__NDDownloadRequest_description__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contentType];
  if ((v1 - 1) > 3)
  {
    return @"Article";
  }

  else
  {
    return off_27997C128[v1 - 1];
  }
}

- (NDDownloadRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentID"];
  v6 = [coderCopy decodeIntegerForKey:@"options"];

  v7 = [(NDDownloadRequest *)self initWithContentID:v5 options:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contentID = [(NDDownloadRequest *)self contentID];
  [coderCopy encodeObject:contentID forKey:@"contentID"];

  [coderCopy encodeInteger:-[NDDownloadRequest options](self forKey:{"options"), @"options"}];
}

- (NSString)articleID
{
  contentType = [(NDDownloadRequest *)self contentType];
  if (contentType == 1)
  {
    contentID = [(NDDownloadRequest *)self contentID];
    contentID2 = NDArticleIDFromAudioContentID(contentID);
  }

  else if (contentType)
  {
    contentID2 = 0;
  }

  else
  {
    contentID2 = [(NDDownloadRequest *)self contentID];
  }

  return contentID2;
}

- (NSString)issueID
{
  if ([(NDDownloadRequest *)self contentType]== 2)
  {
    contentID = [(NDDownloadRequest *)self contentID];
  }

  else
  {
    contentID = 0;
  }

  return contentID;
}

- (NSString)puzzleID
{
  if ([(NDDownloadRequest *)self contentType]== 3)
  {
    contentID = [(NDDownloadRequest *)self contentID];
  }

  else
  {
    contentID = 0;
  }

  return contentID;
}

- (NSString)recipeID
{
  if ([(NDDownloadRequest *)self contentType]== 4)
  {
    contentID = [(NDDownloadRequest *)self contentID];
  }

  else
  {
    contentID = 0;
  }

  return contentID;
}

void __47__NDDownloadRequest_initWithContentID_options___block_invoke_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown content type for identifier: %@", *a1];
  *buf = 136315906;
  v4 = "[NDDownloadRequest initWithContentID:options:]_block_invoke";
  v5 = 2080;
  v6 = "NDDownloadRequest.m";
  v7 = 1024;
  v8 = 49;
  v9 = 2114;
  v10 = v1;
  _os_log_error_impl(&dword_25BE24000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v2 = *MEMORY[0x277D85DE8];
}

@end