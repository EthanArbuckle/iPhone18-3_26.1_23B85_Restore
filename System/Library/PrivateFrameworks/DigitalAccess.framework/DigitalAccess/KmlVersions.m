@interface KmlVersions
- (KmlVersions)initWithEndpoint:(id)a3 downgradeFrameworkSetting:(id)a4;
- (_DAVersionUpgrade)hasUpgradeForVersionType:(SEL)a3 versions:(unint64_t)a4 isOwnerPairedKey:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)generateKmlSupportedVehicleServerVersionsData;
- (id)getAgreedBluetoothVersionsTlv;
- (id)getVehicleSupportedVersionsData;
- (id)ourSupportedFrameworkVersionsAsCAString;
- (id)updateSupportedFrameworkVersionsForSharing:(id)a3;
- (id)updateVehicleServerSupportedVersions:(id)a3;
- (id)updateVehicleSupportedAppletVersions:(id)a3;
- (id)updateVehicleSupportedBluetoothVersions:(id)a3;
- (id)updateVehicleSupportedFrameworkVersions:(id)a3;
- (uint64_t)generateFrameworkSupportedSharingVersions;
- (uint64_t)getAppletSupportedVersionForValue:(uint64_t)a1;
- (uint64_t)getKmlSupportedVersionForValue:(uint64_t)a1;
- (uint64_t)getVehicleServerSupportedVersionForValue:(uint64_t)a1;
- (void)downgradePreferredVersion;
- (void)downgradePreferredVersion_internal;
- (void)generateAllData;
- (void)generateAppletSupportedVersions;
- (void)generateFrameworkSupportedPairingVersions;
- (void)parseVehicleSupportedVersions;
- (void)upgradeForVersionType:(unint64_t)a3 version:(unint64_t)a4;
@end

@implementation KmlVersions

- (KmlVersions)initWithEndpoint:(id)a3 downgradeFrameworkSetting:(id)a4
{
  v7 = a3;
  v32.receiver = self;
  v32.super_class = KmlVersions;
  v8 = [(KmlVersions *)&v32 init];
  if (v8)
  {
    v10 = objc_opt_new();
    v8->_downgradeFrameworkVersion = [v10 defaultBoolValueForSetting:2];
    v8->_upgradeEnabledForFriendKey = [v10 defaultBoolValueForSetting:5];
    v8->_upgradeEnabledForOwnerKey = [v10 defaultBoolValueForSetting:6];
    objc_storeStrong(&v8->_endpoint, a3);
    endpoint = v8->_endpoint;
    if (endpoint)
    {
      v12 = [(SEEndPoint *)endpoint readerInfo];
      v13 = [objc_alloc(MEMORY[0x277D82418]) initWithReaderInformation:v12];
      v14 = v13;
      if (!a4)
      {
        v15 = [v13 manufacturer];
        v16 = [v14 brand];
        v17 = [(SEEndPoint *)v8->_endpoint readerConfigID];
        v8->_downgradeFrameworkVersion = [v10 BOOLValueForSetting:2 manufacturer:v15 brand:v16 uuid:v17 error:0];
      }

      v18 = [v14 manufacturer];
      v19 = [v14 brand];
      v20 = [(SEEndPoint *)v8->_endpoint readerConfigID];
      v8->_upgradeEnabledForFriendKey = [v10 BOOLValueForSetting:5 manufacturer:v18 brand:v19 uuid:v20 error:0];

      v21 = [v14 manufacturer];
      v22 = [v14 brand];
      v23 = [(SEEndPoint *)v8->_endpoint readerConfigID];
      v8->_upgradeEnabledForOwnerKey = [v10 BOOLValueForSetting:6 manufacturer:v21 brand:v22 uuid:v23 error:0];
    }

    v24 = +[KmlVersionOverride sharedVersionsOverrides];
    v8->_keyRoleToShare = [v24 keyRoleToShare];
    v25 = [v10 useAppletVersionsForCertificationTesting];
    v26 = &unk_285B9CDF0;
    appletSupportedVersionsList = v8->_appletSupportedVersionsList;
    if (v25)
    {
      v26 = &unk_285B9CDD8;
    }

    v8->_appletSupportedVersionsList = v26;

    v8->_agreedKmlSharingVersion = 256;
    if ([v24 kmlOverrideVersion] == 768 && !v8->_downgradeFrameworkVersion)
    {
      kmlSupportedVersionsList = v8->_kmlSupportedVersionsList;
      v8->_kmlSupportedVersionsList = &unk_285B9CE08;

      kmlUpgradeReadyVersionsList = v8->_kmlUpgradeReadyVersionsList;
      v8->_kmlUpgradeReadyVersionsList = &unk_285B9CE20;

      v8->_ourPreferredKmlVersion = 768;
      kmlSupportedVehicleServerVersionsList = v8->_kmlSupportedVehicleServerVersionsList;
      v8->_kmlSupportedVehicleServerVersionsList = &unk_285B9CE38;

      vehicleServerVersionsUpgradeReadyList = v8->_vehicleServerVersionsUpgradeReadyList;
      v8->_vehicleServerVersionsUpgradeReadyList = &unk_285B9CE50;

      v8->_ourPreferredVehicleServerVersion = 768;
    }

    else
    {
      [(KmlVersions *)v8 downgradePreferredVersion_internal];
    }

    [(KmlVersions *)v8 generateAllData];
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"VehicleSupportedFrameworkVersions   : %@\n", self->_vehicleSupportedFrameworkVersionsTlvAsData];
  [v3 appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"VehicleSupportedAppletVersions      : %@\n", self->_vehicleSupportedAppletVersionsTlvAsData];
  [v3 appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"VehicleSupportedBTVersions          : %@\n", self->_vehicleSupportedBluetoothVersionsTlvAsData];
  [v3 appendString:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"PreferredFrameworkVersion           : 0x%02X\n", self->_ourPreferredKmlVersion];
  [v3 appendString:v7];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"AgreedFrameworkVersion              : 0x%02X\n", self->_agreedKmlVehicleVersion];
  [v3 appendString:v8];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"AgreedAppletVersion                 : 0x%02X\n", self->_agreedAppletVehicleVersion];
  [v3 appendString:v9];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"AgreedSharingFrameworkVersion       : 0x%02X\n", self->_agreedKmlSharingVersion];
  [v3 appendString:v10];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"AgreedVehicleServerVersion          : 0x%02X\n", self->_agreedKmlVehicleServerVersion];
  [v3 appendString:v11];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"AgreedBluetoothVersion              : 0x%02X\n", self->_agreedKmlBluetoothVersion];
  [v3 appendString:v12];

  return v3;
}

