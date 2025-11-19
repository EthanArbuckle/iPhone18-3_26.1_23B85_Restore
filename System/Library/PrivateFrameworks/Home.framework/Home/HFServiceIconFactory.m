@interface HFServiceIconFactory
+ (id)_iconSetForServiceType:(id)a3 serviceSubtype:(id)a4 fallbackToPlaceholderIcon:(BOOL)a5;
+ (id)_multiSubtypeIconSetForServiceType:(id)a3 serviceSubtype:(id)a4;
+ (id)_replacementIdentifierForIconIdentifier:(id)a3;
+ (id)allIconDescriptorsForService:(id)a3;
+ (id)allIconDescriptorsForServiceType:(id)a3 serviceSubtype:(id)a4;
+ (id)defaultIconDescriptorForService:(id)a3;
+ (id)defaultSymbolIconIdentifierForServiceType:(id)a3;
+ (id)displayIconDescriptorFromIconDescriptor:(id)a3 symbolName:(id)a4;
+ (id)iconDescriptorForAccessory:(id)a3;
+ (id)iconDescriptorForAccessoryCategory:(id)a3;
+ (id)iconDescriptorForAccessoryCategoryOrServiceType:(id)a3 matterDeviceType:(id)a4;
+ (id)iconDescriptorWithIdentifier:(id)a3 forService:(id)a4;
+ (id)iconDescriptorWithIdentifier:(id)a3 forServiceType:(id)a4 serviceSubtype:(id)a5;
+ (id)iconModifiersForService:(id)a3;
+ (id)overrideIconDescriptorForMultiServiceAccessory:(id)a3 iconDescriptor:(id)a4;
@end

@implementation HFServiceIconFactory

