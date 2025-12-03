@interface NTKFaceBundle
+ (NSString)analyticsIdentifier;
+ (NSString)identifier;
+ (id)_localizedMarkdownStringForKey:(id)key table:(id)table suffix:(id)suffix comment:(id)comment;
+ (id)_localizedStringForKey:(id)key table:(id)table suffix:(id)suffix comment:(id)comment;
+ (id)imageWithName:(id)name;
+ (id)logObject;
- (Class)faceClass;
- (Class)faceViewClass;
- (NTKFaceBundle)init;
- (id)defaultFaceForDevice:(id)device;
- (id)faceFromData:(id)data;
- (id)galleryDefaultPigmentOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (void)_enumerateObserversWithBlock:(id)block;
- (void)_selectGalleryEditOptions:(id)options forFace:(id)face atIndex:(unint64_t)index;
- (void)addObserver:(id)observer;
- (void)argon_generateNotificationContentWithCompletion:(id)completion;
- (void)notifyObserversGalleryFacesDidUpdate;
- (void)removeObserver:(id)observer;
@end

@implementation NTKFaceBundle

- (NTKFaceBundle)init
{
  v12.receiver = self;
  v12.super_class = NTKFaceBundle;
  v2 = [(NTKFaceBundle *)&v12 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    if ([objc_opt_class() supportsGalleryObserverNotifications])
    {
      v5 = MEMORY[0x277CCACA8];
      identifier = [objc_opt_class() identifier];
      v7 = [v5 stringWithFormat:@"com.apple.NanoTimeKit.FaceBundleObserverQueue.%@", identifier];

      v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
      v9 = dispatch_queue_create([v7 UTF8String], v8);
      observerQueue = v2->_observerQueue;
      v2->_observerQueue = v9;
    }
  }

  return v2;
}

+ (NSString)identifier
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

+ (NSString)analyticsIdentifier
{
  identifier = [objc_opt_class() identifier];
  v3 = [NTKFace defaultAnalyticsIdentifierForBundleIdentifier:identifier];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [(NTKFaceBundle *)self galleryEditOptionsForDevice:deviceCopy];
  v7 = [(NTKFaceBundle *)self defaultFaceForDevice:deviceCopy];
  if ([v7 deviceSupportsPigmentEditOption])
  {
    v8 = [(NTKFaceBundle *)self galleryDefaultPigmentOptionsForDevice:deviceCopy];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __39__NTKFaceBundle_galleryFacesForDevice___block_invoke;
    v29[3] = &unk_27877EF18;
    v9 = &v30;
    v29[4] = self;
    v30 = deviceCopy;
    v10 = &v31;
    v11 = &v32;
    v31 = v6;
    v32 = array;
    v12 = array;
    v13 = v6;
    v14 = deviceCopy;
    v15 = v29;
  }

  else
  {
    v8 = [v6 objectForKeyedSubscript:&unk_284181C48];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __39__NTKFaceBundle_galleryFacesForDevice___block_invoke_8;
    v24 = &unk_27877EF40;
    v9 = &v26;
    selfCopy = self;
    v26 = deviceCopy;
    v10 = &v27;
    v11 = &v28;
    v27 = v6;
    v28 = array;
    v16 = array;
    v17 = v6;
    v18 = deviceCopy;
    v15 = &v21;
  }

  [v8 enumerateObjectsUsingBlock:{v15, v21, v22, v23, v24, selfCopy}];

  v19 = [array copy];

  return v19;
}

void __39__NTKFaceBundle_galleryFacesForDevice___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [*(a1 + 32) defaultFaceForDevice:*(a1 + 40)];
  v6 = v5;
  if (v5)
  {
    [v5 selectOption:v7 forCustomEditMode:10 slot:0];
    [*(a1 + 32) _selectGalleryEditOptions:*(a1 + 48) forFace:v6 atIndex:a3];
    [*(a1 + 56) addObject:v6];
  }
}

void __39__NTKFaceBundle_galleryFacesForDevice___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) defaultFaceForDevice:*(a1 + 40)];
  if (v5)
  {
    v6 = v5;
    [*(a1 + 32) _selectGalleryEditOptions:*(a1 + 48) forFace:v5 atIndex:a3];
    [*(a1 + 56) addObject:v6];
    v5 = v6;
  }
}

