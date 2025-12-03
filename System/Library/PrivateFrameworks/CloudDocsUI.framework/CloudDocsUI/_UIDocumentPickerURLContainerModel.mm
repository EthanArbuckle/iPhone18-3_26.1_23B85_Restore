@interface _UIDocumentPickerURLContainerModel
+ (id)_tagBlipColors;
+ (id)allTags;
+ (id)tagColorsByTag;
+ (void)_tagColorsDidChange;
- (BOOL)afterInitialUpdate;
- (BOOL)shouldAllowPickingType:(id)type;
- (BOOL)shouldEnableContainer:(id)container;
- (BOOL)shouldShowContainerForType:(id)type;
- (NSString)description;
- (NSString)displayTitle;
- (_UIDocumentPickerURLContainerModel)init;
- (_UIDocumentPickerURLContainerModel)initWithURL:(id)l pickableTypes:(id)types mode:(unint64_t)mode;
- (id)_createObserver;
- (id)scopes;
- (void)arrayController:(id)controller modelChanged:(id)changed differences:(id)differences;
- (void)callUpdateHandlerWithNewItems:(id)items diff:(id)diff;
- (void)dealloc;
- (void)refreshItem:(id)item thumbnailOnly:(BOOL)only;
- (void)startMonitoringChanges;
- (void)stopMonitoringChanges;
- (void)updateObserverForURL:(id)l;
- (void)updateSortDescriptors;
@end

@implementation _UIDocumentPickerURLContainerModel

+ (id)tagColorsByTag
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52___UIDocumentPickerURLContainerModel_tagColorsByTag__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (tagColorsByTag_onceToken != -1)
  {
    dispatch_once(&tagColorsByTag_onceToken, block);
  }

  v2 = [_UIDocumentPickerURLContainerModelColorsByTag copy];

  return v2;
}

+ (id)allTags
{
  tagColorsByTag = [self tagColorsByTag];
  v3 = [_UIDocumentPickerURLContainerModelAllTags copy];

  return v3;
}

+ (id)_tagBlipColors
{
  if (_tagBlipColors_onceToken != -1)
  {
    +[_UIDocumentPickerURLContainerModel _tagBlipColors];
  }

  v3 = _tagBlipColors_colors;

  return v3;
}

+ (void)_tagColorsDidChange
{
  v1 = [self objectForKey:@"FinderTagDictVersion"];
  [v1 unsignedIntegerValue];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

- (_UIDocumentPickerURLContainerModel)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_UIDocumentPickerURLContainerModel init]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  return 0;
}

- (_UIDocumentPickerURLContainerModel)initWithURL:(id)l pickableTypes:(id)types mode:(unint64_t)mode
{
  typesCopy = types;
  br_realpathURL = [l br_realpathURL];
  if (-[_UIDocumentPickerURLContainerModel isMemberOfClass:](self, "isMemberOfClass:", objc_opt_class()) && (!br_realpathURL || ([MEMORY[0x277CBEBC0] ui_cloudDocsContainerURL], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(br_realpathURL, "isEqual:", v11), v11, v12)))
  {
    v13 = [[_UIDocumentPickerRootContainerModel alloc] initWithPickableTypes:typesCopy mode:mode];
  }

  else
  {
    v26.receiver = self;
    v26.super_class = _UIDocumentPickerURLContainerModel;
    v14 = [(_UIDocumentPickerContainerModel *)&v26 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_url, br_realpathURL);
      objc_storeStrong(&v15->_pickableTypes, types);
      v15->_pickerMode = mode;
      v16 = objc_opt_new();
      presentedItemOperationQueue = v15->_presentedItemOperationQueue;
      v15->_presentedItemOperationQueue = v16;

      [(NSOperationQueue *)v15->_presentedItemOperationQueue setMaxConcurrentOperationCount:1];
      if (v15->_url)
      {
        objc_initWeak(&location, v15);
        v18 = [BRObservableFile observerForKey:0 onFileURL:v15->_url];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __69___UIDocumentPickerURLContainerModel_initWithURL_pickableTypes_mode___block_invoke;
        v23[3] = &unk_278DD6448;
        objc_copyWeak(&v24, &location);
        v19 = [v18 addObserverBlock:v23];
        urlObserver = v15->_urlObserver;
        v15->_urlObserver = v19;

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }
    }

    v13 = v15;
    self = &v13->super;
  }

  p_super = &v13->super;

  return p_super;
}

