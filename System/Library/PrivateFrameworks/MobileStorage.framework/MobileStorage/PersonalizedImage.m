@interface PersonalizedImage
- (BOOL)initializeDeviceAttributes:(id *)a3;
- (BOOL)initializeImageProperties:(id *)a3;
- (BOOL)mountImage:(id *)a3;
- (BOOL)mountImage:(id)a3 serverTicket:(id)a4 imageDigest:(id)a5 trustCacheURL:(id)a6 error:(id *)a7;
- (PersonalizedImage)initWithBundleURL:(id)a3 imageVariant:(id)a4 remoteDevice:(id)a5 options:(id)a6;
- (id)digestFileSha1:(id)a3 error:(id *)a4;
- (id)digestFileSha384:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation PersonalizedImage

- (PersonalizedImage)initWithBundleURL:(id)a3 imageVariant:(id)a4 remoteDevice:(id)a5 options:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
LABEL_26:
    v41 = 0;
    goto LABEL_27;
  }

  v45.receiver = self;
  v45.super_class = PersonalizedImage;
  self = [(PersonalizedImage *)&v45 init];
  if (self)
  {
    v14 = [v10 copy];
    bundlePathURL = self->_bundlePathURL;
    self->_bundlePathURL = v14;

    v16 = [v11 copy];
    imageVariant = self->_imageVariant;
    self->_imageVariant = v16;

    objc_storeStrong(&self->_remoteDevice, a5);
    self->_digestLength = 48;
    self->_useCredentials = 1;
    v18 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"https://gs.apple.com:443"];
    signingServerURL = self->_signingServerURL;
    self->_signingServerURL = v18;

    objc_storeStrong(&self->_imageType, @"Personalized");
    if (v13)
    {
      v20 = [v13 objectForKeyedSubscript:@"UseCredentials"];
      v21 = v20;
      if (v20)
      {
        v22 = isNSNumber(v20);

        if (v22)
        {
          self->_useCredentials = [v21 BOOLValue];
        }
      }

      v23 = [v13 objectForKeyedSubscript:@"SigningServerURL"];
      v24 = v23;
      if (v23)
      {
        v25 = isNSURL(v23);

        if (v25)
        {
          v26 = [v24 copy];
          v27 = self->_signingServerURL;
          self->_signingServerURL = v26;
        }
      }

      v43 = v21;
      v28 = [v13 objectForKeyedSubscript:@"MountedBundlePath"];
      v29 = v28;
      if (v28)
      {
        v30 = isNSURL(v28);

        if (v30)
        {
          v31 = [v29 copy];
          userProvidedBundleMountPathURL = self->_userProvidedBundleMountPathURL;
          self->_userProvidedBundleMountPathURL = v31;
        }
      }

      v33 = [v13 objectForKeyedSubscript:@"ImagePath"];
      v34 = v33;
      if (v33)
      {
        v35 = isNSURL(v33);

        if (v35)
        {
          v36 = [v34 copy];
          userProvidedImagePathURL = self->_userProvidedImagePathURL;
          self->_userProvidedImagePathURL = v36;
        }
      }

      v38 = [v13 objectForKeyedSubscript:@"UseCryptexFlow"];
      v39 = v38;
      if (v38)
      {
        v40 = isNSNumber(v38);

        if (v40)
        {
          objc_storeStrong(&self->_imageType, @"Cryptex");
        }
      }
    }

    if (!v10 && !self->_userProvidedBundleMountPathURL && !self->_userProvidedImagePathURL)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalid input(s).", buf, 2u);
      }

      goto LABEL_26;
    }
  }

  self = self;
  v41 = self;
LABEL_27:

  return v41;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PersonalizedImage;
  [(PersonalizedImage *)&v2 dealloc];
}

- (id)digestFileSha1:(id)a3 error:(id *)a4
{
  v5 = a3;
  v9 = v5;
  memset(&c, 0, sizeof(c));
  if (!v5)
  {
    v24 = createMobileStorageError("[PersonalizedImage digestFileSha1:error:]", 377, -2, 0, @"Invalid inputs.", v6, v7, v8, v27);
    v12 = 0;
LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  v10 = MEMORY[0x277CCA9F8];
  v11 = [v5 path];
  v12 = [v10 fileHandleForReadingAtPath:v11];

  if (!v12)
  {
    v24 = createMobileStorageError("[PersonalizedImage digestFileSha1:error:]", 383, -2, 0, @"Failed to create file handle for %@.", v13, v14, v15, v9);
    goto LABEL_9;
  }

  CC_SHA1_Init(&c);
  v19 = malloc_type_malloc(0x14uLL, 0x9E43C831uLL);
  if (v19)
  {
    do
    {
      v20 = objc_autoreleasePoolPush();
      v21 = [v12 readDataOfLength:1024];
      CC_SHA1_Update(&c, [v21 bytes], objc_msgSend(v21, "length"));
      v22 = [v21 length];

      objc_autoreleasePoolPop(v20);
    }

    while (v22);
    CC_SHA1_Final(v19, &c);
    v23 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v19 length:20];
    v24 = 0;
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v24 = createMobileStorageError("[PersonalizedImage digestFileSha1:error:]", 391, -2, 0, @"Failed to allocate digest memory.", v16, v17, v18, v27);
LABEL_10:
  v23 = 0;
  if (!a4)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v23)
  {
    v25 = v24;
    *a4 = v24;
  }

LABEL_13:
  if (v19)
  {
    free(v19);
  }

  return v23;
}

