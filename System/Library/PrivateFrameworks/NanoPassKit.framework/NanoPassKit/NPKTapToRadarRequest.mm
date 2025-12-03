@interface NPKTapToRadarRequest
+ (void)postWithTitle:(id)title body:(id)body;
- (NPKTapToRadarRequest)initWithDictionary:(id)dictionary;
- (NPKTapToRadarRequest)initWithTitle:(id)title body:(id)body attachmentPaths:(id)paths;
- (NPKTapToRadarRequest)initWithURL:(id)l;
- (NSURL)tapToRadarURL;
- (void)post;
@end

@implementation NPKTapToRadarRequest

- (NPKTapToRadarRequest)initWithTitle:(id)title body:(id)body attachmentPaths:(id)paths
{
  titleCopy = title;
  bodyCopy = body;
  pathsCopy = paths;
  v19.receiver = self;
  v19.super_class = NPKTapToRadarRequest;
  v11 = [(NPKTapToRadarRequest *)&v19 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [bodyCopy copy];
    body = v11->_body;
    v11->_body = v14;

    v16 = [pathsCopy copy];
    attachmentsPaths = v11->_attachmentsPaths;
    v11->_attachmentsPaths = v16;
  }

  return v11;
}

- (NPKTapToRadarRequest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"NPKTapToRadarTitleUserNotificationKey"];
  v6 = v5;
  v7 = @"Wallet issue detected automatically";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [dictionaryCopy objectForKeyedSubscript:@"NPKTapToRadarBodyUserNotificationKey"];
  v10 = v9;
  v11 = @"Requested to file a rdar.";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [dictionaryCopy objectForKeyedSubscript:@"NPKTapToRadarAttachmentsPathsNotificationKey"];

  if (v13)
  {
    [MEMORY[0x277CBEB98] setWithArray:v13];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v14 = ;
  v15 = [[NPKTapToRadarRequest alloc] initWithTitle:v8 body:v12 attachmentPaths:v14];

  return v15;
}

- (NPKTapToRadarRequest)initWithURL:(id)l
{
  lCopy = l;
  v5 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__19;
  v31 = __Block_byref_object_dispose__19;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__19;
  v25 = __Block_byref_object_dispose__19;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__19;
  v19 = __Block_byref_object_dispose__19;
  v20 = 0;
  scheme = [v5 scheme];
  v7 = [scheme isEqualToString:@"tap-to-radar"];

  if (v7)
  {
    queryItems = [v5 queryItems];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __36__NPKTapToRadarRequest_initWithURL___block_invoke;
    v14[3] = &unk_279949468;
    v14[4] = &v27;
    v14[5] = &v21;
    v14[6] = &v15;
    [queryItems enumerateObjectsUsingBlock:v14];
  }

  if (!v16[5])
  {
    v9 = [MEMORY[0x277CBEB98] set];
    v10 = v16[5];
    v16[5] = v9;
  }

  if (v28[5] && v22[5])
  {
    v11 = v16[5];
    v12 = [NPKTapToRadarRequest initWithTitle:"initWithTitle:body:attachmentPaths:" body:? attachmentPaths:?];
  }

  else
  {

    v12 = 0;
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v12;
}

void __36__NPKTapToRadarRequest_initWithURL___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v22 = a2;
  v6 = [v22 name];
  v7 = [v6 isEqualToString:@"Title"];

  if (v7)
  {
    v8 = [v22 value];
    v9 = a1[4];
LABEL_5:
    v12 = *(v9 + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v8;
    goto LABEL_6;
  }

  v10 = [v22 name];
  v11 = [v10 isEqualToString:@"Description"];

  if (v11)
  {
    v8 = [v22 value];
    v9 = a1[5];
    goto LABEL_5;
  }

  v15 = [v22 name];
  v16 = [v15 isEqualToString:@"Attachments"];

  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = MEMORY[0x277CBEB98];
  v13 = [v22 value];
  v18 = [v13 componentsSeparatedByString:{@", "}];
  v19 = [v17 setWithArray:v18];
  v20 = *(a1[6] + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

LABEL_6:
LABEL_7:
  v14 = *(*(a1[4] + 8) + 40);
  if (v14)
  {
    v14 = *(*(a1[5] + 8) + 40);
    if (v14)
    {
      LOBYTE(v14) = *(*(a1[6] + 8) + 40) != 0;
    }
  }

  *a4 = v14;
}

- (NSURL)tapToRadarURL
{
  tapToRadarURL = self->_tapToRadarURL;
  if (!tapToRadarURL)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithString:@"tap-to-radar://new"];
    array = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentName" value:@"Wallet"];
    [array addObject:v6];

    v7 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentVersion" value:@"watchOS"];
    [array addObject:v7];

    v8 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentID" value:@"547743"];
    [array addObject:v8];

    v9 = [MEMORY[0x277CCAD18] queryItemWithName:@"Title" value:self->_title];
    [array addObject:v9];

    if ([(NSString *)self->_body containsString:@"IMPORTANT:\nThe attached logging may contain the time and location of recent transactions you've made with Apple Pay. These logs greatly assist diagnosing and resolving issues."])
    {
      v10 = self->_body;
    }

    else
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", self->_body, @"IMPORTANT:\nThe attached logging may contain the time and location of recent transactions you've made with Apple Pay. These logs greatly assist diagnosing and resolving issues."];
    }

    v11 = v10;
    v12 = [MEMORY[0x277CCAD18] queryItemWithName:@"Description" value:v10];
    [array addObject:v12];

    v13 = [MEMORY[0x277CCAD18] queryItemWithName:@"AutoDiagnostics" value:{@"phone, watch"}];
    [array addObject:v13];

    v14 = [MEMORY[0x277CCAD18] queryItemWithName:@"Classification" value:@"Serious Bug"];
    [array addObject:v14];

    v15 = [MEMORY[0x277CCAD18] queryItemWithName:@"Reproducibility" value:@"I Didn't Try"];
    [array addObject:v15];

    allObjects = [(NSSet *)self->_attachmentsPaths allObjects];
    v17 = [allObjects componentsJoinedByString:{@", "}];

    v18 = [MEMORY[0x277CCAD18] queryItemWithName:@"Attachments" value:v17];
    [array addObject:v18];

    [v4 setQueryItems:array];
    v19 = [v4 URL];
    v20 = self->_tapToRadarURL;
    self->_tapToRadarURL = v19;

    tapToRadarURL = self->_tapToRadarURL;
  }

  return tapToRadarURL;
}

- (void)post
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (PKIsInternalInstall())
  {
    v9[0] = @"NPKTapToRadarTitleUserNotificationKey";
    v9[1] = @"NPKTapToRadarBodyUserNotificationKey";
    body = self->_body;
    v10[0] = self->_title;
    v10[1] = body;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
    if ([(NSSet *)self->_attachmentsPaths count])
    {
      v5 = [v4 mutableCopy];
      allObjects = [(NSSet *)self->_attachmentsPaths allObjects];
      [v5 setObject:allObjects forKeyedSubscript:@"NPKTapToRadarAttachmentsPathsNotificationKey"];

      v4 = v5;
    }

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter postNotificationName:@"com.apple.nanoPassKit.presentTapToRadarDistributedNotification" object:0 userInfo:v4];
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)postWithTitle:(id)title body:(id)body
{
  bodyCopy = body;
  titleCopy = title;
  v7 = [[NPKTapToRadarRequest alloc] initWithTitle:titleCopy body:bodyCopy];

  [(NPKTapToRadarRequest *)v7 post];
}

@end