+ (id)_multiSubtypeIconSetForServiceType:(id)a3 serviceSubtype:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (_MergedGlobals_219 != -1)
  {
    dispatch_once(&_MergedGlobals_219, &__block_literal_global_23);
  }

  v7 = qword_280E02BC8;
  v8 = v7;
  if (v5 && ([v7 objectForKeyedSubscript:v5], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = *MEMORY[0x277CD0DB8];
    if (v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = *MEMORY[0x277CD0DB8];
    }

    v13 = [v9 objectForKeyedSubscript:v12];
    if (v13 || ([v10 objectForKeyedSubscript:v11], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = v13;
    }

    else
    {
      v16 = [MEMORY[0x277CD1D90] localizedDescriptionForServiceType:v5];
      NSLog(&cfstr_ServiceTypeIsM.isa, v16);

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __74__HFServiceIconFactory__multiSubtypeIconSetForServiceType_serviceSubtype___block_invoke_2()
{
  v15[3] = *MEMORY[0x277D85DE8];
  v14 = *MEMORY[0x277CD0F38];
  v12[0] = *MEMORY[0x277CD0DB8];
  v0 = _HFFaucetIconSet();
  v13[0] = v0;
  v12[1] = *MEMORY[0x277CD0DA0];
  v1 = _HFFaucetIconSet();
  v13[1] = v1;
  v12[2] = *MEMORY[0x277CD0DC0];
  v2 = _HFFaucetIconSet();
  v13[2] = v2;
  v12[3] = *MEMORY[0x277CD0DB0];
  v15[0] = @"HFCAPackageIconIdentifierValveCeilingJet";
  v15[1] = @"HFCAPackageIconIdentifierValveSideJets";
  v15[2] = @"HFCAPackageIconIdentifierValveHandheldShowerHead";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v4 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierValveShowerHead"];
  v5 = [v3 na_map:&__block_literal_global_223];
  v6 = [HFServiceIconSet setWithDefaultIcon:v4 alternateIcons:v5];

  v13[3] = v6;
  v12[4] = *MEMORY[0x277CD0DA8];
  v7 = _HFSprinklerIconSet();
  v13[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:5];
  v15[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v10 = qword_280E02BC8;
  qword_280E02BC8 = v9;
  v11 = *MEMORY[0x277D85DE8];
}

+ (id)_iconSetForServiceType:(id)a3 serviceSubtype:(id)a4 fallbackToPlaceholderIcon:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (qword_280E02BD8 != -1)
  {
    dispatch_once(&qword_280E02BD8, &__block_literal_global_31_0);
  }

  v10 = [a1 _multiSubtypeIconSetForServiceType:v8 serviceSubtype:v9];
  if (!v10)
  {
    v10 = [qword_280E02BD0 objectForKeyedSubscript:v8];
    if (!v10 && v5)
    {
      v10 = +[HFServiceIconSet placeholderIconSet];
    }
  }

  return v10;
}

void __88__HFServiceIconFactory__iconSetForServiceType_serviceSubtype_fallbackToPlaceholderIcon___block_invoke()
{
  v91 = *MEMORY[0x277D85DE8];
  v75[0] = *MEMORY[0x277CD0DE0];
  v0 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierAirQualitySensor"];
  v74 = [HFServiceIconSet setWithDefaultIcon:v0];

  v76[0] = v74;
  v75[1] = *MEMORY[0x277CD0E10];
  v1 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierCarbonDioxideSensor"];
  v73 = [HFServiceIconSet setWithDefaultIcon:v1];

  v76[1] = v73;
  v75[2] = *MEMORY[0x277CD0E18];
  v2 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierCarbonMonoxideSensor"];
  v72 = [HFServiceIconSet setWithDefaultIcon:v2];

  v76[2] = v72;
  v75[3] = *MEMORY[0x277CD0E20];
  v3 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierContactSensor"];
  v71 = [HFServiceIconSet setWithDefaultIcon:v3];

  v76[3] = v71;
  v75[4] = *MEMORY[0x277CD0E30];
  v77 = @"HFCAPackageIconIdentifierSlidingDoor";
  v78 = @"HFCAPackageIconIdentifierGate";
  v79 = @"HFCAPackageIconIdentifierFrenchDoor";
  v80 = @"HFCAPackageIconIdentifierSlidingDoorRightHand";
  v81 = @"HFCAPackageIconIdentifierDoorLeftHand";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:5];
  v5 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierDoor"];
  v6 = [v4 na_map:&__block_literal_global_223];
  v70 = [HFServiceIconSet setWithDefaultIcon:v5 alternateIcons:v6];

  v76[4] = v70;
  v75[5] = *MEMORY[0x277CD0E40];
  v69 = _HFFanServiceIconSet();
  v76[5] = v69;
  v75[6] = *MEMORY[0x277CD0F40];
  v68 = _HFFanServiceIconSet();
  v76[6] = v68;
  v75[7] = *MEMORY[0x277CD0E58];
  v77 = @"HFCAPackageIconIdentifierGarageDoorDoubleBay";
  v78 = @"HFCAPackageIconIdentifierGate";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:2];
  v8 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierGarageDoor"];
  v9 = [v7 na_map:&__block_literal_global_223];
  v67 = [HFServiceIconSet setWithDefaultIcon:v8 alternateIcons:v9];

  v76[7] = v67;
  v75[8] = *MEMORY[0x277CD0E70];
  v10 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierHumiditySensor"];
  v66 = [HFServiceIconSet setWithDefaultIcon:v10];

  v76[8] = v66;
  v75[9] = *MEMORY[0x277CD0E90];
  v11 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierLeakSensor"];
  v65 = [HFServiceIconSet setWithDefaultIcon:v11];

  v76[9] = v65;
  v75[10] = *MEMORY[0x277CD0EA0];
  v77 = @"HFCAPackageIconIdentifierDeskLamp";
  v78 = @"HFCAPackageIconIdentifierCeilingLight";
  v79 = @"HFCAPackageIconIdentifierFloorLamp";
  v80 = @"HFCAPackageIconIdentifierTableLight";
  v81 = @"HFCAPackageIconIdentifierRecessedLight";
  v82 = @"HFCAPackageIconIdentifierLightPanel";
  v83 = @"HFCAPackageIconIdentifierCylindricalLight";
  v84 = @"HFCAPackageIconIdentifierLightStrip";
  v85 = @"HFCAPackageIconIdentifierChandelier";
  v86 = @"HFCAPackageIconIdentifierLightBulb2";
  v87 = @"HFCAPackageIconIdentifierLightbulbLED";
  v88 = @"HFCAPackageIconIdentifierLightbulbLEDWide";
  v89 = @"HFCAPackageIconIdentifierRecessedLight3";
  v90 = @"HFCAPackageIconIdentifierLightRibbon";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:14];
  v13 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierLightbulb"];
  v14 = [v12 na_map:&__block_literal_global_223];
  v64 = [HFServiceIconSet setWithDefaultIcon:v13 alternateIcons:v14];

  v76[10] = v64;
  v75[11] = *MEMORY[0x277CD0E98];
  v15 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierLightSensor"];
  v63 = [HFServiceIconSet setWithDefaultIcon:v15];

  v76[11] = v63;
  v75[12] = *MEMORY[0x277CD0EB0];
  v77 = @"HFCAPackageIconIdentifierPINEntryDoorLock";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
  v17 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierDoorLock"];
  v18 = [v16 na_map:&__block_literal_global_223];
  v62 = [HFServiceIconSet setWithDefaultIcon:v17 alternateIcons:v18];

  v76[12] = v62;
  v75[13] = *MEMORY[0x277CD0EC0];
  v19 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierMotionSensor"];
  v61 = [HFServiceIconSet setWithDefaultIcon:v19];

  v76[13] = v61;
  v75[14] = *MEMORY[0x277CD0EC8];
  v20 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierOccupancySensor"];
  v60 = [HFServiceIconSet setWithDefaultIcon:v20];

  v76[14] = v60;
  v75[15] = *MEMORY[0x277CD0ED0];
  v77 = @"HFCAPackageIconIdentifierOutletTypeA";
  v78 = @"HFCAPackageIconIdentifierOutletTypeC";
  v79 = @"HFCAPackageIconIdentifierOutletTypeG";
  v80 = @"HFCAPackageIconIdentifierOutletTypeI";
  v81 = @"HFCAPackageIconIdentifierOutletTypeK";
  v82 = @"HFCAPackageIconIdentifierOutletTypeN";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:6];
  v22 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierOutletTypeB"];
  v23 = [v21 na_map:&__block_literal_global_223];
  v59 = [HFServiceIconSet setWithDefaultIcon:v22 alternateIcons:v23];

  v76[15] = v59;
  v75[16] = *MEMORY[0x277CD0ED8];
  v24 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierSecuritySystem"];
  v58 = [HFServiceIconSet setWithDefaultIcon:v24];

  v76[16] = v58;
  v75[17] = *MEMORY[0x277CD0EE8];
  v25 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierSmokeSensor"];
  v57 = [HFServiceIconSet setWithDefaultIcon:v25];

  v76[17] = v57;
  v75[18] = *MEMORY[0x277CD0F08];
  v77 = @"HFCAPackageIconIdentifierSwitch2";
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
  v27 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierSwitch"];
  v28 = [v26 na_map:&__block_literal_global_223];
  v56 = [HFServiceIconSet setWithDefaultIcon:v27 alternateIcons:v28];

  v76[18] = v56;
  v75[19] = *MEMORY[0x277CD0F28];
  v29 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierTemperatureSensor"];
  v55 = [HFServiceIconSet setWithDefaultIcon:v29];

  v76[19] = v55;
  v75[20] = *MEMORY[0x277CD0F30];
  v54 = _HFThermostatIconSet();
  v76[20] = v54;
  v75[21] = *MEMORY[0x277CD0F58];
  v77 = @"HFCAPackageIconIdentifierWindowHorizontal";
  v78 = @"HFCAPackageIconIdentifierWindowCeiling";
  v79 = @"HFCAPackageIconIdentifierWindowCasement";
  v80 = @"HFCAPackageIconIdentifierWindowAwning";
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:4];
  v31 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierWindowVertical"];
  v32 = [v30 na_map:&__block_literal_global_223];
  v53 = [HFServiceIconSet setWithDefaultIcon:v31 alternateIcons:v32];

  v76[21] = v53;
  v75[22] = *MEMORY[0x277CD0F60];
  v77 = @"HFCAPackageIconIdentifierWindowCoveringBlindsVertical";
  v78 = @"HFCAPackageIconIdentifierWindowCoveringRollerShade";
  v79 = @"HFCAPackageIconIdentifierWindowCoveringRomanShade";
  v80 = @"HFCAPackageIconIdentifierWindowCoveringCurtains";
  v81 = @"HFCAPackageIconIdentifierWindowCoveringAwning";
  v82 = @"HFCAPackageIconIdentifierWindowCoveringGenericShade";
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:6];
  v34 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierWindowCoveringBlindsHorizontal"];
  v35 = [v33 na_map:&__block_literal_global_223];
  v36 = [HFServiceIconSet setWithDefaultIcon:v34 alternateIcons:v35];

  v76[22] = v36;
  v75[23] = *MEMORY[0x277CD0F00];
  v37 = _HFProgrammableSwitchIconSet();
  v76[23] = v37;
  v75[24] = *MEMORY[0x277CD0EF8];
  v38 = _HFProgrammableSwitchIconSet();
  v76[24] = v38;
  v75[25] = *MEMORY[0x277CD0DD8];
  v39 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierAirPurifier"];
  v40 = [HFServiceIconSet setWithDefaultIcon:v39];

  v76[25] = v40;
  v75[26] = *MEMORY[0x277CD0E60];
  v41 = _HFThermostatIconSet();
  v76[26] = v41;
  v75[27] = *MEMORY[0x277CD0E68];
  v77 = @"HFCAPackageIconIdentifierDehumidifier";
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
  v43 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierHumidifier"];
  v44 = [v42 na_map:&__block_literal_global_223];
  v45 = [HFServiceIconSet setWithDefaultIcon:v43 alternateIcons:v44];

  v76[27] = v45;
  v75[28] = *MEMORY[0x277CD0E80];
  v46 = _HFSprinklerIconSet();
  v76[28] = v46;
  v75[29] = *MEMORY[0x277CD0E48];
  v47 = _HFFaucetIconSet();
  v76[29] = v47;
  v75[30] = *MEMORY[0x277CD0F48];
  v48 = _HFNetworkRouterIconSet();
  v76[30] = v48;
  v75[31] = *MEMORY[0x277CD0F50];
  v49 = _HFNetworkRouterIconSet();
  v76[31] = v49;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:32];
  v51 = qword_280E02BD0;
  qword_280E02BD0 = v50;

  v52 = *MEMORY[0x277D85DE8];
}

