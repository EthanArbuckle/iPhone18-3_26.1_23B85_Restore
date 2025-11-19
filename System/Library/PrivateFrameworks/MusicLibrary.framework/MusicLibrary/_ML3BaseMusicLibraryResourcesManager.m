@interface _ML3BaseMusicLibraryResourcesManager
- (BOOL)_mediaResourceRequiresLibraryContainerAccess:(int)a3;
- (_ML3BaseMusicLibraryResourcesManager)initWithAccountInfo:(id)a3;
- (_ML3BaseMusicLibraryResourcesManager)initWithCoder:(id)a3;
- (_ML3BaseMusicLibraryResourcesManager)initWithLibraryContainerIdentifier:(id)a3;
- (id)_libraryContainerPathForDSID:(id)a3;
- (id)_mediaPath;
- (id)_mediaRelativeMusicAssetsDirectoryPath;
- (id)_musicAssetsPathRelativeToBasePath:(id)a3;
- (id)_pathForResourceFileOrFolder:(int)a3 basePath:(id)a4 relativeToBase:(BOOL)a5 isFolder:(BOOL *)a6;
- (id)libraryContainerPath;
- (id)libraryContainerPathByAppendingPathComponent:(id)a3;
- (id)libraryContainerRelativePath:(id)a3;
- (id)mediaFolderRelativePath:(id)a3;
- (id)musicAssetsContainerPath;
- (id)pathForBaseLocationPath:(int64_t)a3;
- (id)pathForResourceFileOrFolder:(int)a3 basePath:(id)a4 relativeToBase:(BOOL)a5 createParentFolderIfNecessary:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _ML3BaseMusicLibraryResourcesManager

- (id)libraryContainerPath
{
  v3 = [(_ML3BaseMusicLibraryResourcesManager *)self _mediaPath];
  v4 = [(_ML3BaseMusicLibraryResourcesManager *)self libraryContainerIdentifier];

  if (v4)
  {
    v5 = [(_ML3BaseMusicLibraryResourcesManager *)self libraryContainerIdentifier];
    v6 = [v3 stringByAppendingPathComponent:v5];

    v3 = v6;
  }

  return v3;
}

- (id)_mediaPath
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = MLMobileUserHomeDirectory();
  v7[0] = v3;
  v7[1] = @"Media";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v5 = [v2 pathWithComponents:v4];

  return v5;
}

