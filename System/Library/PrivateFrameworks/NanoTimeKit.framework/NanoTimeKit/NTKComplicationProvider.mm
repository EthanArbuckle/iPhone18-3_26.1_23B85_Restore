@interface NTKComplicationProvider
- (BOOL)isComplicationAvailable:(id)available forFamilies:(id)families;
- (BOOL)isComplicationConfigurable:(id)configurable;
- (NSIndexSet)disabledComplicationTypes;
- (NTKComplicationProvider)initWithDevice:(id)device;
- (id)_bundleComplicationsWithOptions:(id)options;
- (id)_dateComplicationsWithOptions:(id)options;
- (id)_remoteComplicationsWithOptions:(id)options;
- (id)_widgetComplicationsWithOptions:(id)options;
- (id)complicationsOfType:(unint64_t)type withOptions:(id)options;
- (id)complicationsWithOptions:(id)options;
- (void)_handleAvailableComplicationsChange;
- (void)_resetDisabledTypes;
- (void)appendOrReplaceConfigurableDefaultComplication:(id)complication toComplications:(id)complications;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation NTKComplicationProvider

id __45__NTKComplicationProvider_providerForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_46);
  if (_block_invoke___cachedDevice_46)
  {
    v3 = _block_invoke___cachedDevice_46 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _block_invoke___previousCLKDeviceVersion_46))
  {
    _block_invoke___cachedDevice_46 = v2;
    _block_invoke___previousCLKDeviceVersion_46 = [v2 version];
    v5 = __45__NTKComplicationProvider_providerForDevice___block_invoke_2(_block_invoke___previousCLKDeviceVersion_46, v2);
    v6 = _block_invoke_value_33;
    _block_invoke_value_33 = v5;
  }

  v7 = _block_invoke_value_33;
  os_unfair_lock_unlock(&_block_invoke_lock_46);

  return v7;
}

NTKComplicationProvider *__45__NTKComplicationProvider_providerForDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[NTKComplicationProvider alloc] initWithDevice:v2];

  return v3;
}

- (NTKComplicationProvider)initWithDevice:(id)device
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = NTKComplicationProvider;
  v6 = [(NTKComplicationProvider *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lock_observers = v7->_lock_observers;
    v7->_lock_observers = weakObjectsHashTable;

    objc_storeStrong(&v7->_device, device);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__resetDisabledTypes name:@"NTKSystemAppStateChangedNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel__handleAvailableComplicationsChange name:@"NTKRemoteComplicationProviderComplicationsDidChange" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v7 selector:sel__handleAvailableComplicationsChange name:@"NTKWidgetComplicationProviderComplicationsDidChange" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v7 selector:sel__handleAvailableComplicationsChange name:@"NTKComplicationDidChangeNotification" object:0];
  }

  return v7;
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)complicationsWithOptions:(id)options
{
  optionsCopy = options;
  disabledComplicationTypes = [(NTKComplicationProvider *)self disabledComplicationTypes];
  v6 = objc_opt_new();
  if (([optionsCopy includeDisabledTypes] & 1) == 0)
  {
    allowedComplicationTypes = [optionsCopy allowedComplicationTypes];
    v8 = [allowedComplicationTypes mutableCopy];

    [v8 removeIndexes:disabledComplicationTypes];
    v9 = [optionsCopy copy];

    [v9 setAllowedComplicationTypes:v8];
    optionsCopy = v9;
  }

  allowedComplicationTypes2 = [optionsCopy allowedComplicationTypes];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__NTKComplicationProvider_complicationsWithOptions___block_invoke;
  v16[3] = &unk_278783570;
  v16[4] = self;
  v17 = optionsCopy;
  v11 = v6;
  v18 = v11;
  v12 = optionsCopy;
  [allowedComplicationTypes2 enumerateIndexesUsingBlock:v16];

  v13 = v18;
  v14 = v11;

  return v11;
}

void __52__NTKComplicationProvider_complicationsWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) complicationsOfType:a2 withOptions:*(a1 + 40)];
  [*(a1 + 48) addObjectsFromArray:v3];
}

