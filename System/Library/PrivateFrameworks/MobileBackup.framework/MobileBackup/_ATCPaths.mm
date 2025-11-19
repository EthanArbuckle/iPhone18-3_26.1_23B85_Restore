@interface _ATCPaths
- (_ATCPaths)init;
@end

@implementation _ATCPaths

- (_ATCPaths)init
{
  v12.receiver = self;
  v12.super_class = _ATCPaths;
  v2 = [(_ATCPaths *)&v12 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    directories = v2->_directories;
    v2->_directories = v3;

    v5 = +[NSMutableArray array];
    symlinks = v2->_symlinks;
    v2->_symlinks = v5;

    v7 = +[NSMutableArray array];
    zeroByteFiles = v2->_zeroByteFiles;
    v2->_zeroByteFiles = v7;

    v9 = +[NSMutableArray array];
    assetFiles = v2->_assetFiles;
    v2->_assetFiles = v9;
  }

  return v2;
}

@end