- (id)_pathForResourceFileOrFolder:(int)a3 basePath:(id)a4 relativeToBase:(BOOL)a5 isFolder:(BOOL *)a6
{
  v7 = a5;
  v8 = *&a3;
  v130[4] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = v11;
  if (v7)
  {
    goto LABEL_6;
  }

  if (v11 && [(__CFString *)v11 length])
  {
    goto LABEL_8;
  }

  if (![(_ML3BaseMusicLibraryResourcesManager *)self _mediaResourceRequiresLibraryContainerAccess:v8])
  {
LABEL_6:
    v13 = &stru_28408B690;
  }

  else
  {
    v13 = [(_ML3BaseMusicLibraryResourcesManager *)self libraryContainerPath];
  }

  v12 = v13;
LABEL_8:
  v14 = [(_ML3BaseMusicLibraryResourcesManager *)self _controlDirectoryPathWithBasePath:v12];
  v15 = v14;
  switch(v8)
  {
    case 0:
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"_ML3BaseMusicLibraryResourcesManager.m" lineNumber:298 description:@"Invalid resource"];

      goto LABEL_10;
    case 1:
      v36 = @"iTunes/iTunesSyncDeletes.plist";
      goto LABEL_51;
    case 2:
      v36 = @"iTunes/PlayCounts.plist";
      goto LABEL_51;
    case 3:
      v36 = @"iTunes/OnTheGoPlaylist.plist";
      goto LABEL_51;
    case 4:
      v36 = @"iTunes/OnTheGoPlaylist_%llu.plist";
      goto LABEL_51;
    case 5:
      v36 = @"iTunes/GeniusPlaylist.plist";
      goto LABEL_51;
    case 6:
      v36 = @"iTunes/GeniusPlaylist_%llu.plist";
      goto LABEL_51;
    case 7:
      v36 = @"iTunes/Playlist_%llu.plist";
LABEL_51:
      v18 = [v14 stringByAppendingPathComponent:v36];
      goto LABEL_63;
    case 8:
      v45 = [(_ML3BaseMusicLibraryResourcesManager *)self _musicAssetsPathRelativeToBasePath:v12];
      v33 = v45;
      v46 = @"Cache";
      goto LABEL_55;
    case 9:
      v45 = [(_ML3BaseMusicLibraryResourcesManager *)self _musicAssetsPathRelativeToBasePath:v12];
      v33 = v45;
      v46 = @"Cache_LoFi";
      goto LABEL_55;
    case 10:
      v45 = [(_ML3BaseMusicLibraryResourcesManager *)self _musicAssetsPathRelativeToBasePath:v12];
      v33 = v45;
      v46 = @"Downloads";
LABEL_55:
      v68 = [v45 stringByAppendingPathComponent:v46];
      goto LABEL_56;
    case 11:
      v32 = MEMORY[0x277CCACA8];
      v33 = MLMobileUserHomeDirectory();
      v130[0] = v33;
      v130[1] = @"Media";
      v130[2] = @"iTunes_Control";
      v130[3] = @"Music";
      v34 = MEMORY[0x277CBEA60];
      v35 = v130;
      goto LABEL_28;
    case 12:
      if (!v14)
      {
        v37 = dispatch_semaphore_create(0);
        v85 = MEMORY[0x277D27EF0];
        v81 = *MEMORY[0x277D27EB8];
        v127[0] = @"Resource";
        v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:12];
        v128[0] = v89;
        v127[1] = @"RelativeToBase";
        v38 = [MEMORY[0x277CCABB0] numberWithBool:v7];
        v39 = v38;
        v127[2] = @"BasePath";
        v40 = @"nil";
        if (v12)
        {
          v40 = v12;
        }

        v128[1] = v38;
        v128[2] = v40;
        v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v128 forKeys:v127 count:3];
        v129 = v41;
        v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v129 count:1];
        v98[0] = MEMORY[0x277D85DD0];
        v98[1] = 3221225472;
        v98[2] = __102___ML3BaseMusicLibraryResourcesManager__pathForResourceFileOrFolder_basePath_relativeToBase_isFolder___block_invoke;
        v98[3] = &unk_278765FB8;
        v99 = v37;
        v43 = v37;
        [v85 snapshotWithDomain:v81 type:@"Bug" subType:@"InvalidPathForResource" context:@"Invalid Control Directory Path" triggerThresholdValues:0 events:v42 completion:v98];

        dispatch_semaphore_wait(v43, 0xFFFFFFFFFFFFFFFFLL);
      }

      v29 = MEMORY[0x277CCACA8];
      v126[0] = v15;
      v126[1] = @"iTunes";
      v126[2] = @"Artwork";
      v30 = MEMORY[0x277CBEA60];
      v31 = v126;
      v44 = 3;
      goto LABEL_49;
    case 13:
      if (!v14)
      {
        v61 = dispatch_semaphore_create(0);
        v87 = MEMORY[0x277D27EF0];
        v83 = *MEMORY[0x277D27EB8];
        v123[0] = @"Resource";
        v91 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:13];
        v124[0] = v91;
        v123[1] = @"RelativeToBase";
        v62 = [MEMORY[0x277CCABB0] numberWithBool:v7];
        v63 = v62;
        v123[2] = @"BasePath";
        v64 = @"nil";
        if (v12)
        {
          v64 = v12;
        }

        v124[1] = v62;
        v124[2] = v64;
        v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:3];
        v125 = v65;
        v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v125 count:1];
        v96[0] = MEMORY[0x277D85DD0];
        v96[1] = 3221225472;
        v96[2] = __102___ML3BaseMusicLibraryResourcesManager__pathForResourceFileOrFolder_basePath_relativeToBase_isFolder___block_invoke_2;
        v96[3] = &unk_278765FB8;
        v97 = v61;
        v67 = v61;
        [v87 snapshotWithDomain:v83 type:@"Bug" subType:@"InvalidPathForResource" context:@"Invalid Control Directory Path" triggerThresholdValues:0 events:v66 completion:v96];

        dispatch_semaphore_wait(v67, 0xFFFFFFFFFFFFFFFFLL);
      }

      v29 = MEMORY[0x277CCACA8];
      v122[0] = v15;
      v122[1] = @"iTunes";
      v122[2] = @"Artwork";
      v122[3] = @"Originals";
      v30 = MEMORY[0x277CBEA60];
      v31 = v122;
      goto LABEL_48;
    case 14:
      if (!v14)
      {
        v22 = dispatch_semaphore_create(0);
        v84 = MEMORY[0x277D27EF0];
        v80 = *MEMORY[0x277D27EB8];
        v119[0] = @"Resource";
        v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:14];
        v120[0] = v88;
        v119[1] = @"RelativeToBase";
        v23 = [MEMORY[0x277CCABB0] numberWithBool:v7];
        v24 = v23;
        v119[2] = @"BasePath";
        v25 = @"nil";
        if (v12)
        {
          v25 = v12;
        }

        v120[1] = v23;
        v120[2] = v25;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:3];
        v121 = v26;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v121 count:1];
        v94[0] = MEMORY[0x277D85DD0];
        v94[1] = 3221225472;
        v94[2] = __102___ML3BaseMusicLibraryResourcesManager__pathForResourceFileOrFolder_basePath_relativeToBase_isFolder___block_invoke_3;
        v94[3] = &unk_278765FB8;
        v95 = v22;
        v28 = v22;
        [v84 snapshotWithDomain:v80 type:@"Bug" subType:@"InvalidPathForResource" context:@"Invalid Control Directory Path" triggerThresholdValues:0 events:v27 completion:v94];

        dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
      }

      v29 = MEMORY[0x277CCACA8];
      v118[0] = v15;
      v118[1] = @"iTunes";
      v118[2] = @"Artwork";
      v118[3] = @"Caches";
      v30 = MEMORY[0x277CBEA60];
      v31 = v118;