- (id)complicationsOfType:(unint64_t)type withOptions:(id)options
{
  optionsCopy = options;
  v7 = objc_opt_new();
  if (type <= 30)
  {
    if (!type)
    {
      v10 = +[NTKComplication nullComplication];
      [v7 addObject:v10];
      goto LABEL_17;
    }

    if (type == 1)
    {
      v9 = [(NTKComplicationProvider *)self _dateComplicationsWithOptions:optionsCopy];
      [v7 addObjectsFromArray:v9];

      if (([optionsCopy allowGenericDateComplication] & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    switch(type)
    {
      case 0x1FuLL:
        v8 = [(NTKComplicationProvider *)self _remoteComplicationsWithOptions:optionsCopy];
        goto LABEL_11;
      case 0x30uLL:
        v11 = [(NTKComplicationProvider *)self _bundleComplicationsWithOptions:optionsCopy];
        [v7 addObjectsFromArray:v11];

        break;
      case 0x38uLL:
        v8 = [(NTKComplicationProvider *)self _widgetComplicationsWithOptions:optionsCopy];
LABEL_11:
        v10 = v8;
        [v7 addObjectsFromArray:v8];
LABEL_17:

LABEL_18:
        v15 = v7;
        goto LABEL_19;
    }
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  rankedFamilies = [optionsCopy rankedFamilies];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__NTKComplicationProvider_complicationsOfType_withOptions___block_invoke;
  v17[3] = &unk_278783B18;
  v17[5] = &v18;
  v17[6] = type;
  v17[4] = self;
  [rankedFamilies enumerateObjectsUsingBlock:v17];

  if (*(v19 + 24) == 1)
  {
    v13 = [NTKComplication allComplicationsOfType:type];
    [v7 addObjectsFromArray:v13];
  }

  v14 = v7;
  _Block_object_dispose(&v18, 8);
LABEL_19:

  return v7;
}

void __59__NTKComplicationProvider_complicationsOfType_withOptions___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 unsignedIntegerValue];
  v7 = *(a1 + 48);
  v8 = [*(a1 + 32) device];
  *(*(*(a1 + 40) + 8) + 24) = [NTKComplicationController controllerClassForComplicationType:v7 family:v6 forDevice:v8]!= 0;

  *a4 = *(*(*(a1 + 40) + 8) + 24);
}

- (void)appendOrReplaceConfigurableDefaultComplication:(id)complication toComplications:(id)complications
{
  v40 = *MEMORY[0x277D85DE8];
  complicationCopy = complication;
  complicationsCopy = complications;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_23;
  }

  v8 = complicationCopy;
  device = [(NTKComplicationProvider *)self device];
  v10 = NTKSharedWidgetComplicationProvider(device);
  v11 = [v10 isComplicationConfigurable:v8];

  if (!v11)
  {

    goto LABEL_23;
  }

  v30 = complicationsCopy;
  v31 = complicationCopy;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = complicationsCopy;
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
  v14 = v8;
  if (!v13)
  {
LABEL_18:

    goto LABEL_22;
  }

  v15 = v13;
  v16 = *v36;
  v32 = *v36;
LABEL_5:
  v17 = 0;
  v34 = v15;
  while (1)
  {
    if (*v36 != v16)
    {
      objc_enumerationMutation(v12);
    }

    v18 = *(*(&v35 + 1) + 8 * v17);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_16;
    }

    v19 = v18;
    extensionBundleIdentifier = [v19 extensionBundleIdentifier];
    extensionBundleIdentifier2 = [v14 extensionBundleIdentifier];
    if (![extensionBundleIdentifier isEqualToString:extensionBundleIdentifier2])
    {
      goto LABEL_14;
    }

    containerBundleIdentifier = [v19 containerBundleIdentifier];
    containerBundleIdentifier2 = [v14 containerBundleIdentifier];
    if (![containerBundleIdentifier isEqualToString:containerBundleIdentifier2])
    {

      v15 = v34;
LABEL_14:

      goto LABEL_15;
    }

    kind = [v19 kind];
    [v14 kind];
    v25 = v12;
    v27 = v26 = v14;
    v33 = [kind isEqualToString:v27];

    v14 = v26;
    v12 = v25;
    v16 = v32;

    v15 = v34;
    if (v33)
    {
      break;
    }

LABEL_15:

LABEL_16:
    if (v15 == ++v17)
    {
      v15 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v15)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  if (v19)
  {
    v28 = v14;
    v29 = [v12 indexOfObject:v19];
    [v12 removeObject:v19];
    [v12 insertObject:v28 atIndex:v29];

    complicationsCopy = v30;
    complicationCopy = v31;
    goto LABEL_24;
  }

LABEL_22:

  complicationsCopy = v30;
  complicationCopy = v31;
LABEL_23:
  [complicationsCopy addObject:complicationCopy];
LABEL_24:
}

- (id)_dateComplicationsWithOptions:(id)options
{
  v3 = MEMORY[0x277CBEB18];
  optionsCopy = options;
  array = [v3 array];
  supportedDateStyles = [optionsCopy supportedDateStyles];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__NTKComplicationProvider__dateComplicationsWithOptions___block_invoke;
  v9[3] = &unk_278783B40;
  v7 = array;
  v10 = v7;
  [supportedDateStyles enumerateObjectsUsingBlock:v9];

  return v7;
}

void __57__NTKComplicationProvider__dateComplicationsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntegerValue];
  v4 = *(a1 + 32);
  v5 = [NTKDateComplication complicationWithDateStyle:v3];
  [v4 addObject:v5];
}

