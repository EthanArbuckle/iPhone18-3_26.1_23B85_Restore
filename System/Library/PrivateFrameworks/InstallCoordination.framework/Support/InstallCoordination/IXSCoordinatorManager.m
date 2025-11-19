@interface IXSCoordinatorManager
+ (NSURL)saveDir;
+ (id)prioritySaveURL;
+ (id)savePathForCoordinator:(id)a3;
+ (id)sharedInstance;
- (BOOL)_coordinator:(id)a3 isApplicableToConnection:(id)a4;
- (BOOL)_onMapQueue_removeCoordinatorFromMaps:(id)a3;
- (BOOL)prioritizeCoordinator:(id)a3;
- (BOOL)prioritizeCoordinatorWithIdentity:(id)a3;
- (IXSCoordinatorManager)init;
- (id)_lookupCoordinatorForIdentity:(id)a3;
- (id)_lookupCoordinatorForIdentity:(id)a3 checkingScopeForConnection:(id)a4 error:(id *)a5;
- (id)coordinatorForIdentity:(id)a3 connection:(id)a4 error:(id *)a5 creatingIfNotExisting:(id)a6;
- (id)coordinatorForUUID:(id)a3;
- (id)coordinatorsForBundleIdentifier:(id)a3;
- (unint64_t)coordinatorCount;
- (void)_enumerateCoordinatorsForConnection:(id)a3 usingBlock:(id)a4;
- (void)_onMapQueue_saveIdentityPriority;
- (void)clearAllCoordinatorsForCreator:(unint64_t)a3;
- (void)connectionInvalidated:(id)a3;
- (void)convertProcessScopedCoordinatorToGlobalScoped:(id)a3;
- (void)performCreationBlockingOperation:(id)a3;
- (void)unregisterCoordinator:(id)a3;
@end

@implementation IXSCoordinatorManager

+ (id)savePathForCoordinator:(id)a3
{
  v4 = a3;
  v5 = [a1 saveDir];
  v6 = [v4 identity];

  v7 = [v6 uniqueIdentifier];
  v8 = [NSString stringWithFormat:@"%@.plist", v7];
  v9 = [v5 URLByAppendingPathComponent:v8 isDirectory:0];

  return v9;
}

+ (NSURL)saveDir
{
  v2 = +[IXGlobalConfiguration sharedInstance];
  v3 = [v2 dataDirectoryAbortingOnError];

  v4 = [v3 URLByAppendingPathComponent:@"Coordinators" isDirectory:1];

  return v4;
}

+ (id)prioritySaveURL
{
  v2 = +[IXGlobalConfiguration sharedInstance];
  v3 = [v2 dataDirectoryAbortingOnError];

  v4 = [v3 URLByAppendingPathComponent:@"CoordinatorPriority.plist" isDirectory:0];

  return v4;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DFCC;
  block[3] = &unk_100100D40;
  block[4] = a1;
  if (qword_100121C90 != -1)
  {
    dispatch_once(&qword_100121C90, block);
  }

  v2 = qword_100121C88;

  return v2;
}

