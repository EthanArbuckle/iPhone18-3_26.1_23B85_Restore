@interface DTSpringBoardProcessControlService
+ (void)registerCapabilities:(id)a3;
- (BOOL)_HIDEvent:(unsigned int)a3 hold:(BOOL)a4;
- (BOOL)_triggerSiri;
- (BOOL)sendProcessControlEvent:(id)a3 toPid:(id)a4 error:(id *)a5;
- (BOOL)showNotificiationCenterWidget:(id)a3 withError:(id *)a4;
- (BOOL)showSBWidget:(id)a3 withError:(id *)a4;
- (BOOL)simulateNotificationForBundleID:(id)a3 payload:(id)a4 withError:(id *)a5;
- (id)_launchSuspendedProcessWithBundleIdentifier:(id)a3 orDevicePath:(id)a4 environment:(id)a5 arguments:(id)a6 options:(id)a7 error:(id *)a8;
- (id)launchSuspendedProcessWithDevicePath:(id)a3 bundleIdentifier:(id)a4 environment:(id)a5 arguments:(id)a6 options:(id)a7;
- (id)processIdentifierForBundleIdentifier:(id)a3;
- (void)sendProcessControlEvent:(id)a3 toPid:(id)a4;
@end

@implementation DTSpringBoardProcessControlService

+ (void)registerCapabilities:(id)a3
{
  v4 = DTDefaultProcessControlServiceIdentifier;
  v5 = a3;
  [v5 publishCapability:v4 withVersion:107 forClass:a1];
  [v5 publishCapability:@"com.apple.instruments.server.services.processcontrol.feature.deviceio" withVersion:103 forClass:a1];
  [v5 publishCapability:@"com.apple.instruments.server.services.processcontrolbydictionary" withVersion:4 forClass:a1];
}

- (id)launchSuspendedProcessWithDevicePath:(id)a3 bundleIdentifier:(id)a4 environment:(id)a5 arguments:(id)a6 options:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = objc_opt_new();
  v21 = 0;
  v18 = [(DTSpringBoardProcessControlService *)self _launchSuspendedProcessWithBundleIdentifier:v15 orDevicePath:v16 environment:v14 arguments:v13 options:v12 error:&v21];

  v19 = v21;
  [v17 invokeCompletionWithReturnValue:v18 error:v19];

  return v17;
}