- (id)_remoteComplicationsWithOptions:(id)options
{
  v3 = MEMORY[0x277CBEB18];
  optionsCopy = options;
  array = [v3 array];
  rankedFamilies = [optionsCopy rankedFamilies];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__NTKComplicationProvider__remoteComplicationsWithOptions___block_invoke;
  v9[3] = &unk_278783B40;
  v7 = array;
  v10 = v7;
  [rankedFamilies enumerateObjectsUsingBlock:v9];

  return v7;
}

void __59__NTKComplicationProvider__remoteComplicationsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntegerValue];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __59__NTKComplicationProvider__remoteComplicationsWithOptions___block_invoke_2;
  v9 = &unk_278783B90;
  v11 = v3;
  v10 = *(a1 + 32);
  v4 = _Block_copy(&v6);
  v5 = NTKSharedRemoteComplicationProvider();
  [v5 enumerateEnabledVendorsForComplicationFamily:v3 withBlock:{v4, v6, v7, v8, v9}];
}

void __59__NTKComplicationProvider__remoteComplicationsWithOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = NTKSharedRemoteComplicationProvider();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__NTKComplicationProvider__remoteComplicationsWithOptions___block_invoke_3;
  v11[3] = &unk_278783B68;
  v12 = v5;
  v13 = v6;
  v8 = *(a1 + 40);
  v14 = *(a1 + 32);
  v9 = v6;
  v10 = v5;
  [v7 enumerateComplicationDescriptorsForClientIdentifier:v10 family:v8 withBlock:v11];
}

void __59__NTKComplicationProvider__remoteComplicationsWithOptions___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [NTKRemoteComplication complicationWithClientIdentifier:*(a1 + 32) appBundleIdentifier:*(a1 + 40) complicationDescriptor:a2];
  if (([*(a1 + 48) containsObject:?] & 1) == 0)
  {
    [*(a1 + 48) addObject:v3];
  }
}

- (id)_bundleComplicationsWithOptions:(id)options
{
  v4 = MEMORY[0x277CBEB18];
  optionsCopy = options;
  array = [v4 array];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__NTKComplicationProvider__bundleComplicationsWithOptions___block_invoke;
  aBlock[3] = &unk_278783BB8;
  v7 = array;
  v17 = v7;
  v8 = _Block_copy(aBlock);
  rankedFamilies = [optionsCopy rankedFamilies];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__NTKComplicationProvider__bundleComplicationsWithOptions___block_invoke_2;
  v14[3] = &unk_278783BE0;
  v14[4] = self;
  v15 = v8;
  v10 = v8;
  [rankedFamilies enumerateObjectsUsingBlock:v14];

  v11 = v15;
  v12 = v7;

  return v7;
}