- (id)galleryDefaultPigmentOptionsForDevice:(id)device
{
  v30 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  array = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [(NTKFaceBundle *)self galleryPigmentsForDevice:deviceCopy, 0];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [NTKPigmentEditOption pigmentNamed:*(*(&v25 + 1) + 8 * i)];
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  if (![array count])
  {
    v12 = [(NTKFaceBundle *)self defaultFaceForDevice:deviceCopy];
    if ([v12 supportsPigmentEditOption])
    {
      pigmentFaceDomain = [(objc_class *)[(NTKFaceBundle *)self faceClass] pigmentFaceDomain];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:{-[NTKFaceBundle faceClass](self, "faceClass")}];
      v15 = +[NTKPigmentEditOptionStore sharedInstance];
      v16 = [v15 defaultGalleryColorsForDomain:pigmentFaceDomain bundle:v14];
      [array addObjectsFromArray:v16];

      if (![array count])
      {
        v17 = +[NTKPigmentEditOptionStore sharedInstance];
        v18 = [v17 pigmentSetForDomain:pigmentFaceDomain bundle:v14];
        v19 = [v18 pigmentsFromMostRecentAddableCollectionsForSlot:0];
        [array addObjectsFromArray:v19];
      }

      if (![array count])
      {
        v20 = +[NTKPigmentEditOptionStore sharedInstance];
        v21 = [v20 pigmentSetForDomain:pigmentFaceDomain bundle:v14];
        v22 = [v21 collectionForSlot:0];
        defaultOption = [v22 defaultOption];

        if (defaultOption)
        {
          [array addObject:defaultOption];
        }
      }
    }
  }

  return array;
}

- (void)_selectGalleryEditOptions:(id)options forFace:(id)face atIndex:(unint64_t)index
{
  optionsCopy = options;
  faceCopy = face;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__NTKFaceBundle__selectGalleryEditOptions_forFace_atIndex___block_invoke;
  v11[3] = &unk_27877EF68;
  v13 = faceCopy;
  indexCopy = index;
  v12 = optionsCopy;
  v9 = faceCopy;
  v10 = optionsCopy;
  [v9 enumerateCustomEditModesWithBlock:v11];
}

void __59__NTKFaceBundle__selectGalleryEditOptions_forFace_atIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v15 = [v4 objectForKeyedSubscript:v5];

  v6 = v15;
  if (v15)
  {
    v7 = *(a1 + 48);
    v8 = [v15 count];
    v6 = v15;
    if (v7 <= v8)
    {
      v9 = [*(a1 + 40) _optionClassForCustomEditMode:a2];
      v10 = objc_opt_respondsToSelector();
      v6 = v15;
      if (v10)
      {
        v11 = [v15 objectAtIndexedSubscript:*(a1 + 48)];
        v12 = [v11 unsignedIntValue];
        v13 = [*(a1 + 40) device];
        v14 = [v9 _optionWithValue:v12 forDevice:v13];

        if (v14)
        {
          [*(a1 + 40) selectOption:v14 forCustomEditMode:a2 slot:0];
        }

        v6 = v15;
      }
    }
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if ([objc_opt_class() supportsGalleryObserverNotifications])
  {
    observerQueue = self->_observerQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __29__NTKFaceBundle_addObserver___block_invoke;
    v6[3] = &unk_27877E438;
    v6[4] = self;
    v7 = observerCopy;
    dispatch_sync(observerQueue, v6);
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if ([objc_opt_class() supportsGalleryObserverNotifications])
  {
    observerQueue = self->_observerQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__NTKFaceBundle_removeObserver___block_invoke;
    v6[3] = &unk_27877E438;
    v6[4] = self;
    v7 = observerCopy;
    dispatch_sync(observerQueue, v6);
  }
}

- (void)notifyObserversGalleryFacesDidUpdate
{
  if ([objc_opt_class() supportsGalleryObserverNotifications])
  {
    objc_initWeak(&location, self);
    observerQueue = self->_observerQueue;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __63__NTKFaceBundle_Internal__notifyObserversGalleryFacesDidUpdate__block_invoke;
    v4[3] = &unk_27877DC58;
    objc_copyWeak(&v5, &location);
    dispatch_async(observerQueue, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __63__NTKFaceBundle_Internal__notifyObserversGalleryFacesDidUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _enumerateObserversWithBlock:&__block_literal_global_17];
    WeakRetained = v2;
  }
}

- (void)_enumerateObserversWithBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSHashTable *)self->_observers objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)argon_generateNotificationContentWithCompletion:(id)completion
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (completion)
  {
    v4 = MEMORY[0x277CCA9B8];
    v10[0] = @"description";
    v10[1] = @"faceBundleClass";
    v11[0] = @"Notification content not supported for face bundle";
    completionCopy = completion;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v11[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v9 = [v4 errorWithDomain:@"NTKFaceSupportDomain" code:100 userInfo:v8];
    (*(completion + 2))(completionCopy, 0, 0, v9);
  }
}