- (void)downgradePreferredVersion
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_248BF3000, v5, v6, "%s : %i : Let's downgrade to v1", v7, v8, v9, v10, v12);
  }

  *(a3 + 18) = 1;
  [(KmlVersions *)a3 downgradePreferredVersion_internal];
  [(KmlVersions *)a3 generateAllData];
  v11 = *MEMORY[0x277D85DE8];
}

- (id)updateVehicleServerSupportedVersions:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    [KmlTlv TLVsWithData:v4];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = v22 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v6)
    {
      v7 = *v20;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          if ([v9 tag] == 93)
          {
            v6 = [v9 value];
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    if ([v6 length] > 1)
    {
      bswap32(*[v6 bytes]);
      v14 = 0;
      self->_agreedKmlVehicleServerVersion = [KmlVersions getVehicleServerSupportedVersionForValue:?];
    }

    else
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v23 = *MEMORY[0x277CCA450];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
      v24 = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v14 = [v10 errorWithDomain:v11 code:22 userInfo:v13];
    }
  }

  else
  {
    v15 = MEMORY[0x277CCA9B8];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v26 = *MEMORY[0x277CCA450];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
    v27[0] = v6;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v14 = [v15 errorWithDomain:v5 code:22 userInfo:v16];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)updateVehicleSupportedAppletVersions:(id)a3
{
  v36[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 length])
  {
    v18 = MEMORY[0x277CCA9B8];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v35 = *MEMORY[0x277CCA450];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
    v36[0] = v6;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v17 = [v18 errorWithDomain:v5 code:22 userInfo:v14];
    goto LABEL_16;
  }

  [KmlTlv TLVsWithData:v4];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v27 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v6)
  {
    v7 = *v25;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        if ([v9 tag] == 92)
        {
          v6 = [v9 value];
          v10 = [v9 asData];
          vehicleSupportedAppletVersionsTlvAsData = self->_vehicleSupportedAppletVersionsTlvAsData;
          self->_vehicleSupportedAppletVersionsTlvAsData = v10;

          goto LABEL_12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if ([v6 length] <= 1)
  {
    v12 = self->_vehicleSupportedAppletVersionsTlvAsData;
    self->_vehicleSupportedAppletVersionsTlvAsData = 0;

    v13 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v32 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
    v33 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v17 = [v13 errorWithDomain:v14 code:22 userInfo:v16];

LABEL_14:
LABEL_16:

    goto LABEL_17;
  }

  bswap32(*[v6 bytes]);
  v21 = [KmlVersions getAppletSupportedVersionForValue:?];
  self->_agreedAppletVehicleVersion = v21;
  if (!v21)
  {
    v22 = KmlLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v29 = "[KmlVersions updateVehicleSupportedAppletVersions:]";
      v30 = 1024;
      v31 = 270;
      _os_log_impl(&dword_248BF3000, v22, OS_LOG_TYPE_INFO, "%s : %i : Treating unknown vehicle applet version as v1", buf, 0x12u);
    }

    self->_agreedAppletVehicleVersion = 256;
    v14 = [KmlTlv TLVWithTag:92 unsignedShort:256];
    v23 = [v14 asData];
    v17 = 0;
    v15 = self->_vehicleSupportedAppletVersionsTlvAsData;
    self->_vehicleSupportedAppletVersionsTlvAsData = v23;
    goto LABEL_14;
  }

  v17 = 0;
LABEL_17:

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)updateVehicleSupportedFrameworkVersions:(id)a3
{
  v44[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    [KmlTlv TLVsWithData:v4];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v5 = v35 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v6)
    {
      v7 = *v33;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v33 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v32 + 1) + 8 * i);
          if ([v9 tag] == 91)
          {
            v6 = [v9 value];
            v10 = [v9 asData];
            vehicleSupportedFrameworkVersionsTlvAsData = self->_vehicleSupportedFrameworkVersionsTlvAsData;
            self->_vehicleSupportedFrameworkVersionsTlvAsData = v10;

            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v32 objects:v42 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    if ([v6 length] > 1)
    {
      v22 = [MEMORY[0x277CCAB68] string];
      v23 = [v6 bytes];
      v24 = bswap32(*v23);
      agreedKmlVehicleVersion = [KmlVersions getKmlSupportedVersionForValue:?];
      self->_agreedKmlVehicleVersion = agreedKmlVehicleVersion;
      if (!agreedKmlVehicleVersion)
      {
        v26 = KmlLogger();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v37 = "[KmlVersions updateVehicleSupportedFrameworkVersions:]";
          v38 = 1024;
          v39 = 308;
          _os_log_impl(&dword_248BF3000, v26, OS_LOG_TYPE_INFO, "%s : %i : Treating unknown vehicle version as v1", buf, 0x12u);
        }

        self->_agreedKmlVehicleVersion = 256;
        v27 = [KmlTlv TLVWithTag:91 unsignedShort:256];
        v28 = [v27 asData];
        v29 = self->_vehicleSupportedFrameworkVersionsTlvAsData;
        self->_vehicleSupportedFrameworkVersionsTlvAsData = v28;

        agreedKmlVehicleVersion = self->_agreedKmlVehicleVersion;
      }

      [v22 appendFormat:@"%04X", agreedKmlVehicleVersion];
      if ([v6 length] >= 4)
      {
        [v22 appendFormat:@", %04X", __rev16(v23[1])];
      }

      vehicleSupportedFrameworkVersionsForCA = self->_vehicleSupportedFrameworkVersionsForCA;
      self->_vehicleSupportedFrameworkVersionsForCA = v22;
      v31 = v22;

      LODWORD(vehicleSupportedFrameworkVersionsForCA) = [KmlVersions doesVersion:self->_agreedKmlVehicleVersion support:768];
      if (vehicleSupportedFrameworkVersionsForCA)
      {
        self->_agreedKmlVehicleServerVersion = 768;
      }

      [(KmlVersions *)self generateFrameworkSupportedSharingVersions];
      v17 = 0;
    }

    else
    {
      v12 = self->_vehicleSupportedFrameworkVersionsTlvAsData;
      self->_vehicleSupportedFrameworkVersionsTlvAsData = 0;

      v13 = MEMORY[0x277CCA9B8];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v40 = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
      v41 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v17 = [v13 errorWithDomain:v14 code:22 userInfo:v16];
    }
  }

  else
  {
    v18 = MEMORY[0x277CCA9B8];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v43 = *MEMORY[0x277CCA450];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
    v44[0] = v6;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v17 = [v18 errorWithDomain:v5 code:22 userInfo:v19];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)updateSupportedFrameworkVersionsForSharing:(id)a3
{
  v39[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v33 = "[KmlVersions updateSupportedFrameworkVersionsForSharing:]";
      v34 = 1024;
      v35 = 339;
      v36 = 2112;
      v37 = v4;
      _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : versionData: %@", buf, 0x1Cu);
    }

    [KmlTlv TLVsWithData:v4];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v28 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          if ([v11 tag] == 84 || objc_msgSend(v11, "tag") == 85)
          {
            v12 = [v11 value];
            goto LABEL_17;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v31 count:16];
        v12 = 0;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_17:

    if ([v12 length] > 1)
    {
      bswap32(*[v12 bytes]);
      v22 = [KmlVersions getKmlSupportedVersionForValue:?];
      self->_agreedKmlSharingVersion = v22;
      if (v22)
      {
        goto LABEL_26;
      }

      v23 = KmlLogger();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v33 = "[KmlVersions updateSupportedFrameworkVersionsForSharing:]";
        v34 = 1024;
        v35 = 360;
        _os_log_impl(&dword_248BF3000, v23, OS_LOG_TYPE_INFO, "%s : %i : Treating unknown sharing version as v1 for sharing", buf, 0x12u);
      }

      self->_agreedKmlSharingVersion = 256;
      if (self->_agreedKmlVehicleVersion)
      {
LABEL_26:
        v15 = 0;
      }

      else
      {
        v24 = KmlLogger();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v33 = "[KmlVersions updateSupportedFrameworkVersionsForSharing:]";
          v34 = 1024;
          v35 = 363;
          _os_log_impl(&dword_248BF3000, v24, OS_LOG_TYPE_INFO, "%s : %i : Sync agreed vehicle version to v1", buf, 0x12u);
        }

        v15 = 0;
        self->_agreedKmlVehicleVersion = 256;
      }
    }

    else
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v29 = *MEMORY[0x277CCA450];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
      v30 = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v15 = [v16 errorWithDomain:v17 code:22 userInfo:v19];
    }
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v38 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
    v39[0] = v12;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v15 = [v13 errorWithDomain:v6 code:22 userInfo:v14];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)updateVehicleSupportedBluetoothVersions:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    [KmlTlv TLVsWithData:v4];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = v25 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v6)
    {
      v7 = *v23;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          if ([v9 tag] == 94)
          {
            v6 = [v9 value];
            v10 = [v9 asData];
            vehicleSupportedBluetoothVersionsTlvAsData = self->_vehicleSupportedBluetoothVersionsTlvAsData;
            self->_vehicleSupportedBluetoothVersionsTlvAsData = v10;

            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    if ([v6 length] > 1)
    {
      v17 = 0;
      self->_agreedKmlBluetoothVersion = 256;
    }

    else
    {
      v12 = self->_vehicleSupportedBluetoothVersionsTlvAsData;
      self->_vehicleSupportedBluetoothVersionsTlvAsData = 0;

      v13 = MEMORY[0x277CCA9B8];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v26 = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
      v27 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v17 = [v13 errorWithDomain:v14 code:22 userInfo:v16];
    }
  }

  else
  {
    v18 = MEMORY[0x277CCA9B8];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v29 = *MEMORY[0x277CCA450];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:KmlErrorString(22)];
    v30[0] = v6;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v17 = [v18 errorWithDomain:v5 code:22 userInfo:v19];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)getVehicleSupportedVersionsData
{
  v3 = [MEMORY[0x277CBEB28] data];
  v4 = v3;
  if (self->_vehicleSupportedFrameworkVersionsTlvAsData)
  {
    [v3 appendData:?];
  }

  if (self->_vehicleSupportedAppletVersionsTlvAsData)
  {
    [v4 appendData:?];
  }

  v5 = [(KmlVersions *)self generateKmlSupportedVehicleServerVersionsData];
  [v4 appendData:v5];

  if ([(NSData *)self->_vehicleSupportedBluetoothVersionsTlvAsData length])
  {
    [v4 appendData:self->_vehicleSupportedBluetoothVersionsTlvAsData];
  }

  if ([v4 length])
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getAgreedBluetoothVersionsTlv
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_agreedKmlBluetoothVersion)
  {
    v2 = [KmlTlv TLVWithTag:95 unsignedShort:?];
  }

  else
  {
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[KmlVersions getAgreedBluetoothVersionsTlv]";
      v8 = 1024;
      v9 = 435;
      _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : Vehicle never provided a supported versiosn list", &v6, 0x12u);
    }

    v2 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)ourSupportedFrameworkVersionsAsCAString
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_kmlSupportedVersionsList;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"%04X, ", objc_msgSend(*(*(&v11 + 1) + 8 * i), "unsignedShortValue")];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (_DAVersionUpgrade)hasUpgradeForVersionType:(SEL)a3 versions:(unint64_t)a4 isOwnerPairedKey:(id)a5
{
  v6 = a6;
  v62 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = [MEMORY[0x277CCAB68] string];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v50;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v10 appendFormat:@"0x%04lx, ", objc_msgSend(*(*(&v49 + 1) + 8 * i), "longValue")];
      }

      v13 = [v11 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v13);
  }

  v16 = KmlLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v55 = "[KmlVersions hasUpgradeForVersionType:versions:isOwnerPairedKey:]";
    v56 = 1024;
    v57 = 471;
    v58 = 2112;
    *v59 = v10;
    _os_log_impl(&dword_248BF3000, v16, OS_LOG_TYPE_INFO, "%s : %i : Requested Versions = { %@ }", buf, 0x1Cu);
  }

  retstr->var2 = 0;
  p_var2 = &retstr->var2;
  retstr->var0 = a4;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  if (v6)
  {
    if (!self->_upgradeEnabledForOwnerKey)
    {
      v18 = KmlLogger();
      if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v55 = "[KmlVersions hasUpgradeForVersionType:versions:isOwnerPairedKey:]";
        v56 = 1024;
        v57 = 477;
        v19 = "%s : %i : Upgrade disabled for owner paired key by settings";
LABEL_33:
        _os_log_impl(&dword_248BF3000, &v18->super, OS_LOG_TYPE_INFO, v19, buf, 0x12u);
        goto LABEL_54;
      }

      goto LABEL_54;
    }
  }

  else if (!self->_upgradeEnabledForFriendKey)
  {
    v18 = KmlLogger();
    if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v55 = "[KmlVersions hasUpgradeForVersionType:versions:isOwnerPairedKey:]";
      v56 = 1024;
      v57 = 480;
      v19 = "%s : %i : Upgrade disabled for friend key by settings";
      goto LABEL_33;
    }

