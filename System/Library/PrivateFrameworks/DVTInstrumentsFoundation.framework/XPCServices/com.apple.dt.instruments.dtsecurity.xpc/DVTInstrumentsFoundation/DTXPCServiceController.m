@interface DTXPCServiceController
+ (id)sharedInstance;
- (DTXPCServiceController)init;
- (int)_configureInstance:(id)a3 identifier:(id)a4 servicePid:(int)a5 environment:(id)a6 arguments:(id)a7 options:(id)a8;
- (void)_matchRemove:(id)a3;
- (void)_registryModify:(BOOL)a3 identifier:(id)a4 parent:(int)a5 client:(id)a6 block:(id)a7;
- (void)registerClient:(id)a3 forXPCService:(id)a4 environment:(id)a5 arguments:(id)a6 options:(id)a7 handler:(id)a8;
- (void)releaseAssertionsMadeByClient:(id)a3;
- (void)requestDebugLaunchOfDaemonWithSpecifier:(id)a3 programPath:(id)a4 environment:(id)a5 arguments:(id)a6 options:(id)a7 handler:(id)a8;
- (void)unregisterClient:(id)a3 withIdentifier:(id)a4 parent:(int)a5;
@end

@implementation DTXPCServiceController

+ (id)sharedInstance
{
  if (qword_100021BE0 != -1)
  {
    sub_100012F9C();
  }

  v3 = qword_100021BE8;

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

- (void)releaseAssertionsMadeByClient:(id)a3
{
  v3 = a3;
  if (sub_100007DE4() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    v7 = objc_opt_class();
    v8 = 2112;
    v9 = v3;
    v4 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%@ releasing active assertions taken on behalf of client %@", &v6, 0x16u);
  }

  if (v3)
  {
    v5 = +[DTAssertionManager sharedInstance];
    [v5 removeClaimsHeldByClient:v3];
  }
}

- (void)registerClient:(id)a3 forXPCService:(id)a4 environment:(id)a5 arguments:(id)a6 options:(id)a7 handler:(id)a8
{
  v111 = a3;
  v112 = a4;
  v107 = a5;
  v108 = a6;
  v13 = a7;
  v14 = a8;
  if (v14)
  {
    v106 = v14;
    v15 = v112;
    v101 = sub_100007DE4();
    v16 = [v13 objectForKeyedSubscript:@"KillExisting"];
    v97 = [v16 isEqualToNumber:&__kCFBooleanFalse];

    v17 = [v13 objectForKeyedSubscript:@"RequestingPid"];
    v109 = [v17 intValue];

    v18 = [v13 objectForKeyedSubscript:@"OnceOnly"];
    v100 = [v18 BOOLValue];

    v19 = [v13 objectForKeyedSubscript:@"EnableExtension"];
    v102 = [v19 isEqualToNumber:&__kCFBooleanTrue];

    v20 = [v13 objectForKeyedSubscript:@"DisableMemoryLimits"];
    v96 = [v20 isEqualToNumber:&__kCFBooleanTrue];

    v105 = [v13 objectForKeyedSubscript:@"AppExtensionHoldBundleID"];
    v110 = [v13 objectForKeyedSubscript:@"AppExtensionHoldURL"];
    if (!v102)
    {
      v103 = 0;
      goto LABEL_44;
    }

    if (!(v105 | v110))
    {
      v103 = 0;
      v110 = 0;
      goto LABEL_44;
    }

    v98 = +[PKManager defaultManager];
    if (v105)
    {
      v160 = 0;
      v21 = [LSBundleRecord bundleRecordWithBundleIdentifier:v105 allowPlaceholder:0 error:&v160];
      v22 = v160;
      v23 = [v21 URL];

      v110 = v23;
      if (v22)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v22 = 0;
    }

    if (v110)
    {
      v93 = v22;
      if (v101 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = v110;
        *&buf[12] = 2112;
        *&buf[14] = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Hold Start %@:%@", buf, 0x16u);
      }

      v159 = 0;
      v103 = [v98 holdPlugInsInApplication:v110 withError:&v159];
      v94 = v159;
      if (((v94 != 0) & v101) == 1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v94;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Hold Error: %@", buf, 0xCu);
        }
      }

      else
      {
        v92 = [NSBundle bundleWithURL:v110];
        v157 = 0u;
        v158 = 0u;
        v155 = 0u;
        v156 = 0u;
        v24 = [v92 builtInPlugInsURL];
        v25 = [v24 relativePath];
        v26 = [v92 URLsForResourcesWithExtension:@"appex" subdirectory:v25];

        v27 = [v26 countByEnumeratingWithState:&v155 objects:v190 count:16];
        if (v27)
        {
          v28 = *v156;
LABEL_24:
          v29 = 0;
          while (1)
          {
            if (*v156 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = *(*(&v155 + 1) + 8 * v29);
            v31 = [NSBundle bundleWithURL:v30];
            v32 = [v31 bundleIdentifier];
            v33 = [v32 isEqualToString:v15];

            if (v33)
            {
              break;
            }

            if (v27 == ++v29)
            {
              v27 = [v26 countByEnumeratingWithState:&v155 objects:v190 count:16];
              if (v27)
              {
                goto LABEL_24;
              }

              goto LABEL_30;
            }
          }

          v34 = v30;

          if (!v34)
          {
            goto LABEL_40;
          }

          if (v101 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v34;
            *&buf[12] = 2112;
            *&buf[14] = v15;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Terminate %@:%@", buf, 0x16u);
          }

          v154 = 0;
          [v98 terminatePlugInAtURL:v34 withError:&v154];
          v35 = v154;
          if (v35 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v94;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "DTXPCServiceController: ExtensionAssertion Terminate Error: %@", buf, 0xCu);
          }
        }

        else
        {
LABEL_30:
          v34 = v26;
        }

LABEL_40:
      }

      v22 = v93;
      goto LABEL_43;
    }

LABEL_17:
    v94 = 0;
    if (v22)
    {
      v103 = 0;
      if (v101)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = v15;
          *&buf[12] = 2112;
          *&buf[14] = v22;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: Error retrieving LSApplicationRecord for %@, %@", buf, 0x16u);
        }

        v94 = 0;
        v103 = 0;
      }
    }

    else
    {
      v103 = 0;
    }

