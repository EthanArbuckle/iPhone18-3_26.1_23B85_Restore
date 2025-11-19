@interface IdentityHeroViewControllerWrapper
- (IdentityHeroViewControllerWrapper)initWithImageData:(id)a3 title:(id)a4 subtitle:(id)a5 primaryButtonTitle:(id)a6 secondaryButtonTitle:(id)a7;
- (id)identityHeroViewController:(id)a3 secondaryButtonClicked:(id)a4;
@end

@implementation IdentityHeroViewControllerWrapper

- (IdentityHeroViewControllerWrapper)initWithImageData:(id)a3 title:(id)a4 subtitle:(id)a5 primaryButtonTitle:(id)a6 secondaryButtonTitle:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = IdentityHeroViewControllerWrapper;
  v17 = [(IdentityHeroViewControllerWrapper *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_imageData, a3);
    objc_storeStrong(&v18->_title, a4);
    objc_storeStrong(&v18->_subTitle, a5);
    objc_storeStrong(&v18->_primaryButtonTitle, a6);
    objc_storeStrong(&v18->_secondaryButtonTitle, a7);
  }

  return v18;
}

- (id)identityHeroViewController:(id)a3 secondaryButtonClicked:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v8 = getPKIdentityHeroViewControllerClass_softClass;
  v28 = getPKIdentityHeroViewControllerClass_softClass;
  if (!getPKIdentityHeroViewControllerClass_softClass)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getPKIdentityHeroViewControllerClass_block_invoke;
    v23 = &unk_278E87368;
    v24 = &v25;
    __getPKIdentityHeroViewControllerClass_block_invoke(&v20);
    v8 = v26[3];
  }

  v9 = v8;
  _Block_object_dispose(&v25, 8);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v10 = getPKIdentityHeroViewConfigurationClass_softClass;
  v28 = getPKIdentityHeroViewConfigurationClass_softClass;
  if (!getPKIdentityHeroViewConfigurationClass_softClass)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getPKIdentityHeroViewConfigurationClass_block_invoke;
    v23 = &unk_278E87368;
    v24 = &v25;
    __getPKIdentityHeroViewConfigurationClass_block_invoke(&v20);
    v10 = v26[3];
  }

  v11 = v10;
  _Block_object_dispose(&v25, 8);
  if (v8 && v10)
  {
    v12 = [objc_alloc(MEMORY[0x277D38060]) initWithIdentifier:@"AppleIdentityHeroViewImage" imageData:self->_imageData credentialType:129];
    v13 = [[v10 alloc] initWithImage:v12 title:self->_title subtitle:self->_subTitle primaryButtonTitle:self->_primaryButtonTitle secondaryButtonTitle:self->_secondaryButtonTitle];
    v14 = [[v8 alloc] initWithConfiguration:v13];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __87__IdentityHeroViewControllerWrapper_identityHeroViewController_secondaryButtonClicked___block_invoke;
    v18[3] = &unk_278E87340;
    v19 = v6;
    [v14 setPrimaryButtonClickedBlock:v18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __87__IdentityHeroViewControllerWrapper_identityHeroViewController_secondaryButtonClicked___block_invoke_2;
    v16[3] = &unk_278E87340;
    v17 = v7;
    [v14 setSecondaryButtonClickedBlock:v16];
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
  }

  return v14;
}

@end