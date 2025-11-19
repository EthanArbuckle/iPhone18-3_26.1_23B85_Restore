@interface MDPathFilter
- ($1CD0F41CAFB66BEF540F4446800F077B)filterFullPath:(SEL)a3;
- ($1CD0F41CAFB66BEF540F4446800F077B)filterFullPathTestBundle:(SEL)a3;
- ($1CD0F41CAFB66BEF540F4446800F077B)filterPartialPath:(SEL)a3;
- ($1CD0F41CAFB66BEF540F4446800F077B)iCloudPath:(SEL)a3 updateFilter:(const char *)a4;
- (BOOL)isDataROSP;
- (MDPathFilter)initWithData:(id)a3;
- (MDPathFilter)initWithMDPlist:(_MDPlistContainer *)a3;
- (_MDPlistContainer)plist;
- (id)data;
- (unint64_t)filterSubAuxValues:(id *)a3 count:(int *)a4;
- (unint64_t)trimBundlePath:(id *)a3 path:(const char *)a4 buffer:(char *)a5 length:(unint64_t)a6;
- (void)dealloc;
@end

@implementation MDPathFilter

- (MDPathFilter)initWithMDPlist:(_MDPlistContainer *)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v68.receiver = self;
  v68.super_class = MDPathFilter;
  v4 = [(MDPathFilter *)&v68 init];
  v5 = v4;
  if (a3 && v4)
  {
    v4->_plist = CFRetain(a3);
    v66 = 0uLL;
    v67 = 0;
    _MDPlistContainerGetPlistObjectAtKeyPath(a3, "/COMMON", &v66, v6, v7, v8, v9, v10);
    v65 = 0;
    v63 = v66;
    v64 = v67;
    v5->_commonValues = _MDPlistDataGetBytePtr(&v63, &v65);
    v63 = 0uLL;
    v64 = 0;
    _MDPlistContainerGetPlistObjectAtKeyPath(a3, "/PREFIXES", &v63, v11, v12, v13, v14, v15);
    *&v5->_prefixesDictionary.containerBytes = v63;
    v5->_prefixesDictionary.reference = v64;
    v63 = 0uLL;
    v64 = 0;
    _MDPlistContainerGetPlistObjectAtKeyPath(a3, "/EXTENSIONS", &v63, v16, v17, v18, v19, v20);
    *&v5->_extensionsDictionary.containerBytes = v63;
    v5->_extensionsDictionary.reference = v64;
    v63 = 0uLL;
    v64 = 0;
    _MDPlistContainerGetPlistObjectAtKeyPath(a3, "/HIDDEN_EXTENSIONS", &v63, v21, v22, v23, v24, v25);
    *&v5->_hiddenExtensionsDictionary.containerBytes = v63;
    v5->_hiddenExtensionsDictionary.reference = v64;
    v63 = 0uLL;
    v64 = 0;
    _MDPlistContainerGetPlistObjectAtKeyPath(a3, "/ROOT_ARRAY", &v63, v26, v27, v28, v29, v30);
    *&v5->_rootArray.containerBytes = v63;
    v5->_rootArray.reference = v64;
    v64 = 0;
    v63 = 0uLL;
    var2 = v5->_commonValues->var2;
    v61 = *&v5->_rootArray.containerBytes;
    reference = v5->_rootArray.reference;
    _MDPlistArrayGetPlistObjectAtIndex(&v61, var2, v32, v33, v34, v35, v36, v37, &v63);
    v61 = v63;
    reference = v64;
    if (_MDPlistGetPlistObjectType(&v61) != 240)
    {
      [(MDPathFilter *)&v63 initWithMDPlist:v38, v39, v40, v41, v42, v43, v44];
    }

    v61 = v63;
    reference = v64;
    v5->_rootElement = arrayObjectToElementRecord(&v61, v38, v39, v40, v41, v42, v43, v44);
    reference = 0;
    v61 = 0uLL;
    _MDPlistGetRootPlistObjectFromPlist(v5->_plist, v45, v46, v47, v48, v49, &v61);
    v59 = 0uLL;
    v60 = 0;
    v57 = v61;
    v58 = reference;
    if (_MDPlistDictionaryGetPlistObjectForKey(&v57, "IS_DATA_ROSP", 12, &v59, v50, v51, v52, v53))
    {
      v57 = v59;
      v58 = v60;
      v5->_isDataROSP = _MDPlistNumberGetIntValue(&v57) != 0;
    }

    commonValues = v5->_commonValues;
    v5->_mountDepth = commonValues->var0;
    v5->_defaultRule = *(&commonValues->var3 + 6);
    v5->_inheritMask = *(&commonValues->var2 + 1);
    v5->_processExtensions = commonValues->var1 != 0;
    v5->_auxValueCount = HIWORD(commonValues->var7);
    v5->_auxValues = &commonValues->var8;
  }

  v55 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MDPathFilter)initWithData:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if ([a3 length])
  {
    v5 = _MDPlistContainerCreateWithCopiedBytes(*MEMORY[0x1E695E480], [a3 bytes], objc_msgSend(a3, "length"), 1);
    v6 = [(MDPathFilter *)self initWithMDPlist:v5];
    if (v5)
    {
      CFRelease(v5);
    }

    v7 = *MEMORY[0x1E69E9840];
    return v6;
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];

    return [(MDPathFilter *)self initWithMDPlist:0];
  }
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  plist = self->_plist;
  if (plist)
  {
    CFRelease(plist);
  }

  v5.receiver = self;
  v5.super_class = MDPathFilter;
  [(MDPathFilter *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (_MDPlistContainer)plist
{
  result = self->_plist;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)data
{
  v14 = *MEMORY[0x1E69E9840];
  plist = self->_plist;
  v4 = MEMORY[0x1E695DEF0];
  if (plist)
  {
    Bytes = _MDPlistContainerGetBytes(plist);
    Length = _MDPlistContainerGetLength(self->_plist);
    v7 = *MEMORY[0x1E69E9840];
    v8 = Length;
    v9 = v4;
    v10 = Bytes;
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];
    v12 = *MEMORY[0x1E69E9840];
    v10 = "";
    v9 = MEMORY[0x1E695DEF0];
    v8 = 0;
  }

  return [v9 dataWithBytes:v10 length:v8];
}

- (BOOL)isDataROSP
{
  result = self->_isDataROSP;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- ($1CD0F41CAFB66BEF540F4446800F077B)iCloudPath:(SEL)a3 updateFilter:(const char *)a4
{
  v46 = *MEMORY[0x1E69E9840];
  if (iCloudPath_updateFilter__gSetupCache != -1)
  {
    [MDPathFilter iCloudPath:updateFilter:];
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = [v9 pathComponents];
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 indexOfObject:@"Mobile Documents"];
  if (v12 < 4 || v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  v16 = v12;
  v17 = v12 + 1;
  if ([v11 count] <= v12 + 1 || !objc_msgSend(objc_msgSend(v11, "objectAtIndexedSubscript:", v16 - 1), "isEqualToString:", @"Library"))
  {
    goto LABEL_10;
  }

  v18 = [MEMORY[0x1E696AEC0] pathWithComponents:{objc_msgSend(v11, "subarrayWithRange:", 0, v16)}];
  v19 = [v11 objectAtIndexedSubscript:v17];
  pthread_mutex_lock(&iCloudPath_updateFilter__gComponentIsPublicCacheLock);
  v20 = [iCloudPath_updateFilter__gPerUserCacheMapping objectForKeyedSubscript:v18];
  if (v20)
  {
    v21 = v20;
    st_uid = 0;
  }

  else
  {
    memset(&__str, 0, sizeof(__str));
    if (stat([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")], &__str))
    {
      pthread_mutex_unlock(&iCloudPath_updateFilter__gComponentIsPublicCacheLock);
      goto LABEL_10;
    }

    v21 = [MEMORY[0x1E695DF90] dictionary];
    [iCloudPath_updateFilter__gPerUserCacheMapping setObject:v21 forKeyedSubscript:v18];
    st_uid = __str.st_uid;
    if (!v21)
    {
      v24 = 0;
      v23 = 0;
      goto LABEL_16;
    }
  }

  v23 = [v21 objectForKeyedSubscript:v19];
  v24 = 1;
LABEL_16:
  pthread_mutex_unlock(&iCloudPath_updateFilter__gComponentIsPublicCacheLock);
  if (st_uid)
  {
    out_token = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    memset(&__str, 0, sizeof(__str));
    snprintf(&__str, 0x100uLL, "user.uid.%d.BRContainerCacheDidChangeDistributedNotification", st_uid);
    global_queue = dispatch_get_global_queue(2, 0);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __40__MDPathFilter_iCloudPath_updateFilter___block_invoke_2;
    handler[3] = &unk_1E7B257E0;
    handler[4] = v21;
    notify_register_dispatch(&__str, &out_token, global_queue, handler);
  }

  v26 = v24 ^ 1;
  if (v23)
  {
    v26 = 1;
  }

  if (v26)
  {
    if (!v23)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v27 = [v19 stringByReplacingOccurrencesOfString:@"~" withString:@"."];
    v28 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v18 stringByAppendingPathComponent:{@"Application Support", "stringByAppendingPathComponent:", @"CloudDocs", "stringByAppendingPathComponent:", @"session", "stringByAppendingPathComponent:", @"containers", "stringByAppendingPathComponent:", v27), "stringByAppendingPathExtension:", @"plist"}];
    v29 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v28];
    if (!v29)
    {
      goto LABEL_10;
    }

    v30 = [MEMORY[0x1E696AE40] propertyListWithData:v29 options:0 format:0 error:0];
    if (!v30)
    {
      goto LABEL_10;
    }

    v31 = v30;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    v32 = [v31 objectForKeyedSubscript:v27];
    if (!v32)
    {
      goto LABEL_10;
    }

    v33 = v32;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    v34 = [v33 objectForKeyedSubscript:@"BRContainerIsDocumentScopePublic"];
    v23 = &unk_1F29ABE08;
    if (v34)
    {
      v35 = v34;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v35;
      }
    }

    pthread_mutex_lock(&iCloudPath_updateFilter__gComponentIsPublicCacheLock);
    [v21 setObject:v23 forKeyedSubscript:v19];
    pthread_mutex_unlock(&iCloudPath_updateFilter__gComponentIsPublicCacheLock);
  }

  if (([v23 BOOLValue] & 1) == 0)
  {
    a5->var0 = a5->var0 & 0xFFFFFFFFFFFFFFCFLL | 0x10;
  }

LABEL_10:
  objc_autoreleasePoolPop(v8);
  *&retstr->var0 = *&a5->var0;
  *(&retstr->var1 + 4) = *(&a5->var1 + 4);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

id __40__MDPathFilter_iCloudPath_updateFilter___block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  iCloudPath_updateFilter__gPerUserCacheMapping = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __40__MDPathFilter_iCloudPath_updateFilter___block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&iCloudPath_updateFilter__gComponentIsPublicCacheLock);
  [*(a1 + 32) removeAllObjects];
  v2 = *MEMORY[0x1E69E9840];

  return pthread_mutex_unlock(&iCloudPath_updateFilter__gComponentIsPublicCacheLock);
}

- ($1CD0F41CAFB66BEF540F4446800F077B)filterPartialPath:(SEL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->var1)
  {
    if (*a4 == 46)
    {
      v4 = a4 + 1;
      if (a4[1] != 47)
      {
        v4 = a4;
      }

      if (a4[1])
      {
        a4 = v4;
      }

      else
      {
        a4 = "/";
      }
    }

    v5 = *MEMORY[0x1E69E9840];

    return [($1CD0F41CAFB66BEF540F4446800F077B *)self filter:a4 allowBundleCheck:0];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    *&retstr->var6 = 0;
    *&retstr->var2 = 0;
    v6 = *MEMORY[0x1E69E9840];
  }

  return self;
}

