@interface MPCPlayerResponseSection
- (MPCPlayerResponse)response;
- (MPCPlayerResponseSection)initWithModelGenericObject:(id)object sectionIndex:(int64_t)index response:(id)response;
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

- (MPCPlayerResponseSection)initWithModelGenericObject:(id)object sectionIndex:(int64_t)index response:(id)response
{
  objectCopy = object;
  responseCopy = response;
  v13.receiver = self;
  v13.super_class = MPCPlayerResponseSection;
  v10 = [(MPCPlayerResponseSection *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_response, responseCopy);
    objc_storeStrong(&v11->_metadataObject, object);
  }

  return v11;
}

@end