LABEL_54:

    goto LABEL_55;
  }

  if (a4 == 2)
  {
    *p_var2 = self->_agreedKmlVehicleServerVersion;
    v29 = KmlLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v55 = "[KmlVersions hasUpgradeForVersionType:versions:isOwnerPairedKey:]";
      v56 = 1024;
      v57 = 502;
      _os_log_impl(&dword_248BF3000, v29, OS_LOG_TYPE_INFO, "%s : %i : Looking for available upgrade of VehicleServer version", buf, 0x12u);
    }

    if (self->_ourPreferredVehicleServerVersion != self->_agreedKmlVehicleServerVersion)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v18 = self->_vehicleServerVersionsUpgradeReadyList;
      v30 = [(NSArray *)v18 countByEnumeratingWithState:&v41 objects:v53 count:16];
      if (!v30)
      {
        goto LABEL_54;
      }

      v31 = v30;
      v32 = *v42;
LABEL_39:
      v33 = 0;
      while (1)
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(v18);
        }

        v25 = *(*(&v41 + 1) + 8 * v33);
        v34 = KmlLogger();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          agreedKmlVehicleServerVersion = self->_agreedKmlVehicleServerVersion;
          v36 = [v25 longValue];
          *buf = 136315906;
          v55 = "[KmlVersions hasUpgradeForVersionType:versions:isOwnerPairedKey:]";
          v56 = 1024;
          v57 = 505;
          v58 = 1024;
          *v59 = agreedKmlVehicleServerVersion;
          *&v59[4] = 2048;
          *&v59[6] = v36;
          _os_log_impl(&dword_248BF3000, v34, OS_LOG_TYPE_INFO, "%s : %i : Checking availability: VehicleServer upgrade from : 0x%04hx, to : 0x%04lx", buf, 0x22u);
        }

        if ([v11 containsObject:v25])
        {
          break;
        }

        if (v31 == ++v33)
        {
          v31 = [(NSArray *)v18 countByEnumeratingWithState:&v41 objects:v53 count:16];
          if (v31)
          {
            goto LABEL_39;
          }

          goto LABEL_54;
        }
      }

      v37 = KmlLogger();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        goto LABEL_53;
      }

      *buf = 136315394;
      v55 = "[KmlVersions hasUpgradeForVersionType:versions:isOwnerPairedKey:]";
      v56 = 1024;
      v57 = 507;
      goto LABEL_52;
    }
  }

  else if (!a4)
  {
    *p_var2 = self->_agreedKmlVehicleVersion;
    v20 = KmlLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v55 = "[KmlVersions hasUpgradeForVersionType:versions:isOwnerPairedKey:]";
      v56 = 1024;
      v57 = 487;
      _os_log_impl(&dword_248BF3000, v20, OS_LOG_TYPE_INFO, "%s : %i : Looking for available upgrade of Framework version", buf, 0x12u);
    }

    if (self->_ourPreferredKmlVersion != self->_agreedKmlVehicleVersion)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v18 = self->_kmlUpgradeReadyVersionsList;
      v21 = [(NSArray *)v18 countByEnumeratingWithState:&v45 objects:v60 count:16];
      if (!v21)
      {
        goto LABEL_54;
      }

      v22 = v21;
      v23 = *v46;