LABEL_48:
      v44 = 4;
LABEL_49:
      v33 = [v30 arrayWithObjects:v31 count:v44];
      v68 = [v29 pathWithComponents:v33];
LABEL_56:
      v18 = v68;
      goto LABEL_57;
    case 15:
      if (!v14)
      {
        v49 = dispatch_semaphore_create(0);
        v86 = MEMORY[0x277D27EF0];
        v82 = *MEMORY[0x277D27EB8];
        v115[0] = @"Resource";
        v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:15];
        v116[0] = v90;
        v115[1] = @"RelativeToBase";
        v50 = [MEMORY[0x277CCABB0] numberWithBool:v7];
        v51 = v50;
        v115[2] = @"BasePath";
        v52 = @"nil";
        if (v12)
        {
          v52 = v12;
        }

        v116[1] = v50;
        v116[2] = v52;
        v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:3];
        v117 = v53;
        v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v117 count:1];
        v92[0] = MEMORY[0x277D85DD0];
        v92[1] = 3221225472;
        v92[2] = __102___ML3BaseMusicLibraryResourcesManager__pathForResourceFileOrFolder_basePath_relativeToBase_isFolder___block_invoke_4;
        v92[3] = &unk_278765FB8;
        v93 = v49;
        v55 = v49;
        [v86 snapshotWithDomain:v82 type:@"Bug" subType:@"InvalidPathForResource" context:@"Invalid Control Directory Path" triggerThresholdValues:0 events:v54 completion:v92];

        dispatch_semaphore_wait(v55, 0xFFFFFFFFFFFFFFFFLL);
      }

      v56 = MEMORY[0x277CCACA8];
      v20 = [v15 msv_stringByResolvingRealPath];
      v114[0] = v20;
      v114[1] = @"iTunes";
      v114[2] = @"MediaLibrary.sqlitedb";
      v57 = MEMORY[0x277CBEA60];
      v58 = v114;
      v59 = 3;
      goto LABEL_61;
    case 16:
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"MLSections";
      goto LABEL_39;
    case 17:
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"SortingDetails";
LABEL_39:
      v18 = [v19 pathForResource:v21 ofType:@"plist"];
      goto LABEL_62;
    case 18:
      v56 = MEMORY[0x277CCACA8];
      v20 = MLMobileUserHomeDirectory();
      v113[0] = v20;
      v113[1] = @"Library";
      v113[2] = @"MusicLibrary";
      v113[3] = @"FailedArtworkConversion.plist";
      v57 = MEMORY[0x277CBEA60];
      v58 = v113;
      goto LABEL_60;
    case 19:
      v56 = MEMORY[0x277CCACA8];
      v20 = MLMobileUserHomeDirectory();
      v112[0] = v20;
      v112[1] = @"Library";
      v112[2] = @"MusicLibrary";
      v112[3] = @"Backups";
      v57 = MEMORY[0x277CBEA60];
      v58 = v112;