- (id)_launchSuspendedProcessWithBundleIdentifier:(id)a3 orDevicePath:(id)a4 environment:(id)a5 arguments:(id)a6 options:(id)a7 error:(id *)a8
{
  v200[2] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v160 = a7;
  v165 = v12;
  v16 = [v12 length];
  v17 = MEMORY[0x277D86220];
  v18 = MEMORY[0x277D86220];
  v19 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
  if (v16)
  {
    if (!v19)
    {
      goto LABEL_7;
    }

    *buf = 138544130;
    *&buf[4] = v12;
    *&buf[12] = 2114;
    *&buf[14] = v14;
    *&buf[22] = 2114;
    v191 = v15;
    LOWORD(v192) = 2114;
    *(&v192 + 2) = v160;
    v20 = MEMORY[0x277D86220];
    v21 = "Received request to launch process with bundle ID '%{public}@:'\n\tEnvironment variables: %{public}@\n\tArguments: %{public}@\n\tOptions: %{public}@";
  }

  else
  {
    if (!v19)
    {
      goto LABEL_7;
    }

    *buf = 138544130;
    *&buf[4] = v13;
    *&buf[12] = 2114;
    *&buf[14] = v14;
    *&buf[22] = 2114;
    v191 = v15;
    LOWORD(v192) = 2114;
    *(&v192 + 2) = v160;
    v20 = MEMORY[0x277D86220];
    v21 = "Received request to launch process at path '%{public}@:'\n\tEnvironment variables: %{public}@\n\tArguments: %{public}@\n\tOptions: %{public}@";
  }

  _os_log_impl(&dword_247F67000, v20, OS_LOG_TYPE_INFO, v21, buf, 0x2Au);
LABEL_7:
  filePath = v13;

  v22 = MEMORY[0x277CBEBF8];
  if (v15)
  {
    v22 = v15;
  }

  v153 = v22;
  if (v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = MEMORY[0x277CBEC10];
  }

  v155 = v23;
  v24 = [v160 objectForKeyedSubscript:@"StartSuspendedKey"];
  v151 = [v24 isEqualToNumber:MEMORY[0x277CBEC28]];

  v25 = [v160 objectForKeyedSubscript:@"KillExisting"];
  v164 = [v25 isEqualToNumber:MEMORY[0x277CBEC28]];

  v26 = [v160 objectForKeyedSubscript:@"ActivateSuspended"];
  v27 = MEMORY[0x277CBEC38];
  v28 = [v26 isEqualToNumber:MEMORY[0x277CBEC38]];

  v162 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v29 = [MEMORY[0x277CCAC38] processInfo];
  v30 = [v29 environment];
  v159 = [v30 mutableCopy];

  [v159 addEntriesFromDictionary:v155];
  v179 = 0;
  if (v12)
  {
LABEL_13:
    v163 = sub_247FE827C(v165);
    if ((v163 < 1) | v164 & 1)
    {
      goto LABEL_18;
    }

    v31 = MEMORY[0x277D86220];
    v32 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v33 = v165;
      v34 = [v165 UTF8String];
      *buf = 136446466;
      *&buf[4] = v34;
      *&buf[12] = 1024;
      *&buf[14] = v163;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Killing existing instance of bundle ID %{public}s with PID %i", buf, 0x12u);
    }

    v157 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:@"Terminating any existing instance before DTServiceHub app launch"];
    v35 = objc_alloc(MEMORY[0x277D47018]);
    v36 = MEMORY[0x277D46FA0];
    v37 = [MEMORY[0x277D46F50] identifierWithPid:v163];
    v38 = [v36 predicateMatchingIdentifier:v37];
    v39 = [v35 initWithPredicate:v38 context:v157];

    v178 = 0;
    LOBYTE(v35) = [v39 execute:&v178];
    v40 = v178;
    v41 = v40;
    if (v35)
    {
LABEL_17:

LABEL_18:
      v42 = *MEMORY[0x277D0AB58];
      v195[0] = *MEMORY[0x277D0AB48];
      v195[1] = v42;
      v196[0] = v153;
      v196[1] = v159;
      v195[2] = *MEMORY[0x277D0AB80];
      v43 = [MEMORY[0x277CCABB0] numberWithBool:v151 ^ 1u];
      v196[2] = v43;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v196 forKeys:v195 count:3];
      v157 = [v44 mutableCopy];

      if (DTProcessShouldCaptureOutputWithOptions(v160))
      {
        v45 = NSTemporaryDirectory();
        v46 = [v45 stringByAppendingPathComponent:@"instruments_XXXXXX"];

        v47 = v46;
        v48 = strdup([v46 UTF8String]);
        if (mkdtemp(v48))
        {
          v150 = [MEMORY[0x277CCACA8] stringWithUTF8String:v48];
          v154 = [v150 stringByAppendingPathComponent:@"stdio.pipe"];
          v49 = v154;
          if (mkfifo([v154 UTF8String], 0x1FFu))
          {
            v50 = MEMORY[0x277D86220];
            v51 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v52 = v154;
              v53 = [v154 UTF8String];
              v54 = __error();
              v55 = strerror(*v54);
              *buf = 136315394;
              *&buf[4] = v53;
              *&buf[12] = 2080;
              *&buf[14] = v55;
              _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "mkfifo failed for '%s': %s", buf, 0x16u);
            }

            v154 = 0;
          }

          else
          {
            v83 = v154;
            chmod([v154 UTF8String], 0x1B6u);
            v84 = v150;
            chmod([v150 UTF8String], 0x1FFu);
            [v157 setObject:v154 forKeyedSubscript:*MEMORY[0x277D0AB70]];
            [v157 setObject:v154 forKeyedSubscript:*MEMORY[0x277D0AB78]];
          }
        }

        else
        {
          v154 = 0;
          v150 = 0;
        }

        free(v48);
      }

      else
      {
        v154 = 0;
        v150 = 0;
      }

      v85 = *MEMORY[0x277D0AC58];
      v193[0] = *MEMORY[0x277D0AC08];
      v193[1] = v85;
      v194[0] = v157;
      v194[1] = v27;
      v193[2] = *MEMORY[0x277D0AC60];
      v86 = [MEMORY[0x277CCABB0] numberWithDouble:10.0];
      v194[2] = v86;
      v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v194 forKeys:v193 count:3];
      v161 = [v87 mutableCopy];

      if (v28)
      {
        [v161 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D0ABF0]];
      }

      if (v160)
      {
        v88 = v160;
        v89 = objc_opt_new();
        v90 = DTProcessControlOptionsGetEvent(v88);

        if (v90)
        {
          v91 = objc_opt_new();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v92 = [v90 objectForKey:@"PCEventType"];
            if ([v92 isEqualToString:@"BackgroundFetchEvent"])
            {
              [v91 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D0AB30]];
            }
          }

          if ([v91 count])
          {
            [v89 setObject:v91 forKeyedSubscript:*MEMORY[0x277D0ABE0]];
          }
        }

        [v161 addEntriesFromDictionary:v89];
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v191 = sub_247FE82E8;
      *&v192 = sub_247FE82F8;
      *(&v192 + 1) = 0;
      v174 = 0;
      v175 = &v174;
      v176 = 0x2020000000;
      v177 = -1;
      v93 = MEMORY[0x277D85DD0];
      for (i = 7; ; --i)
      {
        v95 = MEMORY[0x277CCA8C8];
        v170[0] = v93;
        v170[1] = 3221225472;
        v170[2] = sub_247FE8300;
        v170[3] = &unk_278EF3DB8;
        v172 = buf;
        v173 = &v174;
        v96 = v165;
        v171 = v96;
        v97 = [v95 blockOperationWithBlock:v170];
        v98 = [MEMORY[0x277D0AD60] optionsWithDictionary:v161];
        v167[0] = MEMORY[0x277D85DD0];
        v167[1] = 3221225472;
        v167[2] = sub_247FE834C;
        v167[3] = &unk_278EF3DE0;
        v169 = buf;
        v99 = v97;
        v168 = v99;
        [v162 openApplication:v96 withOptions:v98 completion:v167];

        [v99 waitUntilFinished];
        v100 = *(*&buf[8] + 40);
        if (v100 && [v100 code] == 6 || (v164 & 1) == 0 && *(v175 + 6) == v163)
        {
          usleep(0x7A120u);
        }

        if (!i)
        {
          break;
        }

        v101 = *(*&buf[8] + 40);
        if ((!v101 || [v101 code] != 6) && ((v164 & 1) != 0 || *(v175 + 6) != v163))
        {
          break;
        }
      }

      if (v154 && *(v175 + 6) && !*(*&buf[8] + 40))
      {
        [(DTProcessControlService *)self watchOutputFileName:v154 directory:v150 forPid:?];
      }

      if (*(*&buf[8] + 40))
      {
        v102 = [MEMORY[0x277CCACA8] stringWithFormat:@"Request to launch %@ failed.", v96];
        if ([*(*&buf[8] + 40) code] == 6)
        {
          v103 = @"Device busy or Instruments is trying to launch several targets, and one of them is a foreground app.";
        }

        else if ([*(*&buf[8] + 40) code] == 5)
        {
          v103 = @"Background launch requested, but this app cannot run in the background (see UIApplicationExitsOnSuspend or 'Background Modes' in Xcode).";
        }

        else if ([*(*&buf[8] + 40) code] == 7)
        {
          v103 = @"Device is currently locked. Please unlock the device and try again.";
        }

        else
        {
          v109 = MEMORY[0x277CCACA8];
          v110 = [*(*&buf[8] + 40) localizedDescription];
          v103 = [v109 stringWithFormat:@"%@ : Failed to launch process with bundle identifier '%@'.", v110, v96];
        }

        v111 = MEMORY[0x277D86220];
        v112 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          v113 = [*(*&buf[8] + 40) code];
          v114 = [*(*&buf[8] + 40) localizedDescription];
          *v182 = 134218242;
          *v183 = v113;
          *&v183[8] = 2112;
          *&v183[10] = v114;
          _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DTSpringBoardProcessControlService -- Error: %ld. %@.", v182, 0x16u);
        }

        if (a8)
        {
          v115 = MEMORY[0x277CCA9B8];
          v116 = *MEMORY[0x277CCA470];
          v188[0] = *MEMORY[0x277CCA450];
          v188[1] = v116;
          v189[0] = v102;
          v189[1] = v103;
          v188[2] = *MEMORY[0x277CCA7E8];
          v189[2] = *(*&buf[8] + 40);
          v117 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v189 forKeys:v188 count:3];
          *a8 = [v115 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:2 userInfo:v117];
        }
      }

      else
      {
        v104 = *(v175 + 6);
        if (v104 > 0)
        {
          if (v163 == v104)
          {
            if ((v164 & 1) == 0)
            {
              v121 = MEMORY[0x277CCACA8];
              v122 = [(__CFString *)filePath lastPathComponent];
              v102 = [v121 stringWithFormat:@"Executable '%@' is already running as process %d.", v122, v163];

              if (a8)
              {
                v123 = MEMORY[0x277CCA9B8];
                v124 = *MEMORY[0x277CCA470];
                v184[0] = *MEMORY[0x277CCA450];
                v184[1] = v124;
                v185[0] = v102;
                v185[1] = @"killExisting requested, but found the existing PID.";
                v125 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v185 forKeys:v184 count:2];
                *a8 = [v123 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:2 userInfo:v125];
              }

              goto LABEL_99;
            }

            if ((v151 & 1) == 0)
            {
              v105 = [MEMORY[0x277CCABB0] numberWithInt:v163];
              [(DTProcessControlService *)self suspendPid:v105];
            }
          }

          else if ((v151 & 1) == 0)
          {
            v108 = [DTInstrumentServer taskForPid:?];
            if (v108 - 1 > 0xFFFFFFFD)
            {
              v130 = MEMORY[0x277D86220];
              v131 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
              {
                v132 = *(v175 + 6);
                *v182 = 67109378;
                *v183 = v132;
                *&v183[4] = 2112;
                *&v183[6] = v96;
                _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to acquire task port after launch of pid %d (%@)", v182, 0x12u);
              }

              v102 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:@"Permission to debug process denied"];
              v133 = objc_alloc(MEMORY[0x277D47018]);
              v134 = MEMORY[0x277D46FA0];
              v135 = [MEMORY[0x277D46F50] identifierWithPid:*(v175 + 6)];
              v136 = [v134 predicateMatchingIdentifier:v135];
              v137 = [v133 initWithPredicate:v136 context:v102];

              v166 = 0;
              LOBYTE(v133) = [v137 execute:&v166];
              v138 = v166;
              if ((v133 & 1) == 0)
              {
                v139 = MEMORY[0x277D86220];
                v140 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
                {
                  v141 = *(v175 + 6);
                  *v182 = 67109634;
                  *v183 = v141;
                  *&v183[4] = 2112;
                  *&v183[6] = v96;
                  *&v183[14] = 2112;
                  *&v183[16] = v138;
                  _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to attempt termination of pid %d (%@): %@", v182, 0x1Cu);
                }
              }

              v142 = [MEMORY[0x277CCABB0] numberWithInt:*(v175 + 6)];
              [(DTProcessControlService *)self killPid:v142];

              v143 = [MEMORY[0x277CCACA8] stringWithFormat:@"Permission to debug %@ was denied.", v96];
              v144 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to acquire task port for PID: %d", *(v175 + 6)];
              v145 = v144;
              if (a8)
              {
                v146 = MEMORY[0x277CCA9B8];
                v147 = *MEMORY[0x277CCA470];
                v180[0] = *MEMORY[0x277CCA450];
                v180[1] = v147;
                v181[0] = v143;
                v181[1] = v144;
                v180[2] = *MEMORY[0x277CCA498];
                v181[2] = @"The app must be debuggable and signed with 'get-task-allow'.";
                v148 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v181 forKeys:v180 count:3];
                *a8 = [v146 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:2 userInfo:v148];
              }

              goto LABEL_99;
            }

            mach_port_deallocate(*MEMORY[0x277D85F48], v108);
          }

          v71 = [MEMORY[0x277CCABB0] numberWithInt:*(v175 + 6)];
