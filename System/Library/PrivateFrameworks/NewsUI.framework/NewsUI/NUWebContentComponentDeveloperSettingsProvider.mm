@interface NUWebContentComponentDeveloperSettingsProvider
- (NUWebContentComponentDeveloperSettingsProvider)initWithHeadline:(id)headline;
- (id)developerSettings;
@end

@implementation NUWebContentComponentDeveloperSettingsProvider

- (NUWebContentComponentDeveloperSettingsProvider)initWithHeadline:(id)headline
{
  headlineCopy = headline;
  v9.receiver = self;
  v9.super_class = NUWebContentComponentDeveloperSettingsProvider;
  v6 = [(NUWebContentComponentDeveloperSettingsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_headline, headline);
  }

  return v7;
}

- (id)developerSettings
{
  headline = [(NUWebContentComponentDeveloperSettingsProvider *)self headline];
  if ([headline isDraft])
  {
    isLocalDraft = 1;
  }

  else
  {
    headline2 = [(NUWebContentComponentDeveloperSettingsProvider *)self headline];
    isLocalDraft = [headline2 isLocalDraft];
  }

  v6 = objc_alloc(MEMORY[0x277D55120]);
  if (isLocalDraft)
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