LABEL_60:
      v59 = 4;
LABEL_61:
      v69 = [v57 arrayWithObjects:v58 count:v59];
      v18 = [v56 pathWithComponents:v69];

LABEL_62:
LABEL_63:
      v17 = 0;
      if (!a6)
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    case 20:
      v60 = @"Podcasts";
      goto LABEL_66;
    case 21:
      v60 = @"Purchases";
      goto LABEL_66;
    case 22:
      v60 = @"ManagedPurchases/TVApp";
      goto LABEL_66;
    case 23:
      v60 = @"ManagedPurchases/Books";
LABEL_66:
      v47 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:v60];
      goto LABEL_67;
    case 24:
      v32 = MEMORY[0x277CCACA8];
      v33 = MLMobileUserHomeDirectory();
      v111[0] = v33;
      v111[1] = @"Library";
      v111[2] = @"Logs";
      v111[3] = @"MediaServices";
      v34 = MEMORY[0x277CBEA60];
      v35 = v111;
LABEL_28:
      v48 = [v34 arrayWithObjects:v35 count:4];
      v18 = [v32 pathWithComponents:v48];

LABEL_57:
      goto LABEL_68;
    case 25:
      v47 = [v14 stringByAppendingPathComponent:@"iTunes"];
LABEL_67:
      v18 = v47;
LABEL_68:
      v17 = 1;
      if (a6)
      {
        goto LABEL_69;
      }

      goto LABEL_70;
    default:
LABEL_10:
      v17 = 0;
      v18 = 0;
      if (!a6)
      {
        goto LABEL_70;
      }

LABEL_69:
      *a6 = v17;
LABEL_70:
      if (!v18 || ![v18 length])
      {
        v70 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109890;
          v104 = v8;
          v105 = 1024;
          v106 = v7;
          v107 = 2114;
          v108 = v12;
          v109 = 2114;
          v110 = v15;
          _os_log_impl(&dword_22D2FA000, v70, OS_LOG_TYPE_ERROR, "Computed invalid path for resource=%d, relativeToBase=%{BOOL}u, basePath=%{public}@, controlDirectoryPath=%{public}@", buf, 0x22u);
        }

        v71 = MEMORY[0x277D27EF0];
        v72 = *MEMORY[0x277D27EB8];
        v100[0] = @"Resource";
        v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
        v101[0] = v73;
        v100[1] = @"RelativeToBase";
        v74 = [MEMORY[0x277CCABB0] numberWithBool:v7];
        v75 = v74;
        v100[2] = @"BasePath";
        v76 = @"nil";
        if (v12)
        {
          v76 = v12;
        }

        v101[1] = v74;
        v101[2] = v76;
        v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:3];
        v102 = v77;
        v78 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:1];
        [v71 snapshotWithDomain:v72 type:@"Bug" subType:@"InvalidPathForResource" context:@"Invalid Control Directory Path" triggerThresholdValues:0 events:v78 completion:0];
      }

      return v18;
  }
}

- (id)_mediaRelativeMusicAssetsDirectoryPath
{
  v3 = [(_ML3BaseMusicLibraryResourcesManager *)self libraryContainerIdentifier];

  if (v3)
  {
    v4 = [(_ML3BaseMusicLibraryResourcesManager *)self libraryContainerIdentifier];
    v5 = [@"Music" stringByAppendingPathComponent:v4];
  }

  else
  {
    v5 = @"Music";
  }

  return v5;
}

- (id)_musicAssetsPathRelativeToBasePath:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_ML3BaseMusicLibraryResourcesManager *)self musicAssetsContainerPath];
  v6 = v5;
  if (v4)
  {
    v6 = v5;
    if ([v4 length])
    {
      v7 = [v5 rangeOfString:v4];
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          v10 = 138543619;
          v11 = v4;
          v12 = 2113;
          v13 = v5;
          _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_FAULT, "_musicAssetsPathWithBasePath recieved invalid base path %{public}@ for music assets path %{private}@", &v10, 0x16u);
        }

        v6 = v5;
      }

      else
      {
        v6 = [v5 substringFromIndex:v7];
      }
    }
  }

  return v6;
}

