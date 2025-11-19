@interface CKDDirectoryContext
+ (id)daemonDatabaseDirectoryName;
- (CKDDirectoryContext)initWithContainer:(id)a3;
- (CKDDirectoryContext)initWithTestRootDirectory:(id)a3;
- (id)applicationCachesDirectoryForDataContainerDirectory:(id)a3 usingHomeCachesDirectory:(BOOL)a4;
@end

@implementation CKDDirectoryContext

+ (id)daemonDatabaseDirectoryName
{
  if (*MEMORY[0x277CBC820] != -1)
  {
    dispatch_once(MEMORY[0x277CBC820], &unk_28385E880);
  }

  if (*MEMORY[0x277CBC818] != 1)
  {
    objc_msgSend_stringByAppendingString_(@"cloudd_db", a2, @"_debug");
    goto LABEL_6;
  }

  if (CKIsRunningInTestHost())
  {
    objc_msgSend_stringByAppendingString_(@"cloudd_db", v2, @"_test_host");
    v3 = LABEL_6:;
    goto LABEL_8;
  }

  v3 = @"cloudd_db";
LABEL_8:

  return v3;
}

- (CKDDirectoryContext)initWithContainer:(id)a3
{
  v211 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v206.receiver = self;
  v206.super_class = CKDDirectoryContext;
  v7 = [(CKDDirectoryContext *)&v206 init];
  if (v7)
  {
    v8 = objc_msgSend_containerID(v4, v5, v6);
    v9 = *(v7 + 1);
    *(v7 + 1) = v8;

    v12 = objc_msgSend_containerIdentifier(*(v7 + 1), v10, v11);
    v13 = *(v7 + 3);
    *(v7 + 3) = v12;

    v16 = objc_msgSend_applicationBundleID(v4, v14, v15);
    v17 = objc_alloc(MEMORY[0x277CC1E50]);
    v205 = 0;
    v19 = objc_msgSend_initWithBundleIdentifier_error_(v17, v18, v16, &v205);
    v22 = v205;
    if (v22)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v23 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v208 = v16;
        v209 = 2112;
        v210 = v22;
        _os_log_impl(&dword_22506F000, v23, OS_LOG_TYPE_INFO, "Bundle ID %@ doesn't belong to an extension: %@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v24 = objc_msgSend_containingBundleRecord(v19, v20, v21);
      v27 = objc_msgSend_bundleIdentifier(v24, v25, v26);

      v16 = v27;
    }

    v28 = objc_alloc(MEMORY[0x277CC1E70]);
    v204 = v22;
    v30 = objc_msgSend_initWithBundleIdentifier_allowPlaceholder_error_(v28, v29, v16, 0, &v204);
    v201 = v204;

    if (v19)
    {
      v31 = v19;
    }

    else
    {
      v31 = v30;
    }

    v32 = v31;
    v200 = v30;
    v35 = objc_msgSend_applicationState(v30, v33, v34);
    isInstalled = objc_msgSend_isInstalled(v35, v36, v37);

    if (isInstalled)
    {
      v41 = objc_msgSend_dataContainerURL(v32, v39, v40);
    }

    else
    {
      v41 = 0;
    }

    v199 = v32;
    v202 = objc_msgSend_applicationCachesDirectoryForDataContainerDirectory_usingHomeCachesDirectory_(v7, v39, v41, 0);
    v44 = objc_msgSend_applicationBundleID(v4, v42, v43);
    v47 = objc_msgSend_personaID(v4, v45, v46);

    if (v47)
    {
      v50 = objc_msgSend_personaID(v4, v48, v49);
      v52 = objc_msgSend_stringByAppendingString_(v44, v51, v50);

      v44 = v52;
    }

    v53 = objc_msgSend_stringByAppendingString_(v44, v48, *(v7 + 3));

    objc_msgSend_environment(*(v7 + 1), v54, v55);
    v56 = CKContainerEnvironmentString();
    v58 = objc_msgSend_stringByAppendingString_(v53, v57, v56);

    v61 = objc_msgSend_accountOverrideInfo(v4, v59, v60);
    v64 = objc_msgSend_accountID(v61, v62, v63);

    v67 = objc_msgSend_accountOverrideInfo(v4, v65, v66);
    v70 = v67;
    if (v64)
    {
      v71 = objc_msgSend_accountID(v67, v68, v69);
    }

    else
    {
      v73 = objc_msgSend_altDSID(v67, v68, v69);

      if (!v73)
      {
LABEL_22:
        v203 = v41;
        if (*MEMORY[0x277CBC810] == 1)
        {
          v80 = objc_msgSend_options(v4, v74, v75);
          v83 = objc_msgSend_fakeEntitlements(v80, v81, v82);
          v86 = objc_msgSend_count(v83, v84, v85);

          if (v86)
          {
            v87 = MEMORY[0x277CCAAA0];
            v88 = objc_msgSend_options(v4, v74, v75);
            v91 = objc_msgSend_fakeEntitlements(v88, v89, v90);
            v93 = objc_msgSend_dataWithJSONObject_options_error_(v87, v92, v91, 0, 0);

            if (v93 && (v94 = objc_alloc(MEMORY[0x277CCACA8]), (v96 = objc_msgSend_initWithData_encoding_(v94, v95, v93, 4)) != 0))
            {
              v98 = v96;
              v99 = 0;
              v100 = v96;
              objc_msgSend_stringByAppendingString_(v58, v97, v96);
            }

            else
            {
              v99 = 1;
              v100 = CKShortRandomID();
              v98 = 0;
              objc_msgSend_stringByAppendingString_(v58, v101, v100);
            }
            v102 = ;

            if (v99)
            {
            }

            v58 = v102;
            v41 = v203;
          }
        }

        v103 = objc_msgSend_CKSafeHashStringForPathComponent(v58, v74, v75);
        objc_storeStrong(v7 + 2, v103);
        v106 = objc_msgSend_deviceContext(v4, v104, v105);
        v109 = objc_msgSend_testDevice(v106, v107, v108);

        if (v109)
        {
          v198 = v16;
          v112 = objc_msgSend_deviceContext(v4, v110, v111);
          v115 = objc_msgSend_testDevice(v112, v113, v114);
          v118 = objc_msgSend_daemonServer(v115, v116, v117);
          v121 = objc_msgSend_dataDirectory(v118, v119, v120);

          v124 = objc_msgSend_deviceContext(v4, v122, v123);
          v127 = objc_msgSend_testDevice(v124, v125, v126);
          v130 = objc_msgSend_deviceID(v127, v128, v129);
          v132 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v121, v131, v130, 1);

          v135 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], v133, v134);
          objc_msgSend_isDataSeparated(v135, v136, v137);
          v196 = v132;
          v197 = v19;
          if (CKBoolFromCKTernary())
          {
            v140 = MEMORY[0x277CCACA8];
            v141 = objc_msgSend_identifier(v135, v138, v139);
            v143 = objc_msgSend_stringWithFormat_(v140, v142, @"ClientData-%@", v141);
            v144 = v132;
            v145 = v143;
            v147 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v144, v146, v143, 1);
          }

          else
          {
            v147 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v132, v138, @"ClientData", 1);
          }

          v163 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v147, v148, @"cloudd_db", 1);
          v164 = *(v7 + 7);
          *(v7 + 7) = v163;

          v167 = objc_msgSend_applicationBundleID(v4, v165, v166);
          v170 = objc_msgSend_CKSafeStringForPathComponent(v167, v168, v169);
          v172 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v147, v171, v170, 1);

          if (v203)
          {
            objc_storeStrong(v7 + 4, v172);
          }

          v174 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v172, v173, v103, 1);
          v175 = *(v7 + 5);
          *(v7 + 5) = v174;

          v177 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v172, v176, @"Caches", 1);
          v179 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v177, v178, v103, 1);
          v180 = *(v7 + 6);
          *(v7 + 6) = v179;

          v19 = v197;
          v16 = v198;
          v41 = v203;
        }

        else
        {
          if (v41)
          {
            objc_storeStrong(v7 + 4, v41);
            v151 = objc_msgSend_containerDirectory(v7, v149, v150);
            v121 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v151, v152, @"CloudKit", 1);

            v154 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v121, v153, @"cloudd_db", 1);
            v155 = *(v7 + 7);
            *(v7 + 7) = v154;

            v157 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v121, v156, v103, 1);
            v158 = *(v7 + 5);
            *(v7 + 5) = v157;

            v159 = v202;
            v161 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v202, v160, v103, 1);
            v162 = *(v7 + 6);
            *(v7 + 6) = v161;