- (id)digestFileSha384:(id)a3 error:(id *)a4
{
  v5 = a3;
  v9 = v5;
  memset(&c, 0, sizeof(c));
  if (!v5)
  {
    v24 = createMobileStorageError("[PersonalizedImage digestFileSha384:error:]", 428, -2, 0, @"Invalid inputs.", v6, v7, v8, v28);
    v12 = 0;
LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  v10 = MEMORY[0x277CCA9F8];
  v11 = [v5 path];
  v12 = [v10 fileHandleForReadingAtPath:v11];

  if (!v12)
  {
    v24 = createMobileStorageError("[PersonalizedImage digestFileSha384:error:]", 434, -2, 0, @"Failed to create file handle for %@.", v13, v14, v15, v9);
    goto LABEL_9;
  }

  CC_SHA384_Init(&c);
  v19 = malloc_type_malloc(0x30uLL, 0x152E8B13uLL);
  if (v19)
  {
    do
    {
      v20 = objc_autoreleasePoolPush();
      v21 = [v12 readDataOfLength:1024];
      CC_SHA384_Update(&c, [v21 bytes], objc_msgSend(v21, "length"));
      v22 = [v21 length];

      objc_autoreleasePoolPop(v20);
    }

    while (v22);
    CC_SHA384_Final(v19, &c);
    v23 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v19 length:48];
    v24 = 0;
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v24 = createMobileStorageError("[PersonalizedImage digestFileSha384:error:]", 442, -2, 0, @"Failed to allocate digest memory.", v16, v17, v18, v28);
LABEL_10:
  v23 = 0;
  if (!a4)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v23)
  {
    v25 = v24;
    *a4 = v24;
  }

LABEL_13:
  if (v19)
  {
    free(v19);
  }

  v26 = v23;

  return v26;
}

- (BOOL)initializeImageProperties:(id *)a3
{
  v3 = self;
  v191 = *MEMORY[0x277D85DE8];
  v4 = [(PersonalizedImage *)self userProvidedImagePathURL];

  if (v4)
  {
    v5 = [(PersonalizedImage *)v3 userProvidedImagePathURL];
    v6 = [v5 path];

    if (v6)
    {
      v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
      [(PersonalizedImage *)v3 setImagePathURL:v7];

      v8 = 0;
      v9 = 0;
      v170 = 0;
      v172 = 0;
      v10 = 0;
      v175 = 0;
      goto LABEL_4;
    }
  }

  else
  {
    v16 = [(PersonalizedImage *)v3 userProvidedBundleMountPathURL];

    if (v16)
    {
      v173 = v3;
      v17 = [(PersonalizedImage *)v3 userProvidedBundleMountPathURL];
      v18 = [v17 path];
      v19 = [v18 copy];

      goto LABEL_20;
    }

    v6 = [(PersonalizedImage *)v3 mountedVolumeEntry];

    if (!v6)
    {
      v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 532, -2, 0, @"Bundle mounting not support on this platform.", v50, v51, v52, v165);
      v14 = 0;
      v13 = 0;
      v12 = 0;
      v171 = 0;
      goto LABEL_97;
    }
  }

  v173 = v3;
  v19 = 0;
LABEL_20:
  v53 = MEMORY[0x277CBEAC0];
  v54 = [v19 stringByAppendingPathComponent:@"Restore/BuildManifest.plist"];
  v6 = [v53 dictionaryWithContentsOfFile:v54];

  v171 = v19;
  if (!v6)
  {
    v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 544, -2, 0, @"Failed to load build manifest.", v55, v56, v57, v165);
    v14 = 0;
    v13 = 0;
    v12 = 0;
LABEL_97:
    v170 = 0;
    v172 = 0;
    v175 = 0;
    obj = 0;
    goto LABEL_101;
  }

  v175 = v6;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v58 = [v6 objectForKeyedSubscript:@"ManifestVersion"];
    *buf = 138412290;
    *&buf[4] = v58;
    _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Manifest Version: %@", buf, 0xCu);

    v6 = v175;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v59 = [v6 objectForKeyedSubscript:@"ProductVersion"];
    *buf = 138412290;
    *&buf[4] = v59;
    _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Product Version: %@", buf, 0xCu);

    v6 = v175;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v60 = [v6 objectForKeyedSubscript:@"ProductBuildVersion"];
    *buf = 138412290;
    *&buf[4] = v60;
    _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Product Build Version: %@", buf, 0xCu);

    v6 = v175;
  }

  v61 = [v6 objectForKeyedSubscript:@"BuildIdentities"];
  v6 = isNSArray(v61);

  if (!v6)
  {
    obj = v61;
    v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 556, -2, 0, @"Missing key 'BuildIdentities'.", v62, v63, v64, v165);
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v170 = 0;
    v172 = 0;
    goto LABEL_101;
  }

  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v65 = v61;
  obj = v65;
  v178 = [v65 countByEnumeratingWithState:&v185 objects:v189 count:16];
  if (!v178)
  {

    v172 = 0;
    v170 = 0;
    v9 = 0;
    goto LABEL_94;
  }

  v9 = 0;
  v170 = 0;
  v172 = 0;
  v168 = 0;
  v177 = *v186;
  do
  {
    v66 = 0;
    do
    {
      if (*v186 != v177)
      {
        objc_enumerationMutation(obj);
      }

      v67 = *(*(&v185 + 1) + 8 * v66);
      *buf = 0;
      v68 = [v67 objectForKeyedSubscript:@"ApBoardID"];
      v69 = isNSString(v68);

      if (!v69)
      {
        v179 = v9;
        v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 577, -3, 0, @"Missing expected key 'ApBoardID'", v70, v71, v72, v165);
        v180 = 0;
        v181 = 0;
        goto LABEL_51;
      }

      v73 = [v67 objectForKeyedSubscript:@"ApChipID"];
      v69 = isNSString(v73);

      v180 = v73;
      if (!v69)
      {
        v179 = v9;
        v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 583, -3, 0, @"Missing expected key 'ApChipID'", v74, v75, v76, v165);
        v181 = 0;
LABEL_51:
        v113 = 0;
        v182 = 0;
LABEL_52:
        v96 = 0;
LABEL_53:
        v101 = 0;
LABEL_54:
        v114 = 0;
        v105 = 0;
LABEL_55:

        v115 = 3;
        goto LABEL_56;
      }

      v77 = [v67 objectForKeyedSubscript:@"ApSecurityDomain"];
      v69 = isNSString(v77);

      v182 = v77;
      if (!v69)
      {
        v179 = v9;
        v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 589, -3, 0, @"Missing expected key 'ApSecurityDomain'", v78, v79, v80, v165);
        v181 = 0;
