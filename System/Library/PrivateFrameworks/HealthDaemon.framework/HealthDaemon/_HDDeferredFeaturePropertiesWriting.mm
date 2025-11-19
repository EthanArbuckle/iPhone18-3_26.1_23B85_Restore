@interface _HDDeferredFeaturePropertiesWriting
- (_HDDeferredFeaturePropertiesWriting)initWithLocalDomain:(id)a3 pairedDeviceRegistry:(id)a4;
- (void)synchronize;
@end

@implementation _HDDeferredFeaturePropertiesWriting

- (_HDDeferredFeaturePropertiesWriting)initWithLocalDomain:(id)a3 pairedDeviceRegistry:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _HDDeferredFeaturePropertiesWriting;
  v8 = [(_HDFeaturePropertiesWriting *)&v11 initWithLocalDomain:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pairedDeviceRegistry, a4);
  }

  return v9;
}

- (void)synchronize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50___HDDeferredFeaturePropertiesWriting_synchronize__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  if (qword_280D67D48 != -1)
  {
    dispatch_once(&qword_280D67D48, block);
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50___HDDeferredFeaturePropertiesWriting_synchronize__block_invoke_2;
  v3[3] = &unk_278613968;
  v3[4] = self;
  dispatch_async(_MergedGlobals_212, v3);
}

@end