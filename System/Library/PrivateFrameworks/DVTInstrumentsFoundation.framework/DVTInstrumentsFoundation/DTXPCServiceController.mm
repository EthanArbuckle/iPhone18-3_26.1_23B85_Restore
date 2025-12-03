@interface DTXPCServiceController
+ (id)sharedInstance;
- (DTXPCServiceController)init;
- (int)_configureInstance:(id)instance identifier:(id)identifier servicePid:(int)pid environment:(id)environment arguments:(id)arguments options:(id)options;
- (void)_matchRemove:(id)remove;
- (void)_registryModify:(BOOL)modify identifier:(id)identifier parent:(int)parent client:(id)client block:(id)block;
- (void)registerClient:(id)client forXPCService:(id)service environment:(id)environment arguments:(id)arguments options:(id)options handler:(id)handler;
- (void)releaseAssertionsMadeByClient:(id)client;
- (void)requestDebugLaunchOfDaemonWithSpecifier:(id)specifier programPath:(id)path environment:(id)environment arguments:(id)arguments options:(id)options handler:(id)handler;
- (void)unregisterClient:(id)client withIdentifier:(id)identifier parent:(int)parent;
@end

@implementation DTXPCServiceController

+ (id)sharedInstance
{
  if (qword_27EE84408 != -1)
  {
    sub_24802F8C8();
  }

  v3 = qword_27EE84410;

  return v3;
}

- (DTXPCServiceController)init
{
  v10.receiver = self;
  v10.super_class = DTXPCServiceController;
  v2 = [(DTXPCServiceController *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    registrationDictsByPid = v2->_registrationDictsByPid;
    v2->_registrationDictsByPid = v3;

    v5 = dispatch_queue_create("XPCServiceController guard", 0);
    guard = v2->_guard;
    v2->_guard = v5;

    v7 = dispatch_queue_create("XPCServiceController exec monitor", 0);
    execMonitorQueue = v2->_execMonitorQueue;
    v2->_execMonitorQueue = v7;
  }

  return v2;
}

- (void)releaseAssertionsMadeByClient:(id)client
{
  v11 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (sub_247FD13F4() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2112;
    v10 = clientCopy;
    v4 = v8;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%@ releasing active assertions taken on behalf of client %@", &v7, 0x16u);
  }

  if (clientCopy)
  {
    v5 = +[DTAssertionManager sharedInstance];
    [v5 removeClaimsHeldByClient:clientCopy];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerClient:(id)client forXPCService:(id)service environment:(id)environment arguments:(id)arguments options:(id)options handler:(id)handler
{
  v219 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  serviceCopy = service;
  environmentCopy = environment;
  argumentsCopy = arguments;
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v125 = handlerCopy;
    v14 = serviceCopy;
    v120 = sub_247FD13F4();
    v15 = [optionsCopy objectForKeyedSubscript:@"KillExisting"];
    v118 = [v15 isEqualToNumber:MEMORY[0x277CBEC28]];

    v16 = [optionsCopy objectForKeyedSubscript:@"RequestingPid"];
    intValue = [v16 intValue];

    v17 = [optionsCopy objectForKeyedSubscript:@"OnceOnly"];
    bOOLValue = [v17 BOOLValue];

    v18 = [optionsCopy objectForKeyedSubscript:@"EnableExtension"];
    v121 = [v18 isEqualToNumber:MEMORY[0x277CBEC38]];

    v19 = [optionsCopy objectForKeyedSubscript:@"DisableMemoryLimits"];
    v117 = [v19 isEqualToNumber:MEMORY[0x277CBEC38]];

    v124 = [optionsCopy objectForKeyedSubscript:@"AppExtensionHoldBundleID"];
    v129 = [optionsCopy objectForKeyedSubscript:@"AppExtensionHoldURL"];
    if (!v121)
    {
      v122 = 0;
      goto LABEL_44;
    }

    if (!(v124 | v129))
    {
      v122 = 0;
      v129 = 0;
      goto LABEL_44;
    }

    defaultManager = [MEMORY[0x277D3D350] defaultManager];
    if (v124)
    {
      v185 = 0;
      v20 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v124 allowPlaceholder:0 error:&v185];
      v21 = v185;
      v22 = [v20 URL];

      v129 = v22;
      if (v21)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = 0;
    }

    if (v129)
    {
      v115 = v21;
      if (v120 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = v129;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Hold Start %@:%@", buf, 0x16u);
      }

      v184 = 0;
      v122 = [defaultManager holdPlugInsInApplication:v129 withError:&v184];
      v116 = v184;
      if (((v116 != 0) & v120) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v116;
          _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Hold Error: %@", buf, 0xCu);
        }
      }

      else
      {
        v114 = [MEMORY[0x277CCA8D8] bundleWithURL:v129];
        v182 = 0u;
        v183 = 0u;
        v180 = 0u;
        v181 = 0u;
        builtInPlugInsURL = [v114 builtInPlugInsURL];
        relativePath = [builtInPlugInsURL relativePath];
        v25 = [v114 URLsForResourcesWithExtension:@"appex" subdirectory:relativePath];

        v26 = [v25 countByEnumeratingWithState:&v180 objects:v217 count:16];
        if (v26)
        {
          v27 = *v181;
LABEL_24:
          v28 = 0;
          while (1)
          {
            if (*v181 != v27)
            {
              objc_enumerationMutation(v25);
            }

            v29 = *(*(&v180 + 1) + 8 * v28);
            v30 = [MEMORY[0x277CCA8D8] bundleWithURL:v29];
            bundleIdentifier = [v30 bundleIdentifier];
            v32 = [bundleIdentifier isEqualToString:v14];

            if (v32)
            {
              break;
            }

            if (v26 == ++v28)
            {
              v26 = [v25 countByEnumeratingWithState:&v180 objects:v217 count:16];
              if (v26)
              {
                goto LABEL_24;
              }

              goto LABEL_30;
            }
          }

          v33 = v29;

          if (!v33)
          {
            goto LABEL_40;
          }

          if (v120 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v33;
            *&buf[12] = 2112;
            *&buf[14] = v14;
            _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Terminate %@:%@", buf, 0x16u);
          }

          v179 = 0;
          [defaultManager terminatePlugInAtURL:v33 withError:&v179];
          v34 = v179;
          if (v34 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v116;
            _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DTXPCServiceController: ExtensionAssertion Terminate Error: %@", buf, 0xCu);
          }
        }

        else
        {
LABEL_30:
          v33 = v25;
        }

LABEL_40:
      }

      v21 = v115;
      goto LABEL_43;
    }

LABEL_17:
    v116 = 0;
    if (v21)
    {
      v122 = 0;
      if (v120)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = v14;
          *&buf[12] = 2112;
          *&buf[14] = v21;
          _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: Error retrieving LSApplicationRecord for %@, %@", buf, 0x16u);
        }

        v116 = 0;
        v122 = 0;
      }
    }

    else
    {
      v122 = 0;
    }