- (id)_libraryContainerPathForDSID:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  memset(v59, 0, sizeof(v59));
  CC_SHA1_Init(v59);
  v5 = v4;
  CC_SHA1_Update(v59, [v5 UTF8String], objc_msgSend(v5, "length"));

  memset(&v60[8], 0, 64);
  *v60 = 4001;
  CC_SHA1_Final(&v60[8], v59);
  v61[0] = *v60;
  v61[1] = *&v60[16];
  v61[2] = *&v60[32];
  v61[3] = *&v60[48];
  v62 = *&v60[64];
  if (*v60 > 3999)
  {
    if (*v60 > 4255)
    {
      if (*v60 == 4256)
      {
        v47 = v61 + 8;
        v48 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v49 = v48;
        for (i = 0; i != 64; i += 2)
        {
          v51 = *v47++;
          v52 = &v48[i];
          *v52 = MSVFastHexStringFromBytes_hexCharacters_28195[v51 >> 4];
          v52[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v51 & 0xF];
        }

        v18 = objc_alloc(MEMORY[0x277CCACA8]);
        v19 = v49;
        v20 = 64;
      }

      else
      {
        if (*v60 != 4512)
        {
          goto LABEL_52;
        }

        v25 = v61 + 8;
        v26 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v27 = v26;
        for (j = 0; j != 128; j += 2)
        {
          v29 = *v25++;
          v30 = &v26[j];
          *v30 = MSVFastHexStringFromBytes_hexCharacters_28195[v29 >> 4];
          v30[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v29 & 0xF];
        }

        v18 = objc_alloc(MEMORY[0x277CCACA8]);
        v19 = v27;
        v20 = 128;
      }
    }

    else if (*v60 == 4000)
    {
      v37 = v61 + 8;
      v38 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v39 = v38;
      for (k = 0; k != 32; k += 2)
      {
        v41 = *v37++;
        v42 = &v38[k];
        *v42 = MSVFastHexStringFromBytes_hexCharacters_28195[v41 >> 4];
        v42[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v41 & 0xF];
      }

      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = v39;
      v20 = 32;
    }

    else
    {
      if (*v60 != 4001)
      {
        goto LABEL_52;
      }

      v12 = v61 + 8;
      v13 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v14 = v13;
      for (m = 0; m != 40; m += 2)
      {
        v16 = *v12++;
        v17 = &v13[m];
        *v17 = MSVFastHexStringFromBytes_hexCharacters_28195[v16 >> 4];
        v17[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v16 & 0xF];
      }

      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = v14;
      v20 = 40;
    }

LABEL_47:
    v36 = [v18 initWithBytesNoCopy:v19 length:v20 encoding:4 freeWhenDone:{1, 4001, *v59}];
    goto LABEL_48;
  }

  if (*v60 > 2999)
  {
    if (*v60 == 3000)
    {
      LODWORD(v63[0]) = bswap32(DWORD2(v61[0]));
      v43 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v44 = 0;
      v45 = v43 + 1;
      do
      {
        v46 = *(v63 + v44);
        *(v45 - 1) = MSVFastHexStringFromBytes_hexCharacters_28195[v46 >> 4];
        *v45 = MSVFastHexStringFromBytes_hexCharacters_28195[v46 & 0xF];
        v45 += 2;
        ++v44;
      }

      while (v44 != 4);
      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = v43;
      v20 = 8;
    }

    else
    {
      if (*v60 != 3001)
      {
        goto LABEL_52;
      }

      v63[0] = bswap64(*(&v61[0] + 1));
      v21 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v22 = 0;
      v23 = v21 + 1;
      do
      {
        v24 = *(v63 + v22);
        *(v23 - 1) = MSVFastHexStringFromBytes_hexCharacters_28195[v24 >> 4];
        *v23 = MSVFastHexStringFromBytes_hexCharacters_28195[v24 & 0xF];
        v23 += 2;
        ++v22;
      }

      while (v22 != 8);
      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = v21;
      v20 = 16;
    }

    goto LABEL_47;
  }

  if (*v60 == 1000)
  {
    v31 = *(&v61[0] + 1);
    if (*(&v61[0] + 1))
    {
      v32 = &v64 + 1;
      quot = *(&v61[0] + 1);
      do
      {
        v34 = lldiv(quot, 10);
        quot = v34.quot;
        if (v34.rem >= 0)
        {
          LOBYTE(v35) = v34.rem;
        }

        else
        {
          v35 = -v34.rem;
        }

        *(v32 - 2) = v35 + 48;
        v11 = (v32 - 2);
        --v32;
      }

      while (v34.quot);
      if (v31 < 0)
      {
        *(v32 - 2) = 45;
        v11 = (v32 - 2);
      }

      v10 = (&v64 - v11);
      goto LABEL_37;
    }

    goto LABEL_53;
  }

  if (*v60 != 2000)
  {
LABEL_52:
    v57 = [MEMORY[0x277CCA890] currentHandler];
    v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
    [v57 handleFailureInFunction:v58 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

    v53 = &stru_28408B690;
    goto LABEL_49;
  }

  v6 = DWORD2(v61[0]);
  if (DWORD2(v61[0]))
  {
    v7 = &v64;
    do
    {
      v8 = ldiv(v6, 10);
      v6 = v8.quot;
      if (v8.rem >= 0)
      {
        LOBYTE(v9) = v8.rem;
      }

      else
      {
        v9 = -v8.rem;
      }

      *(v7 - 1) = v9 + 48;
      v7 = (v7 - 1);
    }

    while (v8.quot);
    v10 = (&v64 - v7);
    v11 = v7;
LABEL_37:
    v36 = CFStringCreateWithBytes(0, v11, v10, 0x8000100u, 0);
LABEL_48:
    v53 = v36;
    goto LABEL_49;
  }

LABEL_53:
  v53 = @"0";
LABEL_49:

  v54 = [(_ML3BaseMusicLibraryResourcesManager *)self libraryContainerPath];
  v55 = [v54 stringByAppendingPathComponent:v53];

  return v55;
}