LABEL_43:

LABEL_44:
    v36 = [v15 containsString:@"LaunchDaemons"];
    v37 = [v15 containsString:@"LaunchAgents"];
    v38 = [v15 pathExtension];
    v39 = [v38 isEqualToString:@"plist"];

    if (!v39)
    {
      v99 = 0;
      v45 = 0;
      goto LABEL_53;
    }

    if ((DVTIUIsAppleInternalOSEnvironment() & 1) == 0)
    {
      v176 = NSLocalizedDescriptionKey;
      v53 = [NSString stringWithFormat:@"Daemon profiling is not supported on customer installations."];
      *buf = v53;
      v54 = [NSDictionary dictionaryWithObjects:buf forKeys:&v176 count:1];
      v44 = [NSError errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v54];

LABEL_102:
      if (v44)
      {
        v106[2](v106, v15, 0, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v44);
        goto LABEL_104;
      }

      v109 = 0xFFFFFFFFLL;
      v44 = [NSDictionary dictionaryWithContentsOfFile:v15];
      v45 = [v44 objectForKeyedSubscript:@"Label"];

      v86 = [v44 objectForKeyedSubscript:@"Program"];
      v87 = v86;
      if (v86)
      {
        v99 = v86;
      }

      else
      {
        v88 = [v44 objectForKeyedSubscript:@"ProgramArguments"];
        v99 = [v88 firstObject];
      }

      if (!v45)
      {
        v188 = NSLocalizedDescriptionKey;
        v89 = [NSString stringWithFormat:@"Failed to load plist for launchd job with path: %@", 0];
        v189 = v89;
        v90 = [NSDictionary dictionaryWithObjects:&v189 forKeys:&v188 count:1];
        v91 = [NSError errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v90];
        v106[2](v106, 0, 0, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v91);

        v15 = v99;
        goto LABEL_104;
      }

      v15 = v45;
LABEL_53:
      if ([v15 hasPrefix:@"com.apple."] && (DVTIUIsAppleInternalOSEnvironment() & 1) == 0)
      {
        v186 = NSLocalizedDescriptionKey;
        v72 = [NSString stringWithFormat:@"XPC service is restricted: %@", v15];
        v187 = v72;
        v73 = [NSDictionary dictionaryWithObjects:&v187 forKeys:&v186 count:1];
        v74 = [NSError errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v73];
        v106[2](v106, v15, 0, v109, 0xFFFFFFFFLL, v74);

        v44 = v45;
LABEL_104:

        v14 = v106;
        goto LABEL_105;
      }

      if (v109 == -1)
      {
        v46 = 3;
      }

      else
      {
        v46 = 1;
      }

      v95 = v13;
      if (sub_100007DE4() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 67109634;
        *&buf[4] = v46;
        *&buf[8] = 2112;
        *&buf[10] = v15;
        *&buf[18] = 1024;
        *&buf[20] = v109 & ~(v109 >> 31);
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: calling xpc_service_create: serviceType=%d, identifier=%@, pid %d", buf, 0x18u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v183 = sub_100009528;
      v184 = sub_100009538;
      v185 = 0;
      v176 = 0;
      v177 = &v176;
      v178 = 0x3032000000;
      v179 = sub_100009528;
      v180 = sub_100009538;
      v181 = 0;
      v172 = 0;
      v173 = &v172;
      v174 = 0x2020000000;
      v175 = 0;
      guard = self->_guard;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100009540;
      block[3] = &unk_10001D410;
      block[4] = self;
      v15 = v15;
      v141 = v15;
      v148 = v109;
      v48 = v111;
      v142 = v48;
      v145 = &v172;
      v150 = 1;
      v151 = v36;
      v152 = v37;
      v49 = v106;
      v144 = v49;
      v44 = v45;
      v143 = v44;
      v146 = buf;
      v149 = v46;
      v147 = &v176;
      v153 = v100;
      dispatch_sync(guard, block);
      if (*(v173 + 24) == 1)
      {
        v170 = NSLocalizedDescriptionKey;
        [NSString stringWithFormat:@"XPC service name %@ already under observation for pid: %d", v15, v109];
        v50 = v13 = v95;
        v171 = v50;
        v51 = [NSDictionary dictionaryWithObjects:&v171 forKeys:&v170 count:1];
        v52 = [NSError errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v51];
        v49[2](v49, v15, 0, v109, 0xFFFFFFFFLL, v52);

LABEL_98:
        _Block_object_dispose(&v172, 8);
        _Block_object_dispose(&v176, 8);

        _Block_object_dispose(buf, 8);
        goto LABEL_104;
      }

      v13 = v95;
      if (!*(*&buf[8] + 40) && !v177[5])
      {
        v168 = NSLocalizedDescriptionKey;
        v50 = [NSString stringWithFormat:@"Unable to create xpc registration object."];
        v169 = v50;
        v51 = [NSDictionary dictionaryWithObjects:&v169 forKeys:&v168 count:1];
        v83 = [NSError errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v51];
        v49[2](v49, v15, 0, v109, 0xFFFFFFFFLL, v83);

        goto LABEL_98;
      }

      v50 = objc_retainBlock(v49);
      if (v100)
      {
        v135[0] = _NSConcreteStackBlock;
        v135[1] = 3221225472;
        v135[2] = sub_100009AA8;
        v135[3] = &unk_10001D460;
        v138 = v49;
        v135[4] = self;
        v136 = v48;
        v137 = v15;
        v139 = v109;
        v55 = objc_retainBlock(v135);

        v50 = v55;
      }

      if (!*(*&buf[8] + 40))
      {
        v162 = NSLocalizedDescriptionKey;
        v75 = v15;
        v51 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Unable to register for xpc-based launch: %s (parent: %d)", [v15 UTF8String], v109);
        v163 = v51;
        v76 = [NSDictionary dictionaryWithObjects:&v163 forKeys:&v162 count:1];
        v77 = [NSError errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v76];
        (*(v50 + 2))(v50, v15, 0, v109, 0xFFFFFFFFLL, v77);

        goto LABEL_98;
      }

      if (!((v109 > 0) | v97 & 1))
      {
        v130[0] = _NSConcreteStackBlock;
        v130[1] = 3221225472;
        v131 = sub_100009B8C;
        v132 = &unk_10001D488;
        v133 = v99;
        v134 = v15;
        v56 = v130;
        v161 = 0;
        *&v191[8] = 0;
        *v191 = 0xE00000001;
        sysctl(v191, 3u, 0, &v161, 0, 0);
        v161 += 50;
        v57 = malloc_type_calloc(1uLL, v161, 0x10B2040B74D5165uLL);
        if (!sysctl(v191, 3u, v57, &v161, 0, 0) && (v161 / 0x288) >= 1)
        {
          v58 = (v161 / 0x288) & 0x7FFFFFFF;
          v59 = v57 + 243;
          do
          {
            v60 = objc_autoreleasePoolPush();
            (v131)(v56, *(v59 - 203), v59, *(v59 + 153), *(v59 + 161));
            objc_autoreleasePoolPop(v60);
            v59 += 648;
            --v58;
          }

          while (v58);
        }

        free(v57);

        v61 = *(*&buf[8] + 40);
      }

      v118[1] = _NSConcreteStackBlock;
      v118[2] = 3221225472;
      v118[3] = sub_100009D00;
      v118[4] = &unk_10001D500;
      v127 = v101;
      v62 = v15;
      v119 = v62;
      v120 = v95;
      v128 = v96;
      v63 = v48;
      v121 = v63;
      v122 = self;
      v123 = v107;
      v124 = v108;
      v50 = v50;
      v125 = v50;
      v126 = v109;
      v129 = v97 ^ 1;
      xpc_service_set_attach_handler();
      if (v103)
      {
        if (v101 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *v191 = 138412290;
          *&v191[4] = v62;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Release Start %@", v191, 0xCu);
        }

        v64 = +[PKManager defaultManager];
        v118[0] = 0;
        [v64 releaseHold:v103 withError:v118];
        v65 = v118[0];

        if (((v65 != 0) & v101) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *v191 = 138412290;
          *&v191[4] = v65;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Release Error: %@", v191, 0xCu);
        }
      }

      if (v44)
      {
        v66 = *(*&buf[8] + 40);
        if (!xpc_service_kickstart_with_flags())
        {
LABEL_96:

          v51 = v119;
          goto LABEL_98;
        }

        if (v101)
        {
          v67 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v68 = xpc_strerror();
            *v191 = 136315138;
            *&v191[4] = v68;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "xpc_service_kickstart_with_flags error: %s", v191, 0xCu);
          }
        }

        v166 = NSLocalizedDescriptionKey;
        v69 = [NSString stringWithFormat:@"Unable to launch: %@ (parent: %d) Error: %s", v62, v109, xpc_strerror()];
        v167 = v69;
        v70 = [NSDictionary dictionaryWithObjects:&v167 forKeys:&v166 count:1];
        v71 = [NSError errorWithDomain:@"DTXPCServiceController" code:3 userInfo:v70];
        (*(v50 + 2))(v50, v62, 0, v109, 0xFFFFFFFFLL, v71);
      }

      else
      {
        if (![v62 length] || !v102)
        {
          goto LABEL_96;
        }

        v78 = +[PKHost defaultHost];
        v164 = PKIdentifierAttribute;
        v165 = v62;
        v79 = [NSDictionary dictionaryWithObjects:&v165 forKeys:&v164 count:1];
        v115[0] = _NSConcreteStackBlock;
        v115[1] = 3221225472;
        v115[2] = sub_10000A6D8;
        v115[3] = &unk_10001D528;
        v80 = v62;
        v116 = v80;
        v117 = v102;
        v81 = [v78 continuouslyDiscoverPlugInsForAttributes:v79 flags:512 found:v115];

        v113[0] = _NSConcreteStackBlock;
        v113[1] = 3221225472;
        v113[2] = sub_10000A8A8;
        v113[3] = &unk_10001D550;
        v82 = v81;
        v114 = v82;
        [(DTXPCServiceController *)self _registryModify:1 identifier:v80 parent:v109 client:v63 block:v113];

        v69 = v116;
      }

      goto LABEL_96;
    }

    *buf = 1024;
    v40 = [[NSMutableData alloc] initWithLength:1024];
    v41 = v40;
    if (sysctlbyname("kern.bootargs", [v40 mutableBytes], buf, 0, 0))
    {
      perror("sysctlbyname(kern.bootargs,...)");
      v43 = 0;
    }

    else
    {
      [v40 setLength:*buf];
      v42 = [[NSString alloc] initWithData:v40 encoding:4];
      v43 = v42;
      if (v42 && ([v42 rangeOfString:@"amfi_unrestrict_task_for_pid=1"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v43, "rangeOfString:", @"amfi=3") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v43, "rangeOfString:", @"amfi_get_out_of_my_way=1") != 0x7FFFFFFFFFFFFFFFLL))
      {
        v44 = 0;
LABEL_101:

        goto LABEL_102;
      }
    }

    v172 = NSLocalizedDescriptionKey;
    v84 = [NSString stringWithFormat:@"amfi_unrestrict_task_for_pid=1 is required in your boot-args to profile daemons or agents."];
    v176 = v84;
    v85 = [NSDictionary dictionaryWithObjects:&v176 forKeys:&v172 count:1];
    v44 = [NSError errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v85];

    goto LABEL_101;
  }