LABEL_43:

LABEL_44:
    v35 = [v14 containsString:@"LaunchDaemons"];
    v36 = [v14 containsString:@"LaunchAgents"];
    pathExtension = [v14 pathExtension];
    v38 = [pathExtension isEqualToString:@"plist"];

    if (!v38)
    {
      firstObject = 0;
      v44 = 0;
      v45 = v14;
      goto LABEL_53;
    }

    if ((DVTIUIsAppleInternalOSEnvironment() & 1) == 0)
    {
      v56 = MEMORY[0x277CCA9B8];
      v203 = *MEMORY[0x277CCA450];
      v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"Daemon profiling is not supported on customer installations."];
      *buf = v57;
      v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v203 count:1];
      v131 = [v56 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v58];

LABEL_106:
      if (v131)
      {
        v125[2](v125, v14, 0, 0xFFFFFFFFLL, 0xFFFFFFFFLL);
        goto LABEL_108;
      }

      intValue = 0xFFFFFFFFLL;
      v131 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v14];
      v44 = [v131 objectForKeyedSubscript:@"Label"];

      v107 = [v131 objectForKeyedSubscript:@"Program"];
      v108 = v107;
      if (v107)
      {
        firstObject = v107;
      }

      else
      {
        v109 = [v131 objectForKeyedSubscript:@"ProgramArguments"];
        firstObject = [v109 firstObject];
      }

      if (!v44)
      {
        v110 = MEMORY[0x277CCA9B8];
        v215 = *MEMORY[0x277CCA450];
        v111 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to load plist for launchd job with path: %@", 0];
        v216 = v111;
        v112 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v216 forKeys:&v215 count:1];
        v113 = [v110 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v112];
        (v125[2])(v125, 0, 0, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v113);

        v14 = firstObject;
        goto LABEL_108;
      }

      v45 = v44;