+ (id)defaultSymbolIconIdentifierForServiceType:(id)a3
{
  v3 = qword_280E02BE8;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_280E02BE8, &__block_literal_global_33);
  }

  v5 = [qword_280E02BE0 objectForKeyedSubscript:v4];

  return v5;
}

void __66__HFServiceIconFactory_defaultSymbolIconIdentifierForServiceType___block_invoke()
{
  v20[32] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD0DE0];
  v19[0] = *MEMORY[0x277CD0DD8];
  v19[1] = v0;
  v20[0] = @"air.purifier.fill";
  v20[1] = @"aqi.medium";
  v1 = *MEMORY[0x277CD0E18];
  v19[2] = *MEMORY[0x277CD0E10];
  v19[3] = v1;
  v20[2] = @"carbon.dioxide.cloud.fill";
  v20[3] = @"carbon.monoxide.cloud.fill";
  v2 = *MEMORY[0x277CD0E30];
  v19[4] = *MEMORY[0x277CD0E20];
  v19[5] = v2;
  v20[4] = @"contact.sensor.fill";
  v20[5] = @"door.right.hand.open";
  v3 = *MEMORY[0x277CD0E48];
  v19[6] = *MEMORY[0x277CD0E40];
  v19[7] = v3;
  v20[6] = @"fan.desk";
  v20[7] = @"faucet.fill";
  v4 = *MEMORY[0x277CD0E60];
  v19[8] = *MEMORY[0x277CD0E58];
  v19[9] = v4;
  v20[8] = @"door.garage.open";
  v20[9] = @"heater.vertical.fill";
  v5 = *MEMORY[0x277CD0E70];
  v19[10] = *MEMORY[0x277CD0E68];
  v19[11] = v5;
  v20[10] = @"humidifier.fill";
  v20[11] = @"humidity.fill";
  v6 = *MEMORY[0x277CD0E90];
  v19[12] = *MEMORY[0x277CD0E80];
  v19[13] = v6;
  v20[12] = @"sprinkler.water";
  v20[13] = @"pipe.and.drop.fill";
  v7 = *MEMORY[0x277CD0EA0];
  v19[14] = *MEMORY[0x277CD0E98];
  v19[15] = v7;
  v20[14] = @"sun.max.fill";
  v20[15] = @"lightbulb.fill";
  v8 = *MEMORY[0x277CD0EC0];
  v19[16] = *MEMORY[0x277CD0EB0];
  v19[17] = v8;
  v20[16] = @"lock.open.fill";
  v20[17] = @"figure.walk.motion";
  v9 = *MEMORY[0x277CD0ED0];
  v19[18] = *MEMORY[0x277CD0EC8];
  v19[19] = v9;
  v20[18] = @"figure.walk";
  v20[19] = @"poweroutlet.type.b.square.fill";
  v10 = *MEMORY[0x277CD0EE8];
  v19[20] = *MEMORY[0x277CD0ED8];
  v19[21] = v10;
  v20[20] = @"light.beacon.min.fill";
  v20[21] = @"smoke.fill";
  v11 = *MEMORY[0x277CD0F00];
  v19[22] = *MEMORY[0x277CD0EF8];
  v19[23] = v11;
  v20[22] = @"switch.programmable.square.fill";
  v20[23] = @"switch.programmable.square.fill";
  v12 = *MEMORY[0x277CD0F28];
  v19[24] = *MEMORY[0x277CD0F08];
  v19[25] = v12;
  v20[24] = @"lightswitch.on.square.fill";
  v20[25] = @"thermometer.medium";
  v13 = *MEMORY[0x277CD0F40];
  v19[26] = *MEMORY[0x277CD0F30];
  v19[27] = v13;
  v20[26] = @"dial.medium.fill";
  v20[27] = @"fan.desk";
  v14 = *MEMORY[0x277CD0F50];
  v19[28] = *MEMORY[0x277CD0F48];
  v19[29] = v14;
  v20[28] = @"wifi.router.fill";
  v20[29] = @"wifi.router.fill";
  v15 = *MEMORY[0x277CD0F60];
  v19[30] = *MEMORY[0x277CD0F58];
  v19[31] = v15;
  v20[30] = @"window.vertical.open";
  v20[31] = @"blinds.horizontal.open";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:32];
  v17 = qword_280E02BE0;
  qword_280E02BE0 = v16;

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)defaultIconDescriptorForService:(id)a3
{
  v4 = a3;
  if ([v4 hf_isTelevision])
  {
    v5 = [v4 accessory];
    v6 = [HFServiceIconFactory iconDescriptorForAccessory:v5];
  }

  else
  {
    v5 = [v4 hf_effectiveServiceType];
    v7 = [v4 serviceSubtype];
    v6 = [a1 defaultIconDescriptorForServiceType:v5 serviceSubtype:v7];
  }

  return v6;
}