LABEL_105:
}

- (int)_configureInstance:(id)a3 identifier:(id)a4 servicePid:(int)a5 environment:(id)a6 arguments:(id)a7 options:(id)a8
{
  v10 = a3;
  v11 = a6;
  v12 = a8;
  v13 = sub_100007DE4();
  v14 = [v12 objectForKeyedSubscript:@"StartSuspendedKey"];
  v15 = [v14 isEqualToNumber:&__kCFBooleanFalse];

  ShouldCaptureOutputWithOptions = DTProcessShouldCaptureOutputWithOptions(v12);
  v17 = [v12 objectForKeyedSubscript:@"DisableMemoryLimits"];
  v18 = [v17 isEqualToNumber:&__kCFBooleanTrue];

  v19 = [v12 objectForKeyedSubscript:@"EnableMTE"];
  v20 = [v19 BOOLValue];

  if (v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "xpc_service_instance_is_configurable(): true", buf, 2u);
  }

  if ([v11 count])
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000ACB4;
    v29[3] = &unk_10001D578;
    v30 = xpc_dictionary_create(0, 0, 0);
    v21 = v30;
    [v11 enumerateKeysAndObjectsUsingBlock:v29];
    xpc_service_instance_set_environment();
  }

  if (ShouldCaptureOutputWithOptions && !pipe(buf))
  {
    xpc_service_instance_dup2();
    xpc_service_instance_dup2();
    v22 = *buf;
    close(v32);
    fcntl(v22, 2, 1);
    if (v15)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v22 = -1;
    if (v15)
    {
LABEL_9:
      if (v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "xpc launch: started *not* suspended", buf, 2u);
      }

      goto LABEL_17;
    }
  }

  if (v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "xpc launch: starting suspended", buf, 2u);
  }

  xpc_service_instance_set_start_suspended();