- (unint64_t)coordinatorCount
{
  v3 = [(IXSCoordinatorManager *)self mapQueue];
  dispatch_assert_queue_not_V2(v3);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000E0C8;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (IXSCoordinatorManager)init
{
  v160.receiver = self;
  v160.super_class = IXSCoordinatorManager;
  v2 = [(IXSCoordinatorManager *)&v160 init];
  if (!v2)
  {
    return v2;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.installcoordinationd.IXSCoordinatorManager", v3);
  mapQueue = v2->_mapQueue;
  v2->_mapQueue = v4;

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.installcoordinationd.IXSCoordinatorManager.create", v6);
  createQueue = v2->_createQueue;
  v2->_createQueue = v7;

  v9 = &MKBDeviceUnlockedSinceBoot_ptr;
  v10 = objc_opt_new();
  connectionToProcessScopedCoordinatorMap = v2->_connectionToProcessScopedCoordinatorMap;
  v2->_connectionToProcessScopedCoordinatorMap = v10;

  v12 = [objc_opt_class() saveDir];
  v13 = +[IXFileManager defaultManager];
  v159 = 0;
  v119 = v12;
  v14 = [v13 urlsForItemsInDirectoryAtURL:v12 ignoringSymlinks:1 error:&v159];
  v15 = v159;

  v118 = v14;
  if (v14)
  {
    v16 = objc_opt_new();
    identityToCoordinatorMap = v2->_identityToCoordinatorMap;
    v2->_identityToCoordinatorMap = v16;

    v18 = objc_opt_new();
    uuidToCoordinatorMap = v2->_uuidToCoordinatorMap;
    v2->_uuidToCoordinatorMap = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v120 = dispatch_queue_create("com.apple.installcoordinationd.IXSCoordinatorManager.cancelQueue", v20);

    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    obj = v14;
    v21 = [obj countByEnumeratingWithState:&v155 objects:v172 count:16];
    if (!v21)
    {
      goto LABEL_47;
    }

    v22 = v21;
    v23 = *v156;
    v129 = *v156;
    while (1)
    {
      v24 = 0;
      v131 = v22;
      do
      {
        if (*v156 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v155 + 1) + 8 * v24);
        v26 = objc_autoreleasePoolPush();
        v27 = [v25 lastPathComponent];
        v28 = [v27 hasPrefix:@"."];

        if ((v28 & 1) == 0)
        {
          v154 = v15;
          v29 = [NSData dataWithContentsOfURL:v25 options:3 error:&v154];
          v30 = v154;

          if (v29)
          {
            v31 = [NSKeyedUnarchiver alloc];
            v153 = v30;
            v32 = [v31 initForReadingFromData:v29 error:&v153];
            v15 = v153;

            if (v32)
            {
              v33 = [NSSet setWithObjects:objc_opt_class(), 0];
              v34 = [v32 decodeObjectOfClasses:v33 forKey:NSKeyedArchiveRootObjectKey];
              if (v34)
              {
                v35 = v34;
                [v32 finishDecoding];

                v36 = [v35 identity];

                if (v36)
                {
                  [v35 setIsTracked:1];
                  v152 = 0;
                  v37 = [v35 awakeFromSerializationWithError:&v152];
                  v38 = v152;
                  v39 = v38;
                  if (!v37)
                  {
                    goto LABEL_44;
                  }

                  v125 = v38;
                  v40 = [v35 identity];
                  v41 = [v35 uniqueIdentifier];
                  v42 = [(NSMutableDictionary *)v2->_identityToCoordinatorMap objectForKeyedSubscript:v40];
                  v43 = [(NSMutableDictionary *)v2->_uuidToCoordinatorMap objectForKeyedSubscript:v41];
                  v123 = v41;
                  v124 = v43;
                  if (v42)
                  {
                    v121 = v40;
                    v44 = sub_1000031B0(off_100121958);
                    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315906;
                      v165 = "[IXSCoordinatorManager init]";
                      v166 = 2112;
                      v167 = v42;
                      v168 = 2112;
                      v169 = v35;
                      v170 = 2112;
                      v171 = 0;
                      _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%s: Discovered already registered coordinator %@; canceling deserialized coordinator with the same identity %@ : %@", buf, 0x2Au);
                    }

                    v45 = 1;
                    v47 = sub_1000405FC("[IXSCoordinatorManager init]", 150, @"IXErrorDomain", 1uLL, 0, 0, @"Discovered already registered coordinator %@ canceling deserialized coordinator with the same identity %@", v46, v42);;

                    v125 = v47;
                    v40 = v121;
                  }

                  else
                  {
                    if (v43)
                    {
                      v122 = v40;
                      v53 = sub_1000031B0(off_100121958);
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315906;
                        v165 = "[IXSCoordinatorManager init]";
                        v166 = 2112;
                        v167 = v124;
                        v168 = 2112;
                        v169 = v35;
                        v170 = 2112;
                        v171 = 0;
                        _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%s: Discovered already registered coordinator %@; canceling deserialized coordinator with the same UUID %@ : %@", buf, 0x2Au);
                      }

                      v45 = 1;
                      v55 = sub_1000405FC("[IXSCoordinatorManager init]", 153, @"IXErrorDomain", 1uLL, 0, 0, @"Discovered already registered coordinator %@ canceling deserialized coordinator with the same UUID %@", v54, v124);;

                      v125 = v55;
                      v40 = v122;
                    }

                    else
                    {
                      [(NSMutableDictionary *)v2->_identityToCoordinatorMap setObject:v35 forKeyedSubscript:v40];
                      [(NSMutableDictionary *)v2->_uuidToCoordinatorMap setObject:v35 forKeyedSubscript:v41];
                      v45 = 0;
                    }

                    v42 = 0;
                  }

                  v39 = v125;
                  if (v45)
                  {
LABEL_44:
                    [v35 setIsTracked:0];
                    v149[0] = _NSConcreteStackBlock;
                    v149[1] = 3221225472;
                    v149[2] = sub_10000F2B8;
                    v149[3] = &unk_100100ED8;
                    v150 = v35;
                    v39 = v39;
                    v151 = v39;
                    sub_100071134(v120, v149);
                  }

                  v22 = v131;
                  goto LABEL_32;
                }

                v50 = sub_1000031B0(off_100121958);
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v165 = "[IXSCoordinatorManager init]";
                  v166 = 2112;
                  v167 = v35;
                  v51 = v50;
                  v52 = "%s: Somehow got coordinator without identity : %@";
LABEL_28:
                  _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, v52, buf, 0x16u);
                }

                goto LABEL_30;
              }

              v49 = sub_1000031B0(off_100121958);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                v126 = [v25 path];
                v57 = [v32 error];
                *buf = 136315650;
                v165 = "[IXSCoordinatorManager init]";
                v166 = 2112;
                v167 = v126;
                v168 = 2112;
                v169 = v57;
                v58 = v57;
                _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%s: Failed to decode coordinator from data at %@ : %@", buf, 0x20u);
              }

              [v32 finishDecoding];
            }

            else
            {
              v33 = sub_1000031B0(off_100121958);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v48 = [v25 path];
                *buf = 136315650;
                v165 = "[IXSCoordinatorManager init]";
                v166 = 2112;
                v167 = v48;
                v168 = 2112;
                v169 = v15;
                _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s: Failed to create unarchiver to deserialize coordinator at %@ : %@", buf, 0x20u);
              }
            }

            v35 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v50 = [v25 path];
              *buf = 136315394;
              v165 = "[IXSCoordinatorManager init]";
              v166 = 2112;
              v167 = v50;
              v51 = v35;
              v52 = "%s: Failed to decode coordinator from %@";
              goto LABEL_28;
            }