LABEL_61:
        v113 = 0;
        goto LABEL_52;
      }

      v69 = [MEMORY[0x277CCAC80] scannerWithString:v68];
      if (![v69 scanHexLongLong:buf] || (v81 = *buf, -[PersonalizedImage boardID](v173, "boardID"), v82 = objc_claimAutoreleasedReturnValue(), v83 = objc_msgSend(v82, "unsignedLongLongValue"), v82, v81 != v83))
      {
LABEL_59:
        v181 = 0;
        v113 = 0;
        v96 = 0;
        v101 = 0;
        v114 = 0;
        v105 = 0;
        v115 = 4;
        goto LABEL_56;
      }

      v179 = v9;
      v84 = [MEMORY[0x277CCAC80] scannerWithString:v73];

      if ([v84 scanHexLongLong:buf] && (v85 = *buf, -[PersonalizedImage chipID](v173, "chipID"), v86 = objc_claimAutoreleasedReturnValue(), v87 = objc_msgSend(v86, "unsignedLongLongValue"), v86, v85 == v87))
      {
        v69 = [MEMORY[0x277CCAC80] scannerWithString:v77];

        if ([v69 scanHexLongLong:buf])
        {
          v88 = *buf;
          v89 = [(PersonalizedImage *)v173 securityDomain];
          v90 = [v89 unsignedLongLongValue];

          v9 = v179;
          if (v88 != v90)
          {
            goto LABEL_59;
          }

          v181 = [v67 objectForKeyedSubscript:@"Info"];
          v91 = isNSDictionary(v181);

          if (!v91)
          {
            v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 613, -3, 0, @"Missing expected key 'Info'", v92, v93, v94, v165);
            goto LABEL_61;
          }

          v95 = [v67 objectForKeyedSubscript:@"Manifest"];
          v96 = isNSDictionary(v95);

          if (!v96)
          {
            v113 = v95;
            v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 619, -3, 0, @"Missing expected key 'Manifest'", v97, v98, v99, v165);
            goto LABEL_53;
          }

          v100 = [v95 objectForKeyedSubscript:@"LoadableTrustCache"];
          v101 = v100;
          if (v100)
          {
            v96 = isNSDictionary(v100);

            if (!v96)
            {
              v113 = v95;
              v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 625, -3, 0, @"Invalid value for key 'LoadableTrustCache'", v102, v103, v104, v165);
              goto LABEL_54;
            }

            v105 = [v101 objectForKeyedSubscript:@"Info"];
            v96 = isNSDictionary(v105);

            if (!v96)
            {
              v113 = v95;
              v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 632, -3, 0, @"Missing expected key 'Info'", v106, v107, v108, v165);
              v114 = 0;
              goto LABEL_55;
            }

            v109 = [v105 objectForKeyedSubscript:@"Path"];

            v96 = isNSString(v109);

            if (!v96)
            {
              v113 = v95;
              v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 638, -3, 0, @"Missing expected key 'Path'", v110, v111, v112, v165);
              v138 = v109;
              v114 = 0;
              v172 = v138;
              goto LABEL_55;
            }

            v172 = v109;
          }

          else
          {
            v105 = 0;
          }

          v96 = [v95 objectForKeyedSubscript:@"PersonalizedDMG"];
          v114 = isNSDictionary(v96);

          if (!v114)
          {
            v113 = v95;
            v135 = 645;
            v136 = @"Missing expected key 'PersonalizedDMG'";
            goto LABEL_81;
          }

          v114 = [v96 objectForKeyedSubscript:@"Name"];
          v119 = isNSString(v114);

          if (!v119)
          {
            v113 = v95;
            v135 = 651;
            v136 = @"Missing expected key 'Name'";
LABEL_81:
            v137 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", v135, -3, 0, v136, v116, v117, v118, v165);
LABEL_82:
            v9 = v137;
            goto LABEL_55;
          }

          v120 = [(PersonalizedImage *)v173 imageVariant];
          v166 = [v114 isEqualToString:v120];

          if (v166)
          {
            v121 = [v96 objectForKeyedSubscript:@"Info"];

            v122 = isNSDictionary(v121);

            if (!v122)
            {
              v113 = v95;
              v137 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 658, -3, 0, @"Missing expected key 'Info'", v123, v124, v125, v165);
              v105 = v121;
              goto LABEL_82;
            }

            v167 = v121;
            v126 = [v121 objectForKeyedSubscript:@"HashMethod"];

            v127 = isNSString(v126);
            if (v127)
            {
              v128 = v127;
              v129 = [v126 isEqualToString:@"sha1"];

              if (v129)
              {
                [(PersonalizedImage *)v173 setDigestLength:20];
              }
            }

            v170 = v126;
            v113 = v95;
            v130 = [v167 objectForKeyedSubscript:@"Path"];

            v131 = isNSString(v130);

            if (!v131)
            {
              v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 669, -3, 0, @"Missing expected key 'Path'", v132, v133, v134, v165);
              v168 = v130;
              v105 = v167;
              goto LABEL_55;
            }

            v115 = 3;
            v168 = v130;
            v105 = v167;
          }

          else
          {
            v113 = v95;
            v115 = 0;
          }
        }

        else
        {
          v181 = 0;
          v113 = 0;
          v96 = 0;
          v101 = 0;
          v114 = 0;
          v105 = 0;
          v115 = 4;
        }
      }

      else
      {
        v181 = 0;
        v113 = 0;
        v96 = 0;
        v101 = 0;
        v114 = 0;
        v105 = 0;
        v115 = 4;
        v69 = v84;
      }

      v9 = v179;
LABEL_56:

      if ((v115 | 4) != 4)
      {
        goto LABEL_88;
      }

      ++v66;
    }

    while (v178 != v66);
    v139 = [obj countByEnumeratingWithState:&v185 objects:v189 count:16];
    v178 = v139;
  }

  while (v139);
LABEL_88:

  if (!v168)
  {
LABEL_94:
    v147 = [(PersonalizedImage *)v173 imageVariant];
    v151 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 678, -2, v9, @"Failed to find image for variant %@.", v148, v149, v150, v147);

    v14 = 0;
    v13 = 0;
    v12 = 0;
    v6 = 0;
