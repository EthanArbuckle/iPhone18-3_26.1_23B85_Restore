@interface MCLURLRewriteRule
+ (id)urlRewriteRuleFromHost:(id)a3 toHost:(id)a4 ignoreHosts:(id)a5;
- (MCLURLRewriteRule)initWithMatchPattern:(id)a3 replacePattern:(id)a4 replaceTemplate:(id)a5 ignoreHosts:(id)a6;
- (void)rewriteURLRequest:(id)a3;
@end

@implementation MCLURLRewriteRule

+ (id)urlRewriteRuleFromHost:(id)a3 toHost:(id)a4 ignoreHosts:(id)a5
{
  v36 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v33 = 0;
  objc_storeStrong(&v33, a5);
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
  v15 = [v36 alloc];
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

- (MCLURLRewriteRule)initWithMatchPattern:(id)a3 replacePattern:(id)a4 replaceTemplate:(id)a5 ignoreHosts:(id)a6
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v17 = 0;
  objc_storeStrong(&v17, a6);
  v6 = v21;
  v21 = 0;
  v16.receiver = v6;
  v16.super_class = MCLURLRewriteRule;
  v21 = [(MCLURLRequestRewriteRule *)&v16 initWithMatchExpression:location[0] block:0];
  objc_storeStrong(&v21, v21);
  if (v21)
  {
    objc_storeStrong(&v21->_replacePattern, v19);
    v7 = [v18 copy];
    replaceTemplate = v21->_replaceTemplate;
    v21->_replaceTemplate = v7;
    MEMORY[0x277D82BD8](replaceTemplate);
    v9 = [v17 copy];
    ignoreHosts = v21->_ignoreHosts;
    v21->_ignoreHosts = v9;
    MEMORY[0x277D82BD8](ignoreHosts);
  }

  v12 = MEMORY[0x277D82BE0](v21);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v21, 0);
  return v12;
}

- (void)rewriteURLRequest:(id)a3
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [location[0] URL];
  v23 = [v6 absoluteString];
  MEMORY[0x277D82BD8](v6);
  v3 = [v23 length];
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
  ignoreHosts = v25->_ignoreHosts;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __39__MCLURLRewriteRule_rewriteURLRequest___block_invoke;
  v14 = &unk_2797EDFE0;
  v15[0] = MEMORY[0x277D82BE0](v23);
  v16 = v22;
  v15[1] = &v17;
  [(NSSet *)ignoreHosts enumerateObjectsUsingBlock:&v10];
  if (v18[3])
  {
    v9 = 1;
  }

  else
  {
    v4 = [(NSRegularExpression *)v25->_replacePattern stringByReplacingMatchesInString:v23 options:0 range:v22 withTemplate:v25->_replaceTemplate];
    v5 = v23;
    v23 = v4;
    MEMORY[0x277D82BD8](v5);
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v23];
    if (v8)
    {
      [location[0] setURL:v8];
    }

    objc_storeStrong(&v8, 0);
    v9 = 0;
  }

  objc_storeStrong(v15, 0);
  _Block_object_dispose(&v17, 8);
  objc_storeStrong(&v23, 0);
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