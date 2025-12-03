@interface DOCDownloadSettingsItem
- (BOOL)locationSharesDomainWith:(id)with;
- (BOOL)locationSyncs;
- (DOCDownloadSettingsItem)initWithFPItem:(id)item;
- (DOCDownloadSettingsItem)initWithFPProviderDomain:(id)domain;
- (NSURL)fileURL;
- (id)description;
- (void)updateStringValues;
@end

@implementation DOCDownloadSettingsItem

- (DOCDownloadSettingsItem)initWithFPItem:(id)item
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = DOCDownloadSettingsItem;
  v5 = [(DOCDownloadSettingsItem *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(DOCDownloadSettingsItem *)v5 setFpItem:itemCopy];
    itemIdentifier = [itemCopy itemIdentifier];
    [(DOCDownloadSettingsItem *)v6 setIdentifier:itemIdentifier];

    v8 = MEMORY[0x277CC6420];
    providerDomainID = [itemCopy providerDomainID];
    v12 = 0;
    v10 = [v8 providerDomainWithID:providerDomainID cachePolicy:1 error:&v12];
    [(DOCDownloadSettingsItem *)v6 setProviderDomain:v10];

    [(DOCDownloadSettingsItem *)v6 updateStringValues];
  }

  return v6;
}

- (DOCDownloadSettingsItem)initWithFPProviderDomain:(id)domain
{
  domainCopy = domain;
  v9.receiver = self;
  v9.super_class = DOCDownloadSettingsItem;
  v5 = [(DOCDownloadSettingsItem *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(DOCDownloadSettingsItem *)v5 setProviderDomain:domainCopy];
    identifier = [domainCopy identifier];
    [(DOCDownloadSettingsItem *)v6 setIdentifier:identifier];

    [(DOCDownloadSettingsItem *)v6 updateStringValues];
  }

  return v6;
}

- (void)updateStringValues
{
  fpItem = [(DOCDownloadSettingsItem *)self fpItem];
  displayName = [fpItem displayName];
  [(DOCDownloadSettingsItem *)self setFolderName:displayName];

  providerDomain = [(DOCDownloadSettingsItem *)self providerDomain];
  v6 = DOCLocalizedProviderOnlyDisplayName(providerDomain);
  [(DOCDownloadSettingsItem *)self setProviderName:v6];

  providerDomain2 = [(DOCDownloadSettingsItem *)self providerDomain];
  domainDisplayName = [providerDomain2 domainDisplayName];
  [(DOCDownloadSettingsItem *)self setProviderDomainName:domainDisplayName];

  providerDomain3 = [(DOCDownloadSettingsItem *)self providerDomain];
  v9 = DOCLocalizedDisplayName(providerDomain3);
  [(DOCDownloadSettingsItem *)self setProviderFullDisplayName:v9];
}

- (BOOL)locationSyncs
{
  [(DOCDownloadSettingsItem *)self providerDomain];

  return 0;
}

- (NSURL)fileURL
{
  fpItem = [(DOCDownloadSettingsItem *)self fpItem];
  fileURL = [fpItem fileURL];

  return fileURL;
}

- (BOOL)locationSharesDomainWith:(id)with
{
  withCopy = with;
  if (withCopy)
  {
    providerDomain = [(DOCDownloadSettingsItem *)self providerDomain];
    identifier = [providerDomain identifier];
    if (!identifier)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v7 = identifier;
    providerDomain2 = [withCopy providerDomain];
    identifier2 = [providerDomain2 identifier];

    if (identifier2)
    {
      providerDomain = [(DOCDownloadSettingsItem *)self providerDomain];
      identifier3 = [providerDomain identifier];
      providerDomain3 = [withCopy providerDomain];
      identifier4 = [providerDomain3 identifier];
      v13 = [identifier3 isEqualToString:identifier4];

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
  identifier = [(DOCDownloadSettingsItem *)self identifier];
  providerDomain = [(DOCDownloadSettingsItem *)self providerDomain];
  fpItem = [(DOCDownloadSettingsItem *)self fpItem];
  v8 = [v3 stringWithFormat:@"%@ identifier=%@ FPProviderDomain=%@ FPItem=%@", v4, identifier, providerDomain, fpItem];

  return v8;
}

@end