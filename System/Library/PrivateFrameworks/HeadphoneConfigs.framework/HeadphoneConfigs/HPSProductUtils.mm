@interface HPSProductUtils
+ (BOOL)isAirPods:(id)pods;
+ (BOOL)isAppleHeadphone:(id)headphone;
+ (BOOL)isBeatsNonWx:(id)wx;
+ (BOOL)isFeatureSupported:(int)supported byProductId:(unsigned int)id;
+ (BOOL)isRealityDevice;
+ (id)getProductIDString:(unsigned int)string;
+ (id)getProductSpecificString:(unsigned int)string descriptionKey:(id)key;
@end

@implementation HPSProductUtils

+ (id)getProductSpecificString:(unsigned int)string descriptionKey:(id)key
{
  v19 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (string <= 8214)
  {
    if (string > 8210)
    {
      if (string == 8211)
      {
        v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v7 = v6;
        v8 = @"DeviceConfig-B688";
        goto LABEL_30;
      }

      if (string == 8212)
      {
        goto LABEL_24;
      }

      if (string != 8214)
      {
        goto LABEL_36;
      }

      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"DeviceConfig-B607";
    }

    else
    {
      if (string == 8202)
      {
LABEL_23:
        v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v7 = v6;
        v8 = @"DeviceConfig-b515";
        goto LABEL_30;
      }

      if (string == 8209)
      {
        v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v7 = v6;
        v8 = @"DeviceConfig-B507";
        goto LABEL_30;
      }

      if (string != 8210)
      {
        goto LABEL_36;
      }

      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"DeviceConfig-B494";
    }

LABEL_30:
    v9 = [v6 localizedStringForKey:keyCopy value:&stru_286339F58 table:v8];

    goto LABEL_31;
  }

  if (string <= 8222)
  {
    if (string == 8215)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"DeviceConfig-B453";
      goto LABEL_30;
    }

    if (string == 8218)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"DeviceConfig-B487";
      goto LABEL_30;
    }

    if (string != 8221)
    {
      goto LABEL_36;
    }

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"DeviceConfig-B498-v2";
    goto LABEL_30;
  }

  if (string <= 8229)
  {
    if (string != 8223)
    {
      if (string != 8228)
      {
        goto LABEL_36;
      }

LABEL_24:
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"DeviceConfig-B698";
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  if (string == 8230)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"DeviceConfig-B463";
    goto LABEL_30;
  }

  if (string == 8239)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"DeviceConfig-B494b";
    goto LABEL_30;
  }

LABEL_36:
  v13 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(HPSProductUtils *)keyCopy getProductSpecificString:string descriptionKey:v13];
  }

  v9 = &stru_286339F58;
LABEL_31:
  v10 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109634;
    v14[1] = string;
    v15 = 2112;
    v16 = keyCopy;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_251143000, v10, OS_LOG_TYPE_DEFAULT, "HPSProductUtils: getProductSpecificString called with pid %d and descKey %@ value %@", v14, 0x1Cu);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (BOOL)isAppleHeadphone:(id)headphone
{
  headphoneCopy = headphone;
  v4 = headphoneCopy;
  if (headphoneCopy)
  {
    v5 = ([headphoneCopy isAppleAudioDevice] & 1) != 0 || objc_msgSend(v4, "productId") == 8209;
    if ([v4 productId] == 8214)
    {
      v5 = 1;
    }
  }

  else
  {
    v6 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(HPSProductUtils *)v6 isAppleHeadphone:v7, v8, v9, v10, v11, v12, v13];
    }

    v5 = 0;
  }

  return v5;
}

+ (BOOL)isAirPods:(id)pods
{
  v20 = *MEMORY[0x277D85DE8];
  podsCopy = pods;
  v4 = podsCopy;
  if (podsCopy)
  {
    productId = [podsCopy productId];
    v6 = ((productId - 8194) < 0x23) & (0x420063101uLL >> (productId - 2));
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17[0] = 67109376;
      v17[1] = v6;
      v18 = 1024;
      productId2 = [v4 productId];
      _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "HPSProductUtils: isAirPods:%i productID:%i", v17, 0xEu);
    }
  }

  else
  {
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(HPSProductUtils *)v7 isAirPods:v8, v9, v10, v11, v12, v13, v14];
    }

    LOBYTE(v6) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)isBeatsNonWx:(id)wx
{
  wxCopy = wx;
  v4 = wxCopy;
  if (wxCopy)
  {
    productId = [wxCopy productId];
    productId2 = [v4 productId];
    productId3 = [v4 productId];
    v10 = productId == 8209 || productId2 == 8214 || productId3 == 8230;
  }

  else
  {
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(HPSProductUtils *)v11 isBeatsNonWx:v12, v13, v14, v15, v16, v17, v18];
    }

    v10 = 0;
  }

  return v10;
}

+ (BOOL)isFeatureSupported:(int)supported byProductId:(unsigned int)id
{
  v4 = 0x201C6B37FF01uLL >> (id - 2);
  if (id - 8194 >= 0x2E)
  {
    LOBYTE(v4) = 0;
  }

  v5 = 0x14630611u >> (id - 10);
  if (id - 8202 >= 0x1D)
  {
    LOBYTE(v5) = 0;
  }

  if (supported)
  {
    LOBYTE(v5) = 0;
  }

  if (supported != 1)
  {
    LOBYTE(v4) = v5;
  }

  return v4 & 1;
}

+ (BOOL)isRealityDevice
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"RealityDevice"];

  return v3;
}

+ (id)getProductIDString:(unsigned int)string
{
  if (string - 8194 > 0x2D)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_2796AD938[string - 8194];
  }
}

+ (void)getProductSpecificString:(os_log_t)log descriptionKey:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_251143000, log, OS_LOG_TYPE_ERROR, "HPSProductUtils: getProductSpecificString called with invalid pid %d and (or) descKey %@", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end