- (BOOL)_mediaResourceRequiresLibraryContainerAccess:(int)a3
{
  if (a3 > 0x19)
  {
    goto LABEL_7;
  }

  result = 1;
  if (((1 << a3) & 0x200F8FE) != 0)
  {
    return result;
  }

  if (((1 << a3) & 0x1FF0700) == 0)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_ML3BaseMusicLibraryResourcesManager.m" lineNumber:201 description:@"Invalid resource"];

LABEL_7:
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_ML3BaseMusicLibraryResourcesManager.m" lineNumber:232 description:@"Invalid resource"];
  }

  return 0;
}

- (id)musicAssetsContainerPath
{
  v3 = [(_ML3BaseMusicLibraryResourcesManager *)self _mediaPath];
  v4 = [(_ML3BaseMusicLibraryResourcesManager *)self _mediaRelativeMusicAssetsDirectoryPath];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (id)mediaFolderRelativePath:(id)a3
{
  v4 = a3;
  v5 = [(_ML3BaseMusicLibraryResourcesManager *)self _mediaPath];
  v6 = [v4 relativePathFromBasePath:v5];

  return v6;
}

- (id)pathForBaseLocationPath:(int64_t)a3
{
  if (a3 <= 299)
  {
    switch(a3)
    {
      case 100:
        v3 = 9;
        goto LABEL_19;
      case 200:
        v3 = 8;
        goto LABEL_19;
      case 250:
        v3 = 10;
        goto LABEL_19;
    }
  }

  else if (a3 > 499)
  {
    if (a3 == 500)
    {
      v3 = 22;
      goto LABEL_19;
    }

    if (a3 == 600)
    {
      v3 = 23;
      goto LABEL_19;
    }
  }

  else
  {
    if (a3 == 300)
    {
      v3 = 21;
      goto LABEL_19;
    }

    if (a3 == 400)
    {
      v3 = 20;
LABEL_19:
      v7 = [(_ML3BaseMusicLibraryResourcesManager *)self pathForResourceFileOrFolder:v3];
      goto LABEL_20;
    }
  }

  if ((a3 & 0xF00) != 0)
  {
    v4 = a3;
    v5 = [(_ML3BaseMusicLibraryResourcesManager *)self _pathForResourceFileOrFolder:11 basePath:0 relativeToBase:0 isFolder:0];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"F%02lld", v4];
    v7 = [v5 stringByAppendingPathComponent:v6];
  }

  else
  {
    v7 = 0;
  }

LABEL_20:

  return v7;
}