LABEL_101:
          _Block_object_dispose(&v174, 8);
          _Block_object_dispose(buf, 8);

          v165 = v96;
LABEL_102:

          goto LABEL_103;
        }

        if (!a8)
        {
LABEL_100:
          v71 = 0;
          goto LABEL_101;
        }

        v106 = MEMORY[0x277CCA9B8];
        v107 = *MEMORY[0x277CCA470];
        v186[0] = *MEMORY[0x277CCA450];
        v186[1] = v107;
        v187[0] = @"Failed looking up pid of launched process.";
        v187[1] = @"Call to openApplication:withOptions:completion: succeeded, but a PID could not be found for the target Bundle Identifier.";
        v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v187 forKeys:v186 count:2];
        *a8 = [v106 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:4 userInfo:v102];
      }

LABEL_99:

      goto LABEL_100;
    }

    v72 = [v40 domain];
    if ([v72 isEqualToString:*MEMORY[0x277D47088]])
    {
      v73 = [v41 code] == 3;

      if (v73)
      {
        v74 = MEMORY[0x277D86220];
        v75 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          v76 = v165;
          v77 = [v165 UTF8String];
          *buf = 136446210;
          *&buf[4] = v77;
          _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Request to terminate existing instance of bundle ID %{public}s failed because the existing instance could no longer be found. Continuing with launch.", buf, 0xCu);
        }

        goto LABEL_17;
      }
    }

    else
    {
    }

    v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to terminate existing instance (%i) of bundle ID '%@'", v163, v165];
    v79 = v78;
    if (a8)
    {
      v80 = MEMORY[0x277CCA9B8];
      v81 = *MEMORY[0x277CCA7E8];
      v197[0] = *MEMORY[0x277CCA450];
      v197[1] = v81;
      v198[0] = v78;
      v198[1] = v41;
      v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v198 forKeys:v197 count:2];
      *a8 = [v80 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:16 userInfo:v82];
    }

    v71 = 0;
    goto LABEL_102;
  }

  v56 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v56 fileExistsAtPath:v13 isDirectory:&v179] & 1) == 0)
  {

    goto LABEL_32;
  }

  v57 = v179;

  if ((v57 & 1) == 0)
  {
    goto LABEL_32;
  }

  v58 = CFURLCreateWithFileSystemPath(0, v13, kCFURLPOSIXPathStyle, 1u);
  v59 = CFBundleCreate(*MEMORY[0x277CBECE8], v58);
  v60 = v59;
  if (!v59)
  {

    v65 = 0;
    v62 = 0;
    filePath = 0;
    InfoDictionary = 0;
    v67 = 1;
    v63 = 1;
    goto LABEL_112;
  }

  v61 = CFBundleCopyExecutableURL(v59);
  v62 = v61;
  v63 = v61 == 0;
  if (!v61)
  {
    v65 = 0;
    goto LABEL_110;
  }

  v64 = CFURLCopyAbsoluteURL(v61);
  v65 = v64;
  if (!v64)
  {
LABEL_110:
    v66 = 0;
    v67 = 1;
    v68 = filePath;
    goto LABEL_111;
  }

  v66 = CFURLCopyFileSystemPath(v64, kCFURLPOSIXPathStyle);

  v67 = 0;
  v68 = v66;
