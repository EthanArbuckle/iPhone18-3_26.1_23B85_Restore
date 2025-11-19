@interface NPSSettings
+ (BOOL)domainShouldSyncFirst:(id)a3 key:(id)a4;
+ (id)bbAppsSettings;
+ (id)preprocessItemSyncGroups:(id)a3 forDomain:(id)a4 key:(id)a5;
- (id)_settingBundlesInDirectories:(id)a3;
- (void)loadSettingsBundles;
@end

@implementation NPSSettings

- (void)loadSettingsBundles
{
  v3 = objc_opt_new();
  syncedUserDefaults = self->_syncedUserDefaults;
  self->_syncedUserDefaults = v3;

  v5 = objc_opt_new();
  permittedUserDefaults = self->_permittedUserDefaults;
  self->_permittedUserDefaults = v5;

  v7 = [@"/" stringByAppendingPathComponent:@"System/Library/PreferencesSyncBundles"];
  v226[0] = v7;
  v226[1] = @"/System/Cryptexes/App/System/Library/PreferencesSyncBundles";
  v8 = &MKBDeviceUnlockedSinceBoot_ptr;
  v9 = [NSArray arrayWithObjects:v226 count:2];

  v10 = [(NPSSettings *)self _settingBundlesInDirectories:v9];
  if ([v10 count])
  {
    v119 = v10;
    v120 = self;
    v208 = 0u;
    v207 = 0u;
    v206 = 0u;
    v205 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v205 objects:v225 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v206;
      v14 = &MKBDeviceUnlockedSinceBoot_ptr;
      v123 = *v206;
      do
      {
        v15 = 0;
        v124 = v12;
        do
        {
          if (*v206 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v205 + 1) + 8 * v15);
          v17 = [objc_alloc(v14[198]) initWithPath:v16];
          v18 = v17;
          if (v17)
          {
            v19 = [(__CFString *)v17 objectForInfoDictionaryKey:@"NPSDomains"];
            v20 = v8;
            if (!v19 || (v21 = v8[294], v22 = objc_opt_class(), sub_100002640(v18, @"NPSDomains", 0, v19, v22)))
            {
              v126 = v19;
              v127 = v15;
              v204 = 0u;
              v202 = 0u;
              v203 = 0u;
              v201 = 0u;
              v23 = v19;
              v24 = &MKBDeviceUnlockedSinceBoot_ptr;
              v148 = [v23 countByEnumeratingWithState:&v201 objects:v224 count:16];
              if (!v148)
              {
                goto LABEL_126;
              }

              v147 = *v202;
              v144 = v23;
              while (1)
              {
                v25 = 0;
                do
                {
                  if (*v202 != v147)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v26 = *(*(&v201 + 1) + 8 * v25);
                  v27 = v24[297];
                  v28 = objc_opt_class();
                  if (sub_100002640(v18, @"NPSDomains", 1, v26, v28))
                  {
                    v29 = [v26 objectForKey:@"NPSDefaultsDomain"];
                    v30 = objc_opt_class();
                    v146 = v29;
                    if (!sub_100002640(v18, @"NPSDefaultsDomain", 0, v29, v30))
                    {
                      goto LABEL_101;
                    }

                    v31 = [v26 objectForKey:@"NPSDefaultsKeys"];
                    if (v31)
                    {
                      v32 = *(v20 + 2352);
                      v33 = objc_opt_class();
                      if (!sub_100002640(v18, @"NPSDefaultsKeys", 0, v31, v33))
                      {
                        goto LABEL_100;
                      }
                    }

                    v34 = [v26 objectForKey:{@"NPSDefaultsKeyPrefixes", v119}];
                    if (v34)
                    {
                      v35 = *(v20 + 2352);
                      v36 = objc_opt_class();
                      if (!sub_100002640(v18, @"NPSDefaultsKeyPrefixes", 0, v34, v36))
                      {
                        goto LABEL_99;
                      }
                    }

                    v145 = v34;
                    if (![v31 count] && !objc_msgSend(v34, "count"))
                    {
                      v46 = nps_daemon_log;
                      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412802;
                        v216 = @"NPSDefaultsKeys";
                        v217 = 2112;
                        v218 = @"NPSDefaultsKeyPrefixes";
                        v219 = 2112;
                        v220 = v18;
                        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Missing %@ or %@ entry for bundle: %@.", buf, 0x20u);
                      }

                      goto LABEL_99;
                    }

                    v37 = [v26 objectForKey:@"NPSAction"];
                    v38 = objc_opt_class();
                    if (!sub_100002640(v18, @"NPSAction", 0, v37, v38))
                    {
                      goto LABEL_98;
                    }

                    v39 = [v26 objectForKey:@"NPSContainer"];
                    if (v39)
                    {
                      v40 = objc_opt_class();
                      if (!sub_100002640(v18, @"NPSContainer", 0, v39, v40))
                      {
                        goto LABEL_97;
                      }
                    }

                    v41 = [v26 objectForKey:@"NPSAppGroupContainer"];
                    if (v41)
                    {
                      v42 = objc_opt_class();
                      if (!sub_100002640(v18, @"NPSAppGroupContainer", 0, v41, v42))
                      {
                        goto LABEL_96;
                      }
                    }

                    v140 = v41;
                    v141 = v39;
                    v142 = v37;
                    v43 = [v26 objectForKey:@"NPSChangeNotificationName"];
                    v44 = +[NSMutableSet set];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v45 = [NSArray arrayWithObject:v43];
                    }

                    else
                    {
                      v45 = v43;
                    }

                    v47 = v45;
                    v143 = v45;
                    v139 = v43;
                    if (!v45)
                    {
                      goto LABEL_45;
                    }

                    v48 = objc_opt_class();
                    if (!sub_100002640(v18, @"NPSChangeNotificationName", 0, v47, v48))
                    {
                      goto LABEL_95;
                    }

                    v134 = v31;
                    v199 = 0u;
                    v200 = 0u;
                    v197 = 0u;
                    v198 = 0u;
                    v49 = v47;
                    v50 = [v49 countByEnumeratingWithState:&v197 objects:v223 count:16];
                    if (v50)
                    {
                      v51 = v50;
                      v52 = *v198;
                      do
                      {
                        for (i = 0; i != v51; i = i + 1)
                        {
                          if (*v198 != v52)
                          {
                            objc_enumerationMutation(v49);
                          }

                          v54 = *(*(&v197 + 1) + 8 * i);
                          v55 = objc_opt_class();
                          if (sub_100002640(v18, @"NPSChangeNotificationName", 1, v54, v55))
                          {
                            [v44 addObject:v54];
                          }
                        }

                        v51 = [v49 countByEnumeratingWithState:&v197 objects:v223 count:16];
                      }

                      while (v51);
                    }

                    v24 = &MKBDeviceUnlockedSinceBoot_ptr;
                    v31 = v134;
LABEL_45:
                    v56 = [v26 objectForKey:@"NPSCloudEnabled"];
                    if (v56)
                    {
                      v57 = objc_opt_class();
                      v47 = v143;
                      if (sub_100002640(v18, @"NPSCloudEnabled", 0, v56, v57))
                      {
                        v137 = v56;
                        v130 = [v56 BOOLValue];
                        goto LABEL_49;
                      }

LABEL_94:

                      v43 = v139;
LABEL_95:

                      v39 = v141;
                      v37 = v142;
                      v41 = v140;
LABEL_96:

                      v20 = 0x10003C000;
LABEL_97:

LABEL_98:
                      v34 = v145;
LABEL_99:

                      v23 = v144;
LABEL_100:

LABEL_101:
                      goto LABEL_102;
                    }

                    v137 = 0;
                    v130 = 0;
LABEL_49:
                    v58 = [v26 objectForKey:@"NPSSyncGroups"];
                    v136 = v58;
                    if (v58)
                    {
                      v138 = [NSSet setWithArray:v58];
                    }

                    else
                    {
                      v138 = 0;
                    }

                    v59 = [v26 objectForKey:@"NPSPerGizmo"];
                    if (!v59)
                    {
                      v133 = 0;
                      v128 = 0;
                      v47 = v143;
                      goto LABEL_56;
                    }

                    v60 = objc_opt_class();
                    v47 = v143;
                    if (!sub_100002640(v18, @"NPSPerGizmo", 0, v59, v60))
                    {
                      goto LABEL_93;
                    }

                    v133 = v59;
                    v128 = [v59 BOOLValue];
LABEL_56:
                    v61 = [v26 objectForKey:@"NPSMirrorableBBDomain"];
                    if (v61)
                    {
                      v62 = objc_opt_class();
                      if (!sub_100002640(v18, @"NPSMirrorableBBDomain", 0, v61, v62))
                      {
                        goto LABEL_92;
                      }
                    }

                    v132 = v61;
                    v63 = [v26 objectForKey:@"NPSMirrorableDomain"];
                    if (v63)
                    {
                      v64 = objc_opt_class();
                      if (!sub_100002640(v18, @"NPSMirrorableDomain", 0, v63, v64))
                      {
                        goto LABEL_91;
                      }
                    }

                    v129 = v63;
                    v65 = [v26 objectForKey:@"NPSMirrorableKey"];
                    if (v65)
                    {
                      v66 = objc_opt_class();
                      if (!sub_100002640(v18, @"NPSMirrorableKey", 0, v65, v66))
                      {
                        goto LABEL_90;
                      }
                    }

                    if (v132 && v129 | v65)
                    {
                      v67 = nps_daemon_log;
                      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138413058;
                        v216 = @"NPSMirrorableBBDomain";
                        v217 = 2112;
                        v218 = @"NPSMirrorableDomain";
                        v219 = 2112;
                        v220 = @"NPSMirrorableKey";
                        v221 = 2112;
                        v222 = v18;
                        v68 = v67;
                        v69 = "Key %@ mutually exclusive with keys %@ and %@ in bundle %@";
                        v70 = 42;
                        goto LABEL_69;
                      }

LABEL_90:

                      v47 = v143;
                      v63 = v129;
LABEL_91:

                      v61 = v132;
LABEL_92:

                      v59 = v133;
LABEL_93:

                      v56 = v137;
                      goto LABEL_94;
                    }

                    if ((v129 != 0) != (v65 != 0))
                    {
                      v71 = nps_daemon_log;
                      if (!os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_90;
                      }

                      *buf = 138412802;
                      v216 = @"NPSMirrorableDomain";
                      v217 = 2112;
                      v218 = @"NPSMirrorableKey";
                      v219 = 2112;
                      v220 = v18;
                      v68 = v71;
                      v69 = "Keys %@ and %@ must go together in bundle %@";
                      v70 = 32;
                      goto LABEL_69;
                    }

                    v135 = v31;
                    v122 = v65;
                    if (([(__CFString *)v142 isEqualToString:@"OneWaySync"]& 1) != 0 || [(__CFString *)v142 isEqualToString:@"TwoWaySync"])
                    {
                      v72 = [(__CFString *)v142 isEqualToString:@"TwoWaySync"];
                      v73 = [(NSMutableDictionary *)v120->_syncedUserDefaults objectForKey:v146];
                      v74 = v132;
                      if (!v73)
                      {
                        v73 = objc_opt_new();
                        [v73 setDomain:v146];
                        v75 = v65;
                        v76 = objc_opt_new();
                        [v73 setKeyArrays:v76];

                        v77 = objc_opt_new();
                        [v73 setKeyPrefixArrays:v77];

                        v65 = v75;
                        v74 = v132;
                        [(NSMutableDictionary *)v120->_syncedUserDefaults setObject:v73 forKey:v146];
                      }

                      v182[0] = _NSConcreteStackBlock;
                      v182[1] = 3221225472;
                      v182[2] = sub_1000027CC;
                      v182[3] = &unk_10003D360;
                      v183 = v18;
                      v121 = v73;
                      v184 = v121;
                      v194 = v72;
                      v185 = v141;
                      v186 = v140;
                      v195 = v130;
                      v187 = v138;
                      v188 = v146;
                      v196 = v128;
                      v189 = v74;
                      v190 = v129;
                      v191 = v65;
                      v192 = v120;
                      v193 = v44;
                      v78 = objc_retainBlock(v182);
                      v178 = 0u;
                      v179 = 0u;
                      v180 = 0u;
                      v181 = 0u;
                      v79 = v31;
                      v80 = [v79 countByEnumeratingWithState:&v178 objects:v214 count:16];
                      if (v80)
                      {
                        v81 = v80;
                        v82 = *v179;
                        do
                        {
                          for (j = 0; j != v81; j = j + 1)
                          {
                            if (*v179 != v82)
                            {
                              objc_enumerationMutation(v79);
                            }

                            (v78[2])(v78, *(*(&v178 + 1) + 8 * j), 0, @"NPSDefaultsKeys");
                          }

                          v81 = [v79 countByEnumeratingWithState:&v178 objects:v214 count:16];
                        }

                        while (v81);
                      }

                      v176 = 0u;
                      v177 = 0u;
                      v174 = 0u;
                      v175 = 0u;
                      v84 = v145;
                      v85 = [v84 countByEnumeratingWithState:&v174 objects:v213 count:16];
                      if (v85)
                      {
                        v86 = v85;
                        v87 = *v175;
                        do
                        {
                          for (k = 0; k != v86; k = k + 1)
                          {
                            if (*v175 != v87)
                            {
                              objc_enumerationMutation(v84);
                            }

                            (v78[2])(v78, *(*(&v174 + 1) + 8 * k), 1, @"NPSDefaultsKeyPrefixes");
                          }

                          v86 = [v84 countByEnumeratingWithState:&v174 objects:v213 count:16];
                        }

                        while (v86);
                      }

                      v89 = v121;
                    }

                    else
                    {
                      if (([(__CFString *)v142 isEqualToString:@"Whitelist"]& 1) == 0 && ![(__CFString *)v142 isEqualToString:@"Permitlist"])
                      {
                        v104 = nps_daemon_log;
                        if (!os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_90;
                        }

                        *buf = 138412546;
                        v216 = v142;
                        v217 = 2112;
                        v218 = v18;
                        v68 = v104;
                        v69 = "Action %@ not supported in bundle (%@).";
                        v70 = 22;
LABEL_69:
                        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, v69, buf, v70);
                        goto LABEL_90;
                      }

                      v90 = [(NSMutableDictionary *)v120->_permittedUserDefaults objectForKey:v146];
                      if (!v90)
                      {
                        v90 = objc_opt_new();
                        [v90 setDomain:v146];
                        v91 = objc_opt_new();
                        [v90 setKeys:v91];

                        v92 = objc_opt_new();
                        [v90 setKeyPrefixes:v92];

                        [(NSMutableDictionary *)v120->_permittedUserDefaults setObject:v90 forKey:v146];
                      }

                      v165[0] = _NSConcreteStackBlock;
                      v165[1] = 3221225472;
                      v165[2] = sub_100002CEC;
                      v165[3] = &unk_10003D388;
                      v166 = v18;
                      v131 = v90;
                      v167 = v131;
                      v168 = v141;
                      v169 = v146;
                      v173 = v128;
                      v170 = v140;
                      v171 = v138;
                      v172 = v44;
                      v93 = objc_retainBlock(v165);
                      v161 = 0u;
                      v162 = 0u;
                      v163 = 0u;
                      v164 = 0u;
                      v94 = v31;
                      v95 = [v94 countByEnumeratingWithState:&v161 objects:v212 count:16];
                      if (v95)
                      {
                        v96 = v95;
                        v97 = *v162;
                        do
                        {
                          for (m = 0; m != v96; m = m + 1)
                          {
                            if (*v162 != v97)
                            {
                              objc_enumerationMutation(v94);
                            }

                            (v93[2])(v93, *(*(&v161 + 1) + 8 * m), 0, @"NPSDefaultsKeys");
                          }

                          v96 = [v94 countByEnumeratingWithState:&v161 objects:v212 count:16];
                        }

                        while (v96);
                      }

                      v159 = 0u;
                      v160 = 0u;
                      v157 = 0u;
                      v158 = 0u;
                      v99 = v145;
                      v100 = [v99 countByEnumeratingWithState:&v157 objects:v211 count:16];
                      if (v100)
                      {
                        v101 = v100;
                        v102 = *v158;
                        do
                        {
                          for (n = 0; n != v101; n = n + 1)
                          {
                            if (*v158 != v102)
                            {
                              objc_enumerationMutation(v99);
                            }

                            (v93[2])(v93, *(*(&v157 + 1) + 8 * n), 1, @"NPSDefaultsKeyPrefixes");
                          }

                          v101 = [v99 countByEnumeratingWithState:&v157 objects:v211 count:16];
                        }

                        while (v101);
                      }

                      v89 = v131;
                    }

                    v24 = &MKBDeviceUnlockedSinceBoot_ptr;
                    v31 = v135;
                    v65 = v122;
                    goto LABEL_90;
                  }

LABEL_102:
                  v25 = v25 + 1;
                }

                while (v25 != v148);
                v105 = [v23 countByEnumeratingWithState:&v201 objects:v224 count:16];
                v148 = v105;
                if (!v105)
                {
LABEL_126:

                  v13 = v123;
                  v12 = v124;
                  v14 = &MKBDeviceUnlockedSinceBoot_ptr;
                  v19 = v126;
                  v15 = v127;
                  break;
                }
              }
            }

            v8 = v20;
          }

          else
          {
            v106 = nps_daemon_log;
            if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v216 = v16;
              _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "Unable to read bundle: %@", buf, 0xCu);
            }
          }

          v15 = v15 + 1;
        }

        while (v15 != v12);
        v12 = [obj countByEnumeratingWithState:&v205 objects:v225 count:16];
      }

      while (v12);
    }

    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v107 = v120->_syncedUserDefaults;
    v108 = [(NSMutableDictionary *)v107 countByEnumeratingWithState:&v153 objects:v210 count:16];
    if (v108)
    {
      v109 = v108;
      v110 = *v154;
      do
      {
        for (ii = 0; ii != v109; ii = ii + 1)
        {
          if (*v154 != v110)
          {
            objc_enumerationMutation(v107);
          }

          v112 = [(NSMutableDictionary *)v120->_syncedUserDefaults objectForKeyedSubscript:*(*(&v153 + 1) + 8 * ii), v119];
          [v112 log];
        }

        v109 = [(NSMutableDictionary *)v107 countByEnumeratingWithState:&v153 objects:v210 count:16];
      }

      while (v109);
    }

    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v113 = v120->_permittedUserDefaults;
    v114 = [(NSMutableDictionary *)v113 countByEnumeratingWithState:&v149 objects:v209 count:16];
    if (v114)
    {
      v115 = v114;
      v116 = *v150;
      do
      {
        for (jj = 0; jj != v115; jj = jj + 1)
        {
          if (*v150 != v116)
          {
            objc_enumerationMutation(v113);
          }

          v118 = [(NSMutableDictionary *)v120->_permittedUserDefaults objectForKeyedSubscript:*(*(&v149 + 1) + 8 * jj), v119];
          [v118 log];
        }

        v115 = [(NSMutableDictionary *)v113 countByEnumeratingWithState:&v149 objects:v209 count:16];
      }

      while (v115);
    }

    v10 = v119;
  }
}

