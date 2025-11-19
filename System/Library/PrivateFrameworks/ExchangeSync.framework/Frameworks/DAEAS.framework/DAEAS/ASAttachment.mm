@interface ASAttachment
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASAttachment)initWithCoder:(id)a3;
- (id)description;
- (void)appendActiveSyncDataForTask:(id)a3 toData:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setPercentEscapedName:(id)a3;
@end

@implementation ASAttachment

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_17 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_17;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_17 = v2;
    acceptsTopLevelLeaves___haveChecked_17 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_17 == 1)
  {
    v2 = parsingLeafNode___result_17;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_17 = v2;
    parsingLeafNode___haveChecked_17 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_17 == 1)
  {
    v2 = parsingWithSubItems___result_17;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_17 = v2;
    parsingWithSubItems___haveChecked_17 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_17 == 1)
  {
    v2 = frontingBasicTypes___result_17;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_17 = v2;
    frontingBasicTypes___haveChecked_17 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_17 == 1)
  {
    v2 = notifyOfUnknownTokens___result_17;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_17 = v2;
    notifyOfUnknownTokens___haveChecked_17 = 1;
  }

  return v2 & 1;
}

- (void)setPercentEscapedName:(id)a3
{
  v4 = [a3 stringByReplacingPercentEscapesUsingEncoding:4];
  [(ASAttachment *)self setName:v4];
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v22 = MEMORY[0x277CBEAC0];
    v40 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:7 objectClass:objc_opt_class() setterMethod:sel_setPercentEscapedName_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v39 = [MEMORY[0x277CCABB0] numberWithInt:519];
    v38 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:8 objectClass:objc_opt_class() setterMethod:sel_setSize_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v37 = [MEMORY[0x277CCABB0] numberWithInt:520];
    v23 = a1;
    v35 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:10 objectClass:objc_opt_class() setterMethod:sel_setMethod_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v36 = [MEMORY[0x277CCABB0] numberWithInt:522];
    v34 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:16 objectClass:objc_opt_class() setterMethod:sel_setDisplayName_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v33 = [MEMORY[0x277CCABB0] numberWithInt:528];
    v32 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:17 objectClass:objc_opt_class() setterMethod:sel_setName_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v31 = [MEMORY[0x277CCABB0] numberWithInt:4369];
    v30 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:12 objectClass:objc_opt_class() setterMethod:sel_setSize_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v27 = [MEMORY[0x277CCABB0] numberWithInt:4364];
    v29 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:18 objectClass:objc_opt_class() setterMethod:sel_setMethod_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v28 = [MEMORY[0x277CCABB0] numberWithInt:4370];
    v26 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:16 objectClass:objc_opt_class() setterMethod:sel_setDisplayName_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v21 = [MEMORY[0x277CCABB0] numberWithInt:4368];
    v20 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:19 objectClass:objc_opt_class() setterMethod:sel_setContentId_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:4371];
    v25 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:20 objectClass:objc_opt_class() setterMethod:sel_setContentLocation_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v24 = [MEMORY[0x277CCABB0] numberWithInt:4372];
    v18 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:21 objectClass:objc_opt_class() setterMethod:sel_setIsInline_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:4373];
    v16 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:9 objectClass:objc_opt_class() setterMethod:sel_ignoreThisContent_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:521];
    v14 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:22 token:8 objectClass:objc_opt_class() setterMethod:sel_ignoreThisContent_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:5640];
    v13 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:22 token:7 objectClass:objc_opt_class() setterMethod:sel_ignoreThisContent_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:5639];
    v8 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:30 objectClass:objc_opt_class() setterMethod:sel_setClientId_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:4382];
    v5 = [v22 dictionaryWithObjectsAndKeys:{v40, v39, v38, v37, v35, v36, v34, v33, v32, v31, v30, v27, v29, v28, v26, v21, v20, v19, v25, v24, v18, v17, v16, v15, v14, v6, v13, v7, v8, v9, 0}];

    v10 = +[ASItem parseRuleCache];
    v11 = NSStringFromClass(v23);
    [v10 setObject:v5 forKey:v11];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ASAttachment *)self name];
  v7 = [(ASAttachment *)self size];
  v8 = [(ASAttachment *)self method];
  v9 = [(ASAttachment *)self displayName];
  v10 = [v3 stringWithFormat:@"<%@: Name %@, Size %@, Method %@, DisplayName %@", v5, v6, v7, v8, v9];

  return v10;
}