LABEL_111:

  InfoDictionary = CFBundleGetInfoDictionary(v60);
  filePath = v66;
LABEL_112:
  v165 = [(__CFDictionary *)InfoDictionary objectForKeyedSubscript:@"CFBundleIdentifier"];
  if (v58)
  {
    CFRelease(v58);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (!v63)
  {
    CFRelease(v62);
  }

  if ((v67 & 1) == 0)
  {
    CFRelease(v65);
  }

  v126 = MEMORY[0x277D86220];
  v127 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
  {
    v128 = filePath;
    v129 = [(__CFString *)filePath UTF8String];
    *buf = 136315138;
    *&buf[4] = v129;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "No bundle ID passed in path: %s", buf, 0xCu);
  }

  if (v165)
  {
    goto LABEL_13;
  }

LABEL_32:
  v165 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to locate CFBundleIdentifier for path: %@.", filePath];
  if (a8)
  {
    v69 = MEMORY[0x277CCA9B8];
    v70 = *MEMORY[0x277CCA470];
    v199[0] = *MEMORY[0x277CCA450];
    v199[1] = v70;
    v200[0] = v165;
    v200[1] = @"Either a Bundle Identifier or a path to a bundle must be provided.";
    v158 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v200 forKeys:v199 count:2];
    [v69 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:1 userInfo:v158];
    *a8 = v71 = 0;
  }

  else
  {
    v71 = 0;
  }

