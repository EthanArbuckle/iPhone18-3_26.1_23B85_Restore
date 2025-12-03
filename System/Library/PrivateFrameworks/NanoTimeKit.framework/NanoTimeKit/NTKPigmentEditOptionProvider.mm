@interface NTKPigmentEditOptionProvider
- (NTKFace)face;
- (NTKPigmentEditOptionProvider)initWithDomain:(id)domain bundle:(id)bundle;
- (NTKPigmentEditOptionProvider)initWithFace:(id)face;
- (void)colorEditOptionStore:(id)store didChangeForDomain:(id)domain;
- (void)dealloc;
@end

@implementation NTKPigmentEditOptionProvider

- (NTKPigmentEditOptionProvider)initWithFace:(id)face
{
  faceCopy = face;
  pigmentFaceDomain = [objc_opt_class() pigmentFaceDomain];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [(NTKPigmentEditOptionProvider *)self initWithDomain:pigmentFaceDomain bundle:v6];

  if (v7)
  {
    objc_storeWeak(&v7->_face, faceCopy);
  }

  return v7;
}

- (NTKPigmentEditOptionProvider)initWithDomain:(id)domain bundle:(id)bundle
{
  domainCopy = domain;
  bundleCopy = bundle;
  v14.receiver = self;
  v14.super_class = NTKPigmentEditOptionProvider;
  v9 = [(NTKPigmentEditOptionProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundle, bundle);
    objc_storeStrong(&v10->_domain, domain);
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

- (void)colorEditOptionStore:(id)store didChangeForDomain:(id)domain
{
  if ([domain isEqualToString:self->_domain])
  {
    face = [(NTKPigmentEditOptionProvider *)self face];

    if (face)
    {
      face2 = [(NTKPigmentEditOptionProvider *)self face];
      [face2 _handleColorEditOptionsChanged];
    }
  }
}

- (NTKFace)face
{
  WeakRetained = objc_loadWeakRetained(&self->_face);

  return WeakRetained;
}

@end