- ($1CD0F41CAFB66BEF540F4446800F077B)filterFullPath:(SEL)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self->var1)
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    *&retstr->var6 = 0;
    *&retstr->var2 = 0;
    goto LABEL_47;
  }

  v6 = self;
  var1 = self[4].var1;
  retstr->var1 = 0;
  *&retstr->var2 = 0;
  retstr->var0 = var1;
  *&retstr->var6 = 0;
  var0_low = LOWORD(self[4].var0);
  if (LOBYTE(self[5].var6) != 1)
  {
    v9 = a4;
    if (LOWORD(self[4].var0))
    {
      goto LABEL_28;
    }

LABEL_12:
    v9 = a4;
    goto LABEL_33;
  }

  if (!LOWORD(self[4].var0))
  {
    goto LABEL_12;
  }

  if (var0_low == 2)
  {
    v12 = 0;
    v13 = a4 + 20;
    v14 = 47;
    while (v14 == a4[v12])
    {
      v14 = aSystemVolumesD[++v12];
      if (v12 == 20)
      {
        goto LABEL_18;
      }
    }

    v13 = 0;
LABEL_18:
    if (v13)
    {
      v9 = v13;
    }

    else
    {
      v9 = a4;
    }

    var0_low = 2;
  }

  else
  {
    v9 = a4;
    if (var0_low == 3)
    {
      v10 = 0;
      v11 = 47;
      while (v11 == a4[v10])
      {
        v11 = aSystemVolumesD[++v10];
        if (v10 == 20)
        {
LABEL_25:
          var0_low = 3;
          goto LABEL_27;
        }
      }

      v15 = 0;
      v16 = 47;
      while (v16 == a4[v15])
      {
        v16 = aSystemVolumesP[++v15];
        if (v15 == 23)
        {
          goto LABEL_25;
        }
      }

      var0_low = 1;
LABEL_27:
      v9 = a4;
    }
  }

