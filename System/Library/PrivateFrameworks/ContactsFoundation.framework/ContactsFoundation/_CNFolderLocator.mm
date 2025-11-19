@interface _CNFolderLocator
- (NSURL)addressBookFolder;
- (NSURL)cachesFolder;
@end

@implementation _CNFolderLocator

- (NSURL)addressBookFolder
{
  v2 = [(_CNFolderLocator *)self libraryFolder];
  v3 = [v2 URLByAppendingPathComponent:@"AddressBook" isDirectory:1];

  return v3;
}

- (NSURL)cachesFolder
{
  v2 = +[(CNEnvironmentBase *)CNEnvironment];
  v3 = [v2 fileManager];
  v4 = [v3 URLsForDirectory:13 inDomains:1];
  v5 = [v4 firstObject];

  return v5;
}

@end