LABEL_41:
            goto LABEL_42;
          }

          v183 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v202, v110, @"cloudd_db", 1);
          v184 = *(v7 + 7);
          *(v7 + 7) = v183;

          v187 = objc_msgSend_applicationBundleID(v4, v185, v186);
          v190 = objc_msgSend_CKSafeStringForPathComponent(v187, v188, v189);
          v192 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v202, v191, v190, 1);

          v194 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v192, v193, v103, 1);

          v41 = 0;
          v195 = *(v7 + 4);
          *(v7 + 4) = 0;

          objc_storeStrong(v7 + 5, v194);
          v121 = *(v7 + 6);
          *(v7 + 6) = v194;
        }

        v159 = v202;
        goto LABEL_41;
      }

      v70 = objc_msgSend_accountOverrideInfo(v4, v74, v75);
      v71 = objc_msgSend_altDSID(v70, v76, v77);
    }

    v78 = v71;
    v79 = objc_msgSend_stringByAppendingString_(v58, v72, v71);

    v58 = v79;
    goto LABEL_22;
  }

LABEL_42:

  v181 = *MEMORY[0x277D85DE8];
  return v7;
}

- (CKDDirectoryContext)initWithTestRootDirectory:(id)a3
{
  v5 = a3;
  v27.receiver = self;
  v27.super_class = CKDDirectoryContext;
  v6 = [(CKDDirectoryContext *)&v27 init];
  v7 = v6;
  if (v6)
  {
    containerIdentifier = v6->_containerIdentifier;
    v6->_containerIdentifier = @"com.apple.test.container";

    v10 = objc_msgSend_applicationCachesDirectoryForDataContainerDirectory_usingHomeCachesDirectory_(v7, v9, v5, 0);
    objc_storeStrong(&v7->_containerDirectory, a3);
    v13 = objc_msgSend_containerDirectory(v7, v11, v12);
    v15 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v13, v14, @"CloudKit", 1);
    v17 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v15, v16, @"FakeTestHash", 1);
    containerCloudKitDirectory = v7->_containerCloudKitDirectory;
    v7->_containerCloudKitDirectory = v17;

    v20 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v10, v19, @"FakeTestHash", 1);
    daemonCachesDirectory = v7->_daemonCachesDirectory;
    v7->_daemonCachesDirectory = v20;

    v23 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v7->_daemonCachesDirectory, v22, @"SQLiteDBs", 1);
    daemonDatabaseDirectory = v7->_daemonDatabaseDirectory;
    v7->_daemonDatabaseDirectory = v23;

    dataSeparationHash = v7->_dataSeparationHash;
    v7->_dataSeparationHash = @"test";
  }

  return v7;
}