LABEL_30:
            v22 = v131;
          }

          else
          {
            v32 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v56 = [v25 path];
              *buf = 136315650;
              v165 = "[IXSCoordinatorManager init]";
              v166 = 2112;
              v167 = v56;
              v168 = 2112;
              v169 = v30;
              _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s: Failed to deserialize coordinator at %@ : %@", buf, 0x20u);
            }

            v15 = v30;
            v22 = v131;
          }

          v35 = +[IXFileManager defaultManager];
          [v35 removeItemAtURL:v25 error:0];
LABEL_32:

          v23 = v129;
        }

        objc_autoreleasePoolPop(v26);
        v24 = v24 + 1;
      }

      while (v22 != v24);
      v59 = [obj countByEnumeratingWithState:&v155 objects:v172 count:16];
      v22 = v59;
      if (!v59)
      {
LABEL_47:

        v60 = v15;
        v9 = &MKBDeviceUnlockedSinceBoot_ptr;
        v61 = v120;
        goto LABEL_57;
      }
    }
  }

  v62 = [v15 domain];
  if (![v62 isEqualToString:NSPOSIXErrorDomain])
  {

    goto LABEL_54;
  }

  v63 = [v15 code];

  if (v63 != 2)
  {
LABEL_54:
    v61 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v165 = "[IXSCoordinatorManager init]";
      v166 = 2112;
      v167 = v119;
      v168 = 2112;
      v169 = v15;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%s: Failed to enumerate saved coordinators at %@ : %@", buf, 0x20u);
    }

    v60 = v15;
    goto LABEL_57;
  }

  v64 = +[IXFileManager defaultManager];
  v148 = v15;
  v65 = [v64 createDirectoryAtURL:v119 withIntermediateDirectories:1 mode:493 class:4 error:&v148];
  v60 = v148;

  if ((v65 & 1) == 0)
  {
    v61 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v66 = [v119 path];
      *buf = 136315650;
      v165 = "[IXSCoordinatorManager init]";
      v166 = 2112;
      v167 = v66;
      v168 = 2112;
      v169 = v60;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%s: Failed to create coordinator save directory at %@: %@", buf, 0x20u);
    }

