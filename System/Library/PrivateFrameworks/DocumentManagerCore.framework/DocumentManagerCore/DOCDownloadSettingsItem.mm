@interface DOCDownloadSettingsItem
- (BOOL)locationSharesDomainWith:(id)a3;
- (BOOL)locationSyncs;
- (DOCDownloadSettingsItem)initWithFPItem:(id)a3;
- (DOCDownloadSettingsItem)initWithFPProviderDomain:(id)a3;
- (NSURL)fileURL;
- (id)description;
- (void)updateStringValues;
@end

@implementation DOCDownloadSettingsItem

- (DOCDownloadSettingsItem)initWithFPItem:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DOCDownloadSettingsItem;
  v5 = [(DOCDownloadSettingsItem *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(DOCDownloadSettingsItem *)v5 setFpItem:v4];
    v7 = [v4 itemIdentifier];
    [(DOCDownloadSettingsItem *)v6 setIdentifier:v7];

    v8 = MEMORY[0x277CC6420];
    v9 = [v4 providerDomainID];
    v12 = 0;
    v10 = [v8 providerDomainWithID:v9 cachePolicy:1 error:&v12];
    [(DOCDownloadSettingsItem *)v6 setProviderDomain:v10];

    [(DOCDownloadSettingsItem *)v6 updateStringValues];
  }

  return v6;
}

- (DOCDownloadSettingsItem)initWithFPProviderDomain:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DOCDownloadSettingsItem;
  v5 = [(DOCDownloadSettingsItem *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(DOCDownloadSettingsItem *)v5 setProviderDomain:v4];
    v7 = [v4 identifier];
    [(DOCDownloadSettingsItem *)v6 setIdentifier:v7];

    [(DOCDownloadSettingsItem *)v6 updateStringValues];
  }

  return v6;
}

- (void)updateStringValues
{
  v3 = [(DOCDownloadSettingsItem *)self fpItem];
  v4 = [v3 displayName];
  [(DOCDownloadSettingsItem *)self setFolderName:v4];

  v5 = [(DOCDownloadSettingsItem *)self providerDomain];
  v6 = DOCLocalizedProviderOnlyDisplayName(v5);
  [(DOCDownloadSettingsItem *)self setProviderName:v6];

  v7 = [(DOCDownloadSettingsItem *)self providerDomain];
  v8 = [v7 domainDisplayName];
  [(DOCDownloadSettingsItem *)self setProviderDomainName:v8];

  v10 = [(DOCDownloadSettingsItem *)self providerDomain];
  v9 = DOCLocalizedDisplayName(v10);
  [(DOCDownloadSettingsItem *)self setProviderFullDisplayName:v9];
}

- (BOOL)locationSyncs
{
  [(DOCDownloadSettingsItem *)self providerDomain];

  return 0;
}

- (NSURL)fileURL
{
  v2 = [(DOCDownloadSettingsItem *)self fpItem];
  v3 = [v2 fileURL];

  return v3;
}

- (BOOL)locationSharesDomainWith:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(DOCDownloadSettingsItem *)self providerDomain];
    v6 = [v5 identifier];
    if (!v6)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v7 = v6;
    v8 = [v4 providerDomain];
    v9 = [v8 identifier];

    if (v9)
    {
      v5 = [(DOCDownloadSettingsItem *)self providerDomain];
      v10 = [v5 identifier];
      v11 = [v4 providerDomain];
      v12 = [v11 identifier];
      v13 = [v10 isEqualToString:v12];

LABEL_7:
      goto LABEL_8;
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = DOCDownloadSettingsItem;
  v4 = [(DOCDownloadSettingsItem *)&v10 description];
  v5 = [(DOCDownloadSettingsItem *)self identifier];
  v6 = [(DOCDownloadSettingsItem *)self providerDomain];
  v7 = [(DOCDownloadSettingsItem *)self fpItem];
  v8 = [v3 stringWithFormat:@"%@ identifier=%@ FPProviderDomain=%@ FPItem=%@", v4, v5, v6, v7];

  return v8;
}

@end