void __59__NTKComplicationProvider__bundleComplicationsWithOptions___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (!a4 && (![v8 length] || (NTKIsSystemAppRestrictedOrRemoved(v9) & 1) == 0))
  {
    v10 = +[NTKBundleComplicationManager sharedManager];
    v11 = [v10 bundleComplicationsForBundleIdentifier:v7];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [NTKBundleComplication bundledComplicationWithComplication:*(*(&v18 + 1) + 8 * v16), v18];
          if (([*(a1 + 32) containsObject:v17] & 1) == 0)
          {
            [*(a1 + 32) addObject:v17];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }
}

void __59__NTKComplicationProvider__bundleComplicationsWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntegerValue];
  v5 = +[NTKBundleComplicationManager sharedManager];
  v4 = [*(a1 + 32) device];
  [v5 enumerateBundlesForComplicationFamily:v3 device:v4 withBlock:*(a1 + 40)];
}

- (id)_widgetComplicationsWithOptions:(id)options
{
  v4 = MEMORY[0x277CBEB18];
  optionsCopy = options;
  array = [v4 array];
  device = [(NTKComplicationProvider *)self device];
  v8 = NTKSharedWidgetComplicationProvider(device);
  rankedFamilies = [optionsCopy rankedFamilies];
  locationStyle = [optionsCopy locationStyle];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__NTKComplicationProvider__widgetComplicationsWithOptions___block_invoke;
  v14[3] = &unk_278783C08;
  v15 = array;
  v11 = array;
  [v8 enumerateDescriptorsCompatibleWithFamilies:rankedFamilies locationStyle:locationStyle withBlock:v14];

  v12 = [v11 copy];

  return v12;
}

void __59__NTKComplicationProvider__widgetComplicationsWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [NTKWidgetComplication complicationWithDescriptor:a2];
  [*(a1 + 32) addObject:v3];
}

- (NSIndexSet)disabledComplicationTypes
{
  os_unfair_lock_lock(&self->_lock);
  lock_disabledComplicationTypes = self->_lock_disabledComplicationTypes;
  if (!lock_disabledComplicationTypes)
  {
    v4 = +[NTKCompanionAppLibrary sharedAppLibrary];
    disabledComplicationTypes = [v4 disabledComplicationTypes];
    v6 = self->_lock_disabledComplicationTypes;
    self->_lock_disabledComplicationTypes = disabledComplicationTypes;

    lock_disabledComplicationTypes = self->_lock_disabledComplicationTypes;
  }

  v7 = [(NSIndexSet *)lock_disabledComplicationTypes copy];
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)_resetDisabledTypes
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  os_unfair_lock_lock(&self->_lock);
  lock_disabledComplicationTypes = self->_lock_disabledComplicationTypes;
  self->_lock_disabledComplicationTypes = 0;

  allObjects = [(NSHashTable *)self->_lock_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__NTKComplicationProvider__resetDisabledTypes__block_invoke;
  v5[3] = &unk_278783C30;
  v5[4] = self;
  [allObjects enumerateObjectsUsingBlock:v5];
  [(NTKComplicationProvider *)self _handleAvailableComplicationsChange];
}

void __46__NTKComplicationProvider__resetDisabledTypes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 complicationProviderUpdatedDisabledComplicationTypes:*(a1 + 32)];
  }
}