LABEL_57:
  }

  if (!v2->_identityToCoordinatorMap || !v2->_uuidToCoordinatorMap)
  {
    v67 = v9[398];
    v68 = objc_opt_new();
    v69 = v2->_identityToCoordinatorMap;
    v2->_identityToCoordinatorMap = v68;

    v70 = v9[398];
    v71 = objc_opt_new();
    v72 = v2->_uuidToCoordinatorMap;
    v2->_uuidToCoordinatorMap = v71;
  }

  [objc_opt_class() prioritySaveURL];
  v132 = v147[1] = v60;
  v73 = [NSData dataWithContentsOfURL:"dataWithContentsOfURL:options:error:" options:? error:?];
  v74 = v60;

  v130 = v73;
  if (v73)
  {
    v147[0] = v74;
    v75 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v73 error:v147];
    v76 = v147[0];

    if (v75)
    {
      v127 = v76;
      v77 = objc_opt_new();
      v143 = 0u;
      v144 = 0u;
      v145 = 0u;
      v146 = 0u;
      v128 = v75;
      v78 = v75;
      v79 = [v78 countByEnumeratingWithState:&v143 objects:v163 count:16];
      if (v79)
      {
        v80 = v79;
        v81 = 0;
        v82 = *v144;
        do
        {
          v83 = 0;
          v84 = v81;
          do
          {
            if (*v144 != v82)
            {
              objc_enumerationMutation(v78);
            }

            v85 = *(*(&v143 + 1) + 8 * v83);
            v142 = v84;
            v86 = [v85 resolvePersonaWithError:&v142];
            v81 = v142;

            if (v86)
            {
              [(NSMutableArray *)v77 addObject:v85];
            }

            else
            {
              v87 = sub_1000031B0(off_100121958);
              if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
              {
                v88 = [v85 bundleID];
                *buf = 136315650;
                v165 = "[IXSCoordinatorManager init]";
                v166 = 2112;
                v167 = v88;
                v168 = 2112;
                v169 = v81;
                _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "%s: Failed to resolve persona %@ : %@", buf, 0x20u);
              }
            }

            v83 = v83 + 1;
            v84 = v81;
          }

          while (v80 != v83);
          v80 = [v78 countByEnumeratingWithState:&v143 objects:v163 count:16];
        }

        while (v80);
      }

      else
      {
        v81 = 0;
      }

      identityPriority = v2->_identityPriority;
      v2->_identityPriority = v77;

      v76 = v127;
      v75 = v128;
    }

    else
    {
      v81 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v165 = "[IXSCoordinatorManager init]";
        v166 = 2112;
        v167 = v76;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%s: Failed to deserialize identity priority data: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v89 = [v74 domain];
    if ([v89 isEqualToString:NSCocoaErrorDomain])
    {
      v90 = [v74 code];

      if (v90 == 260)
      {
        goto LABEL_89;
      }
    }

    else
    {
    }

    v75 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      v91 = [v132 path];
      *buf = 136315650;
      v165 = "[IXSCoordinatorManager init]";
      v166 = 2112;
      v167 = v91;
      v168 = 2112;
      v169 = v74;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%s: Failed to read identity priority serialization from %@ : %@", buf, 0x20u);
    }

    v76 = v74;
  }

  v74 = v76;
