@interface CardDAVFolderInfoTaskGroup
- (CardDAVFolderInfoTaskGroup)initWithAccountInfoProvider:(id)provider containerURLs:(id)ls directoryGatewayURLs:(id)rLs taskManager:(id)manager;
- (id)_copyContainerWithURL:(id)l andProperties:(id)properties;
- (int)containerInfoDepthForURL:(id)l;
@end

@implementation CardDAVFolderInfoTaskGroup

- (CardDAVFolderInfoTaskGroup)initWithAccountInfoProvider:(id)provider containerURLs:(id)ls directoryGatewayURLs:(id)rLs taskManager:(id)manager
{
  rLsCopy = rLs;
  v15.receiver = self;
  v15.super_class = CardDAVFolderInfoTaskGroup;
  v12 = [(CoreDAVContainerInfoTaskGroup *)&v15 initWithAccountInfoProvider:provider containerURLs:ls taskManager:manager];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->super._appSpecificHomeSetPropNameSpace, @"urn:ietf:params:xml:ns:carddav");
    objc_storeStrong(&v13->super._appSpecificHomeSetPropName, @"addressbook-home-set");
    objc_storeStrong(&v13->_directoryGatewayURLs, rLs);
  }

  return v13;
}

- (int)containerInfoDepthForURL:(id)l
{
  if ([(NSSet *)self->_directoryGatewayURLs containsObject:l])
  {
    return 2;
  }

  return [(CoreDAVContainerInfoTaskGroup *)self containerInfoDepth];
}

- (id)_copyContainerWithURL:(id)l andProperties:(id)properties
{
  propertiesCopy = properties;
  lCopy = l;
  v7 = [(CoreDAVContainer *)[CardDAVAddressBookContainer alloc] initWithURL:lCopy andProperties:propertiesCopy];

  return v7;
}

@end