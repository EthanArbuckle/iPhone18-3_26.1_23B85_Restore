@interface MCLURLRewriteRule
+ (id)urlRewriteRuleFromHost:(id)host toHost:(id)toHost ignoreHosts:(id)hosts;
- (MCLURLRewriteRule)initWithMatchPattern:(id)pattern replacePattern:(id)replacePattern replaceTemplate:(id)template ignoreHosts:(id)hosts;
- (void)rewriteURLRequest:(id)request;
@end

@implementation MCLURLRewriteRule

+ (id)urlRewriteRuleFromHost:(id)host toHost:(id)toHost ignoreHosts:(id)hosts
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, host);
  v34 = 0;
  objc_storeStrong(&v34, toHost);
  v33 = 0;
  objc_storeStrong(&v33, hosts);
  v5 = [location[0] stringByReplacingOccurrencesOfString:@"." withString:@"\\."];
  v6 = location[0];
  location[0] = v5;
  MEMORY[0x277D82BD8](v6);
  v7 = [location[0] stringByReplacingOccurrencesOfString:@"*" withString:@".*"];
  v8 = location[0];
  location[0] = v7;
  MEMORY[0x277D82BD8](v8);
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(https?://)%@(/.*)", location[0]];
  v10 = location[0];
  location[0] = v9;
  MEMORY[0x277D82BD8](v10);
  v32 = 0;
  v30 = 0;
  v22 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:location[0] options:1 error:&v30];
  objc_storeStrong(&v32, v30);
  v31 = v22;
  if (v32)
  {
    NSLog(&cfstr_ErrorCompiling.isa, v32);
  }

  v11 = [v34 stringByReplacingOccurrencesOfString:@"." withString:@"\\."];
  v12 = v34;
  v34 = v11;
  MEMORY[0x277D82BD8](v12);
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"$1%@$2", v34];
  v14 = v34;
  v34 = v13;
  MEMORY[0x277D82BD8](v14);
  v17 = objc_alloc(MEMORY[0x277CBEB58]);
  v29 = [v17 initWithCapacity:{objc_msgSend(v33, "count")}];
  v18 = v33;
  v23 = MEMORY[0x277D85DD0];
  v24 = -1073741824;
  v25 = 0;
  v26 = __63__MCLURLRewriteRule_urlRewriteRuleFromHost_toHost_ignoreHosts___block_invoke;
  v27 = &unk_2797EDFB8;
  v28 = MEMORY[0x277D82BE0](v29);
  [v18 enumerateObjectsUsingBlock:&v23];
  v15 = [selfCopy alloc];
  v19 = [v15 initWithMatchPattern:v31 replacePattern:v31 replaceTemplate:v34 ignoreHosts:v29];
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);

  return v19;
}

void __63__MCLURLRewriteRule_urlRewriteRuleFromHost_toHost_ignoreHosts___block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14[2] = a3;
  v14[1] = a1;
  v3 = [location[0] stringByReplacingOccurrencesOfString:@"." withString:@"\\."];
  v4 = location[0];
  location[0] = v3;
  MEMORY[0x277D82BD8](v4);
  v5 = [location[0] stringByReplacingOccurrencesOfString:@"*" withString:@".*"];
  v6 = location[0];
  location[0] = v5;
  MEMORY[0x277D82BD8](v6);
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@".*%@.*", location[0]];
  v8 = location[0];
  location[0] = v7;
  MEMORY[0x277D82BD8](v8);
  v14[0] = 0;
  obj = 0;
  v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:location[0] options:1 error:&obj];
  objc_storeStrong(v14, obj);
  v13 = v11;
  if (v14[0])
  {
    NSLog(&cfstr_ErrorCompiling.isa, v14[0]);
  }

  else
  {
    [a1[4] addObject:v13];
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);
  objc_storeStrong(location, 0);
}

- (MCLURLRewriteRule)initWithMatchPattern:(id)pattern replacePattern:(id)replacePattern replaceTemplate:(id)template ignoreHosts:(id)hosts
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pattern);
  v19 = 0;
  objc_storeStrong(&v19, replacePattern);
  v18 = 0;
  objc_storeStrong(&v18, template);
  v17 = 0;
  objc_storeStrong(&v17, hosts);
  v6 = selfCopy;
  selfCopy = 0;
  v16.receiver = v6;
  v16.super_class = MCLURLRewriteRule;
  selfCopy = [(MCLURLRequestRewriteRule *)&v16 initWithMatchExpression:location[0] block:0];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_replacePattern, v19);
    v7 = [v18 copy];
    replaceTemplate = selfCopy->_replaceTemplate;
    selfCopy->_replaceTemplate = v7;
    MEMORY[0x277D82BD8](replaceTemplate);
    v9 = [v17 copy];
    ignoreHosts = selfCopy->_ignoreHosts;
    selfCopy->_ignoreHosts = v9;
    MEMORY[0x277D82BD8](ignoreHosts);
  }

  v12 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v12;
}

- (void)rewriteURLRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v6 = [location[0] URL];
  absoluteString = [v6 absoluteString];
  MEMORY[0x277D82BD8](v6);
  v3 = [absoluteString length];
  v27 = 0;
  v26 = v3;
  v28 = 0;
  v29 = v3;
  *&v22 = 0;
  *(&v22 + 1) = v3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x20000000;
  v20 = 32;
  v21 = 0;
  ignoreHosts = selfCopy->_ignoreHosts;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __39__MCLURLRewriteRule_rewriteURLRequest___block_invoke;
  v14 = &unk_2797EDFE0;
  v15[0] = MEMORY[0x277D82BE0](absoluteString);
  v16 = v22;
  v15[1] = &v17;
  [(NSSet *)ignoreHosts enumerateObjectsUsingBlock:&v10];
  if (v18[3])
  {
    v9 = 1;
  }

  else
  {
    v4 = [(NSRegularExpression *)selfCopy->_replacePattern stringByReplacingMatchesInString:absoluteString options:0 range:v22 withTemplate:selfCopy->_replaceTemplate];
    v5 = absoluteString;
    absoluteString = v4;
    MEMORY[0x277D82BD8](v5);
    v8 = [MEMORY[0x277CBEBC0] URLWithString:absoluteString];
    if (v8)
    {
      [location[0] setURL:v8];
    }

    objc_storeStrong(&v8, 0);
    v9 = 0;
  }

  objc_storeStrong(v15, 0);
  _Block_object_dispose(&v17, 8);
  objc_storeStrong(&absoluteString, 0);
  objc_storeStrong(location, 0);
}

void __39__MCLURLRewriteRule_rewriteURLRequest___block_invoke(void *a1, void *a2, BOOL *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = a3;
  v6[1] = a1;
  v6[0] = [location[0] firstMatchInString:a1[4] options:0 range:{a1[6], a1[7]}];
  v5 = 0;
  if (v6[0])
  {
    v5 = [v6[0] range] != 0x7FFFFFFFFFFFFFFFLL;
  }

  *v7 = v5;
  *(*(a1[5] + 8) + 24) = v5;
  objc_storeStrong(v6, 0);
  objc_storeStrong(location, 0);
}

@end