LABEL_53:
      if ([v45 hasPrefix:@"com.apple."] && (DVTIUIsAppleInternalOSEnvironment() & 1) == 0)
      {
        v78 = MEMORY[0x277CCA9B8];
        v213 = *MEMORY[0x277CCA450];
        v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"XPC service is restricted: %@", v45];
        v214 = v79;
        v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v214 forKeys:&v213 count:1];
        v81 = [v78 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v80];
        (v125[2])(v125, v45, 0, intValue, 0xFFFFFFFFLL, v81);

        v14 = v45;
LABEL_109:

        handlerCopy = v125;
        goto LABEL_110;
      }

      if (intValue == -1)
      {
        v46 = 3;
      }

      else
      {
        v46 = 1;
      }

      if (sub_247FD13F4() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109634;
        *&buf[4] = v46;
        *&buf[8] = 2112;
        *&buf[10] = v45;
        *&buf[18] = 1024;
        *&buf[20] = intValue & ~(intValue >> 31);
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: calling xpc_service_create: serviceType=%d, identifier=%@, pid %d", buf, 0x18u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v210 = sub_247FD2CA0;
      v211 = sub_247FD2CB0;
      v212 = 0;
      v203 = 0;
      v204 = &v203;
      v205 = 0x3032000000;
      v206 = sub_247FD2CA0;
      v207 = sub_247FD2CB0;
      v208 = 0;
      v199 = 0;
      v200 = &v199;
      v201 = 0x2020000000;
      v202 = 0;
      guard = self->_guard;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_247FD2CB8;
      block[3] = &unk_278EF3490;
      block[4] = self;
      v48 = v45;
      v166 = v48;
      v173 = intValue;
      v49 = clientCopy;
      v167 = v49;
      v170 = &v199;
      v175 = 1;
      v176 = v35;
      v177 = v36;
      v50 = v125;
      v169 = v50;
      v131 = v44;
      v168 = v131;
      v171 = buf;
      v174 = v46;
      v172 = &v203;
      v178 = bOOLValue;
      dispatch_sync(guard, block);
      if (*(v200 + 24) == 1)
      {
        v51 = MEMORY[0x277CCA9B8];
        v197 = *MEMORY[0x277CCA450];
        [MEMORY[0x277CCACA8] stringWithFormat:@"XPC service name %@ already under observation for pid: %d", v48, intValue];
        v53 = v52 = firstObject;
        v198 = v53;
        v1262 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v198 forKeys:&v197 count:1];
        v55 = [v51 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v1262];
        (v50[2])(v50, v48, 0, intValue, 0xFFFFFFFFLL, v55);

LABEL_102:
        _Block_object_dispose(&v199, 8);
        _Block_object_dispose(&v203, 8);

        _Block_object_dispose(buf, 8);
        v14 = v48;
LABEL_108:

        goto LABEL_109;
      }

      v52 = firstObject;
      if (!*(*&buf[8] + 40) && !v204[5])
      {
        v96 = MEMORY[0x277CCA9B8];
        v195 = *MEMORY[0x277CCA450];
        v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to create xpc registration object."];
        v196 = v53;
        v1262 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v196 forKeys:&v195 count:1];
        v97 = [v96 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v1262];
        (v50[2])(v50, v48, 0, intValue, 0xFFFFFFFFLL, v97);

        goto LABEL_102;
      }

      v53 = _Block_copy(v50);
      if (bOOLValue)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = sub_247FD3220;
        aBlock[3] = &unk_278EF34E0;
        v163 = v50;
        aBlock[4] = self;
        v161 = v49;
        v162 = v48;
        v164 = intValue;
        v59 = _Block_copy(aBlock);

        v53 = v59;
      }

      if (!*(*&buf[8] + 40))
      {
        v82 = v204[5];
        if (v82)
        {
          v83 = v14;
          uTF8String = [v14 UTF8String];
          v135[0] = MEMORY[0x277D85DD0];
          v135[1] = 3221225472;
          v135[2] = sub_247FD408C;
          v135[3] = &unk_278EF35F8;
          v53 = v53;
          v136 = v53;
          v137 = intValue;
          if (authorized_xpc_attach(v82, 0, uTF8String, environmentCopy, argumentsCopy, optionsCopy, v135))
          {
            v85 = MEMORY[0x277CCA9B8];
            v189 = *MEMORY[0x277CCA450];
            v86 = MEMORY[0x277CCACA8];
            v87 = v48;
            v126 = [v86 stringWithFormat:@"Unable to use privileged helper to register for xpc-based launch: %s (parent: %d)", objc_msgSend(v48, "UTF8String"), intValue];
            v190 = v126;
            v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v190 forKeys:&v189 count:1];
            v90 = [v85 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v89];
            (*(v53 + 2))(v53, v48, 0, intValue, 0xFFFFFFFFLL, v90);
          }

          v1262 = v136;
        }

        else
        {
          v98 = MEMORY[0x277CCA9B8];
          v187 = *MEMORY[0x277CCA450];
          v99 = MEMORY[0x277CCACA8];
          v100 = v48;
          v1262 = [v99 stringWithFormat:@"Unable to register for xpc-based launch: %s (parent: %d)", objc_msgSend(v48, "UTF8String"), intValue];
          v188 = v1262;
          v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
          v102 = [v98 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v101];
          (*(v53 + 2))(v53, v48, 0, intValue, 0xFFFFFFFFLL, v102);
        }

        goto LABEL_102;
      }

      if (!((intValue > 0) | v118 & 1))
      {
        v155[0] = MEMORY[0x277D85DD0];
        v155[1] = 3221225472;
        v156 = sub_247FD3304;
        v157 = &unk_278EF3508;
        v158 = firstObject;
        v159 = v48;
        v60 = v155;
        v186 = 0;
        *&v218[8] = 0;
        *v218 = 0xE00000001;
        sysctl(v218, 3u, 0, &v186, 0, 0);
        v186 += 50;
        v61 = malloc_type_calloc(1uLL, v186, 0x10B2040B74D5165uLL);
        if (!sysctl(v218, 3u, v61, &v186, 0, 0) && (v186 / 0x288) >= 1)
        {
          v62 = (v186 / 0x288) & 0x7FFFFFFF;
          v63 = v61 + 243;
          do
          {
            v64 = objc_autoreleasePoolPush();
            (v156)(v60, *(v63 - 203), v63, *(v63 + 153), *(v63 + 161));
            objc_autoreleasePoolPop(v64);
            v63 += 648;
            --v62;
          }

          while (v62);
        }

        free(v61);

        v65 = *(*&buf[8] + 40);
      }

      v143[1] = MEMORY[0x277D85DD0];
      v143[2] = 3221225472;
      v143[3] = sub_247FD3478;
      v143[4] = &unk_278EF3580;
      v152 = v120;
      v66 = v48;
      v144 = v66;
      v145 = optionsCopy;
      v153 = v117;
      v67 = v49;
      v146 = v67;
      selfCopy = self;
      v148 = environmentCopy;
      v149 = argumentsCopy;
      v53 = v53;
      v150 = v53;
      v151 = intValue;
      v154 = v118 ^ 1;
      xpc_service_set_attach_handler();
      if (v122)
      {
        if (v120 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v218 = 138412290;
          *&v218[4] = v66;
          _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Release Start %@", v218, 0xCu);
        }

        defaultManager2 = [MEMORY[0x277D3D350] defaultManager];
        v143[0] = 0;
        [defaultManager2 releaseHold:v122 withError:v143];
        v69 = v143[0];

        if (((v69 != 0) & v120) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v218 = 138412290;
          *&v218[4] = v69;
          _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Release Error: %@", v218, 0xCu);
        }
      }

      if (v131)
      {
        v70 = *(*&buf[8] + 40);
        if (!xpc_service_kickstart_with_flags())
        {
LABEL_99:

          v1262 = v144;
          goto LABEL_102;
        }

        if (v120)
        {
          v71 = MEMORY[0x277D86220];
          v72 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            v73 = xpc_strerror();
            *v218 = 136315138;
            *&v218[4] = v73;
            _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "xpc_service_kickstart_with_flags error: %s", v218, 0xCu);
          }
        }

        v74 = MEMORY[0x277CCA9B8];
        v193 = *MEMORY[0x277CCA450];
        v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to launch: %@ (parent: %d) Error: %s", v66, intValue, xpc_strerror()];
        v194 = v75;
        v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v194 forKeys:&v193 count:1];
        v77 = [v74 errorWithDomain:@"DTXPCServiceController" code:3 userInfo:v76];
        (*(v53 + 2))(v53, v66, 0, intValue, 0xFFFFFFFFLL, v77);
      }

      else
      {
        if (![v66 length] || !v121)
        {
          goto LABEL_99;
        }

        defaultHost = [MEMORY[0x277D3D348] defaultHost];
        v191 = *MEMORY[0x277D3D360];
        v192 = v66;
        v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v192 forKeys:&v191 count:1];
        v140[0] = MEMORY[0x277D85DD0];
        v140[1] = 3221225472;
        v140[2] = sub_247FD3E50;
        v140[3] = &unk_278EF35A8;
        v93 = v66;
        v141 = v93;
        v142 = v121;
        v94 = [defaultHost continuouslyDiscoverPlugInsForAttributes:v92 flags:512 found:v140];

        v138[0] = MEMORY[0x277D85DD0];
        v138[1] = 3221225472;
        v138[2] = sub_247FD4020;
        v138[3] = &unk_278EF35D0;
        v95 = v94;
        v139 = v95;
        [(DTXPCServiceController *)self _registryModify:1 identifier:v93 parent:intValue client:v67 block:v138];

        v75 = v141;
      }

      goto LABEL_99;
    }

    *buf = 1024;
    v39 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:1024];
    v40 = v39;
    if (sysctlbyname("kern.bootargs", [v39 mutableBytes], buf, 0, 0))
    {
      perror("sysctlbyname(kern.bootargs,...)");
      v42 = 0;
    }

    else
    {
      [v39 setLength:*buf];
      v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v39 encoding:4];
      v42 = v41;
      if (v41 && ([v41 rangeOfString:@"amfi_unrestrict_task_for_pid=1"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v42, "rangeOfString:", @"amfi=3") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v42, "rangeOfString:", @"amfi_get_out_of_my_way=1") != 0x7FFFFFFFFFFFFFFFLL))
      {
        v131 = 0;
LABEL_105:

        goto LABEL_106;
      }
    }

    v103 = MEMORY[0x277CCA9B8];
    v199 = *MEMORY[0x277CCA450];
    v104 = [MEMORY[0x277CCACA8] stringWithFormat:@"amfi_unrestrict_task_for_pid=1 is required in your boot-args to profile daemons or agents."];
    v203 = v104;
    v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v203 forKeys:&v199 count:1];
    v131 = [v103 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v105];

    goto LABEL_105;
  }