- (ASAttachment)initWithCoder:(id)a3
{
  v5 = a3;
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    [(ASAttachment *)a2 initWithCoder:?];
  }

  v16.receiver = self;
  v16.super_class = ASAttachment;
  v6 = [(ASItem *)&v16 init];
  if (v6)
  {
    v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASAAttName"];
    [(ASAttachment *)v6 setName:v7];

    v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASAAttSize"];
    [(ASAttachment *)v6 setSize:v8];

    v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASAAttMethod"];
    [(ASAttachment *)v6 setMethod:v9];

    v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASAAttDisplayName"];
    [(ASAttachment *)v6 setDisplayName:v10];

    v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASAAttContentId"];
    [(ASAttachment *)v6 setContentId:v11];

    v12 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASAAttContentLocation"];
    [(ASAttachment *)v6 setContentLocation:v12];

    v13 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASAAttIsInline"];
    [(ASAttachment *)v6 setIsInline:v13];

    v14 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASAttHasBase64Transfer"];
    [(ASAttachment *)v6 setHasBase64Transfer:v14];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    [(ASAttachment *)a2 encodeWithCoder:?];
  }

  v6 = [(ASAttachment *)self name];
  [v5 encodeObject:v6 forKey:@"ASAAttName"];

  v7 = [(ASAttachment *)self size];
  [v5 encodeObject:v7 forKey:@"ASAAttSize"];

  v8 = [(ASAttachment *)self method];
  [v5 encodeObject:v8 forKey:@"ASAAttMethod"];

  v9 = [(ASAttachment *)self displayName];
  [v5 encodeObject:v9 forKey:@"ASAAttDisplayName"];

  v10 = [(ASAttachment *)self contentId];
  [v5 encodeObject:v10 forKey:@"ASAAttContentId"];

  v11 = [(ASAttachment *)self contentLocation];
  [v5 encodeObject:v11 forKey:@"ASAAttContentLocation"];

  v12 = [(ASAttachment *)self isInline];
  [v5 encodeObject:v12 forKey:@"ASAAttIsInline"];

  v13 = [(ASAttachment *)self hasBase64Transfer];
  [v5 encodeObject:v13 forKey:@"ASAttHasBase64Transfer"];
}

- (void)appendActiveSyncDataForTask:(id)a3 toData:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(ASAttachment *)self clientId];
  [v5 appendTag:30 withStringContent:v6];

  [v5 appendTag:18 withIntContent:1];
  v7 = [(ASAttachment *)self localPath];

  if (!v7)
  {
    v10 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v16))
    {
      v17 = [(ASAttachment *)self clientId];
      *buf = 138412290;
      v22 = v17;
      _os_log_impl(&dword_24A0AC000, v10, v16, "Local URL not found for attachment client Id %@", buf, 0xCu);
    }

    v11 = 0;
    goto LABEL_7;
  }

  v8 = MEMORY[0x277CBEA90];
  v9 = [(ASAttachment *)self localPath];
  v20 = 0;
  v10 = [v8 dataWithContentsOfURL:v9 options:0 error:&v20];
  v11 = v20;

  if (v10)
  {
    v12 = [(ASAttachment *)self localPath];
    v13 = [v12 pathExtension];

    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], v13, 0);
    v15 = UTTypeCopyPreferredTagWithClass(PreferredIdentifierForTag, *MEMORY[0x277CC1F60]);
    [v5 appendTag:23 withStringContent:v15];
    [v5 appendTag:31 withByteArrayDataContent:v10];

LABEL_7:
  }

  v18 = [(ASAttachment *)self displayName];
  [v5 appendTag:16 withStringContent:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASAttachment.m" lineNumber:66 description:@"We can't unarchive an email attachment if the coder doesn't allow keyed coding"];
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASAttachment.m" lineNumber:82 description:@"We can't archive an email attachment if the coder doesn't allow keyed coding"];
}

@end