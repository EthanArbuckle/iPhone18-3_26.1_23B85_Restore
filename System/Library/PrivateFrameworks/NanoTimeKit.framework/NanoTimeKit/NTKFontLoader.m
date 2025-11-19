@interface NTKFontLoader
+ (id)fontDescriptorForSectName:(id)a3 uniqueCacheIdentifier:(id)a4 fromMachO:(const mach_header_64 *)a5;
+ (id)registerFontDescriptorsForSectName:(id)a3 fromMachO:(const mach_header_64 *)a4;
+ (void)_registerFontDescriptor:(id)a3;
@end

@implementation NTKFontLoader

+ (id)fontDescriptorForSectName:(id)a3 uniqueCacheIdentifier:(id)a4 fromMachO:(const mach_header_64 *)a5
{
  v7 = a3;
  v8 = a4;
  if (fontDescriptorForSectName_uniqueCacheIdentifier_fromMachO__onceToken != -1)
  {
    +[NTKFontLoader fontDescriptorForSectName:uniqueCacheIdentifier:fromMachO:];
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v8, v7];
  FontDescriptorFromData = [fontDescriptorForSectName_uniqueCacheIdentifier_fromMachO____fontDescriptorCache objectForKey:v9];
  if (!FontDescriptorFromData)
  {
    size = 0;
    v11 = getsectiondata(a5, "__FONT_DATA", [v7 cStringUsingEncoding:4], &size);
    if (v11)
    {
      v12 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v11, size, *MEMORY[0x277CBED00]);
      FontDescriptorFromData = CTFontManagerCreateFontDescriptorFromData(v12);
      [fontDescriptorForSectName_uniqueCacheIdentifier_fromMachO____fontDescriptorCache setObject:FontDescriptorFromData forKey:v9];
      CFRelease(v12);
    }

    else
    {
      FontDescriptorFromData = 0;
    }
  }

  return FontDescriptorFromData;
}

void __75__NTKFontLoader_fontDescriptorForSectName_uniqueCacheIdentifier_fromMachO___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = fontDescriptorForSectName_uniqueCacheIdentifier_fromMachO____fontDescriptorCache;
  fontDescriptorForSectName_uniqueCacheIdentifier_fromMachO____fontDescriptorCache = v0;
}

+ (id)registerFontDescriptorsForSectName:(id)a3 fromMachO:(const mach_header_64 *)a4
{
  v5 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = objc_opt_new();
  size = 0;
  v6 = getsectiondata(a4, "__FONT_DATA", [v5 cStringUsingEncoding:4], &size);
  if (v6)
  {
    v7 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v6, size, *MEMORY[0x277CBED00]);
    FontDescriptorsFromData = CTFontManagerCreateFontDescriptorsFromData(v7);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__NTKFontLoader_registerFontDescriptorsForSectName_fromMachO___block_invoke;
    v11[3] = &unk_278780208;
    v11[4] = &v13;
    [(__CFArray *)FontDescriptorsFromData enumerateObjectsUsingBlock:v11];
    CFRelease(v7);
  }

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

void __62__NTKFontLoader_registerFontDescriptorsForSectName_fromMachO___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [NTKFontLoader _registerFontDescriptor:v3];
  v4 = [v3 fontAttributes];
  v5 = [v4 objectForKey:*MEMORY[0x277D74340]];

  if (v5)
  {
    [*(*(*(a1 + 32) + 8) + 40) setObject:v3 forKey:v5];
  }

  else
  {
    v6 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __62__NTKFontLoader_registerFontDescriptorsForSectName_fromMachO___block_invoke_cold_1(v3, v6);
    }
  }
}

+ (void)_registerFontDescriptor:(id)a3
{
  v3 = CTFontCreateWithFontDescriptor(a3, 12.0, 0);
  v4 = CTFontCopyGraphicsFont(v3, 0);
  error = 0;
  CTFontManagerRegisterGraphicsFont(v4, &error);
  CGFontRelease(v4);
  CFRelease(v3);
  if (error)
  {
    v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(NTKFontLoader *)&error _registerFontDescriptor:v5];
    }

    CFRelease(error);
  }
}

void __62__NTKFontLoader_registerFontDescriptorsForSectName_fromMachO___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Got unnamed font descriptor %@", &v2, 0xCu);
}

+ (void)_registerFontDescriptor:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Got error registering font descriptor %@", &v3, 0xCu);
}

@end