LABEL_110:

  v106 = *MEMORY[0x277D85DE8];
}

- (int)_configureInstance:(id)instance identifier:(id)identifier servicePid:(int)pid environment:(id)environment arguments:(id)arguments options:(id)options
{
  v35 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  environmentCopy = environment;
  optionsCopy = options;
  v13 = sub_247FD13F4();
  v14 = [optionsCopy objectForKeyedSubscript:@"StartSuspendedKey"];
  v15 = [v14 isEqualToNumber:MEMORY[0x277CBEC28]];

  ShouldCaptureOutputWithOptions = DTProcessShouldCaptureOutputWithOptions(optionsCopy);
  v17 = [optionsCopy objectForKeyedSubscript:@"DisableMemoryLimits"];
  v18 = [v17 isEqualToNumber:MEMORY[0x277CBEC38]];

  v19 = [optionsCopy objectForKeyedSubscript:@"EnableMTE"];
  bOOLValue = [v19 BOOLValue];

  if (v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "xpc_service_instance_is_configurable(): true", buf, 2u);
  }

  if ([environmentCopy count])
  {
    v21 = xpc_dictionary_create(0, 0, 0);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_247FD44B8;
    v31[3] = &unk_278EF3620;
    v32 = v21;
    v22 = v21;
    [environmentCopy enumerateKeysAndObjectsUsingBlock:v31];
    xpc_service_instance_set_environment();
  }

  if (ShouldCaptureOutputWithOptions && !pipe(buf))
  {
    xpc_service_instance_dup2();
    xpc_service_instance_dup2();
    v23 = *buf;
    close(v34);
    fcntl(v23, 2, 1);
    if (v15)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v23 = -1;
    if (v15)
    {
LABEL_9:
      if (v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "xpc launch: started *not* suspended", buf, 2u);
      }

      goto LABEL_17;
    }
  }

  if (v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "xpc launch: starting suspended", buf, 2u);
  }

  xpc_service_instance_set_start_suspended();
