@interface ACCAppLinksAccessory
- (ACCAppLinksAccessory)initWithUUID:(id)a3 categories:(id)a4 iconSize:(unsigned __int16)a5 certSerial:(id)a6 withState:(id)a7;
- (void)dealloc;
@end

@implementation ACCAppLinksAccessory

- (ACCAppLinksAccessory)initWithUUID:(id)a3 categories:(id)a4 iconSize:(unsigned __int16)a5 certSerial:(id)a6 withState:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = ACCAppLinksAccessory;
  v17 = [(ACCAppLinksAccessory *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_uuid, a3);
    objc_storeStrong(&v18->_categories, a4);
    v18->_iconSize = a5;
    v19 = [v15 copy];
    certSerial = v18->_certSerial;
    v18->_certSerial = v19;

    objc_storeStrong(&v18->_subFeatureState, a7);
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
  v3 = [(ACCAppLinksAccessory *)self carPlayRetryUpdateTimer];

  if (v3)
  {
    v4 = [(ACCAppLinksAccessory *)self carPlayRetryUpdateTimer];
    dispatch_source_cancel(v4);

    [(ACCAppLinksAccessory *)self setCarPlayRetryUpdateTimer:0];
  }

  v5.receiver = self;
  v5.super_class = ACCAppLinksAccessory;
  [(ACCAppLinksAccessory *)&v5 dealloc];
}

@end