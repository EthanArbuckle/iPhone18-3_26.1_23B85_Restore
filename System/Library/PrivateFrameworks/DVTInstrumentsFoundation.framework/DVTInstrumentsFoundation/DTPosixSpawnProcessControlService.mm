@interface DTPosixSpawnProcessControlService
+ (int)posixSpawnWithPath:(id)path environment:(id)environment arguments:(id)arguments options:(id)options fileDescriptorHandler:(id)handler;
+ (void)registerCapabilities:(id)capabilities;
- (id)launchSuspendedProcessWithDevicePath:(id)path bundleIdentifier:(id)identifier environment:(id)environment arguments:(id)arguments options:(id)options;
- (int)cleanupPid:(int)pid;
@end

@implementation DTPosixSpawnProcessControlService

+ (void)registerCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  if (+[DTInstrumentServer isAppleInternal])
  {
    [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.processcontrol.posixspawn" withVersion:2 forClass:self];
    [capabilitiesCopy publishCapability:@"com.apple.dt.services.capabilities.posix_spawn" withVersion:2 forClass:self];
    [capabilitiesCopy publishCapability:DTDefaultProcessControlServiceIdentifier withVersion:2 forClass:self];
  }
}

+ (int)posixSpawnWithPath:(id)path environment:(id)environment arguments:(id)arguments options:(id)options fileDescriptorHandler:(id)handler
{
  *&v127[4] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  environmentCopy = environment;
  argumentsCopy = arguments;
  optionsCopy = options;
  handlerCopy = handler;
  if ([(__CFString *)pathCopy length])
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    environment = [processInfo environment];
    v16 = [environment mutableCopy];

    [v16 addEntriesFromDictionary:environmentCopy];
    v102 = v16;

    v115 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v18 = [defaultManager fileExistsAtPath:pathCopy isDirectory:&v115];
    v19 = v115;

    if ((v18 & v19) == 0)
    {
      v105 = pathCopy;
      goto LABEL_25;
    }

    v20 = CFURLCreateWithFileSystemPath(0, pathCopy, kCFURLPOSIXPathStyle, 1u);
    v21 = CFBundleCreate(*MEMORY[0x277CBECE8], v20);
    v22 = v21;
    if (v21)
    {
      v23 = CFBundleCopyExecutableURL(v21);
      v24 = v23;
      if (v23)
      {
        v25 = CFURLCopyAbsoluteURL(v23);
        v26 = v25;
        if (v25)
        {
          v105 = CFURLCopyFileSystemPath(v25, kCFURLPOSIXPathStyle);
          v27 = 0;
          v28 = 0;
          if (!v20)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        v105 = 0;
        v27 = 0;
LABEL_15:
        v28 = 1;
        if (!v20)
        {
LABEL_17:
          if (v22)
          {
            CFRelease(v22);
          }

          if ((v27 & 1) == 0)
          {
            CFRelease(v24);
          }

          if ((v28 & 1) == 0)
          {
            CFRelease(v26);
          }

          if (![(__CFString *)v105 length])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v40 = pathCopy;
              uTF8String = [(__CFString *)pathCopy UTF8String];
              LODWORD(buf) = 136315138;
              *(&buf + 4) = uTF8String;
              _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to find actual binary to posix_spawn for path: %s", &buf, 0xCu);
            }

            [MEMORY[0x277CBEAD8] raise:@"DTPosixSpawnFailureException" format:{@"Unable to find actual binary to posix_spawn for path: %@\n", pathCopy}];

            v29 = 0;
            goto LABEL_117;
          }

LABEL_25:
          v114 = 0;
          posix_spawnattr_init(&v114);
          v113 = 0;
          posix_spawnattr_getflags(&v114, &v113);
          posix_spawnattr_setpgroup(&v114, 0);
          v113 |= 0x4002u;
          v30 = [optionsCopy objectForKeyedSubscript:@"StartSuspendedKey"];
          v31 = v30;
          if (v30 && ![v30 BOOLValue])
          {
            v32 = v113 & 0xFF7F;
          }

          else
          {
            v32 = v113 | 0x80;
          }

          v113 = v32;
          v33 = posix_spawnattr_setflags(&v114, v32);
          if (v33)
          {
            posix_spawnattr_destroy(&v114);
            v34 = objc_msgSend(@" ("), "stringByAppendingFormat:", CFSTR("Unable to set flags via posix_spawnattr_setflags(): flags=0x%016x, error=%d"), v113, v33;
            v35 = [v34 stringByAppendingString:@""]);

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 67109120;
              DWORD1(buf) = v33;
              _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to set up posix_spawnattr_t: %d", &buf, 8u);
            }

            [MEMORY[0x277CBEAD8] raise:@"DTPosixSpawnFailureException" format:{@"posix_spawn failure while launching: %@%@", v105, v35}];

            v29 = 0;
            goto LABEL_116;
          }

          v36 = [optionsCopy objectForKeyedSubscript:@"architectureType"];
          v101 = v36;
          if (v36)
          {
            bOOLValue = [v36 BOOLValue];
            v38 = v127;
            if (bOOLValue)
            {
              v39 = 16777228;
            }

            else
            {
              v39 = 12;
            }

            v126 = v39;
            v42 = 2;
          }

          else
          {
            v38 = &v126;
            v42 = 1;
          }

          *v38 = -1;
          v43 = posix_spawnattr_setbinpref_np(&v114, v42, &v126, 0);
          if (v43)
          {
            posix_spawnattr_destroy(&v114);
            v44 = objc_msgSend(@" ("), "stringByAppendingFormat:", CFSTR("Unable to choose architecture %d: %d"), v126, v43;
            v45 = [v44 stringByAppendingString:@""]);

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 67109120;
              DWORD1(buf) = v43;
              _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to set up posix_spawnattr_t: %d", &buf, 8u);
            }

            [MEMORY[0x277CBEAD8] raise:@"DTPosixSpawnFailureException" format:{@"posix_spawn failure while launching: %@%@", v105, v45}];

            v29 = 0;
            goto LABEL_115;
          }

          v112 = 0;
          posix_spawn_file_actions_init(&v112);
          *v124 = -1;
          *v125 = -1;
          v46 = !DTProcessShouldCaptureOutputWithOptions(optionsCopy);
          if (!handlerCopy)
          {
            LOBYTE(v46) = 1;
          }

          if (!v46)
          {
            if (pipe(v125) == -1 || pipe(v124) == -1)
            {
              v50 = *__error();
              posix_spawn_file_actions_destroy(&v112);
              posix_spawnattr_destroy(&v114);
              v51 = objc_msgSend(@" ("), "stringByAppendingFormat:", CFSTR("Unable to allocate process I/O pipes %d"), v50;
              v100 = [v51 stringByAppendingString:@""]);

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *&buf = 67109120;
                _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to set up posix_spawnattr_t: %d", &buf, 8u);
              }

              [MEMORY[0x277CBEAD8] raise:@"DTPosixSpawnFailureException" format:{@"posix_spawn failure while launching: %@%@", v105, v100}];
              v29 = 0;
              goto LABEL_114;
            }

            posix_spawn_file_actions_addclose(&v112, v125[0]);
            posix_spawn_file_actions_adddup2(&v112, v125[1], 1);
            posix_spawn_file_actions_adddup2(&v112, v125[1], 2);
            posix_spawn_file_actions_addclose(&v112, v125[1]);
            posix_spawn_file_actions_addclose(&v112, v124[1]);
            posix_spawn_file_actions_adddup2(&v112, v124[0], 0);
            posix_spawn_file_actions_addclose(&v112, v124[0]);
          }

          v100 = [optionsCopy objectForKeyedSubscript:@"XRDeviceFileChooserWorkingDirectory"];
          if (v100 && [v100 length])
          {
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            if ([defaultManager2 fileExistsAtPath:v100 isDirectory:&v115])
            {
              v48 = v115;

              if (v48)
              {
                v49 = v100;
                MEMORY[0x24C1C4210](&v112, [v100 fileSystemRepresentation]);
              }
            }

            else
            {
            }
          }

          [argumentsCopy count];
          v97[1] = v97;
          MEMORY[0x28223BE20]();
          v54 = (v97 - ((v53 + 47) & 0xFFFFFFFFFFFFFFF0));
          if (v52 >= 0x200)
          {
            v55 = 512;
          }

          else
          {
            v55 = v52;
          }

          bzero(v97 - ((v53 + 47) & 0xFFFFFFFFFFFFFFF0), v55);
          *&buf = 0;
          *(&buf + 1) = &buf;
          v122 = 0x2020000000;
          v123 = 0;
          v56 = v105;
          v57 = strdup([(__CFString *)v105 UTF8String]);
          v58 = *(*(&buf + 1) + 24);
          *(*(&buf + 1) + 24) = v58 + 1;
          v54[v58] = v57;
          v99 = [optionsCopy objectForKeyedSubscript:@"DisableTALAutomaticTermination"];
          if (v99 && (objc_opt_respondsToSelector() & 1) != 0 && [v99 longValue])
          {
            v59 = strdup("-NSDisableAutomaticTermination");
            v60 = *(&buf + 1);
            v61 = *(*(&buf + 1) + 24);
            *(*(&buf + 1) + 24) = v61 + 1;
            v54[v61] = v59;
            v62 = strdup("YES");
            *(v60 + 24) = v61 + 2;
            v54[v61 + 1] = v62;
          }

          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v63 = argumentsCopy;
          v64 = [v63 countByEnumeratingWithState:&v108 objects:v120 count:16];
          if (v64)
          {
            v65 = *v109;
            do
            {
              for (i = 0; i != v64; ++i)
              {
                if (*v109 != v65)
                {
                  objc_enumerationMutation(v63);
                }

                v67 = [*(*(&v108 + 1) + 8 * i) description];
                v68 = v67;
                v69 = strdup([v67 UTF8String]);
                v70 = *(*(&buf + 1) + 24);
                *(*(&buf + 1) + 24) = v70 + 1;
                v54[v70] = v69;
              }

              v64 = [v63 countByEnumeratingWithState:&v108 objects:v120 count:16];
            }

            while (v64);
          }

          v71 = *(*(&buf + 1) + 24);
          *(*(&buf + 1) + 24) = v71 + 1;
          v54[v71] = 0;
          [v102 count];
          MEMORY[0x28223BE20]();
          v74 = (v97 - ((v73 + 23) & 0xFFFFFFFFFFFFFFF0));
          if (v72 >= 0x200)
          {
            v75 = 512;
          }

          else
          {
            v75 = v72;
          }

          bzero(v97 - ((v73 + 23) & 0xFFFFFFFFFFFFFFF0), v75);
          *(*(&buf + 1) + 24) = 0;
          v107[0] = MEMORY[0x277D85DD0];
          v107[1] = 3221225472;
          v107[2] = sub_247FC07E0;
          v107[3] = &unk_278EF3218;
          v107[4] = &buf;
          v107[5] = v74;
          [v102 enumerateKeysAndObjectsUsingBlock:v107];
          v76 = *(*(&buf + 1) + 24);
          *(*(&buf + 1) + 24) = v76 + 1;
          v74[v76] = 0;
          standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
          v78 = [standardUserDefaults BOOLForKey:@"DTPosixSpawnProcessControlServiceLog"];

          if (v78)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v80 = *(*(&buf + 1) + 24) - 1;
              v116 = 67109120;
              v117 = v80;
              _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "passing %d environment variables:", &v116, 8u);
            }

            v81 = *(&buf + 1);
            if (*(*(&buf + 1) + 24) >= 2)
            {
              v82 = 0;
              v83 = MEMORY[0x277D86220];
              *&v79 = 67109378;
              v98 = v79;
              do
              {
                if (v74[v82])
                {
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
                  {
                    v84 = v74[v82];
                    v116 = v98;
                    v117 = v82;
                    v118 = 2080;
                    v119 = v84;
                    _os_log_impl(&dword_247F67000, v83, OS_LOG_TYPE_INFO, "- %d: %s", &v116, 0x12u);
                  }

                  v81 = *(&buf + 1);
                }

                ++v82;
              }

              while (v82 < *(v81 + 24) - 1);
            }
          }

          v106 = 0;
          v85 = v105;
          v86 = posix_spawn(&v106, [(__CFString *)v105 UTF8String], &v112, &v114, v54, v74);
          if (v106 && DTProcessShouldCaptureOutputWithOptions(optionsCopy))
          {
            (*(handlerCopy + 2))(handlerCopy, v106, v124[1], v125[0]);
          }

          v87 = *v54;
          if (*v54)
          {
            v88 = (v54 + 1);
            do
            {
              free(v87);
              v89 = *v88++;
              v87 = v89;
            }

            while (v89);
          }

          v90 = *v74;
          if (*v74)
          {
            v91 = (v74 + 1);
            do
            {
              free(v90);
              v92 = *v91++;
              v90 = v92;
            }

            while (v92);
          }

          if (v124[0] != -1)
          {
            close(v124[0]);
          }

          if (v124[1] != -1)
          {
            close(v124[1]);
          }

          if (v125[0] != -1)
          {
            close(v125[0]);
          }

          if (v125[1] != -1)
          {
            close(v125[1]);
          }

          posix_spawn_file_actions_destroy(&v112);
          posix_spawnattr_destroy(&v114);
          if (v86)
          {
            v93 = objc_msgSend(@" ("), "stringByAppendingFormat:", CFSTR("%s"), strerror(v86);
            v94 = [v93 stringByAppendingString:@""]);

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v116 = 67109120;
              v117 = v86;
              _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to set up posix_spawnattr_t: %d", &v116, 8u);
            }

            [MEMORY[0x277CBEAD8] raise:@"DTPosixSpawnFailureException" format:{@"posix_spawn failure while launching: %@%@", v105, v94}];
          }

          if (v86)
          {
            v29 = 0;
          }

          else
          {
            v29 = v106;
          }

          _Block_object_dispose(&buf, 8);