LABEL_103:

  v118 = *MEMORY[0x277D85DE8];

  return v71;
}

- (id)processIdentifierForBundleIdentifier:(id)a3
{
  v3 = sub_247FE827C(a3);
  v4 = v3 & ~(v3 >> 31);
  v5 = MEMORY[0x277CCABB0];

  return [v5 numberWithInt:v4];
}

- (BOOL)sendProcessControlEvent:(id)a3 toPid:(id)a4 error:(id *)a5
{
  v130[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = sub_247FE82E8;
  v105 = sub_247FE82F8;
  v106 = 0;
  v10 = DTProcessControlEventUnarchive(v8);
  v11 = [v9 intValue];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v86.receiver = self;
    v86.super_class = DTSpringBoardProcessControlService;
    [(DTProcessControlService *)&v86 sendProcessControlEvent:v8 toPid:v9];
    goto LABEL_7;
  }

  v85 = v10;
  v12 = [v85 objectForKey:@"PCEventType"];
  if ([v12 isEqualToString:@"ShowSBWidgetCenter"])
  {
    v13 = v102;
    v100 = v102[5];
    [(DTSpringBoardProcessControlService *)self showSBWidget:v85 withError:&v100];
    v14 = v100;
    v15 = v13[5];
    v13[5] = v14;
    goto LABEL_4;
  }

  if ([v12 isEqualToString:@"ShowNotificationCenter"])
  {
    v15 = [v85 objectForKey:@"WidgetIdentifier"];
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = (v102 + 5);
        obj = v102[5];
        [(DTSpringBoardProcessControlService *)self showNotificiationCenterWidget:v15 withError:&obj];
        objc_storeStrong(v20, obj);
      }
    }

    goto LABEL_4;
  }

  if ([v12 isEqualToString:@"BackgroundFetchEvent"])
  {
    v21 = [MEMORY[0x277D46F50] identifierWithPid:v11];
    v80 = v21;
    if (v21)
    {
      v22 = MEMORY[0x277D46F48];
      v23 = [MEMORY[0x277D46FA0] predicateMatchingIdentifier:v21];
      v24 = [v22 handleForPredicate:v23 error:0];

      v25 = [v24 bundle];
      v15 = [v25 identifier];
    }

    else
    {
      v15 = 0;
    }

    v129 = *MEMORY[0x277D0ABE0];
    v127 = *MEMORY[0x277D0AB30];
    v128 = MEMORY[0x277CBEC10];
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
    v130[0] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:&v129 count:1];

    v82 = [MEMORY[0x277D0AD60] optionsWithDictionary:v34];
    if (v15)
    {
      v35 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = sub_247FE9134;
      v94[3] = &unk_278EF3E08;
      v95 = v15;
      v96 = v34;
      v97 = v82;
      v98 = &v101;
      [v35 openApplication:v95 withOptions:v97 completion:v94];

      v36 = v95;
    }

    else
    {
      dsemaa = v34;
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to trigger Background Fetch for PID %d, no bundle identifier found.", v11];
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find CFBundleIdentifier for PID: %d.", v11];
      v77 = MEMORY[0x277CCA9B8];
      v38 = *MEMORY[0x277CCA470];
      v125[0] = *MEMORY[0x277CCA450];
      v125[1] = v38;
      v126[0] = v36;
      v126[1] = v37;
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:2];
      v40 = [v77 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:8 userInfo:v39];
      v41 = v37;
      v42 = v102[5];
      v102[5] = v40;

      v34 = dsemaa;
    }

    goto LABEL_4;
  }

  if ([v12 isEqualToString:@"TriggerSiri"])
  {
    v15 = [v85 objectForKeyedSubscript:@"SiriRequestPayload"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 length] && NSClassFromString(&cfstr_Afsettingsconn.isa))
    {
      v26 = objc_alloc_init(MEMORY[0x277CEF3A0]);
      [v26 startUIRequest:v15];
      [v26 barrier];
    }

    else
    {
      if ([(DTSpringBoardProcessControlService *)self _triggerSiri])
      {
        goto LABEL_4;
      }

      v30 = MEMORY[0x277CCA9B8];
      v123 = *MEMORY[0x277CCA450];
      v124 = @"Failed to trigger Siri";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
      v31 = [v30 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:8 userInfo:v26];
      v32 = v102[5];
      v102[5] = v31;
    }

    goto LABEL_4;
  }

  if (![v12 isEqualToString:@"PressHomeButton"])
  {
    if (![v12 isEqualToString:@"SimulateNotification"])
    {
      if ([v12 isEqualToString:@"ShowMessagesExtension"])
      {
        v51 = notify_post("com.apple.MobileSMS.CKAppExtension.launch");
        if (!v51)
        {
          goto LABEL_5;
        }

        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error sending Messages notification for '%s' status: %d.", "com.apple.MobileSMS.CKAppExtension.launch", v51];
        v52 = MEMORY[0x277CCA9B8];
        v115 = *MEMORY[0x277CCA450];
        v116 = v15;
        v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
        v54 = [v52 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:8 userInfo:v53];
        v55 = v102[5];
        v102[5] = v54;
      }

      else if ([v12 isEqualToString:@"SnapshotUI"])
      {
        v56 = MEMORY[0x277CCA9B8];
        v113 = *MEMORY[0x277CCA450];
        v114 = @"Snapshot UI is not supported for this platform.";
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
        v57 = [v56 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:8 userInfo:v15];
        v58 = v102[5];
        v102[5] = v57;
      }

      else
      {
        if (![v12 isEqualToString:@"TriggerAppClip"])
        {
          v87.receiver = self;
          v87.super_class = DTSpringBoardProcessControlService;
          [(DTProcessControlService *)&v87 sendProcessControlEvent:v8 toPid:v9];
          goto LABEL_5;
        }

        v15 = [v85 objectForKeyedSubscript:@"BundleIdentifier"];
        v64 = [v85 objectForKeyedSubscript:@"AppClipPayload"];
        v65 = MEMORY[0x277CBEBC0];
        if ([(__CFString *)v64 length])
        {
          v66 = v64;
        }

        else
        {
          v66 = @"https://example.com";
        }

        v84 = [v65 URLWithString:v66];
        if (dlopen_preflight("/System/Library/PrivateFrameworks/ClipServices.framework/ClipServices"))
        {
          dlopen("/System/Library/PrivateFrameworks/ClipServices.framework/ClipServices", 10);
          v67 = NSClassFromString(&cfstr_Cpscliprequest.isa);
          if (v67)
          {
            v81 = [[v67 alloc] initWithURL:v84];
            v68 = dispatch_semaphore_create(0);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v110 = v15;
              v111 = 2112;
              v112 = v84;
              _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Clip Request for bundleID:'%@' url:'%@'", buf, 0x16u);
            }

            v88[0] = MEMORY[0x277D85DD0];
            v88[1] = 3221225472;
            v88[2] = sub_247FE92D8;
            v88[3] = &unk_278EF3E30;
            v89 = v15;
            v90 = v84;
            v92 = &v101;
            dsema = v68;
            v91 = dsema;
            [v81 installClipWithBundleID:v89 completion:v88];
            v69 = [v85 objectForKeyedSubscript:@"Timeout"];
            v70 = [v69 intValue];

            if (v70 <= 0)
            {
              v71 = 30000000000;
            }

            else
            {
              v71 = (v70 * 1000000000.0);
            }

            v72 = dispatch_time(0, v71);
            if (dispatch_semaphore_wait(dsema, v72))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                sub_24802FF30();
              }

              v73 = MEMORY[0x277CCA9B8];
              v107 = *MEMORY[0x277CCA450];
              v108 = @"Trigger AppClip timed out.";
              v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
              v75 = [v73 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:32 userInfo:v74];
              v76 = v102[5];
              v102[5] = v75;
            }
          }
        }
      }

      goto LABEL_4;
    }

    v15 = [v85 objectForKey:@"BundleIdentifier"];
    v43 = [v85 objectForKey:@"NotificationPayload"];
    v44 = v43;
    if (v43 && v15)
    {
      v93 = 0;
      [(DTSpringBoardProcessControlService *)self simulateNotificationForBundleID:v15 payload:v43 withError:&v93];
      v45 = v93;
      if (!v45)
      {
LABEL_53:

        goto LABEL_4;
      }

      v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to simulate notification for bundleID: %@.", v15];
      v83 = MEMORY[0x277CCA9B8];
      v47 = *MEMORY[0x277CCA7E8];
      v119[0] = *MEMORY[0x277CCA450];
      v119[1] = v47;
      v120[0] = v46;
      v120[1] = v45;
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:2];
      v49 = [v83 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:8 userInfo:v48];
      v50 = v102[5];
      v102[5] = v49;
    }

    else
    {
      v59 = @"Unknown failure.";
      if (!v43)
      {
        v59 = @"Notification payload is nil.";
      }

      if (!v15)
      {
        v59 = @"BundleIdentifer for notification is nil.";
      }

      v60 = MEMORY[0x277CCA9B8];
      v61 = *MEMORY[0x277CCA470];
      v117[0] = *MEMORY[0x277CCA450];
      v117[1] = v61;
      v118[0] = @"Failed to simulate notification.";
      v118[1] = v59;
      v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:2];
      if (v15)
      {
        v62 = 8;
      }

      else
      {
        v62 = 1;
      }

      v63 = [v60 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:v62 userInfo:v45];
      v46 = v102[5];
      v102[5] = v63;
    }

    goto LABEL_53;
  }

  if ([(DTSpringBoardProcessControlService *)self _dismissTodayView])
  {
    goto LABEL_5;
  }

  v27 = MEMORY[0x277CCA9B8];
  v121 = *MEMORY[0x277CCA450];
  v122 = @"Failed to press Home button";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
  v28 = [v27 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:8 userInfo:v15];
  v29 = v102[5];
  v102[5] = v28;

