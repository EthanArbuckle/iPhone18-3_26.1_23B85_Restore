@interface TKRepository
+ (BOOL)_hasEntitlement:(id)entitlement;
+ (BOOL)_isApprovedProcess;
+ (id)_processBundleIdentifier;
+ (id)bundlePathForURL:(id)l;
+ (void)loadWithURL:(id)l completion:(id)completion;
+ (void)reset;
+ (void)unpackBundleWithURL:(id)l destinationPath:(id)path completion:(id)completion;
- (TKRepository)initWithURL:(id)l bundlePath:(id)path;
- (id)pathForVerificationCertificate;
- (id)tmlPathForName:(id)name;
@end

@implementation TKRepository

+ (BOOL)_hasEntitlement:(id)entitlement
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entitlement);
  v11 = 0;
  Default = CFAllocatorGetDefault();
  task = SecTaskCreateFromSelf(Default);
  if (task)
  {
    error = 0;
    cf = SecTaskCopyValueForEntitlement(task, location[0], &error);
    if (cf)
    {
      v6 = CFGetTypeID(cf);
      v7 = 0;
      if (v6 == CFBooleanGetTypeID())
      {
        v7 = CFBooleanGetValue(cf) != 0;
      }

      v11 = v7;
      CFRelease(cf);
    }

    CFRelease(task);
  }

  v5 = v11;
  objc_storeStrong(location, 0);
  return v5;
}

+ (id)_processBundleIdentifier
{
  v8[2] = self;
  v8[1] = a2;
  v8[0] = 0;
  Default = CFAllocatorGetDefault();
  task = SecTaskCreateFromSelf(Default);
  if (task)
  {
    v3 = SecTaskCopySigningIdentifier(task, 0);
    v4 = v8[0];
    v8[0] = v3;
    MEMORY[0x277D82BD8](v4);
    CFRelease(task);
  }

  v6 = MEMORY[0x277D82BE0](v8[0]);
  objc_storeStrong(v8, 0);

  return v6;
}

+ (BOOL)_isApprovedProcess
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [self _processBundleIdentifier];
  location = MEMORY[0x277D82BE0](&unk_286780EE0);
  if (v4[0] && [v4[0] length])
  {
    v5 = [location containsObject:v4[0]] & 1;
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v4, 0);
  return v5 & 1;
}

+ (void)loadWithURL:(id)l completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v61 = 0;
  objc_storeStrong(&v61, completion);
  v60 = [selfCopy _hasEntitlement:@"com.apple.jitappkit.bundle.load"];
  _isApprovedProcess = [selfCopy _isApprovedProcess];
  if (v60 & 1) != 0 || (_isApprovedProcess)
  {
    v56 = 0;
    v20 = 0;
    if ([location[0] isFileURL])
    {
      absoluteString = [location[0] absoluteString];
      v56 = 1;
      v54 = [absoluteString rangeOfString:@"cloudkit" options:1];
      v55 = v4;
      v20 = v54 == 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v56)
    {
      MEMORY[0x277D82BD8](absoluteString);
    }

    if (v20)
    {
      v18 = MEMORY[0x277D85CD0];
      v5 = MEMORY[0x277D85CD0];
      queue = v18;
      v47 = MEMORY[0x277D85DD0];
      v48 = -1073741824;
      v49 = 0;
      v50 = __39__TKRepository_loadWithURL_completion___block_invoke;
      v51 = &unk_2797EE388;
      v52 = MEMORY[0x277D82BE0](location[0]);
      v53 = MEMORY[0x277D82BE0](v61);
      dispatch_async(queue, &v47);
      MEMORY[0x277D82BD8](queue);
      v58 = 1;
      objc_storeStrong(&v53, 0);
      objc_storeStrong(&v52, 0);
    }

    else
    {
      v46 = [selfCopy bundlePathForURL:location[0]];
      v45 = [v46 stringByAppendingPathExtension:@"unpacked"];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v42 = 0;
      v17 = 0;
      if ([location[0] isFileURL])
      {
        absoluteString2 = [location[0] absoluteString];
        v42 = 1;
        v40 = [absoluteString2 rangeOfString:@"cloudkit" options:1];
        v41 = v6;
        v17 = v40 != 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v42)
      {
        MEMORY[0x277D82BD8](absoluteString2);
      }

      if (v17)
      {
        absoluteString3 = [location[0] absoluteString];
        v39 = [absoluteString3 stringByReplacingOccurrencesOfString:@"file://" withString:&stru_28677B088];
        MEMORY[0x277D82BD8](absoluteString3);
        [selfCopy unpackBundleWithURL:location[0] destinationPath:v39 completion:v61];
        v58 = 1;
        objc_storeStrong(&v39, 0);
      }

      else
      {
        v38 = 0;
        if ([defaultManager fileExistsAtPath:v45] & 1) != 0 && (objc_msgSend(defaultManager, "fileExistsAtPath:isDirectory:", v46, &v38) & 1) != 0 && (v38)
        {
          v14 = MEMORY[0x277D85CD0];
          v7 = MEMORY[0x277D85CD0];
          v15 = v14;
          v30 = MEMORY[0x277D85DD0];
          v31 = -1073741824;
          v32 = 0;
          v33 = __39__TKRepository_loadWithURL_completion___block_invoke_2;
          v34 = &unk_2797EE3B0;
          v35 = MEMORY[0x277D82BE0](location[0]);
          v36 = MEMORY[0x277D82BE0](v46);
          v37 = MEMORY[0x277D82BE0](v61);
          dispatch_async(v15, &v30);
          MEMORY[0x277D82BD8](v15);
          v58 = 1;
          objc_storeStrong(&v37, 0);
          objc_storeStrong(&v36, 0);
          objc_storeStrong(&v35, 0);
        }

        else
        {
          v9 = objc_alloc(MEMORY[0x277CCAD20]);
          v10 = location[0];
          v11 = +[TKNetwork shared];
          [v11 timeoutInterval];
          v29 = [v9 initWithURL:v10 cachePolicy:? timeoutInterval:?];
          MEMORY[0x277D82BD8](v11);
          v13 = +[TKNetwork shared];
          v12 = v29;
          v22 = MEMORY[0x277D85DD0];
          v23 = -1073741824;
          v24 = 0;
          v25 = __39__TKRepository_loadWithURL_completion___block_invoke_3;
          v26 = &unk_2797EE3D8;
          v28[0] = MEMORY[0x277D82BE0](v61);
          v28[1] = selfCopy;
          v27 = MEMORY[0x277D82BE0](location[0]);
          v8 = [v13 downloadRequest:v12 priority:1 completion:&v22];
          MEMORY[0x277D82BD8](v13);
          objc_storeStrong(&v27, 0);
          objc_storeStrong(v28, 0);
          objc_storeStrong(&v29, 0);
          v58 = 0;
        }
      }

      objc_storeStrong(&defaultManager, 0);
      objc_storeStrong(&v45, 0);
      objc_storeStrong(&v46, 0);
    }
  }

  else
  {
    v58 = 1;
  }

  objc_storeStrong(&v61, 0);
  objc_storeStrong(location, 0);
}