+ (id)iconDescriptorWithIdentifier:(id)a3 forService:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 hf_effectiveServiceType];
  v9 = [v6 serviceSubtype];

  v10 = [a1 iconDescriptorWithIdentifier:v7 forServiceType:v8 serviceSubtype:v9];

  return v10;
}

+ (id)iconDescriptorWithIdentifier:(id)a3 forServiceType:(id)a4 serviceSubtype:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 _replacementIdentifierForIconIdentifier:v8];
  if (v11)
  {
    v12 = HFLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = v8;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Replacing deprecated icon identifier %@ with %@", buf, 0x16u);
    }

    v13 = v11;
    v8 = v13;
  }

  v14 = [a1 allIconDescriptorsForServiceType:v9 serviceSubtype:v10];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__HFServiceIconFactory_iconDescriptorWithIdentifier_forServiceType_serviceSubtype___block_invoke;
  v21[3] = &unk_277DF4AE8;
  v15 = v8;
  v22 = v15;
  v16 = [v14 na_firstObjectPassingTest:v21];

  if (!v16)
  {
    v17 = [a1 defaultIconDescriptorForServiceType:v9 serviceSubtype:v10];
    if (v17)
    {
      v16 = v17;
    }

    else
    {
      v18 = +[HFServiceIconSet placeholderIconSet];
      v16 = [v18 defaultIcon];
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __83__HFServiceIconFactory_iconDescriptorWithIdentifier_forServiceType_serviceSubtype___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (id)allIconDescriptorsForService:(id)a3
{
  v4 = a3;
  v5 = [v4 hf_effectiveServiceType];
  v6 = [v4 serviceSubtype];

  v7 = [a1 allIconDescriptorsForServiceType:v5 serviceSubtype:v6];

  return v7;
}

+ (id)allIconDescriptorsForServiceType:(id)a3 serviceSubtype:(id)a4
{
  v4 = [a1 _iconSetForServiceType:a3 serviceSubtype:a4 fallbackToPlaceholderIcon:1];
  v5 = [v4 allIcons];

  return v5;
}

+ (id)overrideIconDescriptorForMultiServiceAccessory:(id)a3 iconDescriptor:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 hf_isMultiServiceAccessory])
  {
    objc_opt_class();
    v7 = v6;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      if ([v5 hf_isCeilingFanWithLight])
      {
        v10 = [v7 identifier];
        v11 = [v10 isEqualToString:@"HFCAPackageIconIdentifierCeilingFanWithLight"];

        if ((v11 & 1) == 0)
        {
          v12 = [HFCAPackageIconDescriptor alloc];
          v13 = [v9 state];
          v14 = [v9 iconModifiers];
          v15 = [(HFCAPackageIconDescriptor *)v12 initWithPackageIdentifier:@"HFCAPackageIconIdentifierCeilingFanWithLight" state:v13 modifiers:v14];

          v7 = v15;
        }
      }

      if ([v5 hf_isPowerStrip])
      {
        v16 = [v7 identifier];
        v17 = [v16 isEqualToString:@"HFCAPackageIconIdentifierPowerStrip"];

        if ((v17 & 1) == 0)
        {
          v18 = [HFCAPackageIconDescriptor alloc];
          v19 = [v9 state];
          v20 = [v9 iconModifiers];
          v21 = [(HFCAPackageIconDescriptor *)v18 initWithPackageIdentifier:@"HFCAPackageIconIdentifierPowerStrip" state:v19 modifiers:v20];

          v7 = v21;
        }
      }
    }

    v22 = v7;
  }

  else
  {
    v22 = v6;
  }

  return v22;
}

+ (id)iconDescriptorForAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 hf_categoryOrPrimaryServiceType];
  v6 = [a1 iconDescriptorForAccessoryCategoryOrServiceType:v5];

  v7 = [HFServiceIconFactory overrideIconDescriptorForMultiServiceAccessory:v4 iconDescriptor:v6];

  return v7;
}

+ (id)iconDescriptorForAccessoryCategory:(id)a3
{
  v4 = [a3 categoryType];
  v5 = [a1 iconDescriptorForAccessoryCategoryOrServiceType:v4];

  return v5;
}

