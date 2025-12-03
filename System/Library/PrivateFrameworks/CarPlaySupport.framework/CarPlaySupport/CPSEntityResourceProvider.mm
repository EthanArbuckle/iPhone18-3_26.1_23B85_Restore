@interface CPSEntityResourceProvider
- (CPEntityClientTemplateDelegate)templateDelegate;
- (CPEntityProviding)entityTemplate;
- (CPSEntityActionDelegate)actionDelegate;
- (CPSEntityResourceProvider)initWithTemplateEnvironment:(id)environment entityTemplate:(id)template templateDelegate:(id)delegate actionDelegate:(id)actionDelegate;
- (CPSTemplateEnvironment)templateEnvironment;
- (NSString)description;
- (void)updateEntityTemplate:(id)template withProxyDelegate:(id)delegate;
@end

@implementation CPSEntityResourceProvider

- (CPSEntityResourceProvider)initWithTemplateEnvironment:(id)environment entityTemplate:(id)template templateDelegate:(id)delegate actionDelegate:(id)actionDelegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, environment);
  v15 = 0;
  objc_storeStrong(&v15, template);
  v14 = 0;
  objc_storeStrong(&v14, delegate);
  v13 = 0;
  objc_storeStrong(&v13, actionDelegate);
  v6 = selfCopy;
  selfCopy = 0;
  v12.receiver = v6;
  v12.super_class = CPSEntityResourceProvider;
  selfCopy = [(CPSEntityResourceProvider *)&v12 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeWeak(&selfCopy->_templateEnvironment, location[0]);
    objc_storeWeak(&selfCopy->_entityTemplate, v15);
    objc_storeWeak(&selfCopy->_templateDelegate, v14);
    objc_storeWeak(&selfCopy->_actionDelegate, v13);
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (NSString)description
{
  selfCopy = self;
  v11 = a2;
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = CPSEntityResourceProvider;
  v8 = [(CPSEntityResourceProvider *)&v10 description];
  templateEnvironment = [(CPSEntityResourceProvider *)selfCopy templateEnvironment];
  entityTemplate = [(CPSEntityResourceProvider *)selfCopy entityTemplate];
  templateDelegate = [(CPSEntityResourceProvider *)selfCopy templateDelegate];
  actionDelegate = [(CPSEntityResourceProvider *)selfCopy actionDelegate];
  v9 = [v3 stringWithFormat:@"%@\n\t%@\n\t%@\n\t%@\n\t%@", v8, templateEnvironment, entityTemplate, templateDelegate, actionDelegate];
  MEMORY[0x277D82BD8](actionDelegate);
  MEMORY[0x277D82BD8](templateDelegate);
  MEMORY[0x277D82BD8](entityTemplate);
  MEMORY[0x277D82BD8](templateEnvironment);
  MEMORY[0x277D82BD8](v8);

  return v9;
}

- (void)updateEntityTemplate:(id)template withProxyDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v5 = 0;
  objc_storeStrong(&v5, delegate);
  [(CPSEntityResourceProvider *)selfCopy setEntityTemplate:location[0]];
  [(CPSEntityResourceProvider *)selfCopy setTemplateDelegate:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (CPSTemplateEnvironment)templateEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_templateEnvironment);

  return WeakRetained;
}

- (CPEntityProviding)entityTemplate
{
  WeakRetained = objc_loadWeakRetained(&self->_entityTemplate);

  return WeakRetained;
}

- (CPEntityClientTemplateDelegate)templateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_templateDelegate);

  return WeakRetained;
}

- (CPSEntityActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

@end