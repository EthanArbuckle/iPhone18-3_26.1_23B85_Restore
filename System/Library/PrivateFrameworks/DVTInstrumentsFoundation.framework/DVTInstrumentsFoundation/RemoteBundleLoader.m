@interface RemoteBundleLoader
- (RemoteBundleLoader)initWithTask:(unsigned int)a3;
- (void)_lookupFunctionAddresses:(_CSTypeRef)a3;
- (void)dealloc;
- (void)scheduleLibraryLoad:(id)a3 calling:(id)a4 arguments:(id)a5 callback:(id)a6;
@end

@implementation RemoteBundleLoader

- (void)_lookupFunctionAddresses:(_CSTypeRef)a3
{
  opaque_2 = a3._opaque_2;
  opaque_1 = a3._opaque_1;
  dispatch_assert_queue_V2(self->_symbolLookupQueue);
  if (!self->_attemptedSymbolLookup)
  {
    self->_attemptedSymbolLookup = 1;
    dispatch_activate(self->_injectionQueue);
    if ((CSIsNull() & 1) != 0 || !CSSymbolicatorGetSymbolOwnerCountAtTime())
    {
      self->_exited = 1;
    }

    else
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_247FDA68C;
      aBlock[3] = &unk_278EF3890;
      aBlock[5] = opaque_1;
      aBlock[6] = opaque_2;
      aBlock[4] = self;
      v6 = _Block_copy(aBlock);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_247FDAA04;
      v12[3] = &unk_278EF38B0;
      v12[4] = opaque_1;
      v12[5] = opaque_2;
      v7 = _Block_copy(v12);
      remoteFunctionAddresses = self->_remoteFunctionAddresses;
      remoteFunctionAddresses->var2 = v6[2](v6, "mach_task_self_", "libsystem_kernel.dylib");
      remoteFunctionAddresses->var3 = v6[2](v6, "mach_thread_self", "libsystem_kernel.dylib");
      remoteFunctionAddresses->var4 = v6[2](v6, "mach_port_allocate", "libsystem_kernel.dylib");
      remoteFunctionAddresses->var5 = v6[2](v6, "mach_port_mod_refs", "libsystem_kernel.dylib");
      remoteFunctionAddresses->var6 = v6[2](v6, "mach_msg", "libsystem_kernel.dylib");
      remoteFunctionAddresses->var7 = v6[2](v6, "thread_terminate", "libsystem_kernel.dylib");
      remoteFunctionAddresses->var16 = v6[2](v6, "__syscall_logger", "libsystem_kernel.dylib");
      remoteFunctionAddresses->var14 = v6[2](v6, "_platform_strlcpy", "libsystem_platform.dylib");
      remoteFunctionAddresses->var8 = v6[2](v6, "pthread_create_from_mach_thread", "libsystem_pthread.dylib");
      remoteFunctionAddresses->var9 = v6[2](v6, "pthread_detach", "libsystem_pthread.dylib");
      v9 = v7[2](v7, "pthread_self", "libsystem_pthread.dylib");
      remoteFunctionAddresses->var10 = v9;
      if (!v9)
      {
        remoteFunctionAddresses->var10 = v6[2](v6, "_pthread_self", "libsystem_pthread.dylib");
      }

      v10 = "libdyld.dylib";
      CSSymbolicatorGetSymbolOwnerWithNameAtTime();
      if (CSIsNull())
      {
        v10 = "dyld_sim";
      }

      CSSymbolicatorGetSymbolOwnerWithNameAtTime();
      if (CSIsNull())
      {
        v11 = "dyld";
      }

      else
      {
        v11 = v10;
      }

      remoteFunctionAddresses->var11 = v6[2](v6, "dlopen", v11);
      remoteFunctionAddresses->var12 = v6[2](v6, "dlsym", v11);
      remoteFunctionAddresses->var13 = v6[2](v6, "dlerror", v11);
      remoteFunctionAddresses->var15 = v6[2](v6, "sandbox_extension_consume", "libsystem_sandbox.dylib");
    }
  }
}

