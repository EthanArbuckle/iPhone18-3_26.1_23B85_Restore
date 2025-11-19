@interface NTKUpNextNewsSampleDataSource
+ (id)_newCircularTemplate;
- (id)supportedSections;
- (void)getElementsInSection:(id)a3 withHandler:(id)a4;
@end

@implementation NTKUpNextNewsSampleDataSource

+ (id)_newCircularTemplate
{
  if (_newCircularTemplate_onceToken != -1)
  {
    +[NTKUpNextNewsSampleDataSource _newCircularTemplate];
  }

  v3 = _newCircularTemplate_template;

  return [v3 copy];
}

void __53__NTKUpNextNewsSampleDataSource__newCircularTemplate__block_invoke()
{
  if (NewsServicesLibraryCore_0())
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2050000000;
    v0 = getNSSComplicationDataSourceClass_softClass_0;
    v8 = getNSSComplicationDataSourceClass_softClass_0;
    if (!getNSSComplicationDataSourceClass_softClass_0)
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __getNSSComplicationDataSourceClass_block_invoke_0;
      v4[3] = &unk_27877F258;
      v4[4] = &v5;
      __getNSSComplicationDataSourceClass_block_invoke_0(v4);
      v0 = v6[3];
    }

    v1 = v0;
    _Block_object_dispose(&v5, 8);
    if (objc_opt_respondsToSelector())
    {
      v2 = [v0 nss_newsComplicationTemplateForFamily:10 compact:0];
      v3 = _newCircularTemplate_template;
      _newCircularTemplate_template = v2;
    }
  }
}

- (id)supportedSections
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277D44500];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)getElementsInSection:(id)a3 withHandler:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = REUISampleRelevanceProviderForSamplePosition();
  v6 = objc_alloc(MEMORY[0x277D443F8]);
  v7 = +[NTKUpNextNewsSampleDataSource sampleContent];
  v12[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [v6 initWithIdentifier:@"news.sample" content:v7 action:0 relevanceProviders:v8];

  v11 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v4[2](v4, v10);
}

@end