void __39__TKRepository_loadWithURL_completion___block_invoke(void *a1)
{
  v5[2] = a1;
  v5[1] = a1;
  v2 = [TKRepository alloc];
  v1 = a1[4];
  v3 = [v1 path];
  v5[0] = [(TKRepository *)v2 initWithURL:v1 bundlePath:?];
  MEMORY[0x277D82BD8](v3);
  (*(a1[5] + 16))();
  objc_storeStrong(v5, 0);
}

void __39__TKRepository_loadWithURL_completion___block_invoke_2(void *a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = [[TKRepository alloc] initWithURL:a1[4] bundlePath:a1[5]];
  (*(a1[6] + 16))();
  objc_storeStrong(v2, 0);
}

void __39__TKRepository_loadWithURL_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (location[0])
  {
    [*(a1 + 48) unpackBundleWithURL:*(a1 + 32) destinationPath:location[0] completion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

+ (void)reset
{
  v4[2] = self;
  v4[1] = a2;
  v2 = +[TKUtils applicationLibraryPath];
  v4[0] = [v2 stringByAppendingPathComponent:@"JITAppKit"];
  MEMORY[0x277D82BD8](v2);
  location = [MEMORY[0x277CCAA00] defaultManager];
  if ([location fileExistsAtPath:v4[0]])
  {
    [location removeItemAtPath:v4[0] error:0];
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v4, 0);
}

- (TKRepository)initWithURL:(id)l bundlePath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v19 = 0;
  objc_storeStrong(&v19, path);
  v4 = selfCopy;
  selfCopy = 0;
  v18.receiver = v4;
  v18.super_class = TKRepository;
  selfCopy = [(TKRepository *)&v18 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v5 = [location[0] copy];
    URL = selfCopy->_URL;
    selfCopy->_URL = v5;
    MEMORY[0x277D82BD8](URL);
    v7 = [v19 copy];
    bundlePath = selfCopy->_bundlePath;
    selfCopy->_bundlePath = v7;
    MEMORY[0x277D82BD8](bundlePath);
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = [v19 stringByAppendingPathComponent:@"version.txt"];
    v9 = [v15 initWithContentsOfFile:? encoding:? error:?];
    version = selfCopy->_version;
    selfCopy->_version = v9;
    MEMORY[0x277D82BD8](version);
    MEMORY[0x277D82BD8](v16);
    pathForVerificationCertificate = [(TKRepository *)selfCopy pathForVerificationCertificate];
    certificatePath = selfCopy->_certificatePath;
    selfCopy->_certificatePath = pathForVerificationCertificate;
    MEMORY[0x277D82BD8](certificatePath);
  }

  v14 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v14;
}

- (id)tmlPathForName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  if ([location[0] length])
  {
    v5 = [(NSString *)selfCopy->_bundlePath stringByAppendingPathComponent:location[0]];
    v7 = [(NSString *)v5 stringByAppendingPathExtension:@"tml"];
    MEMORY[0x277D82BD8](v5);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:v7])
    {
      v11 = MEMORY[0x277D82BE0](v7);
    }

    else
    {
      v11 = 0;
    }

    v8 = 1;
    objc_storeStrong(&defaultManager, 0);
    objc_storeStrong(&v7, 0);
  }

  else
  {
    v11 = 0;
    v8 = 1;
  }

  objc_storeStrong(location, 0);
  v3 = v11;

  return v3;
}

