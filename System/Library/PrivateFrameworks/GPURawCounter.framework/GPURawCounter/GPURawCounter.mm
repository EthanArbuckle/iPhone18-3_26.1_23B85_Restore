uint64_t GRCCopyAllCounterSourceGroup()
{
  v2 = 0;
  v0 = GRCCopyAllCounterSourceGroupWithError(&v2);
  if (v2)
  {
    NSLog(&stru_2860A08A8.isa, v2);
  }

  return v0;
}

uint64_t GRCCopyAllCounterSourceGroupWithError(uint64_t a1)
{
  if (GRCCopyAllCounterSourceGroupWithError::onceToken != -1)
  {
    GRCCopyAllCounterSourceGroupWithError_cold_1();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __GRCCopyAllCounterSourceGroupWithError_block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(copyAllCounterSourceDispatchQueue, block);
  return [allSourceManagers copy];
}

dispatch_queue_t __GRCCopyAllCounterSourceGroupWithError_block_invoke()
{
  result = dispatch_queue_create("com.GPURawCounter.CopyAllCounterSourceDispatchQueue", 0);
  copyAllCounterSourceDispatchQueue = result;
  return result;
}

void __GRCCopyAllCounterSourceGroupWithError_block_invoke_2(uint64_t a1)
{
  v41[1] = *MEMORY[0x277D85DE8];
  if (!allSourceManagers)
  {
    allSourceManagers = objc_alloc_init(MEMORY[0x277CBEB18]);
    v39 = 0;
    if (MEMORY[0x25302EE20](*MEMORY[0x277D85F18], &v39) || (existing = 0, v2 = v39, v3 = IOServiceMatching("IOAcceleratorES"), IOServiceGetMatchingServices(v2, v3, &existing)))
    {

      allSourceManagers = 0;
      goto LABEL_5;
    }

    v5 = IOIteratorNext(existing);
    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = v5;
    v7 = *MEMORY[0x277CCA450];
    v8 = 0x277CCA000uLL;
    do
    {
      v9 = *(a1 + 32);
      v10 = objc_autoreleasePoolPush();
      v11 = getenv("CTR_OVERRIDE_BUNDLE");
      if (v11)
      {
        CFProperty = CFStringCreateWithCString(0, v11, 0x8000100u);
      }

      else
      {
        CFProperty = IORegistryEntryCreateCFProperty(v6, @"GPURawCounterBundleName", 0, 0);
      }

      v13 = CFProperty;
      if (CFProperty && (v14 = CFGetTypeID(CFProperty), v14 == CFStringGetTypeID()))
      {
        v15 = v7;
        v16 = [objc_msgSend(@"/System/Library/Extensions" stringByAppendingPathComponent:{v13), "stringByAppendingString:", @".bundle"}];
        v17 = [MEMORY[0x277CCA8D8] bundleWithPath:v16];
        if (v17)
        {
          v18 = v17;
          v19 = getenv("CTR_OVERRIDE_CLASS");
          if (v19)
          {
            v20 = CFStringCreateWithCString(0, v19, 0x8000100u);
          }

          else
          {
            v20 = IORegistryEntryCreateCFProperty(v6, @"GPURawCounterPluginClassName", 0, 0);
          }

          v26 = v20;
          if (v20 && (v27 = CFGetTypeID(v20), v27 == CFStringGetTypeID()) && (v28 = [v18 classNamed:v26]) != 0 && (v29 = v28, -[objc_class isSubclassOfClass:](v28, "isSubclassOfClass:", objc_opt_class())))
          {
            v30 = [v29 alloc];
            if (objc_opt_respondsToSelector())
            {
              v31 = [v30 initWithAcceleratorPort:v6 error:v9];
              v7 = v15;
              if (!v31)
              {
                v22 = 0;
                goto LABEL_50;
              }

LABEL_49:
              [allSourceManagers addObject:v31];
              v22 = 1;
LABEL_50:
              v8 = 0x277CCA000;
            }

            else
            {
              v35 = [v30 initWithAcceleratorPort:v6];
              v7 = v15;
              if (v35)
              {
                v31 = v35;
                goto LABEL_49;
              }

              v8 = 0x277CCA000uLL;
              if (v9)
              {
                v36 = MEMORY[0x277CCA9B8];
                v40 = v7;
                v41[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to instantiate %@", v26, 0];
                v37 = [v36 errorWithDomain:@"GPURawCounterErrorDomain" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v41, &v40, 1)}];
                v22 = 0;
                v31 = 0;
                *v9 = v37;
              }

              else
              {
                v22 = 0;
                v31 = 0;
              }
            }

LABEL_35:
            CFRelease(v26);
          }

          else
          {
            v7 = v15;
            v8 = 0x277CCA000uLL;
            if (v9)
            {
              v32 = MEMORY[0x277CCA9B8];
              v40 = v7;
              v41[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to find %@ in bundle at %@!\n", v26, v16, 0];
              *v9 = [v32 errorWithDomain:@"GPURawCounterErrorDomain" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v41, &v40, 1)}];
            }

            v22 = 0;
            v31 = 0;
            if (v26)
            {
              goto LABEL_35;
            }
          }

          goto LABEL_37;
        }

        if (v9)
        {
          v25 = MEMORY[0x277CCA9B8];
          v40 = v7;
          v8 = 0x277CCA000uLL;
          v41[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to load bundle at %@!\n", v16, 0];
          v22 = 0;
          *v9 = [v25 errorWithDomain:@"GPURawCounterErrorDomain" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v41, &v40, 1)}];
        }

        else
        {
          v22 = 0;
          v8 = 0x277CCA000;
        }
      }

      else
      {
        if (v9)
        {
          v21 = MEMORY[0x277CCA9B8];
          v40 = v7;
          v41[0] = [*(v8 + 3240) stringWithFormat:@"Invalid counter bundle name!\n", 0];
          *v9 = [v21 errorWithDomain:@"GPURawCounterErrorDomain" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v41, &v40, 1)}];
        }

        v22 = 0;
        if (!v13)
        {
          if (v9)
          {
            goto LABEL_20;
          }

          goto LABEL_38;
        }
      }

LABEL_37:
      CFRelease(v13);
      if (v9)
      {
LABEL_20:
        v23 = *v9;
        objc_autoreleasePoolPop(v10);
        v24 = *v9;
        if ((v22 & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_44;
      }

LABEL_38:
      objc_autoreleasePoolPop(v10);
      if ((v22 & 1) == 0)
      {
LABEL_39:
        v33 = *(a1 + 32);
        if (v33 && *v33)
        {
          v34 = [objc_msgSend(*v33 "description")];
        }

        else
        {
          v34 = "no vendor error info";
        }

        NSLog(&cfstr_ErrorRegistrin.isa, v6, v34);
      }

LABEL_44:
      v6 = IOIteratorNext(existing);
    }

    while (v6);
  }

LABEL_5:
  v4 = *MEMORY[0x277D85DE8];
}

void GRCReleaseAllCounterSourceGroup()
{
  if (copyAllCounterSourceDispatchQueue)
  {
    dispatch_sync(copyAllCounterSourceDispatchQueue, &__block_literal_global_9);
  }
}