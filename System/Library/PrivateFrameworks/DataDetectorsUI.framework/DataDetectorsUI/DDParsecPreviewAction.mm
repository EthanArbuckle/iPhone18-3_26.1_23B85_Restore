@interface DDParsecPreviewAction
- (DDParsecPreviewAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context;
- (id)menuActionClasses;
- (void)prepareViewControllerForActionController:(id)controller;
@end

@implementation DDParsecPreviewAction

- (DDParsecPreviewAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  v9.receiver = self;
  v9.super_class = DDParsecPreviewAction;
  v5 = [(DDAction *)&v9 initWithURL:l result:result context:context];
  v6 = v5;
  if (v5)
  {
    [(DDParsecPreviewAction *)v5 setPreviewMode:1];
    v7 = v6;
  }

  return v6;
}

- (id)menuActionClasses
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8 = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v9[0] = v2;
  v7 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
  v9[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)prepareViewControllerForActionController:(id)controller
{
  v5.receiver = self;
  v5.super_class = DDParsecPreviewAction;
  controllerCopy = controller;
  [(DDAction *)&v5 prepareViewControllerForActionController:controllerCopy];
  [controllerCopy action:self presentationShouldBeModal:{0, v5.receiver, v5.super_class}];
}

@end