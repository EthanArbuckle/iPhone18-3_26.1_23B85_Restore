@interface DDParsecPreviewAction
- (DDParsecPreviewAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5;
- (id)menuActionClasses;
- (void)prepareViewControllerForActionController:(id)a3;
@end

@implementation DDParsecPreviewAction

- (DDParsecPreviewAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5
{
  v9.receiver = self;
  v9.super_class = DDParsecPreviewAction;
  v5 = [(DDAction *)&v9 initWithURL:a3 result:a4 context:a5];
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

- (void)prepareViewControllerForActionController:(id)a3
{
  v5.receiver = self;
  v5.super_class = DDParsecPreviewAction;
  v4 = a3;
  [(DDAction *)&v5 prepareViewControllerForActionController:v4];
  [v4 action:self presentationShouldBeModal:{0, v5.receiver, v5.super_class}];
}

@end