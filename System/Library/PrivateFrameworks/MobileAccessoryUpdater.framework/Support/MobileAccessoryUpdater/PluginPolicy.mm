@interface PluginPolicy
- (BOOL)doesPolicyContainGroup:(id)group;
- (PluginPolicy)initWithCoder:(id)coder;
- (PluginPolicy)initWithPolicyDictionary:(id)dictionary pluginName:(id)name;
- (id)getMatchingFilterWithName:(id)name;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)parsePolicyDict:(id)dict;
@end

@implementation PluginPolicy

- (PluginPolicy)initWithPolicyDictionary:(id)dictionary pluginName:(id)name
{
  v12.receiver = self;
  v12.super_class = PluginPolicy;
  v6 = [(PluginPolicy *)&v12 init];
  v6->isValid = 0;
  v6->remoteFirmwareCheckInterval = -1.0;
  v6->matchingFilters = 0;
  v6->pluginName = 0;
  if (dictionary && name)
  {
    v6->pluginName = name;
    if (![name isEqualToString:@"com.apple.MobileAccessoryUpdater.EAUpdaterService"] || !objc_msgSend(MGCopyAnswer(), "BOOLValue"))
    {
      goto LABEL_19;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      nameCopy3 = name;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Use Alternate Accessory List for %@", buf, 0xCu);
    }

    v7 = [NSURL fileURLWithPath:@"/AppleInternal/usr/local/misc/SupportedAccessories-iAUP.plist"];
    if (!v7)
    {
      goto LABEL_19;
    }

    v8 = v7;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      nameCopy3 = name;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Loaded Alternate Accessory List for %@", buf, 0xCu);
    }

    dictionaryCopy = [NSDictionary dictionaryWithContentsOfURL:v8];
    if (!dictionaryCopy)
    {
LABEL_19:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        nameCopy3 = name;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Loaded Native Accessory List for %@", buf, 0xCu);
      }

      dictionaryCopy = dictionary;
    }

    [(PluginPolicy *)v6 parsePolicyDict:dictionaryCopy];
  }

  else
  {
    FudLog();
    v10 = v6;
    return 0;
  }

  return v6;
}