- (BOOL)isComplicationAvailable:(id)available forFamilies:(id)families
{
  availableCopy = available;
  familiesCopy = families;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v11 = availableCopy;
    device = NTKSharedRemoteComplicationProvider();
    v13 = [device isComplicationAvailable:v11 forFamilies:familiesCopy];

LABEL_3:
    goto LABEL_4;
  }

  if (v9)
  {
    if (CLKIsNTKDaemon())
    {
      v13 = 1;
      goto LABEL_4;
    }

    v20 = availableCopy;
    device = [(NTKComplicationProvider *)self device];
    v21 = NTKSharedWidgetComplicationProvider(device);
    v13 = [v21 isComplicationAvailable:v20 forFamilies:familiesCopy];

    goto LABEL_3;
  }

  if (v10)
  {
    v15 = availableCopy;
    complication = [v15 complication];
    appBundleIdentifier = [complication appBundleIdentifier];

    complication2 = [v15 complication];
    bundleIdentifier = [complication2 bundleIdentifier];

    if ([appBundleIdentifier length] && (NTKIsSystemAppRestrictedOrRemoved(appBundleIdentifier) & 1) != 0)
    {
      v13 = 0;
    }

    else
    {
      v31 = 0;
      v32 = &v31;
      v33 = 0x2020000000;
      v34 = 0;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __63__NTKComplicationProvider_isComplicationAvailable_forFamilies___block_invoke;
      v28[3] = &unk_278783C80;
      v28[4] = self;
      v29 = bundleIdentifier;
      v30 = &v31;
      [familiesCopy enumerateObjectsUsingBlock:v28];
      v13 = *(v32 + 24);

      _Block_object_dispose(&v31, 8);
    }
  }

  else
  {
    disabledComplicationTypes = [(NTKComplicationProvider *)self disabledComplicationTypes];
    v23 = [disabledComplicationTypes containsIndex:{objc_msgSend(availableCopy, "complicationType")}];

    if (v23)
    {
      v13 = 0;
    }

    else
    {
      v31 = 0;
      v32 = &v31;
      v33 = 0x2020000000;
      v34 = 0;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __63__NTKComplicationProvider_isComplicationAvailable_forFamilies___block_invoke_3;
      v24[3] = &unk_278783C80;
      v25 = availableCopy;
      selfCopy = self;
      v27 = &v31;
      [familiesCopy enumerateObjectsUsingBlock:v24];
      v13 = *(v32 + 24);

      _Block_object_dispose(&v31, 8);
    }
  }

LABEL_4:

  return v13 & 1;
}

void __63__NTKComplicationProvider_isComplicationAvailable_forFamilies___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 integerValue];
  v7 = +[NTKBundleComplicationManager sharedManager];
  v8 = [*(a1 + 32) device];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__NTKComplicationProvider_isComplicationAvailable_forFamilies___block_invoke_2;
  v11[3] = &unk_278783C58;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = v9;
  v13 = v10;
  v14 = a4;
  [v7 enumerateBundlesForComplicationFamily:v6 device:v8 withBlock:v11];
}

uint64_t __63__NTKComplicationProvider_isComplicationAvailable_forFamilies___block_invoke_2(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 isEqualToString:a1[4]];
  if ((result & 1) == 0)
  {
    v8 = a1[6];
    *(*(a1[5] + 8) + 24) = 1;
    *v8 = 1;
    *a5 = 1;
  }

  return result;
}

void __63__NTKComplicationProvider_isComplicationAvailable_forFamilies___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 integerValue];
  v7 = [*(a1 + 32) complicationType];
  v8 = [*(a1 + 40) device];
  v9 = [NTKComplicationController controllerClassForComplicationType:v7 family:v6 forDevice:v8];

  if (v9)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)isComplicationConfigurable:(id)configurable
{
  configurableCopy = configurable;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = configurableCopy;
    device = [(NTKComplicationProvider *)self device];
    v7 = NTKSharedWidgetComplicationProvider(device);
    v8 = [v7 isComplicationConfigurable:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_handleAvailableComplicationsChange
{
  os_unfair_lock_lock(&self->_lock);
  lock_disabledComplicationTypes = self->_lock_disabledComplicationTypes;
  self->_lock_disabledComplicationTypes = 0;

  allObjects = [(NSHashTable *)self->_lock_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__NTKComplicationProvider__handleAvailableComplicationsChange__block_invoke;
  v5[3] = &unk_278783C30;
  v5[4] = self;
  [allObjects enumerateObjectsUsingBlock:v5];
}

void __62__NTKComplicationProvider__handleAvailableComplicationsChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 complicationProviderComplicationsDidChange:*(a1 + 32)];
  }
}

@end