LABEL_28:
  if (*v9 != 47)
  {
LABEL_32:
    if (!v6)
    {
LABEL_36:
      memset(v23, 0, 28);
      v18 = 1;
      goto LABEL_37;
    }

LABEL_33:
    self = [($1CD0F41CAFB66BEF540F4446800F077B *)v6 filter:v9 allowBundleCheck:0];
    v18 = 0;
LABEL_37:
    *&retstr->var0 = v23[0];
    *(&retstr->var1 + 4) = *(v23 + 12);
    v19 = v9 - a4;
    if (retstr->var6)
    {
      v20 = v9 - a4;
    }

    else
    {
      v20 = 0;
    }

    retstr->var6 += v20;
    if (!retstr->var7)
    {
      v19 = 0;
    }

    retstr->var7 += v19;
    if ((retstr->var0 & 0x2000000000) != 0)
    {
      if (v18)
      {
        memset(v23, 0, 28);
      }

      else
      {
        v22[0] = *&retstr->var0;
        *(v22 + 12) = *(&retstr->var1 + 4);
        self = [($1CD0F41CAFB66BEF540F4446800F077B *)v6 iCloudPath:a4 updateFilter:v22];
      }

      *&retstr->var0 = v23[0];
      *(&retstr->var1 + 4) = *(v23 + 12);
    }

    goto LABEL_47;
  }

  v17 = var0_low + 1;
  while (1)
  {
    self = strchr(v9 + 1, 47);
    if (!self)
    {
      break;
    }

    v9 = self;
    if (--v17 <= 1)
    {
      goto LABEL_32;
    }
  }

  if (v17 == 2)
  {
    v9 = "/";
    if (!v6)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

LABEL_47:
  v21 = *MEMORY[0x1E69E9840];
  return self;
}