- (void)dealloc
{
  observer = [(_UIDocumentPickerURLContainerModel *)self observer];
  [observer invalidate];

  v4.receiver = self;
  v4.super_class = _UIDocumentPickerURLContainerModel;
  [(_UIDocumentPickerContainerModel *)&v4 dealloc];
}

- (NSString)displayTitle
{
  displayTitle = self->_displayTitle;
  if (displayTitle)
  {
    v3 = displayTitle;
  }

  else
  {
    url = self->_url;
    v9 = 0;
    v6 = [(NSURL *)url getResourceValue:&v9 forKey:*MEMORY[0x277CBE8D0] error:0];
    v3 = v9;
    if (!v6)
    {
      lastPathComponent = [(NSURL *)self->_url lastPathComponent];

      v3 = lastPathComponent;
    }
  }

  return v3;
}

- (void)startMonitoringChanges
{
  observer = [(_UIDocumentPickerURLContainerModel *)self observer];

  if (!observer)
  {
    _createObserver = [(_UIDocumentPickerURLContainerModel *)self _createObserver];
    [(_UIDocumentPickerURLContainerModel *)self setObserver:_createObserver];

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_startObservingTime = v5;
  }

  [(_UIDocumentPickerURLContainerModel *)self updateSortDescriptors];
}

- (id)_createObserver
{
  v3 = [(_UIDocumentPickerURLContainerModel *)self url];
  br_isInMobileDocuments = [v3 br_isInMobileDocuments];

  v5 = off_278DD5BB8;
  if (!br_isInMobileDocuments)
  {
    v5 = off_278DD5BC8;
  }

  v6 = objc_alloc(*v5);
  scopes = [(_UIDocumentPickerURLContainerModel *)self scopes];
  v8 = [v6 initWithScopes:scopes delegate:self];

  return v8;
}

- (id)scopes
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(_UIDocumentPickerURLContainerModel *)self url];

  if (v3)
  {
    v4 = [(_UIDocumentPickerURLContainerModel *)self url];
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)stopMonitoringChanges
{
  observer = [(_UIDocumentPickerURLContainerModel *)self observer];
  [observer invalidate];

  [(_UIDocumentPickerURLContainerModel *)self setObserver:0];
  v4 = MEMORY[0x277CBEBF8];

  [(_UIDocumentPickerURLContainerModel *)self callUpdateHandlerWithNewItems:v4 diff:0];
}

- (void)updateSortDescriptors
{
  v26[3] = *MEMORY[0x277D85DE8];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __59___UIDocumentPickerURLContainerModel_updateSortDescriptors__block_invoke;
  v22[3] = &unk_278DD6470;
  v4 = currentLocale;
  v23 = v4;
  v5 = MEMORY[0x245D41DF0](v22);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __59___UIDocumentPickerURLContainerModel_updateSortDescriptors__block_invoke_3;
  v20 = &unk_278DD64B8;
  v6 = v5;
  v21 = v6;
  v7 = MEMORY[0x245D41DF0](&v17);
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"title" ascending:1 comparator:{v6, v17, v18, v19, v20}];
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:0 comparator:&__block_literal_global_122];
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"tags" ascending:0 comparator:v7];
  sortOrder = [(_UIDocumentPickerContainerModel *)self sortOrder];
  switch(sortOrder)
  {
    case 2:
      v24 = v10;
      v12 = &v24;
      v13 = v8;
      v14 = v9;
      goto LABEL_8;
    case 1:
      v25 = v8;
      v12 = &v25;
      v13 = v9;
      goto LABEL_6;
    case 0:
      v26[0] = v9;
      v12 = v26;
      v13 = v8;
LABEL_6:
      v14 = v10;
LABEL_8:
      v12[1] = v13;
      v12[2] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      observer = [(_UIDocumentPickerURLContainerModel *)self observer];
      [observer setSortDescriptors:v15];

      break;
  }
}

