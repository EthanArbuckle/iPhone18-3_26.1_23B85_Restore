@interface AccessoryControlListItemsController
- (AccessoryControlListItemsController)init;
- (BOOL)allowOffListeningMode;
- (id)listeningModeCombinations;
- (id)specifiers;
- (void)dealloc;
- (void)listItemSelected:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation AccessoryControlListItemsController

- (AccessoryControlListItemsController)init
{
  v6.receiver = self;
  v6.super_class = AccessoryControlListItemsController;
  v2 = [(AccessoryControlListItemsController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(&v2->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC28]) = 0;
    v2->_autoANCSupported = 0;
    v2->_listeningModeConfigs = 0;
    currentSelectedSpecifier = v2->_currentSelectedSpecifier;
    v2->_currentSelectedSpecifier = @"Left";
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AccessoryControlListItemsController;
  [(PSListItemsController *)&v2 dealloc];
}

- (id)listeningModeCombinations
{
  p_listeningModeConfigs = &self->_listeningModeConfigs;
  anc = self->_listeningModeConfigs.anc;
  if (anc)
  {
    if (self->_listeningModeConfigs.transparency)
    {
      if (p_listeningModeConfigs->normal && self->_listeningModeConfigs.autoANC)
      {
        return @"NC&Off&T&Auto";
      }

      if (p_listeningModeConfigs->normal)
      {
        return @"NC&Off&T";
      }

      if (self->_listeningModeConfigs.autoANC)
      {
        return @"NC&T&Auto";
      }
    }

    else if (self->_listeningModeConfigs.autoANC && p_listeningModeConfigs->normal)
    {
      return @"NC&Off&Auto";
    }
  }

  if (p_listeningModeConfigs->normal && self->_listeningModeConfigs.transparency && self->_listeningModeConfigs.autoANC)
  {
    return @"Off&T&Auto";
  }

  if (self->_listeningModeConfigs.anc)
  {
    if (self->_listeningModeConfigs.transparency)
    {
      return @"NC&T";
    }

    if (self->_listeningModeConfigs.autoANC)
    {
      return @"NC&Auto";
    }
  }

  if (p_listeningModeConfigs->normal && self->_listeningModeConfigs.autoANC)
  {
    return @"Off&Auto";
  }

  if (self->_listeningModeConfigs.transparency)
  {
    if (self->_listeningModeConfigs.autoANC)
    {
      return @"T&Auto";
    }
  }

  else if (anc)
  {
    return @"NC&Off";
  }

  return @"Off&T";
}

- (id)specifiers
{
  v109[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v108.receiver = self;
  v108.super_class = AccessoryControlListItemsController;
  v4 = [(PSListItemsController *)&v108 specifiers];
  v5 = [v3 arrayWithArray:v4];

  v6 = *MEMORY[0x277D3FD20];
  v7 = [*(&self->super.super.super.super.super.super.isa + v6) userInfo];
  v8 = +[HPSDevice deviceKey];
  v9 = [v7 objectForKeyedSubscript:v8];
  currentDevice = self->_currentDevice;
  self->_currentDevice = v9;

  self->_autoANCSupported = [(BluetoothDeviceProtocol *)self->_currentDevice getAutoANCSupport];
  v11 = [(BluetoothDeviceProtocol *)self->_currentDevice productId];
  v107 = 0;
  v106 = 0;
  v105 = v5;
  if (v11 != 8230)
  {
    v12 = v11;
    v13 = &v107;
    [(BluetoothDeviceProtocol *)self->_currentDevice clickHoldMode:&v107 rightAction:&v106];
    v14 = [*(&self->super.super.super.super.super.super.isa + v6) identifier];
    v15 = [v14 isEqualToString:@"LEFT_ID"];

    v16 = 0x277CBE000;
    if ((v15 & 1) == 0)
    {
      v17 = [*(&self->super.super.super.super.super.super.isa + v6) identifier];
      v18 = [v17 isEqualToString:@"RIGHT_ID"];

      if (!v18)
      {
        goto LABEL_40;
      }

      v13 = &v106;
    }

    if (*v13 == 5 && (![HPSProductUtils isBeatsNonWx:self->_currentDevice]|| ![(BluetoothDeviceProtocol *)self->_currentDevice featureCapability:30]|| [(BluetoothDeviceProtocol *)self->_currentDevice getAACPCapabilityBit:12]))
    {
      v19 = [(BluetoothDeviceProtocol *)self->_currentDevice listeningModeConfigs];
      self->_listeningModeConfigs.anc = (v19 & 2) != 0;
      self->_listeningModeConfigs.transparency = (v19 & 4) != 0;
      self->_listeningModeConfigs.normal = v19 & 1;
      self->_listeningModeConfigs.autoANC = (v19 & 8) != 0;
      autoANCSupported = self->_autoANCSupported;
      v21 = [*(&self->super.super.super.super.super.super.isa + v6) identifier];
      v22 = [v21 isEqualToString:@"LEFT_ID"];

      if (autoANCSupported)
      {
        if (v22)
        {
          v23 = @"CycleBetweenV2LeftBudValue";
          v24 = @"cycleBetweenV2LeftBudValue";
LABEL_14:
          v25 = @"Left";
LABEL_20:
          currentSelectedSpecifier = self->_currentSelectedSpecifier;
          self->_currentSelectedSpecifier = &v25->isa;

          v31 = [(AccessoryControlListItemsController *)self listeningModeCombinations];
          v32 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v31, v24, 0}];
          v33 = [MEMORY[0x277CCAB98] defaultCenter];
          [v33 postNotificationName:v23 object:0 userInfo:v32];

LABEL_21:
          v34 = MEMORY[0x277D3FAD8];
          v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v36 = [v35 localizedStringForKey:@"NOISE_CONTROL_HEADER" value:&stru_286339F58 table:@"DeviceConfig"];
          v37 = [v34 preferenceSpecifierNamed:v36 target:self set:0 get:0 detail:0 cell:0 edit:0];

          v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v39 = [v38 localizedStringForKey:@"NOISE_CONTROL_FOOTER" value:&stru_286339F58 table:@"DeviceConfig"];

          if (v12 <= 8213)
          {
            if (v12 == 8209)
            {
              v40 = @"DeviceConfig-B507";
              goto LABEL_32;
            }

            if (v12 == 8210)
            {
              v40 = @"DeviceConfig-B494";
              goto LABEL_32;
            }
          }

          else
          {
            switch(v12)
            {
              case 8214:
                v40 = @"DeviceConfig-B607";
                goto LABEL_32;
              case 8221:
                v40 = @"DeviceConfig-B498-v2";
                goto LABEL_32;
              case 8239:
                v40 = @"DeviceConfig-B494b";
LABEL_32:
                v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v42 = [v41 localizedStringForKey:@"NOISE_CONTROL_FOOTER" value:&stru_286339F58 table:v40];

                v39 = v42;
                break;
            }
          }

          v98 = v39;
          [v37 setProperty:v39 forKey:*MEMORY[0x277D3FF88]];
          v99 = v37;
          [v5 addObject:v37];
          v104 = [MEMORY[0x277D755D0] configurationWithPointSize:25.0];
          v43 = MEMORY[0x277D3FAD8];
          v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v45 = [v44 localizedStringForKey:@"ACTIVE_NOISE_CANCELLATION" value:&stru_286339F58 table:@"DeviceConfig"];
          v46 = [v43 preferenceSpecifierNamed:v45 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          v103 = *MEMORY[0x277D3FFB8];
          [v46 setProperty:@"ANC" forKey:?];
          v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v48 = [v47 localizedStringForKey:@"ACTIVE_NOISE_CANCELLATION_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
          v101 = *MEMORY[0x277D40160];
          [v46 setProperty:v48 forKey:?];

          v49 = [MEMORY[0x277D755B8] _systemImageNamed:@"person.closed.fill"];
          v50 = [v49 imageByApplyingSymbolConfiguration:v104];

          v51 = [MEMORY[0x277D75348] systemBlueColor];
          v96 = v50;
          v52 = [v50 imageWithTintColor:v51];
          v102 = *MEMORY[0x277D3FFC0];
          [v46 setProperty:v52 forKey:?];

          v53 = objc_opt_class();
          v54 = *MEMORY[0x277D3FE58];
          v97 = v46;
          v100 = *MEMORY[0x277D3FE58];
          [v46 setProperty:v53 forKey:*MEMORY[0x277D3FE58]];
          v55 = MEMORY[0x277D3FAD8];
          v56 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v57 = [v56 localizedStringForKey:@"ACTIVE_PASS_THROUGH" value:&stru_286339F58 table:@"DeviceConfig"];
          v58 = [v55 preferenceSpecifierNamed:v57 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          [v58 setProperty:@"Passthrough" forKey:v103];
          v59 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v60 = [v59 localizedStringForKey:@"ACTIVE_PASS_THROUGH_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
          [v58 setProperty:v60 forKey:v101];

          v61 = [MEMORY[0x277D755B8] _systemImageNamed:@"person.open.fill"];
          v62 = [v61 imageByApplyingSymbolConfiguration:v104];

          v94 = v62;
          [v58 setProperty:v62 forKey:v102];
          v95 = v58;
          [v58 setProperty:objc_opt_class() forKey:v54];
          v63 = MEMORY[0x277D3FAD8];
          v64 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v65 = [v64 localizedStringForKey:@"BYPASS" value:&stru_286339F58 table:@"DeviceConfig"];
          v66 = [v63 preferenceSpecifierNamed:v65 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          [v66 setProperty:@"Off" forKey:v103];
          v67 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v68 = [v67 localizedStringForKey:@"BYPASS_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
          [v66 setProperty:v68 forKey:v101];

          v69 = [MEMORY[0x277D755B8] _systemImageNamed:@"person.closed.fill"];
          v70 = MEMORY[0x277D755D0];
          v71 = [MEMORY[0x277D75348] systemBlueColor];
          v72 = [v71 colorWithAlphaComponent:0.5];
          v109[0] = v72;
          v73 = [MEMORY[0x277D75348] systemBlueColor];
          v109[1] = v73;
          v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:2];
          v75 = [v70 configurationWithPaletteColors:v74];
          v76 = [v69 imageByApplyingSymbolConfiguration:v75];
          v77 = [v76 imageByApplyingSymbolConfiguration:v104];

          [v66 setProperty:v77 forKey:v102];
          [v66 setProperty:objc_opt_class() forKey:v100];
          v78 = 0;
          if (self->_autoANCSupported)
          {
            v79 = MEMORY[0x277D3FAD8];
            v80 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v81 = [v80 localizedStringForKey:@"AUTO_ANC" value:&stru_286339F58 table:@"DeviceConfig-B698"];
            v78 = [v79 preferenceSpecifierNamed:v81 target:0 set:0 get:0 detail:0 cell:3 edit:0];

            [v78 setProperty:@"AutoANC" forKey:v103];
            v82 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v83 = [v82 localizedStringForKey:@"AUTO_ANC_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B698"];
            [v78 setProperty:v83 forKey:v101];

            v84 = [MEMORY[0x277D755B8] _systemImageNamed:@"person.and.sparkles.fill"];
            v85 = [v84 imageByApplyingSymbolConfiguration:v104];

            v86 = [MEMORY[0x277D75348] systemBlueColor];
            v87 = [v85 imageWithTintColor:v86];
            [v78 setProperty:v87 forKey:v102];

            [v78 setProperty:objc_opt_class() forKey:v100];
          }

          if ([(AccessoryControlListItemsController *)self allowOffListeningMode])
          {
            [v105 addObject:v66];
          }

          [v105 addObject:v95];
          if (self->_autoANCSupported)
          {
            [v105 addObject:v78];
          }

          [v105 addObject:v97];

          v16 = 0x277CBE000uLL;
          goto LABEL_40;
        }

        v26 = [*(&self->super.super.super.super.super.super.isa + v6) identifier];
        v27 = [v26 isEqualToString:@"RIGHT_ID"];

        if ((v27 & 1) == 0)
        {
          goto LABEL_21;
        }

        v23 = @"CycleBetweenV2RightBudValue";
        v24 = @"cycleBetweenV2RightBudValue";
      }

      else
      {
        if (v22)
        {
          v23 = @"CycleBetweenLeftBudValue";
          v24 = @"cycleBetweenLeftBudValue";
          goto LABEL_14;
        }

        v28 = [*(&self->super.super.super.super.super.super.isa + v6) identifier];
        v29 = [v28 isEqualToString:@"RIGHT_ID"];

        if (!v29)
        {
          goto LABEL_21;
        }

        v23 = @"CycleBetweenRightBudValue";
        v24 = @"cycleBetweenRightBudValue";
      }

      v25 = @"Right";
      goto LABEL_20;
    }

LABEL_40:
    v88 = [*(v16 + 2656) arrayWithArray:v105];
    v89 = *MEMORY[0x277D3FC48];
    v90 = *(&self->super.super.super.super.super.super.isa + v89);
    *(&self->super.super.super.super.super.super.isa + v89) = v88;

    v5 = *(&self->super.super.super.super.super.super.isa + v89);
  }

  v91 = v5;

  v92 = *MEMORY[0x277D85DE8];

  return v91;
}

- (void)listItemSelected:(id)a3
{
  v4 = a3;
  if ([v4 section])
  {
    v5 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) cellForRowAtIndexPath:v4];
    v6 = [(AccessoryControlListItemsController *)self specifierAtIndexPath:v4];
    v7 = v6;
    p_listeningModeConfigs = &self->_listeningModeConfigs;
    p_anc = &self->_listeningModeConfigs.anc;
    v10 = self->_listeningModeConfigs.transparency + self->_listeningModeConfigs.anc + self->_listeningModeConfigs.normal;
    if (self->_autoANCSupported)
    {
      v10 += self->_listeningModeConfigs.autoANC;
    }

    if (v10 == 2)
    {
      v11 = [v6 identifier];
      v41 = v5;
      if ([v11 isEqualToString:@"ANC"] && p_anc->normal)
      {
        goto LABEL_10;
      }

      v12 = [v7 identifier];
      if ([v12 isEqualToString:@"Passthrough"] && self->_listeningModeConfigs.transparency)
      {

LABEL_10:
LABEL_14:
        v15 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [AccessoryControlListItemsController listItemSelected:v15];
        }

        v5 = v41;
LABEL_17:

LABEL_49:
        goto LABEL_50;
      }

      v13 = v7;
      v14 = [v7 identifier];
      if ([v14 isEqualToString:@"Off"])
      {
        normal = p_listeningModeConfigs->normal;

        v7 = v13;
        if (normal)
        {
          goto LABEL_14;
        }
      }

      else
      {

        v7 = v13;
      }

      v5 = v41;
      if (self->_autoANCSupported)
      {
        v16 = [v7 identifier];
        if ([v16 isEqualToString:@"AutoANC"])
        {
          autoANC = self->_listeningModeConfigs.autoANC;

          v18 = autoANC;
          v5 = v41;
          if (v18)
          {
            v15 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              [AccessoryControlListItemsController listItemSelected:v15];
            }

            goto LABEL_17;
          }
        }

        else
        {
        }
      }
    }

    [v5 setChecked:{objc_msgSend(v5, "isChecked") ^ 1}];
    v19 = [v7 identifier];
    v20 = [v19 isEqualToString:@"ANC"];

    if (v20)
    {
      v21 = [v5 isChecked];
    }

    else
    {
      v22 = [v7 identifier];
      v23 = [v22 isEqualToString:@"Passthrough"];

      if (v23)
      {
        v21 = [v5 isChecked];
        p_anc = &self->_listeningModeConfigs.transparency;
      }

      else
      {
        v24 = [v7 identifier];
        v25 = [v24 isEqualToString:@"Off"];

        if (v25)
        {
          v21 = [v5 isChecked];
          p_anc = &self->_listeningModeConfigs;
        }

        else
        {
          if (!self->_autoANCSupported || ([v7 identifier], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "isEqualToString:", @"AutoANC"), v38, !v39))
          {
LABEL_33:
            v26 = v7;
            if (self->_listeningModeConfigs.anc)
            {
              v27 = 2;
            }

            else
            {
              v27 = 0;
            }

            if (self->_listeningModeConfigs.transparency)
            {
              v27 |= 4u;
            }

            v28 = v27 | p_listeningModeConfigs->normal;
            if (self->_autoANCSupported)
            {
              if (self->_listeningModeConfigs.autoANC)
              {
                v28 = v28 | 8;
              }

              else
              {
                v28 = v28;
              }

              v29 = [(NSString *)self->_currentSelectedSpecifier isEqualToString:@"Left"];
              v30 = [(AccessoryControlListItemsController *)self listeningModeCombinations];
              v31 = objc_alloc(MEMORY[0x277CBEAC0]);
              if (v29)
              {
                v32 = [v31 initWithObjectsAndKeys:{v30, @"cycleBetweenV2LeftBudValue", 0}];
                v33 = [MEMORY[0x277CCAB98] defaultCenter];
                v34 = v33;
                v35 = @"CycleBetweenV2LeftBudValue";
              }

              else
              {
                v32 = [v31 initWithObjectsAndKeys:{v30, @"cycleBetweenV2RightBudValue", 0}];
                v33 = [MEMORY[0x277CCAB98] defaultCenter];
                v34 = v33;
                v35 = @"CycleBetweenV2RightBudValue";
              }
            }

            else
            {
              v36 = [(NSString *)self->_currentSelectedSpecifier isEqualToString:@"Left"];
              v30 = [(AccessoryControlListItemsController *)self listeningModeCombinations];
              v37 = objc_alloc(MEMORY[0x277CBEAC0]);
              if (v36)
              {
                v32 = [v37 initWithObjectsAndKeys:{v30, @"cycleBetweenLeftBudValue", 0}];
                v33 = [MEMORY[0x277CCAB98] defaultCenter];
                v34 = v33;
                v35 = @"CycleBetweenLeftBudValue";
              }

              else
              {
                v32 = [v37 initWithObjectsAndKeys:{v30, @"cycleBetweenRightBudValue", 0}];
                v33 = [MEMORY[0x277CCAB98] defaultCenter];
                v34 = v33;
                v35 = @"CycleBetweenRightBudValue";
              }
            }

            [v33 postNotificationName:v35 object:0 userInfo:v32];

            [(BluetoothDeviceProtocol *)self->_currentDevice setListeningModeConfigs:v28];
            goto LABEL_49;
          }

          v21 = [v5 isChecked];
          p_anc = &self->_listeningModeConfigs.autoANC;
        }
      }
    }

    p_anc->normal = v21;
    goto LABEL_33;
  }

  v42.receiver = self;
  v42.super_class = AccessoryControlListItemsController;
  [(PSListItemsController *)&v42 listItemSelected:v4];
  [(AccessoryControlListItemsController *)self reloadSpecifiers];
LABEL_50:
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v22 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = v22;
  v7 = [v6 valueLabel];
  [v7 setLineBreakMode:0];

  v8 = [v6 valueLabel];
  [v8 setNumberOfLines:0];

  v9 = [v6 specifier];
  v10 = [v9 identifier];
  v11 = [v10 isEqualToString:@"ANC"];

  if (v11)
  {
    p_anc = &self->_listeningModeConfigs.anc;
  }

  else
  {
    v13 = [v6 specifier];
    v14 = [v13 identifier];
    v15 = [v14 isEqualToString:@"Passthrough"];

    if (v15)
    {
      p_anc = &self->_listeningModeConfigs.transparency;
    }

    else
    {
      v16 = [v6 specifier];
      v17 = [v16 identifier];
      v18 = [v17 isEqualToString:@"Off"];

      if (!v18)
      {
        goto LABEL_9;
      }

      p_anc = &self->_listeningModeConfigs;
    }
  }

  [v6 setChecked:p_anc->normal];
LABEL_9:
  if (self->_autoANCSupported)
  {
    v19 = [v6 specifier];
    v20 = [v19 identifier];
    v21 = [v20 isEqualToString:@"AutoANC"];

    if (v21)
    {
      [v6 setChecked:self->_listeningModeConfigs.autoANC];
    }
  }

LABEL_13:

  MEMORY[0x2821F96F8]();
}

- (BOOL)allowOffListeningMode
{
  v2 = self;
  v3 = sub_2511E9234();

  return v3;
}

@end