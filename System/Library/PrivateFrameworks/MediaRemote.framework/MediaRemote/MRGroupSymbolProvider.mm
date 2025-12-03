@interface MRGroupSymbolProvider
+ (id)symbolNameForComposition:(id)composition;
+ (id)symbolNameForType:(id)type fillVariant:(BOOL)variant otherVariantOptions:(unint64_t)options;
@end

@implementation MRGroupSymbolProvider

+ (id)symbolNameForType:(id)type fillVariant:(BOOL)variant otherVariantOptions:(unint64_t)options
{
  variantCopy = variant;
  v30 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v8 = typeCopy;
  v9 = 1;
  if (variantCopy)
  {
    v9 = 2;
  }

  v10 = v9 | options;
  v11 = MEMORY[0x1E69A8A40];
  identifier = [typeCopy identifier];
  v21 = 0;
  v13 = [v11 symbolForTypeIdentifier:identifier withResolutionStrategy:1 variantOptions:v10 error:&v21];
  v14 = v21;

  name = [v13 name];
  v16 = name;
  if (v14 || ![(__CFString *)name length])
  {
    v17 = _MRLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      identifier2 = [v8 identifier];
      *buf = 138544130;
      v23 = identifier2;
      v24 = 2048;
      v25 = v10;
      v26 = 2114;
      v27 = v14;
      v28 = 2114;
      v29 = v13;
      _os_log_error_impl(&dword_1A2860000, v17, OS_LOG_TYPE_ERROR, "Failed to find symbol with model: %{public}@ variant options: %lu error: %{public}@ symbol:%{public}@", buf, 0x2Au);
    }

    v16 = @"speaker.wave.2.fill";
  }

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)symbolNameForComposition:(id)composition
{
  localizedGroupComposition = [composition localizedGroupComposition];
  if ([localizedGroupComposition totalCount] == 1)
  {
    soloModelIdentifier = [localizedGroupComposition soloModelIdentifier];

    if (soloModelIdentifier)
    {
      v6 = +[MRDeviceIdentifierSymbolProvider sharedProvider];
      soloModelIdentifier2 = [localizedGroupComposition soloModelIdentifier];
      v8 = [v6 symbolNameForModelID:soloModelIdentifier2];

      if (v8)
      {
        goto LABEL_23;
      }
    }
  }

  if ([localizedGroupComposition totalCount] == 1)
  {
    soloProductIdentifier = [localizedGroupComposition soloProductIdentifier];

    if (soloProductIdentifier)
    {
      v10 = +[MRDeviceIdentifierSymbolProvider sharedProvider];
      soloProductIdentifier2 = [localizedGroupComposition soloProductIdentifier];
      v8 = [v10 symbolNameForProductIdentifier:soloProductIdentifier2];

      if (v8)
      {
        goto LABEL_23;
      }
    }
  }

  if ([localizedGroupComposition atvCount] && objc_msgSend(localizedGroupComposition, "homePodCount"))
  {
    v12 = MEMORY[0x1E69830F0];
LABEL_10:
    v13 = *v12;
    selfCopy2 = self;
    v15 = 0x400000;
LABEL_21:
    v17 = [selfCopy2 symbolNameForType:v13 fillVariant:1 otherVariantOptions:v15];
LABEL_22:
    v8 = v17;
    goto LABEL_23;
  }

  if ([localizedGroupComposition atvCount] && objc_msgSend(localizedGroupComposition, "homePodMiniCount"))
  {
    v16 = MEMORY[0x1E69830F0];
LABEL_20:
    v13 = *v16;
    selfCopy2 = self;
    v15 = 0x800000;
    goto LABEL_21;
  }

  if ([localizedGroupComposition atvCount] && objc_msgSend(localizedGroupComposition, "hifiCount"))
  {
    v8 = @"hifispeaker.and.appletv.fill";
    goto LABEL_23;
  }

  if ([localizedGroupComposition homePodCount] && objc_msgSend(localizedGroupComposition, "homePodMiniCount"))
  {
    v16 = MEMORY[0x1E6983140];
    goto LABEL_20;
  }

  if ([localizedGroupComposition homePodCount] && objc_msgSend(localizedGroupComposition, "hifiCount"))
  {
    v8 = @"hifispeaker.and.homepod.fill";
    goto LABEL_23;
  }

  if ([localizedGroupComposition homePodMiniCount] && objc_msgSend(localizedGroupComposition, "hifiCount"))
  {
    v8 = @"hifispeaker.and.homepodmini.fill";
    goto LABEL_23;
  }

  if ([localizedGroupComposition homePodCount] >= 2)
  {
    v12 = MEMORY[0x1E6983140];
    goto LABEL_10;
  }

  if ([localizedGroupComposition homePodCount])
  {
    v19 = MEMORY[0x1E6983140];
LABEL_36:
    v17 = [self symbolNameForType:*v19 fillVariant:1];
    goto LABEL_22;
  }

  if ([localizedGroupComposition homePodMiniCount] >= 2)
  {
    v20 = [MEMORY[0x1E6982C40] _typeWithDeviceModelCode:{@"AudioAccessory5, 1"}];
    v21 = [self symbolNameForType:v20 fillVariant:1 otherVariantOptions:0x800000];
LABEL_41:
    v8 = v21;

    goto LABEL_23;
  }

  if ([localizedGroupComposition homePodMiniCount])
  {
    v20 = [MEMORY[0x1E6982C40] _typeWithDeviceModelCode:{@"AudioAccessory5, 1"}];
    v21 = [self symbolNameForType:v20 fillVariant:1];
    goto LABEL_41;
  }

  if ([localizedGroupComposition hifiCount] <= 1)
  {
    if ([localizedGroupComposition hifiCount])
    {
      v8 = @"hifispeaker.fill";
    }

    else
    {
      if ([localizedGroupComposition atvCount])
      {
        v19 = MEMORY[0x1E69830F0];
        goto LABEL_36;
      }

      if ([localizedGroupComposition setTopCount])
      {
        v8 = @"tv.and.mediabox";
      }

      else if ([localizedGroupComposition tvStickCount])
      {
        v8 = @"mediastick";
      }

      else if ([localizedGroupComposition tvCount])
      {
        v8 = @"tv";
      }

      else if ([localizedGroupComposition macCount])
      {
        v8 = @"macbook";
      }

      else if ([localizedGroupComposition headphoneCount] <= 1)
      {
        if ([localizedGroupComposition headphoneCount])
        {
          v8 = @"headphones";
        }

        else if ([localizedGroupComposition bluetoothSpeakerCount])
        {
          v8 = @"speaker.bluetooth.fill";
        }

        else if ([localizedGroupComposition carplayCount])
        {
          v8 = @"carplay";
        }

        else if ([localizedGroupComposition vehicleCount])
        {
          v8 = @"car.fill";
        }

        else if ([localizedGroupComposition legacyBeatsCount])
        {
          v8 = @"beatslogo";
        }

        else if ([localizedGroupComposition iPhoneCount])
        {
          v8 = @"iphone";
        }

        else if ([localizedGroupComposition visionCount])
        {
          v8 = @"vision.pro.fill";
        }

        else if ([localizedGroupComposition displayCount])
        {
          v8 = @"display";
        }

        else if ([localizedGroupComposition hearingDeviceCount])
        {
          v8 = @"hearingdevice.ear";
        }

        else if ([localizedGroupComposition earPodCount])
        {
          v8 = @"earpods";
        }

        else
        {
          if (![localizedGroupComposition lofiCount])
          {
            if ([localizedGroupComposition builtInCount] == 1 && objc_msgSend(localizedGroupComposition, "totalCount") == 1)
            {
              v17 = +[MRDeviceIdentifierSymbolProvider currentDeviceRoutingSymbolName];
              goto LABEL_22;
            }

            if ([localizedGroupComposition builtInCount] <= 1)
            {
              [localizedGroupComposition unknownCount];
            }
          }

          v8 = @"speaker.wave.2.fill";
        }
      }

      else
      {
        v8 = @"person.2.fill";
      }
    }
  }

  else
  {
    v8 = @"hifispeaker.2.fill";
  }

LABEL_23:

  return v8;
}

@end