@interface NTKCompanionRemoteComplicationDataSource
+ (BOOL)acceptsComplicationType:(unint64_t)type withFamily:(int64_t)family forDevice:(id)device;
- (BOOL)_remoteIsCompanion;
- (NTKCompanionRemoteComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_templateFromApp:(id)app;
- (id)currentSwitcherTemplate;
- (void)_activeDeviceChanged;
- (void)_invalidate;
- (void)_invalidateIfComplicationCorrespondsToApp:(id)app;
- (void)_loadCollection;
- (void)appLibrary:(id)library didAddApp:(id)app;
- (void)appLibrary:(id)library didUpdateApp:(id)app;
- (void)complicationCollection:(id)collection didRemoveSampleTemplatesForClient:(id)client;
- (void)complicationCollection:(id)collection didUpdateSampleTemplateForClient:(id)client;
- (void)dealloc;
@end

@implementation NTKCompanionRemoteComplicationDataSource

- (NTKCompanionRemoteComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v10.receiver = self;
  v10.super_class = NTKCompanionRemoteComplicationDataSource;
  v5 = [(CLKCComplicationDataSource *)&v10 initWithComplication:complication family:family forDevice:device];
  if (v5)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__activeDeviceChanged name:*MEMORY[0x277CBB640] object:0];

    [(NTKCompanionRemoteComplicationDataSource *)v5 _loadCollection];
    v7 = +[NTKCompanionAppLibrary sharedAppLibrary];
    appLibrary = v5->_appLibrary;
    v5->_appLibrary = v7;

    [(NTKCompanionAppLibrary *)v5->_appLibrary addObserver:v5];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBB640] object:0];

  [(NTKComplicationCollection *)self->_complicationCollection removeObserver:self];
  [(NTKCompanionAppLibrary *)self->_appLibrary removeObserver:self];
  v4.receiver = self;
  v4.super_class = NTKCompanionRemoteComplicationDataSource;
  [(NTKCompanionRemoteComplicationDataSource *)&v4 dealloc];
}

- (void)_loadCollection
{
  [(NTKComplicationCollection *)self->_complicationCollection removeObserver:self];
  device = [(CLKCComplicationDataSource *)self device];
  v4 = [NTKCompanionComplicationCollectionManager sharedComplicationCollectionForDevice:device];
  complicationCollection = self->_complicationCollection;
  self->_complicationCollection = v4;

  v6 = self->_complicationCollection;

  [(NTKComplicationCollection *)v6 addObserver:self];
}

- (void)_activeDeviceChanged
{
  [(NTKCompanionRemoteComplicationDataSource *)self _loadCollection];

  [(NTKCompanionRemoteComplicationDataSource *)self _invalidate];
}

+ (BOOL)acceptsComplicationType:(unint64_t)type withFamily:(int64_t)family forDevice:(id)device
{
  if (type == 31)
  {
    return NTKComplicationFamilyIsPublic(family);
  }

  else
  {
    return 0;
  }
}