LABEL_100:
    v9 = v151;
    goto LABEL_101;
  }

  v6 = [@"Restore" stringByAppendingPathComponent:v168];

  v140 = MEMORY[0x277CBEBC0];
  v8 = v171;
  v141 = [v171 stringByAppendingPathComponent:v6];
  v142 = [v140 fileURLWithPath:v141];
  v3 = v173;
  [(PersonalizedImage *)v173 setImagePathURL:v142];

  if (v172)
  {
    v143 = [@"Restore" stringByAppendingPathComponent:v172];

    v144 = MEMORY[0x277CBEBC0];
    v145 = [v171 stringByAppendingPathComponent:v143];
    v146 = [v144 fileURLWithPath:v145];
    [(PersonalizedImage *)v173 setTrustCacheURL:v146];

    v172 = v143;
  }

  else
  {
    v172 = 0;
  }

  v10 = obj;
LABEL_4:
  v11 = [(PersonalizedImage *)v3 remoteDevice];

  v171 = v8;
  obj = v10;
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_6;
  }

  v174 = v3;
  v13 = copyWorkingDirectory();
  if (!v13)
  {
    v151 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 719, -2, 0, @"Failed to query working directory path.", v20, v21, v22, v165);

    v14 = 0;
LABEL_99:
    v12 = 0;
    goto LABEL_100;
  }

  v23 = [MEMORY[0x277CCAD78] UUID];
  v24 = [v23 UUIDString];
  v14 = [v13 stringByAppendingPathComponent:v24];

  if (!v14)
  {
    v151 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 725, -2, 0, @"Failed to create path.", v25, v26, v27, v165);

    goto LABEL_99;
  }

  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14];
  if (!v12)
  {
    v151 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 731, -2, 0, @"Failed to create URL.", v28, v29, v30, v165);

    goto LABEL_100;
  }

  v31 = [MEMORY[0x277CCAA00] defaultManager];
  v32 = [(PersonalizedImage *)v174 imagePathURL];
  v33 = v9;
  v184 = v9;
  v34 = [v31 copyItemAtURL:v32 toURL:v12 error:&v184];
  v9 = v184;

  if ((v34 & 1) == 0)
  {
    v155 = [(PersonalizedImage *)v174 imagePathURL];
    v156 = v9;
    v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 736, -2, v9, @"Failed to copy %@ to %@.", v157, v158, v159, v155);

    goto LABEL_101;
  }

  [(PersonalizedImage *)v174 setImagePathURL:v12];
  v35 = [(PersonalizedImage *)v174 trustCacheURL];

  if (v35)
  {
    v36 = [MEMORY[0x277CCAD78] UUID];
    v37 = [v36 UUIDString];
    v38 = [v13 stringByAppendingPathComponent:v37];

    v42 = v9;
    if (v38)
    {
      v43 = [MEMORY[0x277CBEBC0] fileURLWithPath:v38];

      if (v43)
      {
        v47 = [MEMORY[0x277CCAA00] defaultManager];
        v48 = [(PersonalizedImage *)v174 trustCacheURL];
        v183 = v9;
        v49 = [v47 copyItemAtURL:v48 toURL:v43 error:&v183];
        v9 = v183;

        if (v49)
        {
          [(PersonalizedImage *)v174 setTrustCacheURL:v43];
          v15 = 1;
          v12 = v43;
          v14 = v38;
          goto LABEL_104;
        }

        v160 = [(PersonalizedImage *)v174 trustCacheURL];
        v164 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 756, -2, v9, @"Failed to copy %@ to %@.", v161, v162, v163, v160);

        v9 = v164;
        v14 = v38;
        v12 = v43;
      }

      else
      {
        v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 751, -2, 0, @"Failed to create URL.", v44, v45, v46, v165);

        v12 = 0;
        v14 = v38;
      }
    }

    else
    {
      v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 745, -2, 0, @"Failed to create path.", v39, v40, v41, v165);

      v14 = 0;
    }

LABEL_101:
    if (a3)
    {
      v152 = v9;
      v15 = 0;
      *a3 = v9;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
LABEL_6:
    v15 = 1;
  }

LABEL_104:

  v153 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)initializeDeviceAttributes:(id *)a3
{
  v127 = *MEMORY[0x277D85DE8];
  cf = 0;
  memset(v126, 0, sizeof(v126));
  v124 = @"PersonalizedImageType";
  v5 = [(PersonalizedImage *)self imageVariant];
  v125 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v125 forKeys:&v124 count:1];

  v7 = [(PersonalizedImage *)self remoteDevice];

  if (v7)
  {
    v8 = [(PersonalizedImage *)self remoteDevice];
    v9 = MobileStorageRemoteCopyPersonalizationIdentifiersWithError(v8, v6, &cf);
  }

  else
  {
    v9 = MobileStorageCopyPersonalizationIdentifiersWithError(v6, &cf);
  }

  v117 = v9;
  if (!v9 && (mobileStorageErrorHasDomainAndErrorCode(cf, @"com.apple.MobileStorage.ErrorDomain", -5) & 1) == 0)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 816, -2, cf, @"Failed to query personalization identifiers.", v10, v11, v12, v113);
    v120 = 0;
    v121 = 0;
    v24 = 0;
    v118 = 0;
    v122 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v16 = 0;
LABEL_19:
    v34 = 0;
    v35 = 0;
    v119 = 0;
    if (!a3)
    {
      goto LABEL_40;
    }

LABEL_39:
    v53 = v23;
    v54 = a3;
    LOBYTE(a3) = 0;
    *v54 = v23;
    goto LABEL_40;
  }

  v13 = [(PersonalizedImage *)self remoteDevice];

  if (v13)
  {
    v14 = [(PersonalizedImage *)self remoteDevice];
    v15 = copy_remote_device_property();
  }

  else
  {
    v15 = MGCopyAnswer();
  }

  v16 = isNSString(v15);

  v121 = v15;
  if (!v16)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 828, -2, 0, @"Failed to copy value: %@", v17, v18, v19, @"HWModelStr");
    v120 = 0;
    v24 = 0;
    v118 = 0;
    v122 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_19;
  }

  v20 = [(PersonalizedImage *)self remoteDevice];

  if (v20)
  {
    v21 = @"Bridge";
  }

  else
  {
    v21 = MGCopyAnswer();
  }

  v119 = v21;
  v16 = isNSString(v21);

  if (!v16)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 838, -2, 0, @"Failed to copy value: %@", v28, v29, v30, @"DeviceClass");
    v120 = 0;
    v24 = 0;
    v118 = 0;
    v122 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_38;
  }

  v31 = [v9 objectForKeyedSubscript:@"UniqueChipID"];
  v32 = isNSNumber(v31);
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v36 = [(PersonalizedImage *)self remoteDevice];

    if (!v36)
    {
      goto LABEL_24;
    }

    v33 = [(PersonalizedImage *)self remoteDevice];
    v37 = a3;
    v38 = copy_remote_device_property();

    v31 = v38;
    a3 = v37;
  }