LABEL_22:
      v24 = 0;
      while (1)
      {
        if (*v46 != v23)
        {
          objc_enumerationMutation(v18);
        }

        v25 = *(*(&v45 + 1) + 8 * v24);
        v26 = KmlLogger();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          agreedKmlVehicleVersion = self->_agreedKmlVehicleVersion;
          v28 = [v25 longValue];
          *buf = 136315906;
          v55 = "[KmlVersions hasUpgradeForVersionType:versions:isOwnerPairedKey:]";
          v56 = 1024;
          v57 = 490;
          v58 = 1024;
          *v59 = agreedKmlVehicleVersion;
          *&v59[4] = 2048;
          *&v59[6] = v28;
          _os_log_impl(&dword_248BF3000, v26, OS_LOG_TYPE_INFO, "%s : %i : Checking availability: Framework upgrade from : 0x%04hx, to : 0x%04lx", buf, 0x22u);
        }

        if ([v11 containsObject:v25])
        {
          break;
        }

        if (v22 == ++v24)
        {
          v22 = [(NSArray *)v18 countByEnumeratingWithState:&v45 objects:v60 count:16];
          if (v22)
          {
            goto LABEL_22;
          }

          goto LABEL_54;
        }
      }

      v37 = KmlLogger();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        goto LABEL_53;
      }

      *buf = 136315394;
      v55 = "[KmlVersions hasUpgradeForVersionType:versions:isOwnerPairedKey:]";
      v56 = 1024;
      v57 = 492;