- (id)currentSwitcherTemplate
{
  selfCopy = self;
  v41 = *MEMORY[0x277D85DE8];
  complicationTemplate = self->_complicationTemplate;
  if (!complicationTemplate)
  {
    complication = [(CLKCComplicationDataSource *)selfCopy complication];
    if ([(NTKCompanionRemoteComplicationDataSource *)selfCopy _remoteIsCompanion])
    {
      complication2 = [(CLKCComplicationDataSource *)selfCopy complication];
      v6 = [complication2 app];
      v7 = [(NTKCompanionRemoteComplicationDataSource *)selfCopy _templateFromApp:v6];
      v8 = selfCopy->_complicationTemplate;
      selfCopy->_complicationTemplate = v7;
    }

    if (!selfCopy->_complicationTemplate)
    {
      v33 = selfCopy;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v9 = +[NTKCompanionAppLibrary sharedAppLibrary];
      thirdPartyApps = [v9 thirdPartyApps];

      v11 = [thirdPartyApps countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v37;
        do
        {
          v14 = 0;
          v34 = v12;
          do
          {
            if (*v37 != v13)
            {
              objc_enumerationMutation(thirdPartyApps);
            }

            v15 = *(*(&v36 + 1) + 8 * v14);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = v15;
              complicationClientIdentifier = [v16 complicationClientIdentifier];
              clientIdentifier = [complication clientIdentifier];
              if ([complicationClientIdentifier isEqualToString:clientIdentifier])
              {
                watchApplicationIdentifier = [v16 watchApplicationIdentifier];
                [complication appBundleIdentifier];
                v20 = v13;
                v21 = thirdPartyApps;
                v23 = v22 = complication;
                v35 = [watchApplicationIdentifier isEqualToString:v23];

                complication = v22;
                thirdPartyApps = v21;
                v13 = v20;

                v12 = v34;
                if (v35)
                {
                  v24 = [(NTKCompanionRemoteComplicationDataSource *)v33 _templateFromApp:v16];
                  v25 = v33->_complicationTemplate;
                  v33->_complicationTemplate = v24;

                  goto LABEL_18;
                }
              }

              else
              {
              }
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [thirdPartyApps countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v12);
      }

LABEL_18:

      selfCopy = v33;
      if (!v33->_complicationTemplate)
      {
        complicationCollection = v33->_complicationCollection;
        clientIdentifier2 = [complication clientIdentifier];
        complicationDescriptor = [complication complicationDescriptor];
        appBundleIdentifier = [complication appBundleIdentifier];
        v30 = [(NTKComplicationCollection *)complicationCollection sampleTemplateForClientIdentifier:clientIdentifier2 descriptor:complicationDescriptor applicationID:appBundleIdentifier family:[(CLKCComplicationDataSource *)v33 family]];
        v31 = v33->_complicationTemplate;
        v33->_complicationTemplate = v30;
      }
    }

    complicationTemplate = selfCopy->_complicationTemplate;
  }

  return complicationTemplate;
}

- (void)complicationCollection:(id)collection didUpdateSampleTemplateForClient:(id)client
{
  clientCopy = client;
  complication = [(CLKCComplicationDataSource *)self complication];
  clientIdentifier = [complication clientIdentifier];
  v7 = [clientCopy isEqualToString:clientIdentifier];

  if (v7)
  {
    [(NTKCompanionRemoteComplicationDataSource *)self _invalidate];
  }
}

- (void)complicationCollection:(id)collection didRemoveSampleTemplatesForClient:(id)client
{
  clientCopy = client;
  complication = [(CLKCComplicationDataSource *)self complication];
  clientIdentifier = [complication clientIdentifier];
  v7 = [clientCopy isEqualToString:clientIdentifier];

  if (v7)
  {
    [(NTKCompanionRemoteComplicationDataSource *)self _invalidate];
  }
}

- (void)appLibrary:(id)library didAddApp:(id)app
{
  appCopy = app;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__NTKCompanionRemoteComplicationDataSource_appLibrary_didAddApp___block_invoke;
  v7[3] = &unk_27877E438;
  v7[4] = self;
  v8 = appCopy;
  v6 = appCopy;
  dispatch_sync(MEMORY[0x277D85CD0], v7);
}

- (void)appLibrary:(id)library didUpdateApp:(id)app
{
  appCopy = app;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__NTKCompanionRemoteComplicationDataSource_appLibrary_didUpdateApp___block_invoke;
  v7[3] = &unk_27877E438;
  v7[4] = self;
  v8 = appCopy;
  v6 = appCopy;
  dispatch_sync(MEMORY[0x277D85CD0], v7);
}

- (void)_invalidateIfComplicationCorrespondsToApp:(id)app
{
  appCopy = app;
  complication = [(CLKCComplicationDataSource *)self complication];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = appCopy;
    complicationClientIdentifier = [v5 complicationClientIdentifier];
    clientIdentifier = [complication clientIdentifier];
    if ([complicationClientIdentifier isEqualToString:clientIdentifier])
    {
      watchApplicationIdentifier = [v5 watchApplicationIdentifier];
      appBundleIdentifier = [complication appBundleIdentifier];
      v10 = [watchApplicationIdentifier isEqualToString:appBundleIdentifier];

      if (v10)
      {
        [(NTKCompanionRemoteComplicationDataSource *)self _invalidate];
      }
    }

    else
    {
    }
  }
}

- (id)_templateFromApp:(id)app
{
  urlToComplicationBundle = [app urlToComplicationBundle];
  if (urlToComplicationBundle)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithURL:urlToComplicationBundle];
    v6 = [NTKComplicationBundleHelper localizedComplicationTemplateForFamily:[(CLKCComplicationDataSource *)self family] bundle:v5 localization:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_remoteIsCompanion
{
  complication = [(CLKCComplicationDataSource *)self complication];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_invalidate
{
  complicationTemplate = self->_complicationTemplate;
  self->_complicationTemplate = 0;

  delegate = [(CLKCComplicationDataSource *)self delegate];
  [delegate invalidateSwitcherTemplate];
}

@end