LABEL_24:
  v26 = isNSNumber(v31);

  v120 = v31;
  if (!v26)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 849, -2, 0, @"Failed to copy value: %@", v39, v40, v41, @"UniqueChipID");
    v24 = 0;
LABEL_35:
    v118 = 0;
LABEL_36:
    v122 = 0;
LABEL_37:
    v25 = 0;
    v27 = 0;
    v16 = 0;
LABEL_38:
    v34 = 0;
    v35 = 0;
    if (!a3)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v24 = [v9 objectForKeyedSubscript:@"ChipID"];
  v42 = isNSNumber(v24);
  if (v42)
  {
    v43 = v42;
  }

  else
  {
    v44 = [(PersonalizedImage *)self remoteDevice];

    if (!v44)
    {
      goto LABEL_31;
    }

    v43 = [(PersonalizedImage *)self remoteDevice];
    v45 = a3;
    v46 = copy_remote_device_property();

    v24 = v46;
    a3 = v45;
  }

LABEL_31:
  v26 = isNSNumber(v24);

  if (!v26)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 858, -2, 0, @"Failed to copy value: %@", v47, v48, v49, @"ChipID");
    goto LABEL_35;
  }

  v50 = [v9 objectForKeyedSubscript:@"BoardId"];
  v51 = isNSNumber(v50);
  if (v51)
  {
    v52 = v51;
  }

  else
  {
    v57 = [(PersonalizedImage *)self remoteDevice];

    if (!v57)
    {
      goto LABEL_46;
    }

    v52 = [(PersonalizedImage *)self remoteDevice];
    v58 = a3;
    v59 = copy_remote_device_property();

    v50 = v59;
    a3 = v58;
  }

LABEL_46:
  v26 = isNSNumber(v50);

  v118 = v50;
  if (!v26)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 867, -2, 0, @"Failed to copy value: %@", v60, v61, v62, @"BoardId");
    goto LABEL_36;
  }

  v122 = [v9 objectForKeyedSubscript:@"SecurityDomain"];
  v63 = isNSNumber(v122);
  if (v63)
  {
    v64 = v63;
  }

  else
  {
    v65 = [(PersonalizedImage *)self remoteDevice];

    if (!v65)
    {
      goto LABEL_53;
    }

    v64 = [(PersonalizedImage *)self remoteDevice];
    v66 = a3;
    v67 = copy_remote_device_property();

    v122 = v67;
    a3 = v66;
  }

LABEL_53:
  v26 = isNSNumber(v122);

  if (!v26)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 876, -2, 0, @"Failed to copy value: %@", v68, v69, v70, @"SecurityDomain");
    goto LABEL_37;
  }

  v27 = [v9 objectForKeyedSubscript:@"EffectiveSecurityModeAp"];
  v71 = isNSNumber(v27);
  v114 = a3;
  if (v71)
  {
    v72 = v71;
  }

  else
  {
    v73 = [(PersonalizedImage *)self remoteDevice];

    if (!v73)
    {
      goto LABEL_60;
    }

    v72 = [(PersonalizedImage *)self remoteDevice];
    v74 = copy_remote_device_property();

    v27 = v74;
  }

LABEL_60:
  v26 = isNSNumber(v27);

  if (!v26)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 885, -2, 0, @"Failed to copy value: %@", v75, v76, v77, @"EffectiveSecurityModeAp");
    v25 = 0;
    v16 = 0;
LABEL_79:
    v34 = 0;
    v35 = 0;
    goto LABEL_80;
  }

  v16 = [v9 objectForKeyedSubscript:@"EffectiveProductionStatusAp"];
  v78 = isNSNumber(v16);
  if (v78)
  {
    v79 = v78;
  }

  else
  {
    v80 = [(PersonalizedImage *)self remoteDevice];

    if (!v80)
    {
      goto LABEL_67;
    }

    v79 = [(PersonalizedImage *)self remoteDevice];
    v81 = copy_remote_device_property();

    v16 = v81;
  }

LABEL_67:
  v82 = isNSNumber(v16);

  if (!v82)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 894, -2, 0, @"Failed to copy value: %@", v83, v84, v85, @"EffectiveProductionStatusAp");
    v25 = 0;
LABEL_78:
    v26 = 0;
    goto LABEL_79;
  }

  v25 = [v9 objectForKeyedSubscript:@"CertificateSecurityMode"];
  v86 = isNSNumber(v25);
  if (v86)
  {
    v87 = v86;
  }

  else
  {
    v88 = [(PersonalizedImage *)self remoteDevice];

    if (!v88)
    {
      goto LABEL_74;
    }

    v87 = [(PersonalizedImage *)self remoteDevice];
    v89 = copy_remote_device_property();

    v25 = v89;
  }

LABEL_74:
  v90 = isNSNumber(v25);

  if (!v90)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 903, -2, 0, @"Failed to copy value: %@", v91, v92, v93, @"CertificateSecurityMode");
    goto LABEL_78;
  }

  v26 = [v9 objectForKeyedSubscript:@"CertificateProductionStatus"];
  v94 = isNSNumber(v26);
  if (v94)
  {
    v95 = v94;
  }

  else
  {
    v96 = [(PersonalizedImage *)self remoteDevice];

    if (!v96)
    {
      goto LABEL_85;
    }

    v95 = [(PersonalizedImage *)self remoteDevice];
    v97 = v9;
    v98 = v6;
    v99 = copy_remote_device_property();

    v26 = v99;
    v6 = v98;
    v9 = v97;
  }

