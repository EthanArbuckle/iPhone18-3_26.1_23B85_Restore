@interface CPSEntityResourceProvider
- (CPEntityClientTemplateDelegate)templateDelegate;
- (CPEntityProviding)entityTemplate;
- (CPSEntityActionDelegate)actionDelegate;
- (CPSEntityResourceProvider)initWithTemplateEnvironment:(id)a3 entityTemplate:(id)a4 templateDelegate:(id)a5 actionDelegate:(id)a6;
- (CPSTemplateEnvironment)templateEnvironment;
- (NSString)description;
- (void)updateEntityTemplate:(id)a3 withProxyDelegate:(id)a4;
@end

@implementation CPSEntityResourceProvider

- (CPSEntityResourceProvider)initWithTemplateEnvironment:(id)a3 entityTemplate:(id)a4 templateDelegate:(id)a5 actionDelegate:(id)a6
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = 0;
  objc_storeStrong(&v13, a6);
  v6 = v17;
  v17 = 0;
  v12.receiver = v6;
  v12.super_class = CPSEntityResourceProvider;
  v17 = [(CPSEntityResourceProvider *)&v12 init];
  objc_storeStrong(&v17, v17);
  if (v17)
  {
    objc_storeWeak(&v17->_templateEnvironment, location[0]);
    objc_storeWeak(&v17->_entityTemplate, v15);
    objc_storeWeak(&v17->_templateDelegate, v14);
    objc_storeWeak(&v17->_actionDelegate, v13);
  }

  v8 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v8;
}

- (NSString)description
{
  v12 = self;
  v11 = a2;
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = CPSEntityResourceProvider;
  v8 = [(CPSEntityResourceProvider *)&v10 description];
  v7 = [(CPSEntityResourceProvider *)v12 templateEnvironment];
  v6 = [(CPSEntityResourceProvider *)v12 entityTemplate];
  v5 = [(CPSEntityResourceProvider *)v12 templateDelegate];
  v4 = [(CPSEntityResourceProvider *)v12 actionDelegate];
  v9 = [v3 stringWithFormat:@"%@\n\t%@\n\t%@\n\t%@\n\t%@", v8, v7, v6, v5, v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  return v9;
}

- (void)updateEntityTemplate:(id)a3 withProxyDelegate:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(CPSEntityResourceProvider *)v7 setEntityTemplate:location[0]];
  [(CPSEntityResourceProvider *)v7 setTemplateDelegate:v5];
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