LABEL_52:
      _os_log_impl(&dword_248BF3000, v37, OS_LOG_TYPE_INFO, "%s : %i : Upgrade eligible", buf, 0x12u);
LABEL_53:

      retstr->var3 = [v25 longValue];
      retstr->var1 = 1;
      goto LABEL_54;
    }
  }

LABEL_55:

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)upgradeForVersionType:(unint64_t)a3 version:(unint64_t)a4
{
  v7 = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    self->_agreedKmlVehicleServerVersion = [KmlVersions getVehicleServerSupportedVersionForValue:?];
  }

  else if (!a3)
  {
    [(KmlVersions *)a4 upgradeForVersionType:v5 version:v6];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[KmlVersions allocWithZone:](KmlVersions init];
  if (v5)
  {
    [(KmlVersions *)self copyWithZone:a3, v5];
  }

  return v5;
}

- (void)downgradePreferredVersion_internal
{
  if (a1)
  {
    v2 = *(a1 + 96);
    *(a1 + 96) = &unk_285B9CE68;

    v3 = *(a1 + 104);
    *(a1 + 104) = &unk_285B9CE80;

    *(a1 + 20) = 256;
    v4 = *(a1 + 120);
    *(a1 + 120) = &unk_285B9CE98;

    v5 = *(a1 + 128);
    *(a1 + 128) = &unk_285B9CEB0;

    *(a1 + 28) = 256;
  }
}