LABEL_4:
LABEL_5:

LABEL_7:
  v16 = v102[5];
  if (a5 && v16)
  {
    *a5 = v16;
    v16 = v102[5];
  }

  v17 = v16 == 0;

  _Block_object_dispose(&v101, 8);
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)sendProcessControlEvent:(id)a3 toPid:(id)a4
{
  v5 = 0;
  [(DTSpringBoardProcessControlService *)self sendProcessControlEvent:a3 toPid:a4 error:&v5];
  v4 = v5;
  if (v4)
  {
    [MEMORY[0x277CBEAD8] raise:@"DTSHSendProcessControlEvent" format:{@"SendProcessControlEvent:toPid: encountered an error: %@", v4}];
  }
}

- (BOOL)simulateNotificationForBundleID:(id)a3 payload:(id)a4 withError:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_247FE82E8;
  v19 = sub_247FE82F8;
  v20 = 0;
  v9 = [MEMORY[0x277CE1FC0] requestWithIdentifier:&stru_285A19CB8 pushPayload:v8 bundleIdentifier:v7];
  v10 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:v7];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_247FE9604;
  v14[3] = &unk_278EF2550;
  v14[4] = &v15;
  [v10 addNotificationRequest:v9 withCompletionHandler:v14];
  v11 = v16[5];
  if (a5 && v11)
  {
    *a5 = v11;
    v11 = v16[5];
  }

  v12 = v11 == 0;

  _Block_object_dispose(&v15, 8);
  return v12;
}

