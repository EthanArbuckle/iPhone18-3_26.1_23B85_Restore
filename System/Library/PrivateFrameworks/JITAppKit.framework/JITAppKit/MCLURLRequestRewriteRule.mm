@interface MCLURLRequestRewriteRule
+ (id)urlRequestRewriteRuleWithMatchPattern:(id)a3 block:(id)a4;
- (MCLURLRequestRewriteRule)initWithMatchExpression:(id)a3 block:(id)a4;
- (void)rewriteURLRequest:(id)a3;
@end

@implementation MCLURLRequestRewriteRule

- (MCLURLRequestRewriteRule)initWithMatchExpression:(id)a3 block:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v4 = v13;
  v13 = 0;
  v10.receiver = v4;
  v10.super_class = MCLURLRequestRewriteRule;
  v13 = [(MCLURLRequestRewriteRule *)&v10 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    objc_storeStrong(&v13->_matchPattern, location[0]);
    v5 = _Block_copy(v11);
    block = v13->_block;
    v13->_block = v5;
    MEMORY[0x277D82BD8](block);
  }

  v8 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v8;
}

+ (id)urlRequestRewriteRuleWithMatchPattern:(id)a3 block:(id)a4
{
  v14 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  v9 = 0;
  v8 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:location[0] options:1 error:&v9];
  objc_storeStrong(&v11, v9);
  v10 = v8;
  if (v11)
  {
    NSLog(&cfstr_ErrorCompiling.isa, v11);
    objc_storeStrong(&v11, 0);
  }

  v4 = [v14 alloc];
  v6 = [v4 initWithMatchExpression:v10 block:v12];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)rewriteURLRequest:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_block)
  {
    (*(v4->_block + 2))();
  }

  objc_storeStrong(location, 0);
}

@end