- (void)refreshItem:(id)item thumbnailOnly:(BOOL)only
{
  onlyCopy = only;
  v22[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  modelObjects = [(_UIDocumentPickerURLContainerModel *)self modelObjects];
  v8 = [modelObjects indexOfObject:itemCopy];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [MEMORY[0x277CCAA70] indexPathForItem:v8 inSection:0];
    modelObjects2 = [(_UIDocumentPickerURLContainerModel *)self modelObjects];
    if (onlyCopy)
    {
      v20 = v9;
      v21 = @"_UIDocumentPickerModelModifiedThumbnail";
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
      v22[0] = v11;
      v12 = MEMORY[0x277CBEAC0];
      v13 = v22;
      v14 = &v21;
    }

    else
    {
      v15 = *MEMORY[0x277D77360];
      v17 = v9;
      v18 = v15;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
      v19 = v11;
      v12 = MEMORY[0x277CBEAC0];
      v13 = &v19;
      v14 = &v18;
    }

    v16 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
    [(_UIDocumentPickerURLContainerModel *)self callUpdateHandlerWithNewItems:modelObjects2 diff:v16];
  }
}

- (BOOL)shouldEnableContainer:(id)container
{
  v21 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  documentsTypes = [containerCopy documentsTypes];
  v6 = [documentsTypes count];

  if (v6)
  {
    documentsTypes2 = [containerCopy documentsTypes];
    v8 = [documentsTypes2 valueForKeyPath:@"@distinctUnionOfArrays.LSItemContentTypes"];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([(_UIDocumentPickerURLContainerModel *)self shouldShowContainerForType:*(*(&v16 + 1) + 8 * i), v16])
          {
            v14 = 1;
            goto LABEL_12;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_12:
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)shouldAllowPickingType:(id)type
{
  v20 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  pickableTypes = [(_UIDocumentPickerURLContainerModel *)self pickableTypes];

  if (pickableTypes)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    pickableTypes2 = [(_UIDocumentPickerURLContainerModel *)self pickableTypes];
    v7 = [pickableTypes2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      v10 = *MEMORY[0x277CC20C0];
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(pickableTypes2);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if (UTTypeConformsTo(typeCopy, v12) || ([(__CFString *)v12 isEqual:v10]& 1) != 0)
          {
            v13 = 1;
            goto LABEL_15;
          }
        }

        v8 = [pickableTypes2 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v13 = 0;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v13 = 0;
    }

LABEL_15:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)shouldShowContainerForType:(id)type
{
  v15 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  pickableTypes = [(_UIDocumentPickerURLContainerModel *)self pickableTypes];

  if (pickableTypes)
  {
    if ([(_UIDocumentPickerURLContainerModel *)self pickerMode]&& [(_UIDocumentPickerURLContainerModel *)self pickerMode]!= 1)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      pickableTypes2 = [(_UIDocumentPickerURLContainerModel *)self pickableTypes];
      pickableTypes = [pickableTypes2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (pickableTypes)
      {
        v7 = *v11;
        while (2)
        {
          for (i = 0; i != pickableTypes; i = i + 1)
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(pickableTypes2);
            }

            if (UTTypeConformsTo(*(*(&v10 + 1) + 8 * i), typeCopy))
            {
              LOBYTE(pickableTypes) = 1;
              goto LABEL_15;
            }
          }

          pickableTypes = [pickableTypes2 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (pickableTypes)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    else
    {
      LOBYTE(pickableTypes) = 1;
    }
  }

  return pickableTypes;
}

- (void)arrayController:(id)controller modelChanged:(id)changed differences:(id)differences
{
  v80 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  differencesCopy = differences;
  array = [MEMORY[0x277CBEB18] array];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = changedCopy;
  v8 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v74;
    v54 = *v74;
    do
    {
      v11 = 0;
      v52 = v9;
      do
      {
        if (*v74 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v73 + 1) + 8 * v11);
        [v12 setParentModel:self];
        if ([v12 type])
        {
          if ([v12 type] != 2)
          {
            goto LABEL_40;
          }

          container = [v12 container];
          pickable = [v12 pickable];
          documentsTypes = [(__CFString *)container documentsTypes];
          v16 = documentsTypes;
          if (pickable)
          {
            v17 = [documentsTypes count];

            if (v17)
            {
              v60 = v12;
              v53 = v11;
              v55 = container;
              documentsTypes2 = [(__CFString *)container documentsTypes];
              v19 = [documentsTypes2 valueForKeyPath:@"@distinctUnionOfArrays.LSItemContentTypes"];

              v71 = 0u;
              v72 = 0u;
              v70 = 0u;
              v69 = 0u;
              v59 = v19;
              v20 = [v59 countByEnumeratingWithState:&v69 objects:v78 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v70;
                do
                {
                  for (i = 0; i != v21; ++i)
                  {
                    if (*v70 != v22)
                    {
                      objc_enumerationMutation(v59);
                    }

                    v24 = *(*(&v69 + 1) + 8 * i);
                    v65 = 0u;
                    v66 = 0u;
                    v67 = 0u;
                    v68 = 0u;
                    selfCopy = self;
                    pickableTypes = [(_UIDocumentPickerURLContainerModel *)self pickableTypes];
                    v27 = [pickableTypes countByEnumeratingWithState:&v65 objects:v77 count:16];
                    if (v27)
                    {
                      v28 = v27;
                      v29 = *v66;
                      while (2)
                      {
                        for (j = 0; j != v28; ++j)
                        {
                          if (*v66 != v29)
                          {
                            objc_enumerationMutation(pickableTypes);
                          }

                          v31 = *(*(&v65 + 1) + 8 * j);
                          if (UTTypeConformsTo(v31, v24))
                          {
                            v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Container declares type %@, which requested type %@ conforms to", v24, v31];
                            [v60 setPickabilityReason:v32];

                            goto LABEL_25;
                          }
                        }

                        v28 = [pickableTypes countByEnumeratingWithState:&v65 objects:v77 count:16];
                        if (v28)
                        {
                          continue;
                        }

                        break;
                      }
                    }

LABEL_25:

                    self = selfCopy;
                  }

                  v21 = [v59 countByEnumeratingWithState:&v69 objects:v78 count:16];
                }

                while (v21);
              }

              v9 = v52;
              v11 = v53;
              v10 = v54;
              container = v55;
              v12 = v60;
              goto LABEL_39;
            }

            v46 = v12;
            v47 = @"Container doesn't declare any types, so it's pickable by default";
            goto LABEL_38;
          }

          v61 = [documentsTypes valueForKeyPath:@"@distinctUnionOfArrays.LSItemContentTypes"];

          v38 = MEMORY[0x277CCACA8];
          identifier = [(__CFString *)container identifier];
          [v61 allObjects];
          v40 = v56 = container;
          v41 = [v40 componentsJoinedByString:{@", "}];
          [(_UIDocumentPickerURLContainerModel *)self pickableTypes];
          v43 = v42 = v11;
          v44 = [v43 componentsJoinedByString:{@", "}];
          v45 = [v38 stringWithFormat:@"Container %@ declares types (%@), which doesn't overlap requested types (%@)", identifier, v41, v44];
          [v12 setPickabilityReason:v45];

          v11 = v42;
          v10 = v54;

          container = v56;
        }

        else
        {
          if ([(_UIDocumentPickerURLContainerModel *)self pickerMode]&& [(_UIDocumentPickerURLContainerModel *)self pickerMode]!= 1)
          {
            [v12 setPickable:0];
            container = [MEMORY[0x277CCACA8] stringWithFormat:@"Document picker is in a mode that doesn't allow picking items"];
            v46 = v12;
            v47 = container;
LABEL_38:
            [v46 setPickabilityReason:v47];
            goto LABEL_39;
          }

          container = [v12 contentType];
          if (!container)
          {
            [v12 setPickable:0];
            v48 = MEMORY[0x277CCACA8];
            v34 = [v12 url];
            pickableTypes2 = [v48 stringWithFormat:@"Item %@ has nil type.", v34];
            [v12 setPickabilityReason:pickableTypes2];
            goto LABEL_36;
          }

          if (![(_UIDocumentPickerURLContainerModel *)self shouldAllowPickingType:container])
          {
            [v12 setPickable:0];
            v33 = MEMORY[0x277CCACA8];
            v34 = [v12 url];
            pickableTypes2 = [(_UIDocumentPickerURLContainerModel *)self pickableTypes];
            v36 = [pickableTypes2 componentsJoinedByString:{@", "}];
            v37 = [v33 stringWithFormat:@"Item %@ has type %@, which does not conform to any of the allowed types (%@)", v34, container, v36];
            [v12 setPickabilityReason:v37];

LABEL_36:
          }
        }

LABEL_39:

LABEL_40:
        [array addObject:v12];
        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
    }

    while (v9);
  }

  if (self->_startObservingTime != 0.0)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_startObservingTime = 0.0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79___UIDocumentPickerURLContainerModel_arrayController_modelChanged_differences___block_invoke;
  block[3] = &unk_278DD64E0;
  block[4] = self;
  v63 = array;
  v64 = differencesCopy;
  v49 = differencesCopy;
  v50 = array;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)callUpdateHandlerWithNewItems:(id)items diff:(id)diff
{
  itemsCopy = items;
  diffCopy = diff;
  if (itemsCopy)
  {
    [(_UIDocumentPickerURLContainerModel *)self setModelObjects:itemsCopy];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = dictionary;
  if (diffCopy)
  {
    [dictionary setObject:diffCopy forKey:@"changes"];
  }

  if (itemsCopy)
  {
    [v8 setObject:itemsCopy forKey:@"model"];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"_UIDocumentPickerModelUpdatedNotification" object:self userInfo:v8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_UIDocumentPickerURLContainerModel *)self url];
  v7 = [v3 stringWithFormat:@"<%@: %p, %@>", v5, self, v6];

  return v7;
}

- (BOOL)afterInitialUpdate
{
  observer = [(_UIDocumentPickerURLContainerModel *)self observer];
  afterInitialUpdate = [observer afterInitialUpdate];

  return afterInitialUpdate;
}

- (void)updateObserverForURL:(id)l
{
  lCopy = l;
  v5 = [(_UIDocumentPickerURLContainerModel *)self url];
  v6 = [v5 isEqual:lCopy];

  if ((v6 & 1) == 0)
  {
    v7 = cdui_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [_UIDocumentPickerURLContainerModel updateObserverForURL:?];
    }

    [(_UIDocumentPickerURLContainerModel *)self setUrl:lCopy];
    observer = [(_UIDocumentPickerURLContainerModel *)self observer];

    if (observer)
    {
      v9 = cdui_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [_UIDocumentPickerURLContainerModel updateObserverForURL:v9];
      }

      observer2 = [(_UIDocumentPickerURLContainerModel *)self observer];
      [observer2 invalidate];

      [(_UIDocumentPickerURLContainerModel *)self setObserver:0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59___UIDocumentPickerURLContainerModel_updateObserverForURL___block_invoke;
      block[3] = &unk_278DD61B0;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)updateObserverForURL:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 url];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
}

@end