LABEL_89:
  if (!v2->_identityPriority)
  {
    v93 = [(IXSCoordinatorManager *)v2 identityToCoordinatorMap];
    v94 = [v93 allKeys];
    v95 = [v94 mutableCopy];
    v96 = v2->_identityPriority;
    v2->_identityPriority = v95;

    v97 = +[IXFileManager defaultManager];
    [v97 removeItemAtURL:v132 error:0];
  }

  v98 = objc_opt_new();
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v99 = [(IXSCoordinatorManager *)v2 identityPriority];
  v100 = [v99 countByEnumeratingWithState:&v138 objects:v162 count:16];
  if (v100)
  {
    v101 = v100;
    v102 = *v139;
    do
    {
      for (i = 0; i != v101; i = i + 1)
      {
        if (*v139 != v102)
        {
          objc_enumerationMutation(v99);
        }

        v104 = *(*(&v138 + 1) + 8 * i);
        v105 = [(IXSCoordinatorManager *)v2 identityToCoordinatorMap];
        v106 = [v105 objectForKeyedSubscript:v104];

        if (!v106)
        {
          [v98 addObject:v104];
        }
      }

      v101 = [v99 countByEnumeratingWithState:&v138 objects:v162 count:16];
    }

    while (v101);
  }

  v107 = [(IXSCoordinatorManager *)v2 identityPriority];
  [v107 removeObjectsInArray:v98];

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v108 = [(IXSCoordinatorManager *)v2 identityToCoordinatorMap];
  v109 = [v108 countByEnumeratingWithState:&v134 objects:v161 count:16];
  if (v109)
  {
    v110 = v109;
    v111 = *v135;
    do
    {
      for (j = 0; j != v110; j = j + 1)
      {
        if (*v135 != v111)
        {
          objc_enumerationMutation(v108);
        }

        v113 = *(*(&v134 + 1) + 8 * j);
        v114 = [(IXSCoordinatorManager *)v2 identityPriority];
        v115 = [v114 containsObject:v113];

        if ((v115 & 1) == 0)
        {
          v116 = [(IXSCoordinatorManager *)v2 identityPriority];
          [v116 addObject:v113];
        }
      }

      v110 = [v108 countByEnumeratingWithState:&v134 objects:v161 count:16];
    }

    while (v110);
  }

  return v2;
}

- (BOOL)_onMapQueue_removeCoordinatorFromMaps:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatorManager *)self mapQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 isTracked])
  {
    v6 = [v4 uniqueIdentifier];
    if (v6)
    {
      v7 = [(IXSCoordinatorManager *)self uuidToCoordinatorMap];
      v8 = [v7 objectForKeyedSubscript:v6];

      if (v8)
      {
        v9 = [v4 identity];
        v10 = v9 != 0;
        if (v9)
        {
          [v4 setIsTracked:0];
          v11 = [(IXSCoordinatorManager *)self identityToCoordinatorMap];
          [v11 removeObjectForKey:v9];

          v12 = [(IXSCoordinatorManager *)self uuidToCoordinatorMap];
          [v12 removeObjectForKey:v6];

          v13 = [(IXSCoordinatorManager *)self identityPriority];
          [v13 removeObject:v9];

          v14 = [v4 scopedToConnection];
          v15 = [v14 connectionUUID];

          if (v15)
          {
            v16 = [(IXSCoordinatorManager *)self connectionToProcessScopedCoordinatorMap];
            v17 = [v16 objectForKeyedSubscript:v15];

            [v17 removeObject:v4];
            if (![v17 count])
            {
              v18 = [(IXSCoordinatorManager *)self connectionToProcessScopedCoordinatorMap];
              [v18 removeObjectForKey:v15];
            }
          }
        }

        goto LABEL_14;
      }

      [v4 setIsTracked:0];
    }

    v10 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (void)_onMapQueue_saveIdentityPriority
{
  v3 = [(IXSCoordinatorManager *)self mapQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [objc_opt_class() prioritySaveURL];
  v5 = [(IXSCoordinatorManager *)self identityPriority];
  v12 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v12];
  v7 = v12;

  if (!v6)
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[IXSCoordinatorManager _onMapQueue_saveIdentityPriority]";
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Failed to archive identity priority array: %@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v11 = v7;
  v8 = [v6 writeToURL:v4 options:1 error:&v11];
  v9 = v11;

  if ((v8 & 1) == 0)
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = "[IXSCoordinatorManager _onMapQueue_saveIdentityPriority]";
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Failed to save coordinator priority array to %@ : %@", buf, 0x20u);
    }

    v7 = v9;
LABEL_8:

    v9 = v7;
  }
}

- (BOOL)_coordinator:(id)a3 isApplicableToConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    goto LABEL_5;
  }

  if ([v5 coordinatorScope] != 1)
  {
    goto LABEL_5;
  }

  v7 = [v5 scopedToConnection];
  v8 = [v7 connectionUUID];

  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = [v6 connectionUUID];
  v10 = [v9 isEqual:v8];

  if (!v10)
  {
    v11 = 0;
  }

  else
  {
LABEL_5:
    v11 = 1;
  }

  return v11;
}