- (id)pathForResourceFileOrFolder:(int)a3 basePath:(id)a4 relativeToBase:(BOOL)a5 createParentFolderIfNecessary:(BOOL)a6
{
  v6 = a6;
  v22 = 0;
  v7 = [(_ML3BaseMusicLibraryResourcesManager *)self _pathForResourceFileOrFolder:*&a3 basePath:a4 relativeToBase:a5 isFolder:&v22];
  v8 = v7;
  if (v22 == 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v7 stringByDeletingLastPathComponent];
  }

  v10 = v9;
  v11 = [v9 pathComponents];
  v12 = v11;
  if (v6 && [v11 count] >= 2)
  {
    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [v12 objectAtIndex:0];
    v15 = [v12 count];
    if (v15 >= 2)
    {
      v16 = v15;
      for (i = 1; i != v16; ++i)
      {
        v18 = v14;
        v19 = [v12 objectAtIndex:i];
        v14 = [v14 stringByAppendingPathComponent:v19];

        if (([v13 fileExistsAtPath:v14 isDirectory:0] & 1) == 0)
        {
          [v13 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:0];
        }
      }
    }
  }

  v20 = v8;

  return v20;
}

- (id)libraryContainerRelativePath:(id)a3
{
  v4 = a3;
  v5 = [(_ML3BaseMusicLibraryResourcesManager *)self libraryContainerPath];
  v6 = [v4 relativePathFromBasePath:v5];

  return v6;
}

- (id)libraryContainerPathByAppendingPathComponent:(id)a3
{
  v4 = a3;
  v5 = [(_ML3BaseMusicLibraryResourcesManager *)self libraryContainerPath];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_ML3BaseMusicLibraryResourcesManager *)self libraryContainerIdentifier];
  [v4 encodeObject:v5 forKey:@"ah"];
}

- (_ML3BaseMusicLibraryResourcesManager)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ah"];

  v6 = [(_ML3BaseMusicLibraryResourcesManager *)self initWithLibraryContainerIdentifier:v5];
  return v6;
}

- (_ML3BaseMusicLibraryResourcesManager)initWithLibraryContainerIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _ML3BaseMusicLibraryResourcesManager;
  v5 = [(_ML3BaseMusicLibraryResourcesManager *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    libraryContainerIdentifier = v5->_libraryContainerIdentifier;
    v5->_libraryContainerIdentifier = v6;
  }

  return v5;
}