- (BOOL)showNotificiationCenterWidget:(id)a3 withError:(id *)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v13 = [@"Notification Center widgets are no longer supported." UTF8String];
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  if (a4)
  {
    v6 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11 = @"Notification Center widgets are no longer supported.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    *a4 = [v6 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:8 userInfo:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)showSBWidget:(id)a3 withError:(id *)a4
{
  v63[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_247FE82E8;
  v52 = sub_247FE82F8;
  v53 = 0;
  v5 = [v4 objectForKey:@"WidgetIdentifier"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v43 = *MEMORY[0x277CFA1B8];
  v7 = *MEMORY[0x277CFA1A8];
  v8 = [v4 objectForKeyedSubscript:@"_XCWidgetKind"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_285A19CB8;
  }

  v11 = v10;

  v12 = [v4 objectForKeyedSubscript:@"_XCWidgetFamily"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_285A19CB8;
  }

  v15 = v14;

  if (v6)
  {
    v16 = *MEMORY[0x277D0AC58];
    v63[0] = MEMORY[0x277CBEC38];
    v17 = *MEMORY[0x277D0AC08];
    v62[0] = v16;
    v62[1] = v17;
    v18 = *MEMORY[0x277D0AB68];
    v60[0] = *MEMORY[0x277D0AB60];
    v60[1] = v18;
    v61[0] = v6;
    v61[1] = @"com.apple.widgetkit-extension";
    v60[2] = v43;
    v60[3] = v7;
    v61[2] = v11;
    v61[3] = v15;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:4];
    v63[1] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];

    v21 = dispatch_semaphore_create(0);
    v22 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
    v23 = [MEMORY[0x277D0AD60] optionsWithDictionary:v20];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_247FE9D30;
    v44[3] = &unk_278EF3E58;
    v45 = v6;
    v47 = &v48;
    v24 = v21;
    v46 = v24;
    [v22 openApplication:@"com.apple.springboard" withOptions:v23 completion:v44];

    v25 = [v4 objectForKeyedSubscript:@"Timeout"];
    v26 = [v25 intValue];

    if (v26 <= 0)
    {
      v27 = 10000000000;
    }

    else
    {
      v27 = (v26 * 1000000000.0);
    }

    v28 = dispatch_time(0, v27);
    if (dispatch_semaphore_wait(v24, v28))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Show Notification Center Widget timed out.", buf, 2u);
      }

      v29 = MEMORY[0x277CCA9B8];
      v58 = *MEMORY[0x277CCA450];
      v59 = @"Show Notification Center Widget timed out.";
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v31 = [v29 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:32 userInfo:v30];
      v32 = v49[5];
      v49[5] = v31;
    }
  }

  else
  {
    v33 = MEMORY[0x277D86220];
    v34 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v35 = [@"No Widget specified." UTF8String];
      *buf = 136315138;
      v57 = v35;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    v36 = MEMORY[0x277CCA9B8];
    v54 = *MEMORY[0x277CCA450];
    v55 = @"No Widget specified.";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v37 = [v36 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:8 userInfo:v20];
    v24 = v49[5];
    v49[5] = v37;
  }

  v38 = v49[5];
  if (a4 && v38)
  {
    *a4 = v38;
    v38 = v49[5];
  }

  v39 = v38 == 0;

  _Block_object_dispose(&v48, 8);
  v40 = *MEMORY[0x277D85DE8];
  return v39;
}