- (void)parsePolicyDict:(id)dict
{
  if (!dict)
  {

    goto LABEL_73;
  }

  if (![dict objectForKey:@"MobileAccessoryUpdaterProperties"])
  {
LABEL_73:
    FudLog();
    return;
  }

  v5 = [dict objectForKey:@"MobileAccessoryUpdaterProperties"];
  self->isValid = 0;
  v6 = [v5 objectForKey:@"RemoteFirmwareCheckInterval"];
  if (!v6)
  {
    sub_10004C644();
    return;
  }

  v7 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10004C074();
    return;
  }

  [v7 doubleValue];
  self->remoteFirmwareCheckInterval = v8;
  v9 = [v5 objectForKey:@"Groups"];
  if (!v9)
  {
    sub_10004C60C();
    return;
  }

  v10 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10004C0AC();
    return;
  }

  self->groups = [[NSMutableArray alloc] initWithArray:v10];
  v11 = [v5 objectForKey:@"MatchingDevices"];
  if (!v11)
  {
    sub_10004C5D4();
    return;
  }

  v12 = v11;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10004C0E4();
    return;
  }

  v13 = [[NSMutableArray alloc] initWithCapacity:2];
  self->matchingFilters = v13;
  if (!v13)
  {
    sub_10004C5C4();
    return;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v14 = [v12 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (!v14)
  {
    goto LABEL_70;
  }

  v15 = v14;
  v16 = *v62;
  obj = v12;
  while (2)
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v62 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v61 + 1) + 8 * i);
      if (!v18)
      {
        sub_10004C5A0();
        return;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10004C11C();
        return;
      }

      v19 = objc_alloc_init(MatchingFilter);
      v20 = [v18 objectForKey:@"DeviceClass"];
      if (!v20)
      {
        sub_10004C568();
        goto LABEL_97;
      }

      v21 = v20;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10004C140();
        goto LABEL_97;
      }

      [(MatchingFilter *)v19 setFilterName:v21];
      v22 = [v18 objectForKey:@"DeviceClassName"];
      if (!v22)
      {
        sub_10004C530();
        goto LABEL_97;
      }

      v23 = v22;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10004C178();
        goto LABEL_97;
      }

      [(MatchingFilter *)v19 setFilterReadableName:v23];
      v24 = [v18 objectForKey:@"MatchingType"];
      if (!v24)
      {
        sub_10004C4F8();
        goto LABEL_97;
      }

      v25 = v24;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10004C1B0();
        goto LABEL_97;
      }

      [(MatchingFilter *)v19 setFilterType:v25];
      v26 = [v18 objectForKey:@"NeedsBootstrapping"];
      if (!v26)
      {
        sub_10004C4C0();
        goto LABEL_97;
      }

      v27 = v26;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10004C1E8();
        goto LABEL_97;
      }

      -[MatchingFilter setNeedsBootstrapping:](v19, "setNeedsBootstrapping:", [v27 BOOLValue]);
      v28 = [v18 objectForKey:@"NeedsQueryDevices"];
      if (v28)
      {
        v29 = v28;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10004C220();
          goto LABEL_97;
        }

        -[MatchingFilter setNeedsQueryDevices:](v19, "setNeedsQueryDevices:", [v29 BOOLValue]);
      }

      v30 = [v18 objectForKey:@"NeedsPeriodicFirmwareCheck"];
      if (v30)
      {
        v31 = v30;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10004C258();
          goto LABEL_97;
        }

        -[MatchingFilter setNeedsPeriodicFirmwareCheck:](v19, "setNeedsPeriodicFirmwareCheck:", [v31 BOOLValue]);
        v53 = v19;
        FudLog();
      }

      else
      {
        [(MatchingFilter *)v19 setNeedsPeriodicFirmwareCheck:0];
      }

      v32 = [v18 objectForKey:{@"NeedsDeviceIdleCheck", v53}];
      if (v32)
      {
        v33 = v32;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10004C290();
          goto LABEL_97;
        }

        -[MatchingFilter setNeedsDeviceIdleCheck:](v19, "setNeedsDeviceIdleCheck:", [v33 BOOLValue]);
        v54 = v19;
        FudLog();
      }

      else
      {
        [(MatchingFilter *)v19 setNeedsDeviceIdleCheck:0];
      }

      v34 = [v18 objectForKey:{@"NoPowerAssertion", v54}];
      if (v34)
      {
        v35 = v34;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10004C2C8();
          goto LABEL_97;
        }

        -[MatchingFilter setNoPowerAssertion:](v19, "setNoPowerAssertion:", [v35 BOOLValue]);
        v55 = v19;
        FudLog();
      }

      else
      {
        [(MatchingFilter *)v19 setNoPowerAssertion:0];
      }

      v36 = [v18 objectForKey:{@"NeedsMayRebootCheck", v55}];
      if (v36)
      {
        v37 = v36;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10004C300();
          goto LABEL_97;
        }

        -[MatchingFilter setNeedsMayRebootCheck:](v19, "setNeedsMayRebootCheck:", [v37 BOOLValue]);
        v56 = v19;
        FudLog();
      }

      else
      {
        [(MatchingFilter *)v19 setNeedsMayRebootCheck:0];
      }

      v38 = [v18 objectForKey:{@"NeedsInstallerCheck", v56}];
      if (v38)
      {
        v39 = v38;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10004C338();
          goto LABEL_97;
        }

        -[MatchingFilter setNeedsInstallerCheck:](v19, "setNeedsInstallerCheck:", [v39 BOOLValue]);
        v57 = v19;
        FudLog();
      }

      else
      {
        [(MatchingFilter *)v19 setNeedsInstallerCheck:0];
      }

      v40 = [v18 objectForKey:{@"NeedsMultiUpdateCheck", v57}];
      if (v40)
      {
        v41 = v40;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10004C370();
          goto LABEL_97;
        }

        -[MatchingFilter setNeedsMultiUpdateCheck:](v19, "setNeedsMultiUpdateCheck:", [v41 BOOLValue]);
        v58 = v19;
        FudLog();
      }

      else
      {
        [(MatchingFilter *)v19 setNeedsMultiUpdateCheck:0];
      }

      v42 = [v18 objectForKey:{@"EAOverHID", v58}];
      if (v42)
      {
        v43 = v42;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10004C3A8();
          goto LABEL_97;
        }

        -[MatchingFilter setEaOverHIDAccessory:](v19, "setEaOverHIDAccessory:", [v43 BOOLValue]);
        v59 = v19;
        FudLog();
      }

      else
      {
        [(MatchingFilter *)v19 setEaOverHIDAccessory:0];
      }

      v44 = [v18 objectForKey:{@"MatchingDictionary", v59}];
      if (!v44)
      {
        sub_10004C488();
        goto LABEL_97;
      }

      v45 = v44;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10004C3E0();
        goto LABEL_97;
      }

      [(MatchingFilter *)v19 setFilter:v45];
      filterName = [v18 objectForKey:@"ExclusionGroup"];
      if (!filterName)
      {
        filterName = [(MatchingFilter *)v19 filterName];
      }

      [(MatchingFilter *)v19 setExclusionGroup:filterName];
      v47 = [v18 objectForKey:@"SilentUpdateNoUI"];
      if (v47)
      {
        v48 = v47;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10004C418();
          goto LABEL_97;
        }

        bOOLValue = [v48 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      [(MatchingFilter *)v19 setSilentUpdateNoUI:bOOLValue];
      v50 = [v18 objectForKey:@"StopOnBootstrapFailure"];
      if (v50)
      {
        v51 = v50;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bOOLValue2 = [v51 BOOLValue];
          goto LABEL_68;
        }

        sub_10004C450();
LABEL_97:
        if (v19)
        {
        }

        return;
      }

      bOOLValue2 = 0;