LABEL_85:
  v35 = isNSNumber(v26);

  if (v35)
  {
    v35 = [v9 objectForKeyedSubscript:{@"Ap, SikaFuse"}];
    v103 = [(PersonalizedImage *)self remoteDevice];

    if (v103)
    {
      v104 = [(PersonalizedImage *)self remoteDevice];
      v22 = v6;
      v34 = MobileStorageRemoteCopyPersonalizationNonceWithError(v104, v6, &cf);
    }

    else
    {
      v22 = v6;
      v34 = MobileStorageCopyPersonalizationNonceWithError(v6, &cf);
    }

    v105 = isNSData(v34);

    if (v105)
    {
      v109 = [(PersonalizedImage *)self remoteDevice];

      if (v109)
      {
        v110 = [(PersonalizedImage *)self remoteDevice];
        v115 = copy_remote_device_property();

        v111 = v115;
      }

      else
      {
        v111 = MGCopyAnswer();
      }

      v116 = v111;
      v112 = isNSData(v111);

      if (v112)
      {
        a3 = v116;
      }

      else
      {
        a3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v126 length:160];
      }

      [(PersonalizedImage *)self setDeviceClass:v119];
      [(PersonalizedImage *)self setHardwareModel:v121];
      [(PersonalizedImage *)self setEcid:v120];
      [(PersonalizedImage *)self setChipID:v24];
      [(PersonalizedImage *)self setBoardID:v118];
      [(PersonalizedImage *)self setSecurityDomain:v122];
      [(PersonalizedImage *)self setEffectiveSecurityMode:v27];
      [(PersonalizedImage *)self setEffectiveProductionStatus:v16];
      [(PersonalizedImage *)self setCertificateSecurityMode:v25];
      [(PersonalizedImage *)self setCertificateProductionStatus:v26];
      [(PersonalizedImage *)self setImage4Supported:MEMORY[0x277CBEC38]];
      [(PersonalizedImage *)self setApNonce:v34];
      [(PersonalizedImage *)self setSepNonce:a3];
      [(PersonalizedImage *)self setSikaFuse:v35];

      v23 = 0;
      LOBYTE(a3) = 1;
      goto LABEL_40;
    }

    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 924, -2, cf, @"Failed to copy personalization nonce.", v106, v107, v108, v113);
  }

  else
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 912, -2, 0, @"Failed to copy value: %@", v100, v101, v102, @"CertificateProductionStatus");
    v34 = 0;
  }

LABEL_80:
  a3 = v114;
  if (v114)
  {
    goto LABEL_39;
  }

LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  v55 = *MEMORY[0x277D85DE8];
  return a3;
}

- (BOOL)mountImage:(id)a3 serverTicket:(id)a4 imageDigest:(id)a5 trustCacheURL:(id)a6 error:(id *)a7
{
  v94[3] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v85 = v13;
  cf = 0;
  v82 = v14;
  v83 = v12;
  if (!v11 || !v12 || !v13)
  {
    v26 = createMobileStorageError("[PersonalizedImage mountImage:serverTicket:imageDigest:trustCacheURL:error:]", 981, -2, 0, @"Invalid input(s).", v15, v16, v17, v77);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v81 = 0;
    v84 = 0;
    goto LABEL_42;
  }

  v18 = v14;
  v19 = objc_alloc(MEMORY[0x277CBEB38]);
  v93[0] = @"DeviceType";
  v93[1] = @"DiskImageType";
  v94[0] = @"DiskImage";
  v94[1] = @"Personalized";
  v93[2] = @"ImageSignature";
  v94[2] = v12;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:3];
  v84 = [v19 initWithDictionary:v20];

  if (v18)
  {
    v21 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v18];
    if (!v21)
    {
      v26 = createMobileStorageError("[PersonalizedImage mountImage:serverTicket:imageDigest:trustCacheURL:error:]", 993, -2, 0, @"Failed to load %@.", v22, v23, v24, v18);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v81 = 0;
      goto LABEL_42;
    }

    v25 = v21;
    [v84 setObject:v21 forKeyedSubscript:@"ImageTrustCache"];
  }

  else
  {
    v25 = 0;
  }

  v81 = v25;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v31 = [(PersonalizedImage *)self hardwareModel];
    v32 = [(PersonalizedImage *)self deviceClass];
    v33 = [(PersonalizedImage *)self ecid];
    *buf = 138413058;
    *v88 = v11;
    *&v88[8] = 2112;
    *v89 = v31;
    *&v89[8] = 2112;
    v90 = v32;
    v91 = 2112;
    v92 = v33;
    _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Preparing to mount %@ on %@ (deviceClass: %@ ecid: %@)", buf, 0x2Au);
  }

  v34 = [(PersonalizedImage *)self remoteDevice];

  if (v34)
  {
    v35 = [(PersonalizedImage *)self remoteDevice];
    v30 = MobileStorageRemoteCopyDevicesWithError(v35, 0, &cf);
  }

  else
  {
    v30 = MobileStorageCopyDevicesWithError(0, &cf);
  }

  v36 = isNSArray(v30);

  if (!v36)
  {
    v26 = createMobileStorageError("[PersonalizedImage mountImage:serverTicket:imageDigest:trustCacheURL:error:]", 1010, -2, cf, @"Failed to copy device list.", v37, v38, v39, v77);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_42;
  }

  v78 = self;
  v79 = v11;
  if (![v30 count])
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
LABEL_36:
    v51 = [(PersonalizedImage *)v78 remoteDevice];

    if (v51)
    {
      v52 = [(PersonalizedImage *)v78 remoteDevice];
      v11 = v79;
      v53 = [v79 path];
      v54 = MobileStorageRemoteMountWithError(v52, v53, v84, &cf);

      if (v54)
      {
        v55 = cf;
        v56 = [v79 path];
        createMobileStorageError("[PersonalizedImage mountImage:serverTicket:imageDigest:trustCacheURL:error:]", 1049, -2, v55, @"Failed to mount %@.", v57, v58, v59, v56);
        v26 = LABEL_41:;

LABEL_42:
        if (a7)
        {
          v70 = v26;
          v71 = 0;
          v75 = 0;
          *a7 = v26;
        }

        else
        {
          v71 = 0;
          v75 = 0;
        }

LABEL_49:
        v44 = v28;
        v46 = v27;
        goto LABEL_50;
      }

      v75 = 0;
    }

    else
    {
      v11 = v79;
      v60 = [v79 path];
      v75 = MobileStorageMountWithError(v60, v84, &cf, v61, v62, v63, v64, v65);

      if (!v75)
      {
        v66 = cf;
        v56 = [v79 path];
        createMobileStorageError("[PersonalizedImage mountImage:serverTicket:imageDigest:trustCacheURL:error:]", 1055, -2, v66, @"Failed to mount %@.", v67, v68, v69, v56);
        goto LABEL_41;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v72 = [v11 path];
      *buf = 138412290;
      *v88 = v72;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@ successfully mounted on device.", buf, 0xCu);
    }

    v26 = 0;
    v71 = 1;
    goto LABEL_49;
  }

  v40 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v41 = MEMORY[0x277D86220];
  while (1)
  {
    v42 = v29;
    v29 = [v30 objectAtIndexedSubscript:v40];

    v43 = isNSDictionary(v29);

    if (!v43)
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v48 = [v30 count];
        *buf = 67109376;
        *v88 = v40;
        *&v88[4] = 1024;
        *&v88[6] = v48;
        _os_log_debug_impl(&dword_259B65000, v41, OS_LOG_TYPE_DEBUG, "Failed to retrieve entry %d of %d.", buf, 0xEu);
      }

      goto LABEL_31;
    }

    v44 = [v29 objectForKeyedSubscript:@"DeviceType"];

    v45 = isNSString(v44);

    if (!v45)
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v49 = [v30 count];
        *buf = 138412802;
        *v88 = @"DeviceType";
        *&v88[8] = 1024;
        *v89 = v40 + 1;
        *&v89[4] = 1024;
        *&v89[6] = v49;
        _os_log_debug_impl(&dword_259B65000, v41, OS_LOG_TYPE_DEBUG, "Invalid value %@ for entry %d of %d.", buf, 0x18u);
      }

      goto LABEL_30;
    }

    if ([v44 isEqualToString:@"DiskImage"])
    {
      break;
    }