LABEL_114:

LABEL_115:
LABEL_116:

          pathCopy = v105;
LABEL_117:

          environmentCopy = v102;
          goto LABEL_118;
        }

LABEL_16:
        CFRelease(v20);
        goto LABEL_17;
      }

      v105 = 0;
    }

    else
    {
      v105 = 0;
      v24 = 0;
    }

    v26 = 0;
    v27 = 1;
    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to call posix_spawn with empty path", &buf, 2u);
  }

  [MEMORY[0x277CBEAD8] raise:@"DTPosixSpawnFailureException" format:@"Unable to call posix_spawn with empty path"];
  v29 = 0;
LABEL_118:

  v95 = *MEMORY[0x277D85DE8];
  return v29;
}

- (id)launchSuspendedProcessWithDevicePath:(id)path bundleIdentifier:(id)identifier environment:(id)environment arguments:(id)arguments options:(id)options
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_247FC096C;
  v10[3] = &unk_278EF3240;
  v10[4] = self;
  v7 = [DTPosixSpawnProcessControlService posixSpawnWithPath:path environment:environment arguments:arguments options:options fileDescriptorHandler:v10];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:v7];

  return v8;
}

- (int)cleanupPid:(int)pid
{
  v4 = 0;
  if (waitpid(pid, &v4, 1) == pid)
  {
    return v4;
  }

  else
  {
    return 0x80000000;
  }
}

@end