- (id)pathForVerificationCertificate
{
  v5[2] = self;
  v5[1] = a2;
  v5[0] = [(NSString *)self->_bundlePath stringByAppendingPathComponent:@"resources/verify"];
  location = [MEMORY[0x277CCAA00] defaultManager];
  if ([location fileExistsAtPath:v5[0]])
  {
    v6 = MEMORY[0x277D82BE0](v5[0]);
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v5, 0);
  v2 = v6;

  return v2;
}

+ (id)bundlePathForURL:(id)l
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v4 = +[TKUtils applicationLibraryPath];
  v9 = [v4 stringByAppendingPathComponent:@"JITAppKit"];
  MEMORY[0x277D82BD8](v4);
  v5 = v9;
  v6 = [TKUtils uniqueKeyForURL:location[0]];
  v8 = [v5 stringByAppendingPathComponent:?];
  MEMORY[0x277D82BD8](v6);
  v7 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v7;
}

+ (void)unpackBundleWithURL:(id)l destinationPath:(id)path completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v23 = 0;
  objc_storeStrong(&v23, path);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v20 = [selfCopy bundlePathForURL:location[0]];
  v19 = [v20 stringByAppendingPathExtension:@"unpacked"];
  queue = dispatch_get_global_queue(2, 0);
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __63__TKRepository_unpackBundleWithURL_destinationPath_completion___block_invoke;
  v12 = &unk_2797EE428;
  v13 = MEMORY[0x277D82BE0](v23);
  v14 = MEMORY[0x277D82BE0](v20);
  v15 = MEMORY[0x277D82BE0](defaultManager);
  v16 = MEMORY[0x277D82BE0](v19);
  v17 = MEMORY[0x277D82BE0](location[0]);
  v18 = MEMORY[0x277D82BE0](v22);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&defaultManager, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

void __63__TKRepository_unpackBundleWithURL_destinationPath_completion___block_invoke(uint64_t a1)
{
  v28[2] = a1;
  v28[1] = a1;
  v10 = [MEMORY[0x277CCAC38] processInfo];
  v28[0] = [v10 globallyUniqueString];
  MEMORY[0x277D82BD8](v10);
  v11 = NSTemporaryDirectory();
  v27 = [(NSString *)v11 stringByAppendingPathComponent:v28[0]];
  MEMORY[0x277D82BD8](v11);
  v26 = [TKUtils decompressFile:*(a1 + 32) toDestinationPath:v27 algorithm:774];
  v25 = 0;
  v1 = *(a1 + 40);
  if (v26)
  {
    v24 = v25;
    v9 = [Main unzipFileAtPath:"unzipFileAtPath:toDestination:overwrite:password:error:" toDestination:v27 overwrite:v1 password:1 error:?];
    objc_storeStrong(&v25, v24);
    v26 = v9;
    [*(a1 + 48) removeItemAtPath:v27 error:HIDWORD(v9)];
  }

  else
  {
    v23 = v25;
    v8 = [Main unzipFileAtPath:v27 toDestination:v1 overwrite:1 password:0 error:&v23];
    objc_storeStrong(&v25, v23);
    v26 = v8;
  }

  if (v26)
  {
    v4 = *(a1 + 48);
    v3 = *(a1 + 56);
    v5 = [@"OK" dataUsingEncoding:4];
    v26 = [v4 createFileAtPath:v3 contents:? attributes:?];
    MEMORY[0x277D82BD8](v5);
    v6 = MEMORY[0x277D85CD0];
    v2 = MEMORY[0x277D85CD0];
    queue = v6;
    v13 = MEMORY[0x277D85DD0];
    v14 = -1073741824;
    v15 = 0;
    v16 = __63__TKRepository_unpackBundleWithURL_destinationPath_completion___block_invoke_2;
    v17 = &unk_2797EE400;
    v22 = v26 & 1;
    v18 = MEMORY[0x277D82BE0](*(a1 + 64));
    v19 = MEMORY[0x277D82BE0](*(a1 + 40));
    v21 = MEMORY[0x277D82BE0](*(a1 + 72));
    v20 = MEMORY[0x277D82BE0](v25);
    dispatch_async(queue, &v13);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(v28, 0);
}

void __63__TKRepository_unpackBundleWithURL_destinationPath_completion___block_invoke_2(uint64_t a1)
{
  v3[2] = a1;
  v3[1] = a1;
  if (*(a1 + 64))
  {
    v3[0] = [[TKRepository alloc] initWithURL:*(a1 + 32) bundlePath:*(a1 + 40)];
    (*(*(a1 + 56) + 16))();
    objc_storeStrong(v3, 0);
  }

  else
  {
    v1 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
  }
}

@end