LABEL_30:
    v28 = v44;
LABEL_31:
    if (++v40 >= [v30 count])
    {
      goto LABEL_36;
    }
  }

  v46 = [v29 objectForKeyedSubscript:@"ImageSignature"];

  v47 = isNSData(v46);

  if (!v47)
  {
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v50 = [v30 count];
      *buf = 138412802;
      *v88 = @"ImageSignature";
      *&v88[8] = 1024;
      *v89 = v40 + 1;
      *&v89[4] = 1024;
      *&v89[6] = v50;
      _os_log_debug_impl(&dword_259B65000, v41, OS_LOG_TYPE_DEBUG, "Invalid value %@ for entry %d of %d.", buf, 0x18u);
    }

    goto LABEL_29;
  }

  if (![v85 isEqualToData:v46])
  {
LABEL_29:
    v27 = v46;
    goto LABEL_30;
  }

  v75 = [v29 objectForKeyedSubscript:@"MountPath"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = v79;
    [PersonalizedImage mountImage:v79 serverTicket:v75 imageDigest:? trustCacheURL:? error:?];
    v26 = 0;
    v71 = 1;
  }

  else
  {
    v26 = 0;
    v71 = 1;
    v11 = v79;
  }

LABEL_50:
  if (cf)
  {
    CFRelease(cf);
  }

  v73 = *MEMORY[0x277D85DE8];
  return v71;
}

