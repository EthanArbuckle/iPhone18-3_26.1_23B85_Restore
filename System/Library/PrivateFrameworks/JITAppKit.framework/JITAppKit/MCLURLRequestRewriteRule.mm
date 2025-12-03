@interface MCLURLRequestRewriteRule
+ (id)urlRequestRewriteRuleWithMatchPattern:(id)pattern block:(id)block;
- (MCLURLRequestRewriteRule)initWithMatchExpression:(id)expression block:(id)block;
- (void)rewriteURLRequest:(id)request;
@end

@implementation MCLURLRequestRewriteRule

- (MCLURLRequestRewriteRule)initWithMatchExpression:(id)expression block:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, expression);
  v11 = 0;
  objc_storeStrong(&v11, block);
  v4 = selfCopy;
  selfCopy = 0;
  v10.receiver = v4;
  v10.super_class = MCLURLRequestRewriteRule;
  selfCopy = [(MCLURLRequestRewriteRule *)&v10 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_matchPattern, location[0]);
    v5 = _Block_copy(v11);
    block = selfCopy->_block;
    selfCopy->_block = v5;
    MEMORY[0x277D82BD8](block);
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

+ (id)urlRequestRewriteRuleWithMatchPattern:(id)pattern block:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pattern);
  v12 = 0;
  objc_storeStrong(&v12, block);
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

  v4 = [selfCopy alloc];
  v6 = [v4 initWithMatchExpression:v10 block:v12];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)rewriteURLRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  if (selfCopy->_block)
  {
    (*(selfCopy->_block + 2))();
  }

  objc_storeStrong(location, 0);
}

@end