- (RemoteBundleLoader)initWithTask:(unsigned int)a3
{
  v48.receiver = self;
  v48.super_class = RemoteBundleLoader;
  v5 = [(RemoteBundleLoader *)&v48 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_16;
  }

  if (a3 - 1 < 0xFFFFFFFE)
  {
    v5->_targetTask = a3;
    if (!pid_for_task(a3, &v5->_targetPid))
    {
      v8 = MEMORY[0x277CCA8D8];
      v9 = objc_opt_self();
      v10 = [v8 bundleForClass:v9];
      v11 = [v10 pathForResource:@"RemoteInjectionAgent" ofType:0];
      helperLaunchPath = v6->_helperLaunchPath;
      v6->_helperLaunchPath = v11;

      v6->_remoteFunctionAddresses = malloc_type_calloc(1uLL, 0x88uLL, 0x1000040B5CA6940uLL);
      LODWORD(v10) = v6->_targetPid;
      if (v10 == getpid())
      {
        sub_24802FBA0(a2, v6);
      }

      if (!v6->_helperLaunchPath)
      {
        sub_24802FC04(a2, v6);
      }

      v13 = dispatch_queue_create("RemoteBundleLoader symbol lookup queue", 0);
      symbolLookupQueue = v6->_symbolLookupQueue;
      v6->_symbolLookupQueue = v13;

      v15 = dispatch_queue_attr_make_initially_inactive(0);
      v16 = dispatch_queue_attr_make_with_autorelease_frequency(v15, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

      v17 = dispatch_queue_create_with_target_V2("RemoteBundleLoader injection queue", v16, v6->_symbolLookupQueue);
      injectionQueue = v6->_injectionQueue;
      v6->_injectionQueue = v17;

      objc_initWeak(&location, v6);
      v19 = v6->_symbolLookupQueue;
      v40 = MEMORY[0x277D85DD0];
      v41 = 3221225472;
      v42 = sub_247FDAE08;
      v43 = &unk_278EF3900;
      v20 = v19;
      v44 = v20;
      v46 = a3;
      objc_copyWeak(&v45, &location);
      v21 = CSSymbolicatorCreateWithTaskFlagsAndNotification();
      v23 = v22;
      if (CSIsNull())
      {
        v24 = v6->_symbolLookupQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_247FDAFBC;
        block[3] = &unk_278EF1070;
        v39 = v6;
        dispatch_sync(v24, block);
        releaseOpaqueSymbolicator = v39;
      }

      else
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = sub_247FDAFCC;
        aBlock[3] = &unk_278EF3920;
        aBlock[4] = v21;
        aBlock[5] = v23;
        v26 = _Block_copy(aBlock);
        releaseOpaqueSymbolicator = v6->_releaseOpaqueSymbolicator;
        v6->_releaseOpaqueSymbolicator = v26;
      }

      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v27 = v6->_symbolLookupQueue;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_247FDAFD8;
      v30[3] = &unk_278EF2738;
      v32 = &v33;
      v6 = v6;
      v31 = v6;
      dispatch_sync(v27, v30);
      v28 = *(v34 + 24);
      if (v28 == 1)
      {

        v6 = 0;
      }

      _Block_object_dispose(&v33, 8);
      objc_destroyWeak(&v45);

      objc_destroyWeak(&location);
      if (v28)
      {
        goto LABEL_5;
      }

LABEL_16:
      v6 = v6;
      v7 = v6;
      goto LABEL_17;
    }
  }

  v6 = 0;
LABEL_5:
  v7 = 0;
LABEL_17:

  return v7;
}