+ (BOOL)domainShouldSyncFirst:(id)a3 key:(id)a4
{
  v5 = qword_100045720;
  v6 = a4;
  v7 = a3;
  if (v5 != -1)
  {
    sub_100026E5C();
  }

  v8 = [qword_100045718 objectForKeyedSubscript:v7];

  v9 = [v8 containsObject:v6];
  return v9;
}

+ (id)preprocessItemSyncGroups:(id)a3 forDomain:(id)a4 key:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = +[NSMutableSet set];
  }

  v12 = v11;

  v13 = [NPSSettings domainShouldSyncFirst:v8 key:v7];
  if (v13)
  {
    [v12 addObject:@"First"];
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [v12 removeObject:@"First"];
    if (a3)
    {
      goto LABEL_9;
    }
  }

  [v12 addObject:@"Local"];
LABEL_9:

  return v12;
}

- (id)_settingBundlesInDirectories:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v28 = [NSPredicate predicateWithFormat:@"self ENDSWITH '.bundle'"];
  v5 = +[NSFileManager defaultManager];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = 0;
    v11 = *v37;
    *&v7 = 138412546;
    v25 = v7;
    v26 = *v37;
    v27 = v5;
    do
    {
      v12 = 0;
      v29 = v8;
      do
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v36 + 1) + 8 * v12);

        v35 = 0;
        v14 = [v5 contentsOfDirectoryAtPath:v13 error:&v35];
        v10 = v35;

        if (v10)
        {
          v15 = nps_daemon_log;
          if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v25;
            v42 = v13;
            v43 = 2112;
            v44 = v10;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to list contents of %@: %@", buf, 0x16u);
          }

          v9 = v14;
        }

        else
        {
          v16 = [v14 filteredArrayUsingPredicate:v28];

          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v9 = v16;
          v17 = [v9 countByEnumeratingWithState:&v31 objects:v40 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v32;
            do
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v32 != v19)
                {
                  objc_enumerationMutation(v9);
                }

                v21 = *(*(&v31 + 1) + 8 * i);
                v22 = [v13 stringByAppendingPathComponent:{v21, v25}];
                [v4 setObject:v22 forKeyedSubscript:v21];
              }

              v18 = [v9 countByEnumeratingWithState:&v31 objects:v40 count:16];
            }

            while (v18);
          }

          v11 = v26;
          v5 = v27;
          v8 = v29;
        }

        v12 = v12 + 1;
      }

      while (v12 != v8);
      v8 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v8);
  }

  v23 = [v4 allValues];

  return v23;
}

+ (id)bbAppsSettings
{
  if (qword_100045730 != -1)
  {
    sub_100026E70();
  }

  v3 = qword_100045728;

  return v3;
}

@end