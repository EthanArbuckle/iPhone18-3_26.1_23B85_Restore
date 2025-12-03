@interface ACCAppLinksAccessory
- (ACCAppLinksAccessory)initWithUUID:(id)d categories:(id)categories iconSize:(unsigned __int16)size certSerial:(id)serial withState:(id)state;
- (void)dealloc;
@end

@implementation ACCAppLinksAccessory

- (ACCAppLinksAccessory)initWithUUID:(id)d categories:(id)categories iconSize:(unsigned __int16)size certSerial:(id)serial withState:(id)state
{
  dCopy = d;
  categoriesCopy = categories;
  serialCopy = serial;
  stateCopy = state;
  v23.receiver = self;
  v23.super_class = ACCAppLinksAccessory;
  v17 = [(ACCAppLinksAccessory *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_uuid, d);
    objc_storeStrong(&v18->_categories, categories);
    v18->_iconSize = size;
    v19 = [serialCopy copy];
    certSerial = v18->_certSerial;
    v18->_certSerial = v19;

    objc_storeStrong(&v18->_subFeatureState, state);
    *&v18->_initialUpdateSent = 0;
    carPlayRetryUpdateTimer = v18->_carPlayRetryUpdateTimer;
    v18->_carPlayRetryUpdateTimer = 0;
  }

  return v18;
}

- (void)dealloc
{
  [(ACCAppLinksAccessory *)self setUuid:0];
  [(ACCAppLinksAccessory *)self setCategories:0];
  [(ACCAppLinksAccessory *)self setCertSerial:0];
  [(ACCAppLinksAccessory *)self setSubFeatureState:0];
  carPlayRetryUpdateTimer = [(ACCAppLinksAccessory *)self carPlayRetryUpdateTimer];

  if (carPlayRetryUpdateTimer)
  {
    carPlayRetryUpdateTimer2 = [(ACCAppLinksAccessory *)self carPlayRetryUpdateTimer];
    dispatch_source_cancel(carPlayRetryUpdateTimer2);

    [(ACCAppLinksAccessory *)self setCarPlayRetryUpdateTimer:0];
  }

  v5.receiver = self;
  v5.super_class = ACCAppLinksAccessory;
  [(ACCAppLinksAccessory *)&v5 dealloc];
}

@end