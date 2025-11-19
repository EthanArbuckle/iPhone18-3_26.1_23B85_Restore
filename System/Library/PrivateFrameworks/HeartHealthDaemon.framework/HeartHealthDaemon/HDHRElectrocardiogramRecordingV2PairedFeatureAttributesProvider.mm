@interface HDHRElectrocardiogramRecordingV2PairedFeatureAttributesProvider
- (HDHRElectrocardiogramRecordingV2PairedFeatureAttributesProvider)initWithPairedFeatureAttributesProvider:(id)a3 pairedDeviceCapabilityProvider:(id)a4;
- (HKPairedFeatureAttributes)currentPairedFeatureAttributes;
@end

@implementation HDHRElectrocardiogramRecordingV2PairedFeatureAttributesProvider

- (HDHRElectrocardiogramRecordingV2PairedFeatureAttributesProvider)initWithPairedFeatureAttributesProvider:(id)a3 pairedDeviceCapabilityProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HDHRElectrocardiogramRecordingV2PairedFeatureAttributesProvider;
  v9 = [(HDHRElectrocardiogramRecordingV2PairedFeatureAttributesProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attributesProvider, a3);
    objc_storeStrong(&v10->_pairedDeviceProvider, a4);
  }

  return v10;
}

- (HKPairedFeatureAttributes)currentPairedFeatureAttributes
{
  v3 = [(HDPairedFeatureAttributesProviding *)self->_attributesProvider currentPairedFeatureAttributes];
  v4 = [v3 pairedAttributes];

  if (!v4)
  {
    v5 = [MEMORY[0x277CCDD30] sharedBehavior];
    v6 = [v5 isAppleWatch];

    v7 = HKHRElectrocardiogramRecordingV2WatchUDIDeviceIdentifier;
    if (!v6)
    {
      v7 = &HKHRElectrocardiogramRecordingV2PhoneUDIDeviceIdentifier;
    }

    v8 = *v7;
    v9 = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceProvider activePairedDevice];
    v10 = v9;
    if (v9)
    {
      v4 = [v9 valueForProperty:*MEMORY[0x277D2BAF0]];

      if (v4)
      {
        v11 = [v10 valueForProperty:*MEMORY[0x277D2BC08]];
        v12 = HKFeatureUpdateVersionFromMajorVersionAndBuildVersion();
        v13 = HKUDIDeviceIdentifierFromDeviceIdentifierAndBatchNumber();
        v14 = [v10 valueForProperty:*MEMORY[0x277D2BAE0]];
        v4 = [objc_alloc(MEMORY[0x277CCD3D8]) initWithFeatureVersion:@"2" updateVersion:v12 UDIDeviceIdentifier:v13 yearOfRelease:v14];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  v15 = objc_alloc(MEMORY[0x277CCD780]);
  v16 = [(HDPairedFeatureAttributesProviding *)self->_attributesProvider currentPairedFeatureAttributes];
  v17 = [v16 localAttributes];
  v18 = [v15 initWithLocalAttributes:v17 pairedAttributes:v4];

  return v18;
}

@end