- (void)dealloc
{
  releaseOpaqueSymbolicator = self->_releaseOpaqueSymbolicator;
  if (releaseOpaqueSymbolicator)
  {
    releaseOpaqueSymbolicator[2](releaseOpaqueSymbolicator, a2);
    v4 = self->_releaseOpaqueSymbolicator;
    self->_releaseOpaqueSymbolicator = 0;
  }

  remoteFunctionAddresses = self->_remoteFunctionAddresses;
  if (remoteFunctionAddresses)
  {
    free(remoteFunctionAddresses);
    self->_remoteFunctionAddresses = 0;
  }

  if (!self->_attemptedSymbolLookup)
  {
    injectionQueue = self->_injectionQueue;
    if (injectionQueue)
    {
      dispatch_activate(injectionQueue);
    }
  }

  v7.receiver = self;
  v7.super_class = RemoteBundleLoader;
  [(RemoteBundleLoader *)&v7 dealloc];
}

- (void)scheduleLibraryLoad:(id)a3 calling:(id)a4 arguments:(id)a5 callback:(id)a6
{
  v119[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v10)
  {
    v15 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = [v15 fileExistsAtPath:v10];

    if (v16)
    {
      if (v11)
      {
        *task_info_out = 0u;
        v92 = 0u;
        task_info_outCnt = 8;
        v17 = task_info(self->_targetTask, 0xFu, task_info_out, &task_info_outCnt);
        if (v17)
        {
          if (v14)
          {
            v18 = MEMORY[0x277CCA9B8];
            v105 = *MEMORY[0x277CCA450];
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to audit target sandbox: %d (target %d likely exited)", v17, self->_targetPid];
            v106 = v19;
            v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
            v21 = [v18 errorWithDomain:@"RemoteBundleLoaderError" code:1 userInfo:v20];
            (v14)[2](v14, v21);
          }

          v22 = MEMORY[0x277CBEBF8];
          goto LABEL_38;
        }

        v80 = v14;
        v107 = *task_info_out;
        v108 = v92;
        v42 = v10;
        v43 = [MEMORY[0x277CBEB58] setWithObject:v42];
        v44 = [v42 stringByResolvingSymlinksInPath];
        v45 = [v44 stringByDeletingLastPathComponent];

        v46 = [v42 UTF8String];
        callback[0] = MEMORY[0x277D85DD0];
        callback[1] = 3221225472;
        callback[2] = sub_247FDC05C;
        callback[3] = &unk_278EF39E8;
        v47 = v42;
        v98 = v47;
        v79 = v45;
        v99 = v79;
        v48 = v43;
        v100 = v48;
        v49 = macho_for_each_slice(v46, callback);
        v78 = v48;
        if (!v49)
        {
          goto LABEL_25;
        }

        v50 = MEMORY[0x277CCA9B8];
        v118 = *MEMORY[0x277CCA450];
        v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to iterate through the mach-o file at path: '%@': due to an error: %s", v47, strerror(v49)];
        v119[0] = v51;
        v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:&v118 count:1];
        v53 = [v50 errorWithDomain:@"RemoteBundleLoaderError" code:0 userInfo:v52];

        if (v53)
        {
          v54 = v53;
          v22 = 0;
          v55 = v53;
        }

        else
        {
LABEL_25:
          v75 = v47;
          v76 = v12;
          v77 = v11;
          v53 = objc_opt_new();
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          obj = v48;
          v56 = [obj countByEnumeratingWithState:&v93 objects:v117 count:16];
          if (v56)
          {
            v57 = v56;
            v58 = *v94;
            v59 = *MEMORY[0x277D861B8];
            v60 = *MEMORY[0x277D861E8];
            while (2)
            {
              for (i = 0; i != v57; ++i)
              {
                if (*v94 != v58)
                {
                  objc_enumerationMutation(obj);
                }

                v62 = *(*(&v93 + 1) + 8 * i);
                [v62 UTF8String];
                v116[0] = v107;
                v116[1] = v108;
                v63 = sandbox_extension_issue_file_to_process();
                if (!v63)
                {
                  v69 = MEMORY[0x277CCA9B8];
                  v115 = *MEMORY[0x277CCA450];
                  v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to issue sandbox extension for path: %@", v62];
                  *&v116[0] = v70;
                  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:&v115 count:1];
                  v55 = [v69 errorWithDomain:@"RemoteBundleLoaderError" code:2 userInfo:v71];
                  v72 = v55;

                  v22 = 0;
                  goto LABEL_41;
                }

                v64 = v63;
                v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:v63];
                [v53 addObject:v65];

                free(v64);
              }

              v57 = [obj countByEnumeratingWithState:&v93 objects:v117 count:16];
              if (v57)
              {
                continue;
              }

              break;
            }
          }

          v53 = v53;
          v55 = 0;
          v22 = v53;
LABEL_41:
          v12 = v76;
          v11 = v77;
          v47 = v75;
        }

        v73 = v55;
        if (v73)
        {
          v74 = v73;
          v14 = v80;
          (v80)[2](v80, v73);

          goto LABEL_38;
        }

        v14 = v80;
LABEL_12:
        helperLaunchPath = self->_helperLaunchPath;
        targetTask = self->_targetTask;
        targetPid = self->_targetPid;
        v89 = 0;
        v30 = DVTLaunchHelperProcess(helperLaunchPath, targetPid, 0, targetTask, &v89);
        v31 = v89;
        v32 = v31;
        if (v30)
        {
          [v30 resume];
          injectionQueue = self->_injectionQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_247FDB940;
          block[3] = &unk_278EF3970;
          block[4] = self;
          v88 = v14;
          v83 = v10;
          v84 = v22;
          v85 = v11;
          v86 = v12;
          v87 = v30;
          dispatch_async(injectionQueue, block);

LABEL_37:
          goto LABEL_38;
        }

        if (v31)
        {
          if (!v14)
          {
            goto LABEL_37;
          }

          v36 = MEMORY[0x277CCA9B8];
          v103[0] = *MEMORY[0x277CCA450];
          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to launch RemoteInjectionAgent"];
          v103[1] = *MEMORY[0x277CCA7E8];
          v104[0] = v37;
          v104[1] = v32;
          v38 = MEMORY[0x277CBEAC0];
          v39 = v104;
          v40 = v103;
          v41 = 2;
        }

        else
        {
          if (!v14)
          {
            goto LABEL_37;
          }

          v36 = MEMORY[0x277CCA9B8];
          v101 = *MEMORY[0x277CCA450];
          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to launch RemoteInjectionAgent"];
          v102 = v37;
          v38 = MEMORY[0x277CBEAC0];
          v39 = &v102;
          v40 = &v101;
          v41 = 1;
        }

        v66 = [v38 dictionaryWithObjects:v39 forKeys:v40 count:v41];
        v67 = [v36 errorWithDomain:@"RemoteBundleLoaderError" code:2 userInfo:v66];
        (v14)[2](v14, v67);

        goto LABEL_37;
      }

      if (v14)
      {
        v23 = MEMORY[0x277CCA9B8];
        v109 = *MEMORY[0x277CCA450];
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"No function specified"];
        v110 = v22;
        v24 = MEMORY[0x277CBEAC0];
        v25 = &v110;
        v26 = &v109;
        goto LABEL_18;
      }
    }

    else
    {
      [v10 UTF8String];
      if (_dyld_shared_cache_real_path())
      {
        v22 = MEMORY[0x277CBEBF8];
        goto LABEL_12;
      }

      if (v14)
      {
        v23 = MEMORY[0x277CCA9B8];
        v111 = *MEMORY[0x277CCA450];
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"No dylib found at path: %@", v10];
        v112 = v22;
        v24 = MEMORY[0x277CBEAC0];
        v25 = &v112;
        v26 = &v111;
        goto LABEL_18;
      }
    }
  }

  else if (v13)
  {
    v23 = MEMORY[0x277CCA9B8];
    v113 = *MEMORY[0x277CCA450];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"No dylib path specified"];
    v114 = v22;
    v24 = MEMORY[0x277CBEAC0];
    v25 = &v114;
    v26 = &v113;
LABEL_18:
    v34 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:1];
    v35 = [v23 errorWithDomain:@"RemoteBundleLoaderError" code:0 userInfo:v34];
    (v14)[2](v14, v35);

LABEL_38:
  }

  v68 = *MEMORY[0x277D85DE8];
}

@end