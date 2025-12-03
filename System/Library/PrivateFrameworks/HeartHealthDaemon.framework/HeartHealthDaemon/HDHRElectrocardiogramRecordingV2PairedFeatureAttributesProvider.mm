@interface HDHRElectrocardiogramRecordingV2PairedFeatureAttributesProvider
- (HDHRElectrocardiogramRecordingV2PairedFeatureAttributesProvider)initWithPairedFeatureAttributesProvider:(id)provider pairedDeviceCapabilityProvider:(id)capabilityProvider;
- (HKPairedFeatureAttributes)currentPairedFeatureAttributes;
@end

@implementation HDHRElectrocardiogramRecordingV2PairedFeatureAttributesProvider

- (HDHRElectrocardiogramRecordingV2PairedFeatureAttributesProvider)initWithPairedFeatureAttributesProvider:(id)provider pairedDeviceCapabilityProvider:(id)capabilityProvider
{
  providerCopy = provider;
  capabilityProviderCopy = capabilityProvider;
  v12.receiver = self;
  v12.super_class = HDHRElectrocardiogramRecordingV2PairedFeatureAttributesProvider;
  v9 = [(HDHRElectrocardiogramRecordingV2PairedFeatureAttributesProvider *)&v12 init];
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
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

    v7 = HKHRElectrocardiogramRecordingV2WatchUDIDeviceIdentifier;
    if (!isAppleWatch)
    {
      v7 = &HKHRElectrocardiogramRecordingV2PhoneUDIDeviceIdentifier;
    }

    v8 = *v7;
    activePairedDevice = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceProvider activePairedDevice];
    v10 = activePairedDevice;
    if (activePairedDevice)
    {
      pairedAttributes = [activePairedDevice valueForProperty:*MEMORY[0x277D2BAF0]];

      if (pairedAttributes)
      {
        v11 = [v10 valueForProperty:*MEMORY[0x277D2BC08]];
        v12 = HKFeatureUpdateVersionFromMajorVersionAndBuildVersion();
        v13 = HKUDIDeviceIdentifierFromDeviceIdentifierAndBatchNumber();
        v14 = [v10 valueForProperty:*MEMORY[0x277D2BAE0]];
        pairedAttributes = [objc_alloc(MEMORY[0x277CCD3D8]) initWithFeatureVersion:@"2" updateVersion:v12 UDIDeviceIdentifier:v13 yearOfRelease:v14];
      }
    }

    else
    {
      pairedAttributes = 0;
    }
  }

  v15 = objc_alloc(MEMORY[0x277CCD780]);
  currentPairedFeatureAttributes2 = [(HDPairedFeatureAttributesProviding *)self->_attributesProvider currentPairedFeatureAttributes];
  localAttributes = [currentPairedFeatureAttributes2 localAttributes];
  v18 = [v15 initWithLocalAttributes:localAttributes pairedAttributes:pairedAttributes];

  return v18;
}

@end