- (void)generateAllData
{
  if (a1)
  {
    [(KmlVersions *)a1 generateFrameworkSupportedPairingVersions];
    [(KmlVersions *)a1 generateFrameworkSupportedSharingVersions];
    [(KmlVersions *)a1 generateAppletSupportedVersions];

    [(KmlVersions *)a1 parseVehicleSupportedVersions];
  }
}

- (uint64_t)getVehicleServerSupportedVersionForValue:(uint64_t)a1
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_2();
    v4 = *(v3 + 120);
    OUTLINED_FUNCTION_0();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      OUTLINED_FUNCTION_4(v6, v7, v8, v9, v10, v11, v12, v13, v26, v28, v30);
LABEL_4:
      v22 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_3(v14, v15, v16, v17, v18, v19, v20, v21, v27, v29, v31);
        if (!v23)
        {
          objc_enumerationMutation(v4);
        }

        v14 = [*(v29 + 8 * v22) unsignedShortValue];
        if (v14 == v1)
        {
          break;
        }

        if (v2 == ++v22)
        {
          OUTLINED_FUNCTION_0();
          v14 = [v4 countByEnumeratingWithState:? objects:? count:?];
          v2 = v14;
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v1 = 768;
    }
  }

  else
  {
    v1 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v1;
}

- (uint64_t)getAppletSupportedVersionForValue:(uint64_t)a1
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_2();
    v4 = *(v3 + 112);
    OUTLINED_FUNCTION_0();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      OUTLINED_FUNCTION_4(v6, v7, v8, v9, v10, v11, v12, v13, v26, v28, v30);
