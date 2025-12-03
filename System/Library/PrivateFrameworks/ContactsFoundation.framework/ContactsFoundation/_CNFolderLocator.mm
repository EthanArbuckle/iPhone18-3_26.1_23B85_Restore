@interface _CNFolderLocator
- (NSURL)addressBookFolder;
- (NSURL)cachesFolder;
@end

@implementation _CNFolderLocator

- (NSURL)addressBookFolder
{
  libraryFolder = [(_CNFolderLocator *)self libraryFolder];
  v3 = [libraryFolder URLByAppendingPathComponent:@"AddressBook" isDirectory:1];

  return v3;
}

- (NSURL)cachesFolder
{
  v2 = +[(CNEnvironmentBase *)CNEnvironment];
  fileManager = [v2 fileManager];
  v4 = [fileManager URLsForDirectory:13 inDomains:1];
  firstObject = [v4 firstObject];

  return firstObject;
}

@end