+ (id)iconDescriptorForAccessoryCategoryOrServiceType:(id)a3 matterDeviceType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_280E02BF0 != -1)
  {
    dispatch_once(&qword_280E02BF0, &__block_literal_global_127_0);
  }

  v8 = qword_280E02BF8;
  if (qword_280E02C00 != -1)
  {
    dispatch_once(&qword_280E02C00, &__block_literal_global_133_0);
  }

  v9 = qword_280E02C08;
  if (qword_280E02C10 != -1)
  {
    dispatch_once(&qword_280E02C10, &__block_literal_global_139_0);
  }

  v10 = qword_280E02C18;
  if (qword_280E02C20 != -1)
  {
    dispatch_once(&qword_280E02C20, &__block_literal_global_145);
  }

  v11 = qword_280E02C28;
  if (qword_280E02C30 != -1)
  {
    dispatch_once(&qword_280E02C30, &__block_literal_global_152);
  }

  v12 = qword_280E02C38;
  if (v6)
  {
    v13 = [HFServiceIconFactory _defaultIconDescriptorForServiceType:v6 serviceSubtype:0 fallbackToPlaceholderIcon:0];
    if (v13)
    {
      v14 = v13;
      goto LABEL_52;
    }
  }

  v49 = v12;
  v15 = *MEMORY[0x277CCE8C8];
  if (v6)
  {
    v15 = v6;
  }

  v16 = v15;
  v17 = [v9 objectForKeyedSubscript:v16];
  if (v17)
  {
    v18 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:v17];
    if (v18)
    {
      goto LABEL_50;
    }
  }

  v48 = v11;
  if (![v16 isEqualToString:*MEMORY[0x277CCE8F0]])
  {
    goto LABEL_57;
  }

  v19 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierGenericSensor"];
  [HFServiceIconSet setWithDefaultIcon:v19];
  v46 = v6;
  v20 = v16;
  v21 = v17;
  v22 = v9;
  v23 = a1;
  v24 = v10;
  v25 = v8;
  v27 = v26 = v7;

  v28 = [v27 defaultIcon];

  v7 = v26;
  v8 = v25;
  v10 = v24;
  a1 = v23;
  v9 = v22;
  v17 = v21;
  v16 = v20;
  v6 = v46;
  if (!v28)
  {
LABEL_57:
    v29 = [v8 objectForKeyedSubscript:v16];
    if (!v29 || (v30 = v29, [a1 defaultIconDescriptorForServiceType:v29 serviceSubtype:0], v28 = objc_claimAutoreleasedReturnValue(), v30, !v28))
    {
      v31 = [v10 objectForKeyedSubscript:v16];
      v32 = v31;
      if (!v31)
      {
        v11 = v48;
        if (!v7)
        {
LABEL_49:
          v18 = [[HFImageIconDescriptor alloc] initWithImageIdentifier:@"HFImageIconIdentifierGeneric"];
LABEL_50:
          v28 = v18;
          goto LABEL_51;
        }

        objc_opt_class();
        v34 = v7;
        if (objc_opt_isKindOfClass())
        {
          v35 = v34;
        }

        else
        {
          v35 = 0;
        }

        v28 = v35;

        v47 = v28;
        if (v28)
        {
          v28 = [(HFImageIconDescriptor *)v28 deviceType];

          v11 = v48;
          if (v28)
          {
            v36 = [(HFImageIconDescriptor *)v47 deviceType];
            v45 = [v48 objectForKeyedSubscript:v36];

            v37 = v45;
            if (v45)
            {
              v38 = [(HFImageIconDescriptor *)v47 deviceType];
              v44 = [v49 objectForKeyedSubscript:v38];

              if (v44)
              {
                v39 = [MEMORY[0x277D755D0] configurationWithHierarchicalColor:v44];
              }

              else
              {
                v39 = 0;
              }

              v41 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:v45 configuration:v39];
              v42 = v39;
              v28 = v41;

              v37 = v45;
            }

            else
            {
              v28 = 0;
            }
          }
        }

        else
        {
          v11 = v48;
        }

LABEL_48:
        if (v28)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      if ([v31 isEqualToString:@"point.3.filled.connected.trianglepath.dotted"])
      {
        v33 = [MEMORY[0x277D755D0] configurationPreferringMulticolor];
      }

      else
      {
        if (([v16 isEqualToString:*MEMORY[0x277CCE870]] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", *MEMORY[0x277CCE8B0]) & 1) == 0 && !objc_msgSend(v16, "isEqualToString:", *MEMORY[0x277CCE900]))
        {
          v28 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:v32];
          goto LABEL_40;
        }

        v33 = +[HFMediaHelper mediaContainerSymbolConfiguration];
      }

      v40 = v33;
      v28 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:v32 configuration:v33];

LABEL_40:
      v11 = v48;
      goto LABEL_48;
    }
  }

  v11 = v48;
LABEL_51:
  v14 = v28;

  v12 = v49;
LABEL_52:

  return v14;
}

void __89__HFServiceIconFactory_iconDescriptorForAccessoryCategoryOrServiceType_matterDeviceType___block_invoke_2()
{
  v33[23] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD0ED8];
  v1 = *MEMORY[0x277CCE888];
  v32[0] = *MEMORY[0x277CCE8E8];
  v32[1] = v1;
  v2 = *MEMORY[0x277CD0E30];
  v33[0] = v0;
  v33[1] = v2;
  v3 = *MEMORY[0x277CD0EB0];
  v4 = *MEMORY[0x277CCE898];
  v32[2] = *MEMORY[0x277CCE890];
  v32[3] = v4;
  v5 = *MEMORY[0x277CD0E40];
  v33[2] = v3;
  v33[3] = v5;
  v6 = *MEMORY[0x277CD0E58];
  v7 = *MEMORY[0x277CCE8B8];
  v32[4] = *MEMORY[0x277CCE8A8];
  v32[5] = v7;
  v8 = *MEMORY[0x277CD0E00];
  v33[4] = v6;
  v33[5] = v8;
  v9 = *MEMORY[0x277CCE8C0];
  v32[6] = *MEMORY[0x277CCE948];
  v32[7] = v9;
  v10 = *MEMORY[0x277CD0EA0];
  v33[6] = v8;
  v33[7] = v10;
  v11 = *MEMORY[0x277CD0ED0];
  v12 = *MEMORY[0x277CCE8D8];
  v32[8] = *MEMORY[0x277CCE8D0];
  v32[9] = v12;
  v13 = *MEMORY[0x277CD0F00];
  v33[8] = v11;
  v33[9] = v13;
  v14 = *MEMORY[0x277CD0F08];
  v15 = *MEMORY[0x277CCE940];
  v32[10] = *MEMORY[0x277CCE910];
  v32[11] = v15;
  v16 = *MEMORY[0x277CD0F30];
  v33[10] = v14;
  v33[11] = v16;
  v17 = *MEMORY[0x277CD0F58];
  v18 = *MEMORY[0x277CCE960];
  v32[12] = *MEMORY[0x277CCE958];
  v32[13] = v18;
  v19 = *MEMORY[0x277CD0F60];
  v33[12] = v17;
  v33[13] = v19;
  v20 = *MEMORY[0x277CD0E60];
  v21 = *MEMORY[0x277CCE868];
  v32[14] = *MEMORY[0x277CCE840];
  v32[15] = v21;
  v22 = *MEMORY[0x277CD0DD8];
  v33[14] = v20;
  v33[15] = v22;
  v23 = *MEMORY[0x277CCE858];
  v32[16] = *MEMORY[0x277CCE850];
  v32[17] = v23;
  v24 = *MEMORY[0x277CD0E68];
  v33[16] = v20;
  v33[17] = v24;
  v25 = *MEMORY[0x277CCE908];
  v32[18] = *MEMORY[0x277CCE848];
  v32[19] = v25;
  v26 = *MEMORY[0x277CD0E80];
  v33[18] = v24;
  v33[19] = v26;
  v27 = *MEMORY[0x277CD0E48];
  v28 = *MEMORY[0x277CCE8F8];
  v32[20] = *MEMORY[0x277CCE8A0];
  v32[21] = v28;
  v33[20] = v27;
  v33[21] = v27;
  v32[22] = *MEMORY[0x277CCE950];
  v33[22] = *MEMORY[0x277CD0F48];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:23];
  v30 = qword_280E02BF8;
  qword_280E02BF8 = v29;
  v31 = *MEMORY[0x277D85DE8];
}

