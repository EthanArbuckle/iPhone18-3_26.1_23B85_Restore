@interface NTKPigmentEditOptionProvider
- (NTKFace)face;
- (NTKPigmentEditOptionProvider)initWithDomain:(id)a3 bundle:(id)a4;
- (NTKPigmentEditOptionProvider)initWithFace:(id)a3;
- (void)colorEditOptionStore:(id)a3 didChangeForDomain:(id)a4;
- (void)dealloc;
@end

@implementation NTKPigmentEditOptionProvider

- (NTKPigmentEditOptionProvider)initWithFace:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() pigmentFaceDomain];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [(NTKPigmentEditOptionProvider *)self initWithDomain:v5 bundle:v6];

  if (v7)
  {
    objc_storeWeak(&v7->_face, v4);
  }

  return v7;
}

- (NTKPigmentEditOptionProvider)initWithDomain:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NTKPigmentEditOptionProvider;
  v9 = [(NTKPigmentEditOptionProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundle, a4);
    objc_storeStrong(&v10->_domain, a3);
    v11 = +[NTKPigmentEditOptionStore sharedInstance];
    store = v10->_store;
    v10->_store = v11;

    [(NTKPigmentEditOptionStore *)v10->_store addListener:v10 forDomain:v10->_domain];
  }

  return v10;
}

- (void)dealloc
{
  [(NTKPigmentEditOptionStore *)self->_store removeListener:self forDomain:self->_domain];
  v3.receiver = self;
  v3.super_class = NTKPigmentEditOptionProvider;
  [(NTKPigmentEditOptionProvider *)&v3 dealloc];
}

- (void)colorEditOptionStore:(id)a3 didChangeForDomain:(id)a4
{
  if ([a4 isEqualToString:self->_domain])
  {
    v5 = [(NTKPigmentEditOptionProvider *)self face];

    if (v5)
    {
      v6 = [(NTKPigmentEditOptionProvider *)self face];
      [v6 _handleColorEditOptionsChanged];
    }
  }
}

- (NTKFace)face
{
  WeakRetained = objc_loadWeakRetained(&self->_face);

  return WeakRetained;
}

@end