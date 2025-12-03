@interface HDHRElectrocardiogramRecordingV1PairedFeatureAttributesProvider
- (HDHRElectrocardiogramRecordingV1PairedFeatureAttributesProvider)initWithPairedFeatureAttributesProvider:(id)provider pairedDeviceCapabilityProvider:(id)capabilityProvider;
- (HKPairedFeatureAttributes)currentPairedFeatureAttributes;
@end

@implementation HDHRElectrocardiogramRecordingV1PairedFeatureAttributesProvider

- (HDHRElectrocardiogramRecordingV1PairedFeatureAttributesProvider)initWithPairedFeatureAttributesProvider:(id)provider pairedDeviceCapabilityProvider:(id)capabilityProvider
{
  providerCopy = provider;
  capabilityProviderCopy = capabilityProvider;
  v12.receiver = self;
  v12.super_class = HDHRElectrocardiogramRecordingV1PairedFeatureAttributesProvider;
  v9 = [(HDHRElectrocardiogramRecordingV1PairedFeatureAttributesProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attributesProvider, provider);
    objc_storeStrong(&v10->_pairedDeviceProvider, capabilityProvider);
  }

  return v10;
}

- (HKPairedFeatureAttributes)currentPairedFeatureAttributes
{
  currentPairedFeatureAttributes = [(HDPairedFeatureAttributesProviding *)self->_attributesProvider currentPairedFeatureAttributes];
  pairedAttributes = [currentPairedFeatureAttributes pairedAttributes];

  if (!pairedAttributes)
  {
    activePairedDevice = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceProvider activePairedDevice];
    v6 = activePairedDevice;
    if (activePairedDevice)
    {
      v7 = [activePairedDevice valueForProperty:*MEMORY[0x277D2BAF8]];
      if (v7)
      {
        v8 = [v6 valueForProperty:*MEMORY[0x277D2BAE8]];
        v9 = [v6 valueForProperty:*MEMORY[0x277D2BAE0]];
        pairedAttributes = [objc_alloc(MEMORY[0x277CCD3D8]) initWithFeatureVersion:@"1" updateVersion:v7 UDIDeviceIdentifier:v8 yearOfRelease:v9];
      }

      else
      {
        pairedAttributes = 0;
      }
    }

    else
    {
      pairedAttributes = 0;
    }
  }

  v10 = objc_alloc(MEMORY[0x277CCD780]);
  currentPairedFeatureAttributes2 = [(HDPairedFeatureAttributesProviding *)self->_attributesProvider currentPairedFeatureAttributes];
  localAttributes = [currentPairedFeatureAttributes2 localAttributes];
  v13 = [v10 initWithLocalAttributes:localAttributes pairedAttributes:pairedAttributes];

  return v13;
}

@end