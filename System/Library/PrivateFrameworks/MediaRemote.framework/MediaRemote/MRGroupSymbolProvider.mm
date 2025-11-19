@interface MRGroupSymbolProvider
+ (id)symbolNameForComposition:(id)a3;
+ (id)symbolNameForType:(id)a3 fillVariant:(BOOL)a4 otherVariantOptions:(unint64_t)a5;
@end

@implementation MRGroupSymbolProvider

+ (id)symbolNameForType:(id)a3 fillVariant:(BOOL)a4 otherVariantOptions:(unint64_t)a5
{
  v6 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  v9 = 1;
  if (v6)
  {
    v9 = 2;
  }

  v10 = v9 | a5;
  v11 = MEMORY[0x1E69A8A40];
  v12 = [v7 identifier];
  v21 = 0;
  v13 = [v11 symbolForTypeIdentifier:v12 withResolutionStrategy:1 variantOptions:v10 error:&v21];
  v14 = v21;

  v15 = [v13 name];
  v16 = v15;
  if (v14 || ![(__CFString *)v15 length])
  {
    v17 = _MRLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = [v8 identifier];
      *buf = 138544130;
      v23 = v20;
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

+ (id)symbolNameForComposition:(id)a3
{
  v4 = [a3 localizedGroupComposition];
  if ([v4 totalCount] == 1)
  {
    v5 = [v4 soloModelIdentifier];

    if (v5)
    {
      v6 = +[MRDeviceIdentifierSymbolProvider sharedProvider];
      v7 = [v4 soloModelIdentifier];
      v8 = [v6 symbolNameForModelID:v7];

      if (v8)
      {
        goto LABEL_23;
      }
    }
  }

  if ([v4 totalCount] == 1)
  {
    v9 = [v4 soloProductIdentifier];

    if (v9)
    {
      v10 = +[MRDeviceIdentifierSymbolProvider sharedProvider];
      v11 = [v4 soloProductIdentifier];
      v8 = [v10 symbolNameForProductIdentifier:v11];

      if (v8)
      {
        goto LABEL_23;
      }
    }
  }

  if ([v4 atvCount] && objc_msgSend(v4, "homePodCount"))
  {
    v12 = MEMORY[0x1E69830F0];
LABEL_10:
    v13 = *v12;
    v14 = a1;
    v15 = 0x400000;
LABEL_21:
    v17 = [v14 symbolNameForType:v13 fillVariant:1 otherVariantOptions:v15];
LABEL_22:
    v8 = v17;
    goto LABEL_23;
  }

  if ([v4 atvCount] && objc_msgSend(v4, "homePodMiniCount"))
  {
    v16 = MEMORY[0x1E69830F0];
LABEL_20:
    v13 = *v16;
    v14 = a1;
    v15 = 0x800000;
    goto LABEL_21;
  }

  if ([v4 atvCount] && objc_msgSend(v4, "hifiCount"))
  {
    v8 = @"hifispeaker.and.appletv.fill";
    goto LABEL_23;
  }

  if ([v4 homePodCount] && objc_msgSend(v4, "homePodMiniCount"))
  {
    v16 = MEMORY[0x1E6983140];
    goto LABEL_20;
  }

  if ([v4 homePodCount] && objc_msgSend(v4, "hifiCount"))
  {
    v8 = @"hifispeaker.and.homepod.fill";
    goto LABEL_23;
  }

  if ([v4 homePodMiniCount] && objc_msgSend(v4, "hifiCount"))
  {
    v8 = @"hifispeaker.and.homepodmini.fill";
    goto LABEL_23;
  }

  if ([v4 homePodCount] >= 2)
  {
    v12 = MEMORY[0x1E6983140];
    goto LABEL_10;
  }

  if ([v4 homePodCount])
  {
    v19 = MEMORY[0x1E6983140];
LABEL_36:
    v17 = [a1 symbolNameForType:*v19 fillVariant:1];
    goto LABEL_22;
  }

  if ([v4 homePodMiniCount] >= 2)
  {
    v20 = [MEMORY[0x1E6982C40] _typeWithDeviceModelCode:{@"AudioAccessory5, 1"}];
    v21 = [a1 symbolNameForType:v20 fillVariant:1 otherVariantOptions:0x800000];
LABEL_41:
    v8 = v21;

    goto LABEL_23;
  }

  if ([v4 homePodMiniCount])
  {
    v20 = [MEMORY[0x1E6982C40] _typeWithDeviceModelCode:{@"AudioAccessory5, 1"}];
    v21 = [a1 symbolNameForType:v20 fillVariant:1];
    goto LABEL_41;
  }

  if ([v4 hifiCount] <= 1)
  {
    if ([v4 hifiCount])
    {
      v8 = @"hifispeaker.fill";
    }

    else
    {
      if ([v4 atvCount])
      {
        v19 = MEMORY[0x1E69830F0];
        goto LABEL_36;
      }

      if ([v4 setTopCount])
      {
        v8 = @"tv.and.mediabox";
      }

      else if ([v4 tvStickCount])
      {
        v8 = @"mediastick";
      }

      else if ([v4 tvCount])
      {
        v8 = @"tv";
      }

      else if ([v4 macCount])
      {
        v8 = @"macbook";
      }

      else if ([v4 headphoneCount] <= 1)
      {
        if ([v4 headphoneCount])
        {
          v8 = @"headphones";
        }

        else if ([v4 bluetoothSpeakerCount])
        {
          v8 = @"speaker.bluetooth.fill";
        }

        else if ([v4 carplayCount])
        {
          v8 = @"carplay";
        }

        else if ([v4 vehicleCount])
        {
          v8 = @"car.fill";
        }

        else if ([v4 legacyBeatsCount])
        {
          v8 = @"beatslogo";
        }

        else if ([v4 iPhoneCount])
        {
          v8 = @"iphone";
        }

        else if ([v4 visionCount])
        {
          v8 = @"vision.pro.fill";
        }

        else if ([v4 displayCount])
        {
          v8 = @"display";
        }

        else if ([v4 hearingDeviceCount])
        {
          v8 = @"hearingdevice.ear";
        }

        else if ([v4 earPodCount])
        {
          v8 = @"earpods";
        }

        else
        {
          if (![v4 lofiCount])
          {
            if ([v4 builtInCount] == 1 && objc_msgSend(v4, "totalCount") == 1)
            {
              v17 = +[MRDeviceIdentifierSymbolProvider currentDeviceRoutingSymbolName];
              goto LABEL_22;
            }

            if ([v4 builtInCount] <= 1)
            {
              [v4 unknownCount];
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