- (id)applicationCachesDirectoryForDataContainerDirectory:(id)a3 usingHomeCachesDirectory:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v8 = v5;
  if (v5)
  {
    v9 = objc_msgSend_path(v5, v6, v7);
    v11 = objc_msgSend_stringByAppendingPathComponent_(v9, v10, @"Library");
    v13 = objc_msgSend_stringByAppendingPathComponent_(v11, v12, @"Caches");
  }

  else
  {
    if (v4)
    {
      CKGetPersonaAwareHomeCacheDirectory(0, v6, v7);
    }

    else
    {
      CKGetPersonaAwareCacheDirectory(0, v6, v7);
    }
    v9 = ;
    v13 = objc_msgSend_stringByDeletingLastPathComponent(v9, v14, v15);
  }

  v16 = CKGetRealPath();

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v17 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v24 = v17;
    v27 = objc_msgSend_CKSanitizedPath(v16, v25, v26);
    v28 = 138412290;
    v29 = v27;
    _os_log_debug_impl(&dword_22506F000, v24, OS_LOG_TYPE_DEBUG, "Got caches path: %@", &v28, 0xCu);
  }

  v19 = objc_msgSend_stringByAppendingPathComponent_(v16, v18, @"CloudKit");

  v21 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v20, v19, 1);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end