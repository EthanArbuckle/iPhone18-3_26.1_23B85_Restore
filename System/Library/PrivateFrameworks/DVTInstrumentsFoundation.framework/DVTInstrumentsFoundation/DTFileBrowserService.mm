@interface DTFileBrowserService
+ (void)registerCapabilities:(id)capabilities;
- (id)contentsOfDirectoryAtPath:(id)path;
- (id)dataFromFileAtPath:(id)path;
- (id)entriesAtPath:(id)path;
- (id)entriesInPathsArray:(id)array;
- (id)fileExistsAtPath:(id)path;
- (id)updateAttributesForItem:(id)item;
@end

@implementation DTFileBrowserService

+ (void)registerCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  if (+[DTInstrumentServer isAppleInternal])
  {
    [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.filebrowser" withVersion:2 forClass:self];
  }
}

- (id)entriesAtPath:(id)path
{
  pathCopy = path;
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v31[0] = 0;
  v5 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:v31];
  v6 = v31[0];
  if (!v6)
  {
    v7 = [v5 count];
    if (v7)
    {
      v8 = v7;
      v6 = 0;
      v9 = 0;
      v22 = v7;
      v23 = v5;
      v24 = pathCopy;
      while (1)
      {
        v10 = [v5 objectAtIndex:v9];
        v11 = [pathCopy stringByAppendingPathComponent:v10];
        v30 = v6;
        v12 = [defaultManager attributesOfItemAtPath:v11 error:&v30];
        v13 = v30;

        if (!v13)
        {
          break;
        }

        v6 = 0;
LABEL_12:

        if (v8 == ++v9)
        {
          goto LABEL_15;
        }
      }

      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/Info.plist", v11];
      v29 = 0;
      v14 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v13];
      v26 = v14;
      if (v14)
      {
        v28 = 0;
        v15 = [MEMORY[0x277CCAC58] propertyListWithData:v14 options:0 format:&v29 error:&v28];
        v6 = v28;
        v16 = 0x277CBE000;
        if (v15)
        {
LABEL_11:
          v27 = 0;
          [defaultManager fileExistsAtPath:v11 isDirectory:&v27];
          v17 = *(v16 + 2752);
          [MEMORY[0x277CCABB0] numberWithBool:v27];
          v19 = v18 = defaultManager;
          v20 = [v17 dictionaryWithObjectsAndKeys:{v11, @"DTFileBrowserEntryPath", v10, @"DTFileBrowserEntryName", v12, @"DTFileBrowserEntryAttributes", v15, @"DTFileBrowserEntryPList", v19, @"DTFileBrowserEntryIsDirectory", 0}];

          defaultManager = v18;
          [v25 addObject:v20];

          v5 = v23;
          pathCopy = v24;
          v8 = v22;
          goto LABEL_12;
        }
      }

      else
      {
        v6 = 0;
        v16 = 0x277CBE000uLL;
      }

      v15 = [*(v16 + 2752) dictionaryWithObjectsAndKeys:{@"simple_executable", @"DTFileBrowserEntryType", v11, @"CFBundleIdentifier", 0}];
      goto LABEL_11;
    }

    v6 = 0;
  }

LABEL_15:

  return v25;
}

- (id)entriesInPathsArray:(id)array
{
  arrayCopy = array;
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [arrayCopy count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0x277CBE000uLL;
    v20 = v5;
    v21 = arrayCopy;
    while (1)
    {
      v10 = [arrayCopy objectAtIndex:v8];
      v27[0] = v7;
      v11 = [defaultManager attributesOfItemAtPath:v10 error:v27];
      v12 = v27[0];

      if (!v12)
      {
        break;
      }

      v7 = 0;
LABEL_11:

      if (v6 == ++v8)
      {

        goto LABEL_13;
      }
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/Info.plist", v10];
    v26 = 0;
    v13 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v12];
    v23 = v13;
    if (v13)
    {
      v25 = 0;
      v14 = [MEMORY[0x277CCAC58] propertyListWithData:v13 options:0 format:&v26 error:&v25];
      v7 = v25;
      if (v14)
      {
LABEL_10:
        v24 = 0;
        [defaultManager fileExistsAtPath:v10 isDirectory:&v24];
        v15 = *(v9 + 2752);
        lastPathComponent = [v10 lastPathComponent];
        v17 = [MEMORY[0x277CCABB0] numberWithBool:v24];
        v18 = [v15 dictionaryWithObjectsAndKeys:{v10, @"DTFileBrowserEntryPath", lastPathComponent, @"DTFileBrowserEntryName", v11, @"DTFileBrowserEntryAttributes", v14, @"DTFileBrowserEntryPList", v17, @"DTFileBrowserEntryIsDirectory", 0}];

        v9 = 0x277CBE000;
        [v22 addObject:v18];

        v6 = v20;
        arrayCopy = v21;
        goto LABEL_11;
      }
    }

    else
    {
      v7 = 0;
    }

    v14 = [*(v9 + 2752) dictionaryWithObjectsAndKeys:{@"simple_executable", @"DTFileBrowserEntryType", v10, @"CFBundleIdentifier", 0}];
    goto LABEL_10;
  }

LABEL_13:

  return v22;
}

- (id)dataFromFileAtPath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:pathCopy])
  {
    v7 = 0;
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:pathCopy options:2 error:&v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)contentsOfDirectoryAtPath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v5 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:&v15];
  v6 = v15;
  if (!v6)
  {
    goto LABEL_5;
  }

  v14 = 0;
  if ([defaultManager fileExistsAtPath:pathCopy isDirectory:&v14] && v14 == 1)
  {
    v7 = objc_alloc(MEMORY[0x277CBEAD8]);
    v8 = [v6 description];
    userInfo = [v6 userInfo];
    v10 = [v7 initWithName:@"XRFileSystemException" reason:v8 userInfo:userInfo];

    [v10 raise];
LABEL_5:
    array = v5;
    goto LABEL_7;
  }

  array = [MEMORY[0x277CBEA60] array];
LABEL_7:
  v12 = array;

  return v12;
}

- (id)updateAttributesForItem:(id)item
{
  itemCopy = item;
  v4 = [itemCopy valueForKey:@"DTFileBrowserEntryPath"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0;
  v6 = [defaultManager attributesOfItemAtPath:v4 error:&v10];
  if (!v10)
  {
    v9 = 0;
    [defaultManager fileExistsAtPath:v4 isDirectory:&v9];
    [itemCopy setObject:v6 forKey:@"DTFileBrowserEntryAttributes"];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    [itemCopy setObject:v7 forKey:@"DTFileBrowserEntryIsDirectory"];
  }

  return itemCopy;
}

- (id)fileExistsAtPath:(id)path
{
  v14[2] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v3 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager fileExistsAtPath:pathCopy isDirectory:&v12];

  v13[0] = @"fileExists";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v13[1] = @"isDirectory";
  v14[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v12];
  v14[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end