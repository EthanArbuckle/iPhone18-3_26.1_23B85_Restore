@interface NSDictionary
- (BOOL)_maps_writeBinaryPlist:(id)a3 error:(id *)a4;
@end

@implementation NSDictionary

- (BOOL)_maps_writeBinaryPlist:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v7 = [NSPropertyListSerialization dataWithPropertyList:self format:200 options:0 error:&v19];
  v8 = v19;
  v9 = v8;
  if (v8)
  {
    if (*a4)
    {
      v10 = v8;
      v11 = 0;
      *a4 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = [v6 stringByDeletingLastPathComponent];
    v13 = +[NSFileManager defaultManager];
    if (([v13 fileExistsAtPath:v12 isDirectory:0] & 1) == 0)
    {
      [v13 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v18 = 0;
    v11 = [v7 writeToFile:v6 options:1 error:&v18];
    v14 = v18;
    v15 = v14;
    if (v14)
    {
      if (*a4)
      {
        v16 = v14;
        v11 = 0;
        *a4 = v15;
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