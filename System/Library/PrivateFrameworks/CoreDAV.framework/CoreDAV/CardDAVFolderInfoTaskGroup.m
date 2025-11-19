@interface CardDAVFolderInfoTaskGroup
- (CardDAVFolderInfoTaskGroup)initWithAccountInfoProvider:(id)a3 containerURLs:(id)a4 directoryGatewayURLs:(id)a5 taskManager:(id)a6;
- (id)_copyContainerWithURL:(id)a3 andProperties:(id)a4;
- (int)containerInfoDepthForURL:(id)a3;
@end

@implementation CardDAVFolderInfoTaskGroup

- (CardDAVFolderInfoTaskGroup)initWithAccountInfoProvider:(id)a3 containerURLs:(id)a4 directoryGatewayURLs:(id)a5 taskManager:(id)a6
{
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CardDAVFolderInfoTaskGroup;
  v12 = [(CoreDAVContainerInfoTaskGroup *)&v15 initWithAccountInfoProvider:a3 containerURLs:a4 taskManager:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->super._appSpecificHomeSetPropNameSpace, @"urn:ietf:params:xml:ns:carddav");
    objc_storeStrong(&v13->super._appSpecificHomeSetPropName, @"addressbook-home-set");
    objc_storeStrong(&v13->_directoryGatewayURLs, a5);
  }

  return v13;
}

- (int)containerInfoDepthForURL:(id)a3
{
  if ([(NSSet *)self->_directoryGatewayURLs containsObject:a3])
  {
    return 2;
  }

  return [(CoreDAVContainerInfoTaskGroup *)self containerInfoDepth];
}

- (id)_copyContainerWithURL:(id)a3 andProperties:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(CoreDAVContainer *)[CardDAVAddressBookContainer alloc] initWithURL:v6 andProperties:v5];

  return v7;
}

@end