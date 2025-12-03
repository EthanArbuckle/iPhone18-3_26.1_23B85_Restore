@interface NSDictionary
- (BOOL)_maps_writeBinaryPlist:(id)plist error:(id *)error;
@end

@implementation NSDictionary

- (BOOL)_maps_writeBinaryPlist:(id)plist error:(id *)error
{
  plistCopy = plist;
  v19 = 0;
  v7 = [NSPropertyListSerialization dataWithPropertyList:self format:200 options:0 error:&v19];
  v8 = v19;
  v9 = v8;
  if (v8)
  {
    if (*error)
    {
      v10 = v8;
      v11 = 0;
      *error = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    stringByDeletingLastPathComponent = [plistCopy stringByDeletingLastPathComponent];
    v13 = +[NSFileManager defaultManager];
    if (([v13 fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:0] & 1) == 0)
    {
      [v13 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
    }

    v18 = 0;
    v11 = [v7 writeToFile:plistCopy options:1 error:&v18];
    v14 = v18;
    v15 = v14;
    if (v14)
    {
      if (*error)
      {
        v16 = v14;
        v11 = 0;
        *error = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  return v11;
}

@end