void __89__HFServiceIconFactory_iconDescriptorForAccessoryCategoryOrServiceType_matterDeviceType___block_invoke_5()
{
  v8[10] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCE878];
  v7[0] = *MEMORY[0x277CCE8B8];
  v7[1] = v0;
  v8[0] = @"HFCAPackageIconIdentifierIPCamera";
  v8[1] = @"HFCAPackageIconIdentifierReceiver";
  v1 = *MEMORY[0x277CCE920];
  v7[2] = *MEMORY[0x277CCE918];
  v7[3] = v1;
  v8[2] = @"HFCAPackageIconIdentifierRemoteControl";
  v8[3] = @"HFCAPackageIconIdentifierTelevision";
  v2 = *MEMORY[0x277CCE938];
  v7[4] = *MEMORY[0x277CCE930];
  v7[5] = v2;
  v8[4] = @"HFCAPackageIconIdentifierTelevisionSetTopBox";
  v8[5] = @"HFCAPackageIconIdentifierTelevisionStreamingStick";
  v7[6] = *MEMORY[0x277CCE948];
  v7[7] = @"9D302CDA-1467-4E19-ABC9-9ED36BE34508";
  v8[6] = @"HFCAPackageIconIdentifierVideoDoorbell";
  v8[7] = @"HFCAPackageIconIdentifierCeilingFanWithLight";
  v3 = *MEMORY[0x277CCE860];
  v7[8] = @"3047A1A5-8BFC-4112-9888-21314F438FF3";
  v7[9] = v3;
  v8[8] = @"HFCAPackageIconIdentifierPowerStrip";
  v8[9] = @"HFCAPackageIconIdentifierAirport";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:10];
  v5 = qword_280E02C08;
  qword_280E02C08 = v4;
  v6 = *MEMORY[0x277D85DE8];
}

void __89__HFServiceIconFactory_iconDescriptorForAccessoryCategoryOrServiceType_matterDeviceType___block_invoke_8()
{
  v6[4] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCE870];
  v5[0] = *MEMORY[0x277CCE880];
  v5[1] = v0;
  v6[0] = @"point.3.filled.connected.trianglepath.dotted";
  v6[1] = @"appletv.fill";
  v1 = *MEMORY[0x277CCE900];
  v5[2] = *MEMORY[0x277CCE8B0];
  v5[3] = v1;
  v6[2] = @"homepod.fill";
  v6[3] = @"hifispeaker.fill";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = qword_280E02C18;
  qword_280E02C18 = v2;
  v4 = *MEMORY[0x277D85DE8];
}

void __89__HFServiceIconFactory_iconDescriptorForAccessoryCategoryOrServiceType_matterDeviceType___block_invoke_11()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithInt:116];
  v5[0] = v0;
  v6[0] = @"robotic.vacuum.fill";
  v1 = [MEMORY[0x277CCABB0] numberWithInt:144];
  v5[1] = v1;
  v6[1] = @"wifi.router.fill";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v3 = qword_280E02C28;
  qword_280E02C28 = v2;
  v4 = *MEMORY[0x277D85DE8];
}

void __89__HFServiceIconFactory_iconDescriptorForAccessoryCategoryOrServiceType_matterDeviceType___block_invoke_14()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithInt:116];
  v5 = v0;
  v1 = +[HFMatterColors rvcTintColor];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = qword_280E02C38;
  qword_280E02C38 = v2;
  v4 = *MEMORY[0x277D85DE8];
}

+ (id)iconModifiersForService:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 characteristics];
  v6 = [v5 na_map:&__block_literal_global_162];

  v7 = *MEMORY[0x277CCF8D8];
  if ([v6 containsObject:*MEMORY[0x277CCF8D8]])
  {
    v8 = [v3 hf_characteristicOfType:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 metadata];
      v11 = [v9 value];
      v12 = [v10 hf_percentageForCharacteristicValue:v11];
      [v4 setObject:v12 forKeyedSubscript:@"HFIconModifierHue"];
    }

    else
    {
      v10 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
      [v4 setObject:v10 forKeyedSubscript:@"HFIconModifierHue"];
    }
  }

  v13 = *MEMORY[0x277CCFA30];
  if ([v6 containsObject:*MEMORY[0x277CCFA30]])
  {
    v14 = [v3 hf_characteristicOfType:v13];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 metadata];
      v17 = [v15 value];
      v18 = [v16 hf_percentageForCharacteristicValue:v17];
      [v4 setObject:v18 forKeyedSubscript:@"HFIconModifierSaturation"];
    }

    else
    {
      v16 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
      [v4 setObject:v16 forKeyedSubscript:@"HFIconModifierSaturation"];
    }
  }

  v19 = *MEMORY[0x277CCF788];
  if ([v6 containsObject:*MEMORY[0x277CCF788]])
  {
    v20 = [v3 hf_characteristicOfType:v19];
    v21 = [v20 metadata];
    v22 = [v20 value];
    v23 = [v21 hf_percentageForCharacteristicValue:v22];
    [v4 setObject:v23 forKeyedSubscript:@"HFIconModifierBrightness"];
  }

  v24 = *MEMORY[0x277CCF7D8];
  if ([v6 containsObject:*MEMORY[0x277CCF7D8]])
  {
    v25 = [v3 hf_characteristicOfType:v24];
    v26 = [v25 metadata];
    v27 = [v25 value];
    v28 = [v26 hf_percentageForCharacteristicValue:v27];
    [v4 setObject:v28 forKeyedSubscript:@"HFIconModifierColorTemperature"];
  }

  return v4;
}