LABEL_17:
  if (v18)
  {
    xpc_service_instance_set_jetsam_properties();
  }

  if (v20)
  {
    xpc_service_instance_set_use_sec_transition_shims();
  }

  v23 = [v12 objectForKeyedSubscript:@"CPUType"];
  v24 = v23;
  if (v23)
  {
    [v23 intValue];
  }

  xpc_service_instance_set_binpref();
  v25 = [v12 objectForKeyedSubscript:@"CPUSubType"];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 intValue];
  }

  else
  {
    v27 = 0xFFFFFFFFLL;
  }

  xpc_service_instance_set_archpref_shim(v10, v27);

  return v22;
}

- (void)requestDebugLaunchOfDaemonWithSpecifier:(id)a3 programPath:(id)a4 environment:(id)a5 arguments:(id)a6 options:(id)a7 handler:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  sub_100007DE4();
  [v13 UTF8String];
  v19 = xpc_service_create_from_specifier();
  if (v19)
  {
    v23 = v17;
    v24 = v13;
    v25 = v15;
    v26 = v16;
    v29 = v18;
    v27 = v14;
    v28 = v19;
    xpc_service_set_attach_handler();
    xpc_service_kickstart_with_flags();

    v20 = v23;
  }

  else
  {
    v30 = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithFormat:@"Unable to find service with specifier '%@'.", v13];
    v31 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v22 = [NSError errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v21];
    (*(v18 + 2))(v18, v13, 0, 0, 0xFFFFFFFFLL, v22);
  }
}

- (void)_registryModify:(BOOL)a3 identifier:(id)a4 parent:(int)a5 client:(id)a6 block:(id)a7
{
  v10 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000B4F4;
  v20[3] = &unk_10001D5F0;
  v20[4] = self;
  v15 = v13;
  v21 = v15;
  v16 = v12;
  v22 = v16;
  v24 = a5;
  v17 = v14;
  v23 = v17;
  v18 = objc_retainBlock(v20);
  v19 = v18;
  if (v10)
  {
    dispatch_sync(self->_guard, v18);
  }

  else
  {
    (v18[2])(v18);
  }
}

- (void)_matchRemove:(id)a3
{
  v4 = a3;
  registrationDictsByPid = self->_registrationDictsByPid;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000B7D0;
  v7[3] = &unk_10001D640;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)registrationDictsByPid enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)unregisterClient:(id)a3 withIdentifier:(id)a4 parent:(int)a5
{
  v8 = a3;
  v9 = a4;
  guard = self->_guard;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000BB70;
  v13[3] = &unk_10001D668;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_sync(guard, v13);
}

@end