LABEL_68:
      [(MatchingFilter *)v19 setStopOnBootstrapFailure:bOOLValue2];
      [(NSMutableArray *)self->matchingFilters addObject:v19];
    }

    v15 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_70:
  self->isValid = 1;
}

- (id)getMatchingFilterWithName:(id)name
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  matchingFilters = self->matchingFilters;
  v5 = [(NSMutableArray *)matchingFilters countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(matchingFilters);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "filterName")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)matchingFilters countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)doesPolicyContainGroup:(id)group
{
  groups = self->groups;
  if (groups)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(NSMutableArray *)groups countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(groups);
          }

          if ([*(*(&v10 + 1) + 8 * i) isEqualToString:group])
          {
            LOBYTE(v5) = 1;
            return v5;
          }
        }

        v6 = [(NSMutableArray *)groups countByEnumeratingWithState:&v10 objects:v14 count:16];
        LOBYTE(v5) = 0;
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    FudLog();
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)dealloc
{
  pluginName = self->pluginName;
  if (pluginName)
  {
  }

  groups = self->groups;
  if (groups)
  {
  }

  matchingFilters = self->matchingFilters;
  if (matchingFilters)
  {
  }

  v6.receiver = self;
  v6.super_class = PluginPolicy;
  [(PluginPolicy *)&v6 dealloc];
}

- (PluginPolicy)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = PluginPolicy;
  v4 = [(PluginPolicy *)&v8 init];
  if (v4)
  {
    v4->pluginName = [coder decodeObjectOfClass:objc_opt_class() forKey:@"pluginName"];
    v4->isValid = [coder decodeBoolForKey:@"isValid"];
    [coder decodeDoubleForKey:@"remoteFirmwareCheckInterval"];
    v4->remoteFirmwareCheckInterval = v5;
    v6 = objc_opt_class();
    v4->matchingFilters = [coder decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"matchingFilters"}];
    v9[0] = objc_opt_class();
    v9[1] = objc_opt_class();
    v4->groups = [coder decodeObjectOfClasses:+[NSSet setWithArray:](NSSet forKey:{"setWithArray:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v9, 2)), @"groups"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->pluginName forKey:@"pluginName"];
  [coder encodeBool:self->isValid forKey:@"isValid"];
  [coder encodeDouble:@"remoteFirmwareCheckInterval" forKey:self->remoteFirmwareCheckInterval];
  [coder encodeObject:self->matchingFilters forKey:@"matchingFilters"];
  groups = self->groups;

  [coder encodeObject:groups forKey:@"groups"];
}

@end