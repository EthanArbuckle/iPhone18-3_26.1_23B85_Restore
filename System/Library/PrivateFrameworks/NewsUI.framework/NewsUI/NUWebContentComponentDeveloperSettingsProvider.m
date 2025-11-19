@interface NUWebContentComponentDeveloperSettingsProvider
- (NUWebContentComponentDeveloperSettingsProvider)initWithHeadline:(id)a3;
- (id)developerSettings;
@end

@implementation NUWebContentComponentDeveloperSettingsProvider

- (NUWebContentComponentDeveloperSettingsProvider)initWithHeadline:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NUWebContentComponentDeveloperSettingsProvider;
  v6 = [(NUWebContentComponentDeveloperSettingsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_headline, a3);
  }

  return v7;
}

- (id)developerSettings
{
  v3 = [(NUWebContentComponentDeveloperSettingsProvider *)self headline];
  if ([v3 isDraft])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(NUWebContentComponentDeveloperSettingsProvider *)self headline];
    v4 = [v5 isLocalDraft];
  }

  v6 = objc_alloc(MEMORY[0x277D55120]);
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = NFInternalBuild();
  }

  v8 = [v6 initWithAllowRemoteInspection:v7];

  return v8;
}

@end