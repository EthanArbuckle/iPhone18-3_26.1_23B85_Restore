@interface CoreDAVFolderContentsMultiGetTask
- (CoreDAVFolderContentsMultiGetTask)initWithURLs:(id)a3 atContainerURL:(id)a4 appSpecificDataItemClass:(Class)a5;
- (id)copyAdditionalPropElements;
- (void)setAdditionalProperties:(id)a3 onDataItem:(id)a4;
@end

@implementation CoreDAVFolderContentsMultiGetTask

- (CoreDAVFolderContentsMultiGetTask)initWithURLs:(id)a3 atContainerURL:(id)a4 appSpecificDataItemClass:(Class)a5
{
  v8.receiver = self;
  v8.super_class = CoreDAVFolderContentsMultiGetTask;
  v5 = [(CoreDAVContainerMultiGetTask *)&v8 initWithURLs:a3 atContainerURL:a4 appSpecificDataItemClass:a5];
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

- (void)setAdditionalProperties:(id)a3 onDataItem:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v6 applyParsedProperties:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [(CoreDAVTask *)self responseHeaders];
    [v6 postProcessWithResponseHeaders:v7];
  }
}

@end