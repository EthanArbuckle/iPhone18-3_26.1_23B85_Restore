@interface CoreDAVFolderContentsMultiGetTask
- (CoreDAVFolderContentsMultiGetTask)initWithURLs:(id)ls atContainerURL:(id)l appSpecificDataItemClass:(Class)class;
- (id)copyAdditionalPropElements;
- (void)setAdditionalProperties:(id)properties onDataItem:(id)item;
@end

@implementation CoreDAVFolderContentsMultiGetTask

- (CoreDAVFolderContentsMultiGetTask)initWithURLs:(id)ls atContainerURL:(id)l appSpecificDataItemClass:(Class)class
{
  v8.receiver = self;
  v8.super_class = CoreDAVFolderContentsMultiGetTask;
  v5 = [(CoreDAVContainerMultiGetTask *)&v8 initWithURLs:ls atContainerURL:l appSpecificDataItemClass:class];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->super._appSpecificNamespace, @"DAV:");
    objc_storeStrong(&v6->super._appSpecificMultiGetCommand, @"multiget");
    objc_storeStrong(&v6->super._appSpecificDataProp, @"getcontent");
  }

  return v6;
}

- (id)copyAdditionalPropElements
{
  appSpecificDataItemClass = self->super._appSpecificDataItemClass;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = self->super._appSpecificDataItemClass;

  return [(objc_class *)v4 copyPropertyMappingsForParser];
}

- (void)setAdditionalProperties:(id)properties onDataItem:(id)item
{
  propertiesCopy = properties;
  itemCopy = item;
  if (objc_opt_respondsToSelector())
  {
    [itemCopy applyParsedProperties:propertiesCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    responseHeaders = [(CoreDAVTask *)self responseHeaders];
    [itemCopy postProcessWithResponseHeaders:responseHeaders];
  }
}

@end