- (_ML3BaseMusicLibraryResourcesManager)initWithAccountInfo:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 accountDSID];

  if (v5)
  {
    v6 = [v4 accountDSID];
    memset(v61, 0, sizeof(v61));
    v60 = 4001;
    CC_SHA1_Init(v61);
    v7 = v6;
    CC_SHA1_Update(v61, [v7 UTF8String], objc_msgSend(v7, "length"));

    memset(&v62[8], 0, 64);
    *v62 = 4001;
    CC_SHA1_Final(&v62[8], v61);
    v63[0] = *v62;
    v63[1] = *&v62[16];
    v63[2] = *&v62[32];
    v63[3] = *&v62[48];
    v64 = *&v62[64];
    if (*v62 > 3999)
    {
      if (*v62 > 4255)
      {
        if (*v62 == 4256)
        {
          v50 = v63 + 8;
          v51 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
          v52 = v51;
          for (i = 0; i != 64; i += 2)
          {
            v54 = *v50++;
            v55 = &v51[i];
            *v55 = MSVFastHexStringFromBytes_hexCharacters_28195[v54 >> 4];
            v55[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v54 & 0xF];
          }

          v21 = objc_alloc(MEMORY[0x277CCACA8]);
          v22 = v52;
          v23 = 64;
        }

        else
        {
          if (*v62 != 4512)
          {
            goto LABEL_54;
          }

          v28 = v63 + 8;
          v29 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
          v30 = v29;
          for (j = 0; j != 128; j += 2)
          {
            v32 = *v28++;
            v33 = &v29[j];
            *v33 = MSVFastHexStringFromBytes_hexCharacters_28195[v32 >> 4];
            v33[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v32 & 0xF];
          }

          v21 = objc_alloc(MEMORY[0x277CCACA8]);
          v22 = v30;
          v23 = 128;
        }
      }

      else if (*v62 == 4000)
      {
        v40 = v63 + 8;
        v41 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
        v42 = v41;
        for (k = 0; k != 32; k += 2)
        {
          v44 = *v40++;
          v45 = &v41[k];
          *v45 = MSVFastHexStringFromBytes_hexCharacters_28195[v44 >> 4];
          v45[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v44 & 0xF];
        }

        v21 = objc_alloc(MEMORY[0x277CCACA8]);
        v22 = v42;
        v23 = 32;
      }

      else
      {
        if (*v62 != 4001)
        {
          goto LABEL_54;
        }

        v15 = v63 + 8;
        v16 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
        v17 = v16;
        for (m = 0; m != 40; m += 2)
        {
          v19 = *v15++;
          v20 = &v16[m];
          *v20 = MSVFastHexStringFromBytes_hexCharacters_28195[v19 >> 4];
          v20[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v19 & 0xF];
        }

        v21 = objc_alloc(MEMORY[0x277CCACA8]);
        v22 = v17;
        v23 = 40;
      }
    }

    else
    {
      if (*v62 <= 2999)
      {
        if (*v62 == 1000)
        {
          v34 = *(&v63[0] + 1);
          if (*(&v63[0] + 1))
          {
            v35 = &v66 + 1;
            quot = *(&v63[0] + 1);
            do
            {
              v37 = lldiv(quot, 10);
              quot = v37.quot;
              if (v37.rem >= 0)
              {
                LOBYTE(v38) = v37.rem;
              }

              else
              {
                v38 = -v37.rem;
              }

              *(v35 - 2) = v38 + 48;
              v14 = (v35 - 2);
              --v35;
            }

            while (v37.quot);
            if (v34 < 0)
            {
              *(v35 - 2) = 45;
              v14 = (v35 - 2);
            }

            v13 = (&v66 - v14);
            goto LABEL_40;
          }

LABEL_55:
          v8 = @"0";
          goto LABEL_52;
        }

        if (*v62 == 2000)
        {
          v9 = DWORD2(v63[0]);
          if (DWORD2(v63[0]))
          {
            v10 = &v66;
            do
            {
              v11 = ldiv(v9, 10);
              v9 = v11.quot;
              if (v11.rem >= 0)
              {
                LOBYTE(v12) = v11.rem;
              }

              else
              {
                v12 = -v11.rem;
              }

              *(v10 - 1) = v12 + 48;
              v10 = (v10 - 1);
            }

            while (v11.quot);
            v13 = (&v66 - v10);
            v14 = v10;
LABEL_40:
            v39 = CFStringCreateWithBytes(0, v14, v13, 0x8000100u, 0);
LABEL_51:
            v8 = v39;
LABEL_52:

            goto LABEL_53;
          }

          goto LABEL_55;
        }

LABEL_54:
        v58 = [MEMORY[0x277CCA890] currentHandler];
        v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
        [v58 handleFailureInFunction:v59 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

        v8 = &stru_28408B690;
        goto LABEL_52;
      }

      if (*v62 == 3000)
      {
        LODWORD(v65[0]) = bswap32(DWORD2(v63[0]));
        v46 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
        v47 = 0;
        v48 = v46 + 1;
        do
        {
          v49 = *(v65 + v47);
          *(v48 - 1) = MSVFastHexStringFromBytes_hexCharacters_28195[v49 >> 4];
          *v48 = MSVFastHexStringFromBytes_hexCharacters_28195[v49 & 0xF];
          v48 += 2;
          ++v47;
        }

        while (v47 != 4);
        v21 = objc_alloc(MEMORY[0x277CCACA8]);
        v22 = v46;
        v23 = 8;
      }

      else
      {
        if (*v62 != 3001)
        {
          goto LABEL_54;
        }

        v65[0] = bswap64(*(&v63[0] + 1));
        v24 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
        v25 = 0;
        v26 = v24 + 1;
        do
        {
          v27 = *(v65 + v25);
          *(v26 - 1) = MSVFastHexStringFromBytes_hexCharacters_28195[v27 >> 4];
          *v26 = MSVFastHexStringFromBytes_hexCharacters_28195[v27 & 0xF];
          v26 += 2;
          ++v25;
        }

        while (v25 != 8);
        v21 = objc_alloc(MEMORY[0x277CCACA8]);
        v22 = v24;
        v23 = 16;
      }
    }

    v39 = [v21 initWithBytesNoCopy:v22 length:v23 encoding:4 freeWhenDone:{1, 4001, *v61}];
    goto LABEL_51;
  }

  v8 = 0;
LABEL_53:
  v56 = [(_ML3BaseMusicLibraryResourcesManager *)self initWithLibraryContainerIdentifier:v8, v60];

  return v56;
}

@end