- (id)coordinatorForUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000F898;
  v16 = sub_10000F8A8;
  v17 = 0;
  v5 = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F8B0;
  block[3] = &unk_1001012B0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)coordinatorsForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FA1C;
  block[3] = &unk_100101300;
  block[4] = self;
  v12 = v4;
  v13 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_sync(v6, block);

  v9 = [v7 copy];

  return v9;
}

- (id)_lookupCoordinatorForIdentity:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000F898;
  v16 = sub_10000F8A8;
  v17 = 0;
  v5 = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FC9C;
  block[3] = &unk_1001012B0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_lookupCoordinatorForIdentity:(id)a3 checkingScopeForConnection:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_10000F898;
  v39 = sub_10000F8A8;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v10 = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010070;
  block[3] = &unk_100101328;
  v29 = &v35;
  block[4] = self;
  v11 = v8;
  v28 = v11;
  v30 = &v31;
  dispatch_sync(v10, block);

  if (!v36[5])
  {
    goto LABEL_6;
  }

  if (*(v32 + 24) == 1)
  {
    v12 = [v9 clientName];
    v14 = sub_1000405FC("[IXSCoordinatorManager _lookupCoordinatorForIdentity:checkingScopeForConnection:error:]", 399, @"IXErrorDomain", 0x2FuLL, 0, 0, @"Creator of this process-scoped coordinator, %@, has gone away canceling coordinator.", v13, v12);;
    [v36[5] cancelForReason:v14 client:15 error:0];
    v15 = v36[5];
    v36[5] = 0;

    if (!v36[5])
    {
LABEL_6:
      v17 = [v9 clientName];
      v16 = sub_1000405FC("[IXSCoordinatorManager _lookupCoordinatorForIdentity:checkingScopeForConnection:error:]", 411, @"IXErrorDomain", 6uLL, 0, 0, @"Failed to locate an existing coordinated app install with bundle ID %@ for client %@", v18, v11);
LABEL_8:

      goto LABEL_9;
    }
  }

  if (![IXSCoordinatorManager _coordinator:"_coordinator:isApplicableToConnection:" isApplicableToConnection:?])
  {
    v19 = [v36[5] identity];
    v20 = [v36[5] uniqueIdentifier];
    v26 = [v9 clientName];
    v16 = sub_1000405FC("[IXSCoordinatorManager _lookupCoordinatorForIdentity:checkingScopeForConnection:error:]", 407, @"IXErrorDomain", 0x30uLL, 0, 0, @"Coordinator found for %@ with UUID %@ was process-scoped, but not for client %@.", v21, v19);

    v17 = v36[5];
    v36[5] = 0;
    goto LABEL_8;
  }

  v16 = 0;
LABEL_9:
  v22 = v36[5];
  if (a5 && !v22)
  {
    v23 = v16;
    *a5 = v16;
    v22 = v36[5];
  }

  v24 = v22;

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v24;
}

- (id)coordinatorForIdentity:(id)a3 connection:(id)a4 error:(id *)a5 creatingIfNotExisting:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_10000F898;
  v38 = sub_10000F8A8;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10000F898;
  v32 = sub_10000F8A8;
  obj = 0;
  v13 = [(IXSCoordinatorManager *)self _lookupCoordinatorForIdentity:v10 checkingScopeForConnection:v11 error:&obj];
  objc_storeStrong(&v39, obj);
  v33 = v13;
  if (!v29[5])
  {
    v14 = [v35[5] domain];
    if ([v14 isEqualToString:@"IXErrorDomain"])
    {
      v15 = [v35[5] code];

      if (v12 && v15 == 6)
      {
        v16 = v35[5];
        v35[5] = 0;

        v17 = [(IXSCoordinatorManager *)self createQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100010414;
        block[3] = &unk_100101378;
        v25 = &v28;
        block[4] = self;
        v22 = v10;
        v23 = v11;
        v24 = v12;
        v26 = &v34;
        dispatch_sync(v17, block);
      }
    }

    else
    {
    }
  }

  v18 = v29[5];
  if (a5 && !v18)
  {
    *a5 = v35[5];
    v18 = v29[5];
  }

  v19 = v18;
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);

  return v19;
}