LABEL_4:
      v22 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_3(v14, v15, v16, v17, v18, v19, v20, v21, v27, v29, v31);
        if (!v23)
        {
          objc_enumerationMutation(v4);
        }

        v14 = [*(v29 + 8 * v22) unsignedShortValue];
        if (v14 == v1)
        {
          break;
        }

        if (v2 == ++v22)
        {
          OUTLINED_FUNCTION_0();
          v14 = [v4 countByEnumeratingWithState:? objects:? count:?];
          v2 = v14;
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v1 = 0;
    }
  }

  else
  {
    v1 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v1;
}

- (uint64_t)getKmlSupportedVersionForValue:(uint64_t)a1
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_2();
    v4 = *(v3 + 96);
    OUTLINED_FUNCTION_0();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      OUTLINED_FUNCTION_4(v6, v7, v8, v9, v10, v11, v12, v13, v26, v28, v30);
LABEL_4:
      v22 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_3(v14, v15, v16, v17, v18, v19, v20, v21, v27, v29, v31);
        if (!v23)
        {
          objc_enumerationMutation(v4);
        }

        v14 = [*(v29 + 8 * v22) unsignedShortValue];
        if (v14 == v1)
        {
          break;
        }

        if (v2 == ++v22)
        {
          OUTLINED_FUNCTION_0();
          v14 = [v4 countByEnumeratingWithState:? objects:? count:?];
          v2 = v14;
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v1 = 0;
    }
  }

  else
  {
    v1 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v1;
}