- ($1CD0F41CAFB66BEF540F4446800F077B)filterFullPathTestBundle:(SEL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->var1)
  {
    v5 = a4;
    v6 = self;
    var1 = self[4].var1;
    retstr->var1 = 0;
    *&retstr->var2 = 0;
    retstr->var0 = var1;
    *&retstr->var6 = 0;
    if (LOWORD(self[4].var0) && *a4 == 47)
    {
      v8 = LOWORD(self[4].var0) + 1;
      v9 = a4;
      while (1)
      {
        self = strchr(v9 + 1, 47);
        if (!self)
        {
          break;
        }

        v9 = self;
        if (--v8 <= 1)
        {
          if (v6)
          {
            goto LABEL_10;
          }

LABEL_21:
          memset(v13, 0, 28);
          goto LABEL_11;
        }
      }

      if (v8 != 2)
      {
        goto LABEL_18;
      }

      v9 = "/";
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v9 = a4;
    }

LABEL_10:
    self = [($1CD0F41CAFB66BEF540F4446800F077B *)v6 filter:v9 allowBundleCheck:1];
LABEL_11:
    *&retstr->var0 = v13[0];
    *(&retstr->var1 + 4) = *(v13 + 12);
    v10 = v9 - v5;
    if (retstr->var6)
    {
      v11 = v9 - v5;
    }

    else
    {
      v11 = 0;
    }

    retstr->var6 += v11;
    if (!retstr->var7)
    {
      v10 = 0;
    }

    retstr->var7 += v10;
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    *&retstr->var6 = 0;
    *&retstr->var2 = 0;
  }

LABEL_18:
  v12 = *MEMORY[0x1E69E9840];
  return self;
}

- (unint64_t)trimBundlePath:(id *)a3 path:(const char *)a4 buffer:(char *)a5 length:(unint64_t)a6
{
  v12 = *MEMORY[0x1E69E9840];
  var6 = a3->var6;
  if (var6 + 1 < a6)
  {
    v7 = var6 + 1;
  }

  else
  {
    v7 = a6;
  }

  if (a3->var6)
  {
    v8 = v7;
  }

  else
  {
    v8 = a6;
  }

  v9 = strlcpy(a5, a4, v8);
  if (v9 + 1 < v8)
  {
    result = v9 + 1;
  }

  else
  {
    result = v8;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)filterSubAuxValues:(id *)a3 count:(int *)a4
{
  v7 = *MEMORY[0x1E69E9840];
  var5 = a3->var5;
  if (a4)
  {
    *a4 = var5;
  }

  if (var5)
  {
    result = &self->_auxValues[a3->var4];
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

@end