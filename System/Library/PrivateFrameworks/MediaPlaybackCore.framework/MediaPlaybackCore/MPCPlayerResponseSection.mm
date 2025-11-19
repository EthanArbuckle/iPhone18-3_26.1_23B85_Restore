@interface MPCPlayerResponseSection
- (MPCPlayerResponse)response;
- (MPCPlayerResponseSection)initWithModelGenericObject:(id)a3 sectionIndex:(int64_t)a4 response:(id)a5;
- (id)_init;
@end

@implementation MPCPlayerResponseSection

- (MPCPlayerResponse)response
{
  WeakRetained = objc_loadWeakRetained(&self->_response);

  return WeakRetained;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MPCPlayerResponseSection;
  return [(MPCPlayerResponseSection *)&v3 init];
}

- (MPCPlayerResponseSection)initWithModelGenericObject:(id)a3 sectionIndex:(int64_t)a4 response:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = MPCPlayerResponseSection;
  v10 = [(MPCPlayerResponseSection *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_response, v9);
    objc_storeStrong(&v11->_metadataObject, a3);
  }

  return v11;
}

@end