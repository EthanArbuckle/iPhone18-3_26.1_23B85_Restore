@interface HDHRElectrocardiogramRecordingV1PairedFeatureAttributesProvider
- (HDHRElectrocardiogramRecordingV1PairedFeatureAttributesProvider)initWithPairedFeatureAttributesProvider:(id)a3 pairedDeviceCapabilityProvider:(id)a4;
- (HKPairedFeatureAttributes)currentPairedFeatureAttributes;
@end

@implementation HDHRElectrocardiogramRecordingV1PairedFeatureAttributesProvider

- (HDHRElectrocardiogramRecordingV1PairedFeatureAttributesProvider)initWithPairedFeatureAttributesProvider:(id)a3 pairedDeviceCapabilityProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HDHRElectrocardiogramRecordingV1PairedFeatureAttributesProvider;
  v9 = [(HDHRElectrocardiogramRecordingV1PairedFeatureAttributesProvider *)&v12 init];
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
    v5 = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceProvider activePairedDevice];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 valueForProperty:*MEMORY[0x277D2BAF8]];
      if (v7)
      {
        v8 = [v6 valueForProperty:*MEMORY[0x277D2BAE8]];
        v9 = [v6 valueForProperty:*MEMORY[0x277D2BAE0]];
        v4 = [objc_alloc(MEMORY[0x277CCD3D8]) initWithFeatureVersion:@"1" updateVersion:v7 UDIDeviceIdentifier:v8 yearOfRelease:v9];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  v10 = objc_alloc(MEMORY[0x277CCD780]);
  v11 = [(HDPairedFeatureAttributesProviding *)self->_attributesProvider currentPairedFeatureAttributes];
  v12 = [v11 localAttributes];
  v13 = [v10 initWithLocalAttributes:v12 pairedAttributes:v4];

  return v13;
}

@end