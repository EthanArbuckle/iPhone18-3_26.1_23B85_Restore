@interface NTKCompanionRemoteComplicationDataSource
+ (BOOL)acceptsComplicationType:(unint64_t)a3 withFamily:(int64_t)a4 forDevice:(id)a5;
- (BOOL)_remoteIsCompanion;
- (NTKCompanionRemoteComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_templateFromApp:(id)a3;
- (id)currentSwitcherTemplate;
- (void)_activeDeviceChanged;
- (void)_invalidate;
- (void)_invalidateIfComplicationCorrespondsToApp:(id)a3;
- (void)_loadCollection;
- (void)appLibrary:(id)a3 didAddApp:(id)a4;
- (void)appLibrary:(id)a3 didUpdateApp:(id)a4;
- (void)complicationCollection:(id)a3 didRemoveSampleTemplatesForClient:(id)a4;
- (void)complicationCollection:(id)a3 didUpdateSampleTemplateForClient:(id)a4;
- (void)dealloc;
@end

@implementation NTKCompanionRemoteComplicationDataSource

- (NTKCompanionRemoteComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v10.receiver = self;
  v10.super_class = NTKCompanionRemoteComplicationDataSource;
  v5 = [(CLKCComplicationDataSource *)&v10 initWithComplication:a3 family:a4 forDevice:a5];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v5 selector:sel__activeDeviceChanged name:*MEMORY[0x277CBB640] object:0];

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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CBB640] object:0];

  [(NTKComplicationCollection *)self->_complicationCollection removeObserver:self];
  [(NTKCompanionAppLibrary *)self->_appLibrary removeObserver:self];
  v4.receiver = self;
  v4.super_class = NTKCompanionRemoteComplicationDataSource;
  [(NTKCompanionRemoteComplicationDataSource *)&v4 dealloc];
}

- (void)_loadCollection
{
  [(NTKComplicationCollection *)self->_complicationCollection removeObserver:self];
  v3 = [(CLKCComplicationDataSource *)self device];
  v4 = [NTKCompanionComplicationCollectionManager sharedComplicationCollectionForDevice:v3];
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

+ (BOOL)acceptsComplicationType:(unint64_t)a3 withFamily:(int64_t)a4 forDevice:(id)a5
{
  if (a3 == 31)
  {
    return NTKComplicationFamilyIsPublic(a4);
  }

  else
  {
    return 0;
  }
}

- (id)currentSwitcherTemplate
{
  v2 = self;
  v41 = *MEMORY[0x277D85DE8];
  complicationTemplate = self->_complicationTemplate;
  if (!complicationTemplate)
  {
    v4 = [(CLKCComplicationDataSource *)v2 complication];
    if ([(NTKCompanionRemoteComplicationDataSource *)v2 _remoteIsCompanion])
    {
      v5 = [(CLKCComplicationDataSource *)v2 complication];
      v6 = [v5 app];
      v7 = [(NTKCompanionRemoteComplicationDataSource *)v2 _templateFromApp:v6];
      v8 = v2->_complicationTemplate;
      v2->_complicationTemplate = v7;
    }

    if (!v2->_complicationTemplate)
    {
      v33 = v2;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v9 = +[NTKCompanionAppLibrary sharedAppLibrary];
      v10 = [v9 thirdPartyApps];

      v11 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v36 + 1) + 8 * v14);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = v15;
              v17 = [v16 complicationClientIdentifier];
              v18 = [v4 clientIdentifier];
              if ([v17 isEqualToString:v18])
              {
                v19 = [v16 watchApplicationIdentifier];
                [v4 appBundleIdentifier];
                v20 = v13;
                v21 = v10;
                v23 = v22 = v4;
                v35 = [v19 isEqualToString:v23];

                v4 = v22;
                v10 = v21;
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
          v12 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v12);
      }

LABEL_18:

      v2 = v33;
      if (!v33->_complicationTemplate)
      {
        complicationCollection = v33->_complicationCollection;
        v27 = [v4 clientIdentifier];
        v28 = [v4 complicationDescriptor];
        v29 = [v4 appBundleIdentifier];
        v30 = [(NTKComplicationCollection *)complicationCollection sampleTemplateForClientIdentifier:v27 descriptor:v28 applicationID:v29 family:[(CLKCComplicationDataSource *)v33 family]];
        v31 = v33->_complicationTemplate;
        v33->_complicationTemplate = v30;
      }
    }

    complicationTemplate = v2->_complicationTemplate;
  }

  return complicationTemplate;
}

- (void)complicationCollection:(id)a3 didUpdateSampleTemplateForClient:(id)a4
{
  v5 = a4;
  v8 = [(CLKCComplicationDataSource *)self complication];
  v6 = [v8 clientIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    [(NTKCompanionRemoteComplicationDataSource *)self _invalidate];
  }
}

- (void)complicationCollection:(id)a3 didRemoveSampleTemplatesForClient:(id)a4
{
  v5 = a4;
  v8 = [(CLKCComplicationDataSource *)self complication];
  v6 = [v8 clientIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    [(NTKCompanionRemoteComplicationDataSource *)self _invalidate];
  }
}

- (void)appLibrary:(id)a3 didAddApp:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__NTKCompanionRemoteComplicationDataSource_appLibrary_didAddApp___block_invoke;
  v7[3] = &unk_27877E438;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_sync(MEMORY[0x277D85CD0], v7);
}

- (void)appLibrary:(id)a3 didUpdateApp:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__NTKCompanionRemoteComplicationDataSource_appLibrary_didUpdateApp___block_invoke;
  v7[3] = &unk_27877E438;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_sync(MEMORY[0x277D85CD0], v7);
}

- (void)_invalidateIfComplicationCorrespondsToApp:(id)a3
{
  v11 = a3;
  v4 = [(CLKCComplicationDataSource *)self complication];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v11;
    v6 = [v5 complicationClientIdentifier];
    v7 = [v4 clientIdentifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = [v5 watchApplicationIdentifier];
      v9 = [v4 appBundleIdentifier];
      v10 = [v8 isEqualToString:v9];

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

- (id)_templateFromApp:(id)a3
{
  v4 = [a3 urlToComplicationBundle];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithURL:v4];
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
  v2 = [(CLKCComplicationDataSource *)self complication];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_invalidate
{
  complicationTemplate = self->_complicationTemplate;
  self->_complicationTemplate = 0;

  v4 = [(CLKCComplicationDataSource *)self delegate];
  [v4 invalidateSwitcherTemplate];
}

@end