+ (id)_localizedStringForKey:(id)key table:(id)table suffix:(id)suffix comment:(id)comment
{
  keyCopy = key;
  tableCopy = table;
  suffixCopy = suffix;
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v13 = [tableCopy stringByAppendingString:@"Companion"];
  if ([suffixCopy length])
  {
    suffixCopy = [v13 stringByAppendingFormat:@"-%@", suffixCopy];

    v13 = suffixCopy;
  }

  v15 = [v12 localizedStringForKey:keyCopy value:@"NTKFaceBundleNotFound" table:v13];
  if ([v15 isEqualToString:@"NTKFaceBundleNotFound"])
  {
    v16 = tableCopy;
    if ([suffixCopy length])
    {
      suffixCopy2 = [v16 stringByAppendingFormat:@"-%@", suffixCopy];

      v16 = suffixCopy2;
    }

    v18 = [v12 localizedStringForKey:keyCopy value:&stru_284110E98 table:v16];

    v15 = v18;
  }

  return v15;
}

+ (id)imageWithName:(id)name
{
  v4 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  v6 = [v4 bundleForClass:self];
  v7 = [MEMORY[0x277D755B8] imageNamed:nameCopy inBundle:v6 compatibleWithTraitCollection:0];

  return v7;
}

+ (id)logObject
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  if (!logObject__logConnections)
  {
    v4 = objc_opt_new();
    v5 = logObject__logConnections;
    logObject__logConnections = v4;
  }

  logCategoryName = [self logCategoryName];
  v7 = [logObject__logConnections objectForKeyedSubscript:logCategoryName];
  if (!v7)
  {
    v7 = os_log_create("NanoTimeKit", [logCategoryName UTF8String]);
    if (logCategoryName)
    {
      [logObject__logConnections setObject:v7 forKey:logCategoryName];
    }
  }

  objc_sync_exit(v3);

  return v7;
}

+ (id)_localizedMarkdownStringForKey:(id)key table:(id)table suffix:(id)suffix comment:(id)comment
{
  keyCopy = key;
  tableCopy = table;
  suffixCopy = suffix;
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v13 = [tableCopy stringByAppendingString:@"Companion"];
  if ([suffixCopy length])
  {
    suffixCopy = [v13 stringByAppendingFormat:@"-%@", suffixCopy];

    v13 = suffixCopy;
  }

  v15 = [v12 ntk_localizedMarkdownStringForKey:keyCopy value:@"NTKFaceBundleNotFound" table:v13];
  if (![v15 length] || objc_msgSend(v15, "isEqualToString:", @"NTKFaceBundleNotFound"))
  {
    v16 = tableCopy;
    if ([suffixCopy length])
    {
      suffixCopy2 = [v16 stringByAppendingFormat:@"-%@", suffixCopy];

      v16 = suffixCopy2;
    }

    v18 = [v12 ntk_localizedMarkdownStringForKey:keyCopy value:&stru_284110E98 table:v16];

    v15 = v18;
  }

  return v15;
}

- (id)faceFromData:(id)data
{
  v4 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v25 = 0;
  v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v25];

  v7 = v25;
  faceJSONRepresentation = [v6 faceJSONRepresentation];
  if (faceJSONRepresentation)
  {
    v24 = 0;
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:faceJSONRepresentation options:0 error:&v24];
    v10 = v24;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
      nrDeviceUUID = [v6 nrDeviceUUID];
      v12 = [MEMORY[0x277CBBAE8] deviceForPairingID:nrDeviceUUID];
      resourceDirectory = [v6 resourceDirectory];
      identifier = [objc_opt_class() identifier];
      faceClass = [(NTKFaceBundle *)self faceClass];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __46__NTKFaceBundle_FaceGeneration__faceFromData___block_invoke;
      v21[3] = &unk_278783FA8;
      v22 = v11;
      v23 = v12;
      v16 = v12;
      v17 = v11;
      v18 = [(objc_class *)faceClass bundledFaceWithIdentifier:identifier forDevice:v16 initCustomization:v21];
      [v18 setResourceDirectory:resourceDirectory];
    }

    else
    {
      NSLog(&cfstr_JsonObjectIsOf.isa, v10);
      v18 = 0;
    }
  }

  else
  {
    NSLog(&cfstr_JsonDataIsNilF.isa, v6);
    v18 = 0;
  }

  return v18;
}

void __46__NTKFaceBundle_FaceGeneration__faceFromData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NTKFaceConfiguration alloc] initWithJSONDictionary:*(a1 + 32) editModeMapping:v3 forDevice:*(a1 + 40)];
  [v3 _customizeWithJSONDescription:*(a1 + 32)];
  [v3 _applyConfiguration:v4 allowFailure:0 forMigration:0];
}

- (Class)faceClass
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return 0;
}

- (Class)faceViewClass
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return 0;
}

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  v4 = [NTKFace defaultFaceOfStyle:12 forDevice:deviceCopy];

  return v4;
}

@end