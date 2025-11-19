@interface CardDAVFolderSyncTaskGroup
- (id)copyGetTaskWithURL:(id)a3;
- (id)copyMultiGetTaskWithURLs:(id)a3;
- (void)applyAdditionalPropertiesFromPutTask:(id)a3;
@end

@implementation CardDAVFolderSyncTaskGroup

- (id)copyMultiGetTaskWithURLs:(id)a3
{
  v4 = a3;
  v5 = [[CardDAVFolderMultiGetTask alloc] initWithURLs:v4 atContainerURL:self->super._folderURL appSpecificDataItemClass:self->super._appSpecificDataItemClass];

  return v5;
}

- (id)copyGetTaskWithURL:(id)a3
{
  v3 = a3;
  v4 = [(CoreDAVTask *)[CardDAVFolderGetTask alloc] initWithURL:v3];

  return v4;
}

- (void)applyAdditionalPropertiesFromPutTask:(id)a3
{
  v13 = a3;
  v4 = [v13 responseHeaders];
  v5 = [v4 CDVObjectForKeyCaseInsensitive:@"Location"];

  if (v5)
  {
    v6 = [(CoreDAVTaskGroup *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CoreDAVTaskGroup *)self delegate];
      v9 = [v13 url];
      v10 = [v8 setExternalLocation:v5 forItemWithURL:v9 inFolderWithURL:self->super._folderURL];

      if (v10)
      {
        locationChangedURLs = self->super._locationChangedURLs;
        v12 = [v13 url];
        [(NSMutableSet *)locationChangedURLs addObject:v12];
      }
    }
  }
}

@end