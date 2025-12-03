@interface CardDAVFolderMultiGetTask
- (CardDAVFolderMultiGetTask)initWithURLs:(id)ls atContainerURL:(id)l appSpecificDataItemClass:(Class)class;
@end

@implementation CardDAVFolderMultiGetTask

- (CardDAVFolderMultiGetTask)initWithURLs:(id)ls atContainerURL:(id)l appSpecificDataItemClass:(Class)class
{
  v8.receiver = self;
  v8.super_class = CardDAVFolderMultiGetTask;
  v5 = [(CoreDAVContainerMultiGetTask *)&v8 initWithURLs:ls atContainerURL:l appSpecificDataItemClass:class];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->super._appSpecificNamespace, @"urn:ietf:params:xml:ns:carddav");
    objc_storeStrong(&v6->super._appSpecificMultiGetCommand, @"addressbook-multiget");
    objc_storeStrong(&v6->super._appSpecificDataProp, @"address-data");
  }

  return v6;
}

@end