- (void)performCreationBlockingOperation:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatorManager *)self createQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000109E8;
  v7[3] = &unk_1001013A0;
  v8 = v4;
  v6 = v4;
  sub_100071134(v5, v7);
}

- (void)unregisterCoordinator:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010BA8;
  block[3] = &unk_1001012B0;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  v9 = v6;
  dispatch_sync(v5, block);

  if (*(v12 + 24) == 1)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[IXSCoordinatorManager unregisterCoordinator:]";
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Unregistered coordinator: %@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (BOOL)prioritizeCoordinatorWithIdentity:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010DD4;
  block[3] = &unk_1001011C8;
  block[4] = self;
  v6 = v4;
  v11 = v6;
  v12 = &v13;
  dispatch_sync(v5, block);

  if (*(v14 + 24) == 1)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[IXSCoordinatorManager prioritizeCoordinatorWithIdentity:]";
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Prioritized coordinator with ID %@", buf, 0x16u);
    }

    v8 = *(v14 + 24);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v8 & 1;
}

- (BOOL)prioritizeCoordinator:(id)a3
{
  v4 = [a3 identity];
  if (v4)
  {
    v5 = [(IXSCoordinatorManager *)self prioritizeCoordinatorWithIdentity:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_enumerateCoordinatorsForConnection:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10000F898;
  v23 = sub_10000F8A8;
  v24 = objc_opt_new();
  v8 = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011118;
  block[3] = &unk_1001013C8;
  block[4] = self;
  block[5] = &v19;
  dispatch_sync(v8, block);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v20[5];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v25 count:16];
  if (v10)
  {
    v11 = *v15;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v14 + 1) + 8 * v12);
      if ((!v6 || [(IXSCoordinatorManager *)self _coordinator:*(*(&v14 + 1) + 8 * v12) isApplicableToConnection:v6, v14]) && !v7[2](v7, v13))
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v25 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v19, 8);
}

- (void)clearAllCoordinatorsForCreator:(unint64_t)a3
{
  v5 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = IXStringForClientID(a3);
    *buf = 136315394;
    *&buf[4] = "[IXSCoordinatorManager clearAllCoordinatorsForCreator:]";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Clearing all coordinators for creator %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v22 = sub_10000F898;
  v23 = sub_10000F8A8;
  v24 = 0;
  v7 = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000115BC;
  block[3] = &unk_100101268;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(v7, block);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = *(*&buf[8] + 40);
  v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (!a3 || [*(*(&v15 + 1) + 8 * v12) creator] == a3)
        {
          v14 = sub_1000405FC("[IXSCoordinatorManager clearAllCoordinatorsForCreator:]", 579, @"IXErrorDomain", 1uLL, 0, 0, @"Clearing all coordinators", v9, v15);
          [v13 cancelForReason:v14 client:15 error:0];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(buf, 8);
}

- (void)connectionInvalidated:(id)a3
{
  v4 = a3;
  v5 = [v4 connectionUUID];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10000F898;
  v26 = sub_10000F8A8;
  v27 = 0;
  v6 = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000118B4;
  block[3] = &unk_1001012B0;
  v21 = &v22;
  block[4] = self;
  v7 = v5;
  v20 = v7;
  dispatch_sync(v6, block);

  if (v23[5])
  {
    v8 = [v4 clientName];
    v10 = sub_1000405FC("[IXSCoordinatorManager connectionInvalidated:]", 609, @"IXErrorDomain", 0x2FuLL, 0, 0, @"Creator of this process-scoped coordinator, %@, has gone away canceling coordinator.", v9, v8);;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v11 = v23[5];
    v12 = [v11 countByEnumeratingWithState:&v15 objects:v28 count:16];
    if (v12)
    {
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v15 + 1) + 8 * v14) cancelForReason:v10 client:15 error:0];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v15 objects:v28 count:16];
      }

      while (v12);
    }
  }

  _Block_object_dispose(&v22, 8);
}

- (void)convertProcessScopedCoordinatorToGlobalScoped:(id)a3
{
  v4 = a3;
  v5 = [v4 scopedToConnection];
  v6 = [v5 connectionUUID];

  v7 = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011B1C;
  block[3] = &unk_100101300;
  block[4] = self;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  dispatch_sync(v7, block);
}

@end