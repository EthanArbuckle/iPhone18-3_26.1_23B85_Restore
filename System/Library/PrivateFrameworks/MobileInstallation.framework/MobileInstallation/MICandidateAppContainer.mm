@interface MICandidateAppContainer
- (BOOL)isPlaceholder;
- (NSURL)appURL;
@end

@implementation MICandidateAppContainer

- (NSURL)appURL
{
  appURL = self->_appURL;
  if (!appURL)
  {
    rootURL = [(MICandidateContainer *)self rootURL];
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    defaultManager = [MEMORY[0x1E69A8D78] defaultManager];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___AppURLInContainer_block_invoke;
    v13[3] = &unk_1E80B9ED8;
    v13[4] = &v14;
    v6 = [defaultManager enumerateURLsForItemsInDirectoryAtURL:rootURL ignoreSymlinks:1 withBlock:v13];
    v7 = v15;
    if (v6 && !v15[5] && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      path = [rootURL path];
      MOLogWrite();

      v7 = v15;
    }

    v8 = v7[5];

    _Block_object_dispose(&v14, 8);
    v9 = self->_appURL;
    self->_appURL = v8;

    appURL = self->_appURL;
  }

  v10 = appURL;

  return v10;
}

- (BOOL)isPlaceholder
{
  appURL = [(MICandidateAppContainer *)self appURL];
  if (appURL)
  {
    defaultManager = [MEMORY[0x1E69A8D78] defaultManager];
    v4 = [defaultManager bundleAtURLIsPlaceholder:appURL];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end