- (BOOL)mountImage:(id *)a3
{
  v104[5] = *MEMORY[0x277D85DE8];
  v97 = 0;
  cf = 0;
  v5 = [(PersonalizedImage *)self initializeDeviceAttributes:&v97];
  v6 = v97;
  v7 = v6;
  if (!v5)
  {
    v14 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v93 = 0;
    v25 = 0;
    if (!a3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v92 = a3;
  v96 = v6;
  v8 = [(PersonalizedImage *)self initializeImageProperties:&v96];
  v9 = v96;

  if (!v8)
  {
    v14 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v93 = 0;
    v25 = 0;
    v7 = v9;
    goto LABEL_20;
  }

  if (mountImage__onceToken != -1)
  {
    [PersonalizedImage mountImage:];
  }

  v10 = *MEMORY[0x277CBECE8];
  v14 = AMAuthInstallCreate();
  if (!v14)
  {
    createMobileStorageError("[PersonalizedImage mountImage:]", 1115, -2, 0, @"AMAuthInstallCreate failed.", v11, v12, v13, v82);
    goto LABEL_17;
  }

  v15 = [(PersonalizedImage *)self signingServerURL];
  v16 = AMAuthInstallSetSigningServerURL();

  if (v16)
  {
    convertLibAuthInstallError(v16);
    createMobileStorageError("[PersonalizedImage mountImage:]", 1123, -2, 0, @"AMAuthInstallSetSigningServerURL failed: %d (%s)", v17, v18, v19, v16);
    v7 = LABEL_17:;
    v20 = 0;
    v21 = 0;
    v22 = 0;
LABEL_18:
    v23 = 0;
    v24 = 0;
    v93 = 0;
    v25 = 0;
LABEL_19:

LABEL_20:
    a3 = v92;
    if (!v92)
    {
LABEL_10:
      v27 = 0;
      v28 = 0;
      if (!v14)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_9:
    v26 = v7;
    *a3 = v7;
    goto LABEL_10;
  }

  if ([(PersonalizedImage *)self useCredentials])
  {
    v31 = AMAuthInstallSsoEnable();
    if (v31)
    {
      v32 = v31;
      convertLibAuthInstallError(v31);
      createMobileStorageError("[PersonalizedImage mountImage:]", 1132, -2, 0, @"AMAuthInstallSsoEnable failed: %d (%s)", v33, v34, v35, v32);
      goto LABEL_17;
    }
  }

  v36 = [(PersonalizedImage *)self imagePathURL];
  v95 = v9;
  v22 = [(PersonalizedImage *)self digestFile:v36 digestLength:[(PersonalizedImage *)self digestLength] error:&v95];
  v37 = v95;

  if (!v22)
  {
    v9 = [(PersonalizedImage *)self imagePathURL];
    v7 = createMobileStorageError("[PersonalizedImage mountImage:]", 1141, -2, v37, @"Failed to digest %@.", v41, v42, v43, v9);

    v20 = 0;
    v21 = 0;
    goto LABEL_18;
  }

  v38 = [(PersonalizedImage *)self trustCacheURL];

  v93 = v22;
  if (v38)
  {
    v39 = [(PersonalizedImage *)self trustCacheURL];
    v94 = v37;
    v25 = [(PersonalizedImage *)self digestFile:v39 digestLength:[(PersonalizedImage *)self digestLength] error:&v94];
    v40 = v94;

    if (!v25)
    {
      v9 = [(PersonalizedImage *)self trustCacheURL];
      v7 = createMobileStorageError("[PersonalizedImage mountImage:]", 1150, -2, v40, @"Failed to digest %@", v79, v80, v81, v9);

      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      goto LABEL_19;
    }

    v91 = v40;
  }

  else
  {
    v91 = v37;
    v25 = 0;
  }

  v44 = *MEMORY[0x277D825A0];
  v45 = *MEMORY[0x277D825C8];
  v103[0] = *MEMORY[0x277D825A0];
  v103[1] = v45;
  v88 = v45;
  v104[0] = v22;
  v104[1] = MEMORY[0x277CBEC38];
  v46 = *MEMORY[0x277D825A8];
  v103[2] = *MEMORY[0x277D825A8];
  v47 = [(PersonalizedImage *)self effectiveProductionStatus];
  v104[2] = v47;
  v48 = *MEMORY[0x277D825B0];
  v103[3] = *MEMORY[0x277D825B0];
  v49 = [(PersonalizedImage *)self effectiveSecurityMode];
  v104[3] = v49;
  v103[4] = *MEMORY[0x277D825B8];
  v50 = [(PersonalizedImage *)self imageVariant];
  v104[4] = v50;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:5];

  if (v25)
  {
    v101[0] = v44;
    v101[1] = v88;
    v102[0] = v25;
    v102[1] = MEMORY[0x277CBEC38];
    v101[2] = v46;
    v51 = [(PersonalizedImage *)self effectiveProductionStatus];
    v102[2] = v51;
    v101[3] = v48;
    v52 = [(PersonalizedImage *)self effectiveSecurityMode];
    v102[3] = v52;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:4];
  }

  else
  {
    v23 = 0;
  }

  v53 = MEMORY[0x277CBEB38];
  v99[0] = *MEMORY[0x277D82588];
  v89 = [(PersonalizedImage *)self certificateSecurityMode];
  v100[0] = v89;
  v99[1] = *MEMORY[0x277D82570];
  v86 = [(PersonalizedImage *)self certificateProductionStatus];
  v100[1] = v86;
  v99[2] = *MEMORY[0x277D82580];
  v85 = [(PersonalizedImage *)self securityDomain];
  v100[2] = v85;
  v99[3] = *MEMORY[0x277D82548];
  v84 = [(PersonalizedImage *)self boardID];
  v100[3] = v84;
  v99[4] = *MEMORY[0x277D82550];
  v83 = [(PersonalizedImage *)self chipID];
  v100[4] = v83;
  v99[5] = *MEMORY[0x277D82558];
  v54 = [(PersonalizedImage *)self ecid];
  v100[5] = v54;
  v99[6] = *MEMORY[0x277D82578];
  v55 = [(PersonalizedImage *)self image4Supported];
  v100[6] = v55;
  v99[7] = *MEMORY[0x277D82568];
  v56 = [(PersonalizedImage *)self apNonce];
  v57 = *MEMORY[0x277D825D0];
  v100[7] = v56;
  v100[8] = MEMORY[0x277CBEC28];
  v58 = *MEMORY[0x277D82540];
  v99[8] = v57;
  v99[9] = v58;
  v100[9] = v22;
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:10];
  v20 = [v53 dictionaryWithDictionary:v59];

  v60 = [(PersonalizedImage *)self sepNonce];

  if (v60)
  {
    v61 = [(PersonalizedImage *)self sepNonce];
    [v20 setObject:v61 forKeyedSubscript:*MEMORY[0x277D82590]];
  }

  v62 = [(PersonalizedImage *)self sikaFuse];

  if (v62)
  {
    v63 = [(PersonalizedImage *)self sikaFuse];
    [v20 setObject:v63 forKeyedSubscript:*MEMORY[0x277D82598]];
  }

  if (v23)
  {
    [v20 setObject:v23 forKeyedSubscript:@"LoadableTrustCache"];
  }

  v64 = AMAuthInstallRequestSendSync();
  if (v64)
  {
    v65 = v64;
    convertLibAuthInstallError(v64);
    v7 = createMobileStorageError("[PersonalizedImage mountImage:]", 1204, -2, 0, @"AMAuthInstallRequestSendSync failed: %d (%s)", v66, v67, v68, v65);
    v21 = 0;
    v24 = 0;
LABEL_42:
    v9 = v91;
    goto LABEL_19;
  }

  v21 = cf;
  v24 = [v21 objectForKeyedSubscript:*MEMORY[0x277D82560]];
  v69 = isNSData(v24);

  if (!v69)
  {
    v7 = createMobileStorageError("[PersonalizedImage mountImage:]", 1214, -2, 0, @"Invalid server ticket in response: %@", v70, v71, v72, v21);
    goto LABEL_42;
  }

  v90 = [(PersonalizedImage *)self imagePathURL];
  v73 = [(PersonalizedImage *)self trustCacheURL];
  v74 = self;
  v75 = v73;
  v87 = [PersonalizedImage mountImage:v74 serverTicket:"mountImage:serverTicket:imageDigest:trustCacheURL:error:" imageDigest:v90 trustCacheURL:v24 error:v93];
  v7 = v91;

  if (!v87)
  {
    createMobileStorageError("[PersonalizedImage mountImage:]", 1221, -2, v7, @"Failed to mount image.", v76, v77, v78, v82);
    v7 = v9 = v7;
    goto LABEL_19;
  }

  v27 = 1;
LABEL_11:
  CFRelease(v14);
  v28 = v27;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t __32__PersonalizedImage_mountImage___block_invoke()
{
  AMAuthInstallLogSetHandler();

  return MEMORY[0x2821F72D0](0);
}

- (void)mountImage:(void *)a1 serverTicket:(uint64_t)a2 imageDigest:trustCacheURL:error:.cold.1(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 path];
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@ already mounted at %@.", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end