- (uint64_t)generateFrameworkSupportedSharingVersions
{
  if (result)
  {
    v1 = result;
    v2 = [KmlTlv TLVWithTag:84 unsignedShort:*(result + 22)];
    v3 = *(v1 + 48);
    *(v1 + 48) = v2;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)generateKmlSupportedVehicleServerVersionsData
{
  if (a1)
  {
    v1 = [KmlTlv TLVWithTag:93 unsignedShort:*(a1 + 30)];
    v2 = [v1 asData];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)parseVehicleSupportedVersions
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *(a1 + 22) = 256;
    *(a1 + 26) = 256;
    *(a1 + 30) = 256;
    v2 = *(a1 + 80);
    *(a1 + 80) = 0;

    v3 = *(a1 + 64);
    *(a1 + 64) = 0;

    v4 = *(a1 + 88);
    *(a1 + 88) = 0;

    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = [v5 vehicleSupportedVersionsData];
      v7 = v6;
      if (v6 && [v6 length])
      {
        v8 = [a1 updateVehicleSupportedFrameworkVersions:v7];
        v9 = [a1 updateVehicleSupportedAppletVersions:v7];
        v10 = [a1 updateVehicleServerSupportedVersions:v7];
      }

      else
      {
        v11 = KmlLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_1();
          v20 = 578;
          OUTLINED_FUNCTION_6(&dword_248BF3000, v12, v13, "%s : %i : No vehicle supported versions data", v14, v15, v16, v17, v19[0]);
        }
      }
    }

    else
    {
      v7 = KmlLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_1();
        v20 = 571;
        _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_INFO, "%s : %i : Endpoint not set", v19, 0x12u);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)generateFrameworkSupportedPairingVersions
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    [MEMORY[0x277CBEB28] data];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_5();
    v3 = *(a1 + 96);
    OUTLINED_FUNCTION_0();
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(v13 + 8 * i);
          if ([v9 unsignedShortValue] != 257)
          {
            [v1 appendU16BE:{objc_msgSend(v9, "unsignedShortValue")}];
          }
        }

        OUTLINED_FUNCTION_0();
        v6 = [v3 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }

    v10 = [KmlTlv TLVWithTag:90 value:v1];
    v11 = *(a1 + 40);
    *(a1 + 40) = v10;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)generateAppletSupportedVersions
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    [MEMORY[0x277CBEB28] data];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_5();
    v3 = *(a1 + 112);
    OUTLINED_FUNCTION_0();
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v3);
          }

          [v1 appendU16BE:{objc_msgSend(*(v12 + 8 * v8++), "unsignedShortValue")}];
        }

        while (v6 != v8);
        OUTLINED_FUNCTION_0();
        v6 = [v3 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }

    v9 = [KmlTlv TLVWithTag:92 value:v1];
    v10 = *(a1 + 56);
    *(a1 + 56) = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)upgradeForVersionType:(uint64_t)a3 version:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 22) = [KmlVersions getKmlSupportedVersionForValue:a2];
  v7 = [MEMORY[0x277CBEB28] data];
  [v7 appendU16BE:*(a2 + 22)];
  v8 = [KmlTlv TLVsWithData:*(a2 + 80)];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:a3 objects:a4 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = **(a3 + 16);
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (**(a3 + 16) != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(a3 + 8) + 8 * i);
        if ([v14 tag] == 91)
        {
          v15 = [v14 value];
          [v7 appendData:v15];

          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:a3 objects:a4 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = [KmlTlv TLVWithTag:91 value:v7];
  v17 = [v16 asData];
  v18 = *(a2 + 64);
  *(a2 + 64) = v17;

  [(KmlVersions *)a2 generateFrameworkSupportedSharingVersions];
}

- (void)copyWithZone:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 8) copyWithZone:a2];
  v7 = *(a3 + 8);
  *(a3 + 8) = v6;

  *(a3 + 16) = *(a1 + 16);
  *(a3 + 17) = *(a1 + 17);
  *(a3 + 18) = *(a1 + 18);
  v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:*(a1 + 96) copyItems:1];
  v9 = *(a3 + 96);
  *(a3 + 96) = v8;

  v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:*(a1 + 104) copyItems:1];
  v11 = *(a3 + 104);
  *(a3 + 104) = v10;

  v12 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:*(a1 + 112) copyItems:1];
  v13 = *(a3 + 112);
  *(a3 + 112) = v12;

  v14 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:*(a1 + 120) copyItems:1];
  v15 = *(a3 + 120);
  *(a3 + 120) = v14;

  v16 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:*(a1 + 128) copyItems:1];
  v17 = *(a3 + 128);
  *(a3 + 128) = v16;

  v18 = [*(a1 + 64) copyWithZone:a2];
  v19 = *(a3 + 64);
  *(a3 + 64) = v18;

  v20 = [*(a1 + 72) copyWithZone:a2];
  v21 = *(a3 + 72);
  *(a3 + 72) = v20;

  v22 = [*(a1 + 80) copyWithZone:a2];
  v23 = *(a3 + 80);
  *(a3 + 80) = v22;

  v24 = [*(a1 + 88) copyWithZone:a2];
  v25 = *(a3 + 88);
  *(a3 + 88) = v24;

  *(a3 + 20) = *(a1 + 20);
  *(a3 + 22) = *(a1 + 22);
  *(a3 + 24) = *(a1 + 24);
  *(a3 + 26) = *(a1 + 26);
  *(a3 + 28) = *(a1 + 28);
  *(a3 + 30) = *(a1 + 30);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 34) = *(a1 + 34);
  [(KmlVersions *)a3 generateFrameworkSupportedPairingVersions];
  [(KmlVersions *)a3 generateFrameworkSupportedSharingVersions];

  [(KmlVersions *)a3 generateAppletSupportedVersions];
}

@end