LABEL_17:
  if (v18)
  {
    xpc_service_instance_set_jetsam_properties();
  }

  if (bOOLValue)
  {
    xpc_service_instance_set_use_sec_transition_shims();
  }

  v24 = [optionsCopy objectForKeyedSubscript:@"CPUType"];
  v25 = v24;
  if (v24)
  {
    [v24 intValue];
  }

  xpc_service_instance_set_binpref();
  v26 = [optionsCopy objectForKeyedSubscript:@"CPUSubType"];
  v27 = v26;
  if (v26)
  {
    intValue = [v26 intValue];
  }

  else
  {
    intValue = 0xFFFFFFFFLL;
  }

  xpc_service_instance_set_archpref_shim(instanceCopy, intValue);

  v29 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)requestDebugLaunchOfDaemonWithSpecifier:(id)specifier programPath:(id)path environment:(id)environment arguments:(id)arguments options:(id)options handler:(id)handler
{
  v33[1] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  pathCopy = path;
  environmentCopy = environment;
  argumentsCopy = arguments;
  optionsCopy = options;
  handlerCopy = handler;
  sub_247FD13F4();
  [specifierCopy UTF8String];
  v19 = xpc_service_create_from_specifier();
  if (v19)
  {
    v25 = optionsCopy;
    v26 = specifierCopy;
    v27 = environmentCopy;
    v28 = argumentsCopy;
    v31 = handlerCopy;
    v29 = pathCopy;
    v30 = v19;
    xpc_service_set_attach_handler();
    xpc_service_kickstart_with_flags();

    specifierCopy = v25;
  }

  else
  {
    v21 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    specifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to find service with specifier '%@'.", specifierCopy];
    v33[0] = specifierCopy;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v23 = [v21 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v22];
    (*(handlerCopy + 2))(handlerCopy, specifierCopy, 0, 0, 0xFFFFFFFFLL, v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_registryModify:(BOOL)modify identifier:(id)identifier parent:(int)parent client:(id)client block:(id)block
{
  modifyCopy = modify;
  identifierCopy = identifier;
  clientCopy = client;
  blockCopy = block;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_247FD4CF8;
  aBlock[3] = &unk_278EF3698;
  aBlock[4] = self;
  v15 = clientCopy;
  v21 = v15;
  v16 = identifierCopy;
  v22 = v16;
  parentCopy = parent;
  v17 = blockCopy;
  v23 = v17;
  v18 = _Block_copy(aBlock);
  v19 = v18;
  if (modifyCopy)
  {
    dispatch_sync(self->_guard, v18);
  }

  else
  {
    v18[2](v18);
  }
}

- (void)_matchRemove:(id)remove
{
  removeCopy = remove;
  registrationDictsByPid = self->_registrationDictsByPid;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FD4FD4;
  v7[3] = &unk_278EF36E8;
  v8 = removeCopy;
  v6 = removeCopy;
  [(NSMutableDictionary *)registrationDictsByPid enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)unregisterClient:(id)client withIdentifier:(id)identifier parent:(int)parent
{
  clientCopy = client;
  identifierCopy = identifier;
  guard = self->_guard;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247FD5374;
  v13[3] = &unk_278EF28C0;
  v13[4] = self;
  v14 = clientCopy;
  v15 = identifierCopy;
  parentCopy = parent;
  v11 = identifierCopy;
  v12 = clientCopy;
  dispatch_sync(guard, v13);
}

@end