+ (id)_replacementIdentifierForIconIdentifier:(id)a3
{
  v3 = a3;
  if (qword_280E02C40 != -1)
  {
    dispatch_once(&qword_280E02C40, &__block_literal_global_166_0);
  }

  v4 = qword_280E02C48;
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

void __64__HFServiceIconFactory__replacementIdentifierForIconIdentifier___block_invoke_2()
{
  v4[62] = *MEMORY[0x277D85DE8];
  v3[0] = @"HFImageIconIdentifierServiceLightbulb";
  v3[1] = @"HFImageIconIdentifierServiceCeilingLight";
  v4[0] = @"HFCAPackageIconIdentifierLightbulb";
  v4[1] = @"HFCAPackageIconIdentifierCeilingLight";
  v3[2] = @"HFImageIconIdentifierServiceDeskLamp";
  v3[3] = @"HFImageIconIdentifierServiceFloorLamp";
  v4[2] = @"HFCAPackageIconIdentifierDeskLamp";
  v4[3] = @"HFCAPackageIconIdentifierFloorLamp";
  v3[4] = @"HFImageIconIdentifierServiceFan";
  v3[5] = @"HFImageIconIdentifierServiceCeilingFan";
  v4[4] = @"HFCAPackageIconIdentifierDeskFan";
  v4[5] = @"HFCAPackageIconIdentifierCeilingFan";
  v3[6] = @"HFImageIconIdentifierServiceGarageDoor";
  v3[7] = @"HFImageIconIdentifierServiceLock";
  v4[6] = @"HFCAPackageIconIdentifierGarageDoor";
  v4[7] = @"HFCAPackageIconIdentifierDoorLock";
  v3[8] = @"HFImageIconIdentifierServiceSwitch";
  v3[9] = @"HFImageIconIdentifierServiceDoor";
  v4[8] = @"HFCAPackageIconIdentifierSwitch";
  v4[9] = @"HFCAPackageIconIdentifierDoor";
  v3[10] = @"HFImageIconIdentifierIPCamera";
  v3[11] = @"HFImageIconIdentifierVideoDoorbell";
  v4[10] = @"HFCAPackageIconIdentifierIPCamera";
  v4[11] = @"HFCAPackageIconIdentifierVideoDoorbell";
  v3[12] = @"HFImageIconIdentifierProgrammableSwitch";
  v3[13] = @"HFImageIconIdentifierServiceAirPurifier";
  v4[12] = @"HFCAPackageIconIdentifierProgrammableSwitch";
  v4[13] = @"HFCAPackageIconIdentifierAirPurifier";
  v3[14] = @"HFImageIconIdentifierServiceHumidifierDehumidifier";
  v3[15] = @"HFImageIconIdentifierServiceTelevisionOn";
  v4[14] = @"HFCAPackageIconIdentifierHumidifier";
  v4[15] = @"HFCAPackageIconIdentifierTelevision";
  v3[16] = @"HFImageIconIdentifierServiceTelevisionOff";
  v3[17] = @"HFImageIconIdentifierRemoteControl";
  v4[16] = @"HFCAPackageIconIdentifierTelevision";
  v4[17] = @"HFCAPackageIconIdentifierRemoteControl";
  v3[18] = @"HFImageIconIdentifierAppleTV";
  v3[19] = @"HFImageIconIdentifierServiceLightSensor";
  v4[18] = @"appletv.fill";
  v4[19] = @"HFCAPackageIconIdentifierLightSensor";
  v3[20] = @"HFImageIconIdentifierServiceTemperatureSensor";
  v3[21] = @"HFImageIconIdentifierServiceHumiditySensor";
  v4[20] = @"HFCAPackageIconIdentifierTemperatureSensor";
  v4[21] = @"HFCAPackageIconIdentifierHumiditySensor";
  v3[22] = @"HFImageIconIdentifierServiceAirQualitySensorOn";
  v3[23] = @"HFImageIconIdentifierServiceAirQualitySensorOff";
  v4[22] = @"HFCAPackageIconIdentifierAirQualitySensor";
  v4[23] = @"HFCAPackageIconIdentifierAirQualitySensor";
  v3[24] = @"HFImageIconIdentifierServiceContactSensorOpen";
  v3[25] = @"HFImageIconIdentifierServiceContactSensorClosed";
  v4[24] = @"HFCAPackageIconIdentifierContactSensor";
  v4[25] = @"HFCAPackageIconIdentifierContactSensor";
  v3[26] = @"HFImageIconIdentifierServiceCarbonDioxideSensorOn";
  v3[27] = @"HFImageIconIdentifierServiceCarbonDioxideSensorOff";
  v4[26] = @"HFCAPackageIconIdentifierCarbonDioxideSensor";
  v4[27] = @"HFCAPackageIconIdentifierCarbonDioxideSensor";
  v3[28] = @"HFImageIconIdentifierServiceCarbonMonoxideSensorOn";
  v3[29] = @"HFImageIconIdentifierServiceCarbonMonoxideSensorOff";
  v4[28] = @"HFCAPackageIconIdentifierCarbonMonoxideSensor";
  v4[29] = @"HFCAPackageIconIdentifierCarbonMonoxideSensor";
  v3[30] = @"HFImageIconIdentifierServiceLeakSensorOn";
  v3[31] = @"HFImageIconIdentifierServiceLeakSensorOff";
  v4[30] = @"HFCAPackageIconIdentifierLeakSensor";
  v4[31] = @"HFCAPackageIconIdentifierLeakSensor";
  v3[32] = @"HFImageIconIdentifierServiceMotionSensorOn";
  v3[33] = @"HFImageIconIdentifierServiceMotionSensorOff";
  v4[32] = @"HFCAPackageIconIdentifierMotionSensor";
  v4[33] = @"HFCAPackageIconIdentifierMotionSensor";
  v3[34] = @"HFImageIconIdentifierServiceOccupancySensorOn";
  v3[35] = @"HFImageIconIdentifierServiceOccupancySensorOff";
  v4[34] = @"HFCAPackageIconIdentifierOccupancySensor";
  v4[35] = @"HFCAPackageIconIdentifierOccupancySensor";
  v3[36] = @"HFImageIconIdentifierServiceSmokeSensorOn";
  v3[37] = @"HFImageIconIdentifierServiceSmokeSensorOff";
  v4[36] = @"HFCAPackageIconIdentifierSmokeSensor";
  v4[37] = @"HFCAPackageIconIdentifierSmokeSensor";
  v3[38] = @"HFImageIconIdentifierServiceWindowOpen";
  v3[39] = @"HFImageIconIdentifierServiceWindowClosed";
  v4[38] = @"HFCAPackageIconIdentifierWindowVertical";
  v4[39] = @"HFCAPackageIconIdentifierWindowVertical";
  v3[40] = @"HFImageIconIdentifierSecuritySystemOff";
  v3[41] = @"HFImageIconIdentifierSecuritySystemOn";
  v4[40] = @"HFCAPackageIconIdentifierSecuritySystem";
  v4[41] = @"HFCAPackageIconIdentifierSecuritySystem";
  v3[42] = @"HFImageIconIdentifierBlindsClosed";
  v3[43] = @"HFImageIconIdentifierBlindsOpen";
  v4[42] = @"HFCAPackageIconIdentifierWindowCoveringBlindsHorizontal";
  v4[43] = @"HFCAPackageIconIdentifierWindowCoveringBlindsHorizontal";
  v3[44] = @"HFImageIconIdentifierServiceFaucetOff";
  v3[45] = @"HFImageIconIdentifierServiceFaucetOn";
  v4[44] = @"HFCAPackageIconIdentifierFaucet";
  v4[45] = @"HFCAPackageIconIdentifierFaucet";
  v3[46] = @"HFImageIconIdentifierServiceSprinklerOff";
  v3[47] = @"HFImageIconIdentifierServiceSprinklerOn";
  v4[46] = @"HFCAPackageIconIdentifierSprinkler";
  v4[47] = @"HFCAPackageIconIdentifierSprinkler";
  v3[48] = @"HFImageIconIdentifierValveGenericOn";
  v3[49] = @"HFImageIconIdentifierValveGenericOff";
  v4[48] = @"HFCAPackageIconIdentifierFaucet";
  v4[49] = @"HFCAPackageIconIdentifierFaucet";
  v3[50] = @"HFImageIconIdentifierValveShowerHeadOn";
  v3[51] = @"HFImageIconIdentifierValveShowerHeadOff";
  v4[50] = @"HFCAPackageIconIdentifierValveCeilingJet";
  v4[51] = @"HFCAPackageIconIdentifierValveCeilingJet";
  v3[52] = @"HFImageIconIdentifierServiceOutlet";
  v3[53] = @"HFCAPackageIconIdentifierOutlet";
  v4[52] = @"HFCAPackageIconIdentifierOutletTypeB";
  v4[53] = @"HFCAPackageIconIdentifierOutletTypeB";
  v3[54] = @"HFCAPackageIconIdentifierOutletAustraliaNewZealand";
  v3[55] = @"HFCAPackageIconIdentifierOutletEurope";
  v3[56] = @"HFCAPackageIconIdentifierOutletUnitedKingdom";
  v3[57] = @"HFCAPackageIconIdentifierOutletJapan";
  v4[56] = @"HFCAPackageIconIdentifierOutletTypeG";
  v4[57] = @"HFCAPackageIconIdentifierOutletTypeA";
  v4[54] = @"HFCAPackageIconIdentifierOutletTypeI";
  v4[55] = @"HFCAPackageIconIdentifierOutletTypeC";
  v3[58] = @"HFCAPackageIconIdentifierOutletKorea";
  v3[59] = @"HFCAPackageIconIdentifierOutletHongKong";
  v4[58] = @"HFCAPackageIconIdentifierOutletTypeC";
  v4[59] = @"HFCAPackageIconIdentifierOutletTypeG";
  v3[60] = @"HFCAPackageIconIdentifierOutletChina";
  v3[61] = @"HFCAPackageIconIdentifierOutletBrazil";
  v4[60] = @"HFCAPackageIconIdentifierOutletTypeI";
  v4[61] = @"HFCAPackageIconIdentifierOutletTypeN";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:62];
  v1 = qword_280E02C48;
  qword_280E02C48 = v0;
  v2 = *MEMORY[0x277D85DE8];
}

+ (id)displayIconDescriptorFromIconDescriptor:(id)a3 symbolName:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = v5;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [HFCAPackageIconDescriptor alloc];
    v11 = [(HFImageIconDescriptor *)v9 packageIdentifier];
    v12 = [(HFCAPackageIconDescriptor *)v10 initWithPackageIdentifier:v11 state:HFCAPackageStateDisplay];
  }

  else
  {
    if (![v6 length])
    {
      goto LABEL_15;
    }

    v11 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A20]];
    objc_opt_class();
    v13 = v7;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v7 = v14;

    v15 = [(HFImageIconDescriptor *)v7 imageSymbolConfiguration];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 configurationByApplyingConfiguration:v11];
    }

    else
    {
      v17 = v11;
    }

    v12 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:v6 configuration:v17];
  }

  v7 = v12;
LABEL_15:

  return v7;
}

@end