- (BOOL)_triggerSiri
{
  LODWORD(v2) = dlopen_preflight("/System/Library/PrivateFrameworks/SiriActivation.framework/SiriActivation");
  if (v2)
  {
    dlopen("/System/Library/PrivateFrameworks/SiriActivation.framework/SiriActivation", 10);
    v2 = NSClassFromString(&cfstr_Sirisimpleacti.isa);
    if (v2)
    {
      v2 = objc_alloc_init(v2);
      if (v2)
      {
        v3 = v2;
        [(objc_class *)v2 activateFromSource:0];

        LOBYTE(v2) = 1;
      }
    }
  }

  return v2;
}

- (BOOL)_HIDEvent:(unsigned int)a3 hold:(BOOL)a4
{
  if (a4)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.1;
  }

  if (a3 != 1 && a3 != 2)
  {
    return 0;
  }

  info = 0;
  mach_timebase_info(&info);
  __rqtp.tv_sec = v4;
  __rqtp.tv_nsec = ((v4 - v4) * 1000000000.0);
  mach_absolute_time();
  v5 = *MEMORY[0x277CBECE8];
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  v7 = IOHIDEventCreateKeyboardEvent();
  v8 = v7;
  if (KeyboardEvent && v7)
  {
    sub_247FEA070();
    nanosleep(&__rqtp, 0);
    sub_247FEA070();
LABEL_10:
    CFRelease(KeyboardEvent);
    goto LABEL_11;
  }

  if (KeyboardEvent)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (v8)
  {
    CFRelease(v8);
  }

  return 1;
}

@end