@interface Main
+ (BOOL)createZipFileAtPath:(id)a3 withContentsOfDirectory:(id)a4;
+ (BOOL)createZipFileAtPath:(id)a3 withContentsOfDirectory:(id)a4 keepParentDirectory:(BOOL)a5;
+ (BOOL)createZipFileAtPath:(id)a3 withFilesAtPaths:(id)a4;
+ (BOOL)unzipFileAtPath:(id)a3 toDestination:(id)a4;
+ (BOOL)unzipFileAtPath:(id)a3 toDestination:(id)a4 delegate:(id)a5;
+ (BOOL)unzipFileAtPath:(id)a3 toDestination:(id)a4 overwrite:(BOOL)a5 password:(id)a6 error:(id *)a7;
+ (BOOL)unzipFileAtPath:(id)a3 toDestination:(id)a4 overwrite:(BOOL)a5 password:(id)a6 error:(id *)a7 delegate:(id)a8;
+ (BOOL)unzipFileAtPath:(id)a3 toDestination:(id)a4 overwrite:(BOOL)a5 password:(id)a6 error:(id *)a7 delegate:(id)a8 progressHandler:(id)a9 completionHandler:(id)a10;
+ (BOOL)unzipFileAtPath:(id)a3 toDestination:(id)a4 overwrite:(BOOL)a5 password:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8;
+ (BOOL)unzipFileAtPath:(id)a3 toDestination:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
+ (id)dateWithMicrosoftDOSFormat:(unsigned int)a3;
- (BOOL)open;
- (BOOL)writeData:(id)a3 fileName:(id)a4;
- (BOOL)writeFile:(id)a3;
- (BOOL)writeFileAtPath:(id)a3 withFileName:(id)a4;
- (BOOL)writeFolderAtPath:(id)a3 withFolderName:(id)a4;
- (Main)initWithPath:(id)a3;
- (void)zipInformation:(id *)a3 setDate:(id)a4;
@end

@implementation Main

+ (BOOL)unzipFileAtPath:(id)a3 toDestination:(id)a4
{
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [v9 unzipFileAtPath:location[0] toDestination:v7 delegate:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v6;
}

+ (BOOL)unzipFileAtPath:(id)a3 toDestination:(id)a4 overwrite:(BOOL)a5 password:(id)a6 error:(id *)a7
{
  v17 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = a5;
  v13 = 0;
  objc_storeStrong(&v13, a6);
  v12 = [v17 unzipFileAtPath:location[0] toDestination:v15 overwrite:v14 password:v13 error:a7 delegate:0 progressHandler:0 completionHandler:0];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v12;
}

+ (BOOL)unzipFileAtPath:(id)a3 toDestination:(id)a4 delegate:(id)a5
{
  v12 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  v8 = [v12 unzipFileAtPath:location[0] toDestination:v10 overwrite:1 password:0 error:0 delegate:v9 progressHandler:0 completionHandler:0];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v8;
}

+ (BOOL)unzipFileAtPath:(id)a3 toDestination:(id)a4 overwrite:(BOOL)a5 password:(id)a6 error:(id *)a7 delegate:(id)a8
{
  v21 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = a5;
  v17 = 0;
  objc_storeStrong(&v17, a6);
  v16 = a7;
  v15 = 0;
  objc_storeStrong(&v15, a8);
  v14 = [v21 unzipFileAtPath:location[0] toDestination:v19 overwrite:v18 password:v17 error:v16 delegate:v15 progressHandler:0 completionHandler:0];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v14;
}

+ (BOOL)unzipFileAtPath:(id)a3 toDestination:(id)a4 overwrite:(BOOL)a5 password:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8
{
  v21 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = a5;
  v17 = 0;
  objc_storeStrong(&v17, a6);
  v16 = 0;
  objc_storeStrong(&v16, a7);
  v15 = 0;
  objc_storeStrong(&v15, a8);
  v14 = [v21 unzipFileAtPath:location[0] toDestination:v19 overwrite:v18 password:v17 error:0 delegate:v16 progressHandler:v15 completionHandler:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v14;
}

+ (BOOL)unzipFileAtPath:(id)a3 toDestination:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v15 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v11 = 0;
  objc_storeStrong(&v11, a6);
  v10 = [v15 unzipFileAtPath:location[0] toDestination:v13 overwrite:1 password:0 error:0 delegate:v12 progressHandler:v11 completionHandler:?];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v10;
}

+ (BOOL)unzipFileAtPath:(id)a3 toDestination:(id)a4 overwrite:(BOOL)a5 password:(id)a6 error:(id *)a7 delegate:(id)a8 progressHandler:(id)a9 completionHandler:(id)a10
{
  v148[1] = *MEMORY[0x277D85DE8];
  v133 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v131 = 0;
  objc_storeStrong(&v131, a4);
  v130 = a5;
  v129 = 0;
  objc_storeStrong(&v129, a6);
  v128 = a7;
  v127 = 0;
  objc_storeStrong(&v127, a8);
  v126 = 0;
  objc_storeStrong(&v126, a9);
  v125 = 0;
  objc_storeStrong(&v125, a10);
  v74 = location[0];
  v10 = location[0];
  v124 = unzOpen([v74 UTF8String]);
  if (v124)
  {
    v66 = [MEMORY[0x277CCAA00] defaultManager];
    v120 = [v66 attributesOfItemAtPath:location[0] error:0];
    MEMORY[0x277D82BD8](v66);
    v67 = [v120 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
    v68 = [v67 unsignedLongLongValue];
    MEMORY[0x277D82BD8](v67);
    v119 = v68;
    v118 = 0;
    v116 = 0;
    v117 = 0;
    unzGetGlobalInfo(v124, &v116);
    if (unzGoToFirstFile(v124))
    {
      v145 = *MEMORY[0x277CCA450];
      v146 = @"Failed to open the first file in Zip.";
      v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
      v114 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ZipArchiveErrorDomain" code:-2 userInfo:v115];
      if (v128)
      {
        v12 = v114;
        *v128 = v114;
      }

      if (v125)
      {
        (*(v125 + 2))(v125, 0, 0, v114);
      }

      v134 = 0;
      v121 = 1;
      objc_storeStrong(&v114, 0);
      objc_storeStrong(&v115, 0);
    }

    else
    {
      v113 = [MEMORY[0x277CCAA00] defaultManager];
      v112 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v111 = 1;
      v110 = 0;
      CurrentFileInfo = 0;
      bzero(__ptr, 0x1000uLL);
      if (objc_opt_respondsToSelector())
      {
        [v127 zipArchiveWillUnzipArchiveAtPath:location[0] zipInformation:{v116, v117}];
      }

      if (objc_opt_respondsToSelector())
      {
        [v127 zipArchiveProgressEvent:v118 total:v119];
      }

      v108 = 0;
      do
      {
        context = objc_autoreleasePoolPush();
        if ([v129 length])
        {
          v64 = v124;
          v63 = v129;
          v13 = v129;
          CurrentFileInfo = unzOpenCurrentFilePassword(v64, [v63 cStringUsingEncoding:1]);
        }

        else
        {
          CurrentFileInfo = unzOpenCurrentFile(v124);
        }

        if (CurrentFileInfo)
        {
          v111 = 0;
          v121 = 2;
        }

        else
        {
          memset(__b, 0, sizeof(__b));
          CurrentFileInfo = unzGetCurrentFileInfo(v124, __b, 0, 0, 0, 0, 0, 0);
          if (CurrentFileInfo)
          {
            v111 = 0;
            unzCloseCurrentFile(v124);
            v121 = 2;
          }

          else
          {
            v118 += __b[6];
            if (objc_opt_respondsToSelector())
            {
              memcpy(__dst, __b, sizeof(__dst));
              if (([v127 zipArchiveShouldUnzipFileAtIndex:v108 totalFiles:v116 archivePath:location[0] fileInformation:__dst] & 1) == 0)
              {
                v111 = 0;
                v110 = 1;
              }
            }

            if (objc_opt_respondsToSelector())
            {
              memcpy(v105, __b, sizeof(v105));
              [v127 zipArchiveWillUnzipFileAtIndex:v108 totalFiles:v116 archivePath:location[0] fileInformation:v105];
            }

            if (objc_opt_respondsToSelector())
            {
              [v127 zipArchiveProgressEvent:v118 total:v119];
            }

            v104 = malloc_type_malloc(__b[8] + 1, 0x100004077774924uLL);
            unzGetCurrentFileInfo(v124, __b, v104, __b[8] + 1, 0, 0, 0, 0);
            *(v104 + __b[8]) = 0;
            v103 = 3;
            v102 = 61440;
            v101 = 40960;
            v100 = 0;
            if (__b[0] >> 8 == 3 && ((__b[13] >> 16) & 0xF000) == 0xA000)
            {
              v100 = 0;
            }

            v99 = [MEMORY[0x277CCACA8] stringWithUTF8String:v104];
            v98 = 0;
            if (*(v104 + __b[8] - 1) == 47 || *(v104 + __b[8] - 1) == 92)
            {
              v98 = 1;
            }

            free(v104);
            v60 = v99;
            v61 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"/\\""];
            v96 = [v60 rangeOfCharacterFromSet:?];
            v97 = v14;
            v62 = v96;
            MEMORY[0x277D82BD8](v61);
            if (v62 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v15 = [v99 stringByReplacingOccurrencesOfString:@"\\" withString:@"/""];
              v16 = v99;
              v99 = v15;
              MEMORY[0x277D82BD8](v16);
            }

            v95 = [v131 stringByAppendingPathComponent:v99];
            v94 = 0;
            v93 = [objc_opt_class() dateWithMicrosoftDOSFormat:__b[4]];
            v142[0] = *MEMORY[0x277CCA108];
            v143[0] = v93;
            v142[1] = *MEMORY[0x277CCA150];
            v143[1] = v93;
            v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:2];
            if (v98)
            {
              v91 = v94;
              [v113 createDirectoryAtPath:v95 withIntermediateDirectories:1 attributes:v92 error:&v91];
              objc_storeStrong(&v94, v91);
            }

            else
            {
              v58 = v113;
              v59 = [v95 stringByDeletingLastPathComponent];
              v90 = v94;
              [v58 createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];
              objc_storeStrong(&v94, v90);
              MEMORY[0x277D82BD8](v59);
            }

            if (v94)
            {
              v57 = [v94 localizedDescription];
              NSLog(&cfstr_ZiparchiveErro.isa, v57);
              MEMORY[0x277D82BD8](v57);
            }

            if ((v100 & 1) == 0)
            {
              v55 = v112;
              v140[0] = @"path";
              v141[0] = v95;
              v140[1] = @"modDate";
              v141[1] = v93;
              v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:v140 count:2];
              [v55 addObject:?];
              MEMORY[0x277D82BD8](v56);
            }

            if (([v113 fileExistsAtPath:v95] & 1) == 0 || (v98 & 1) != 0 || v130)
            {
              if (v100)
              {
                v83 = [MEMORY[0x277CCAB68] string];
                CurrentFile = 0;
                while (1)
                {
                  CurrentFile = unzReadCurrentFile(v124, __ptr, 0x1000u);
                  if (CurrentFile <= 0)
                  {
                    break;
                  }

                  __ptr[CurrentFile] = 0;
                  v41 = v83;
                  v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
                  [v41 appendString:?];
                  MEMORY[0x277D82BD8](v42);
                }

                v38 = v83;
                v18 = v83;
                v40 = [v38 cStringUsingEncoding:?];
                v39 = v95;
                v19 = v95;
                if (symlink(v40, [v39 cStringUsingEncoding:4]))
                {
                  v36 = v95;
                  v37 = v83;
                  v20 = __error();
                  NSLog(&cfstr_FailedToCreate.isa, v36, v37, *v20);
                }

                objc_storeStrong(&v83, 0);
              }

              else
              {
                v54 = v95;
                v17 = v95;
                *&__size[1] = fopen([v54 UTF8String], "wb");
                while (*&__size[1])
                {
                  __size[0] = unzReadCurrentFile(v124, __ptr, 0x1000u);
                  if (__size[0] <= 0)
                  {
                    break;
                  }

                  fwrite(__ptr, __size[0], 1uLL, *&__size[1]);
                }

                if (*&__size[1])
                {
                  v52 = [v95 pathExtension];
                  v51 = [v52 lowercaseString];
                  v53 = [v51 isEqualToString:@"zip"];
                  MEMORY[0x277D82BD8](v51);
                  MEMORY[0x277D82BD8](v52);
                  if (v53)
                  {
                    v46 = [v95 lastPathComponent];
                    NSLog(&cfstr_UnzippingNeste.isa, v46);
                    MEMORY[0x277D82BD8](v46);
                    v48 = v133;
                    v47 = v95;
                    v49 = [v95 stringByDeletingLastPathComponent];
                    v50 = [v48 unzipFileAtPath:v47 toDestination:? overwrite:? password:? error:? delegate:?];
                    MEMORY[0x277D82BD8](v49);
                    if (v50)
                    {
                      v45 = [MEMORY[0x277CCAA00] defaultManager];
                      [v45 removeItemAtPath:v95 error:0];
                      MEMORY[0x277D82BD8](v45);
                    }
                  }

                  fclose(*&__size[1]);
                  if (__b[4])
                  {
                    v88 = [objc_opt_class() dateWithMicrosoftDOSFormat:__b[4]];
                    v138 = *MEMORY[0x277CCA150];
                    v139 = v88;
                    v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
                    if (v87 && ![v113 setAttributes:v87 ofItemAtPath:v95 error:0])
                    {
                      NSLog(&cfstr_ZiparchiveFail.isa);
                    }

                    objc_storeStrong(&v87, 0);
                    objc_storeStrong(&v88, 0);
                  }

                  v86 = __b[13] >> 16;
                  if (__b[13] >> 16)
                  {
                    v85 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v86];
                    v43 = objc_alloc(MEMORY[0x277CBEB38]);
                    v44 = [v113 attributesOfItemAtPath:v95 error:?];
                    v84 = [v43 initWithDictionary:?];
                    MEMORY[0x277D82BD8](v44);
                    [v84 setObject:v85 forKeyedSubscript:*MEMORY[0x277CCA180]];
                    if (![v113 setAttributes:v84 ofItemAtPath:v95 error:0])
                    {
                      NSLog(&cfstr_ZiparchiveFail_0.isa);
                    }

                    objc_storeStrong(&v84, 0);
                    objc_storeStrong(&v85, 0);
                  }
                }
              }

              unzCloseCurrentFile(v124);
              CurrentFileInfo = unzGoToNextFile(v124);
              if (objc_opt_respondsToSelector())
              {
                memcpy(v80, __b, sizeof(v80));
                [v127 zipArchiveDidUnzipFileAtIndex:v108 totalFiles:v116 archivePath:location[0] fileInformation:v80];
              }

              else if (objc_opt_respondsToSelector())
              {
                [v127 zipArchiveDidUnzipFileAtIndex:v108 totalFiles:v116 archivePath:location[0] unzippedFilePath:v95];
              }

              ++v108;
              if (v126)
              {
                v35 = *(v126 + 2);
                memcpy(v79, __b, sizeof(v79));
                v35(v126, v99, v79, v108, v116);
              }

              v121 = 0;
            }

            else
            {
              unzCloseCurrentFile(v124);
              CurrentFileInfo = unzGoToNextFile(v124);
              v121 = 3;
            }

            objc_storeStrong(&v92, 0);
            objc_storeStrong(&v93, 0);
            objc_storeStrong(&v94, 0);
            objc_storeStrong(&v95, 0);
            objc_storeStrong(&v99, 0);
          }
        }

        objc_autoreleasePoolPop(context);
      }

      while (v121 != 2 && !CurrentFileInfo);
      unzClose(v124);
      v78 = 0;
      memset(v76, 0, sizeof(v76));
      v33 = MEMORY[0x277D82BE0](v112);
      v34 = [v33 countByEnumeratingWithState:v76 objects:v137 count:16];
      if (v34)
      {
        v30 = *v76[2];
        v31 = 0;
        v32 = v34;
        while (1)
        {
          v29 = v31;
          if (*v76[2] != v30)
          {
            objc_enumerationMutation(v33);
          }

          v77 = *(v76[1] + 8 * v31);
          v27 = [MEMORY[0x277CCAA00] defaultManager];
          v135 = *MEMORY[0x277CCA150];
          v26 = [v77 objectForKeyedSubscript:@"modDate"];
          v136 = v26;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
          v24 = [v77 objectForKeyedSubscript:@"path"];
          v75 = v78;
          v28 = [v27 setAttributes:v25 ofItemAtPath:? error:?];
          objc_storeStrong(&v78, v75);
          MEMORY[0x277D82BD8](v24);
          MEMORY[0x277D82BD8](v25);
          MEMORY[0x277D82BD8](v26);
          MEMORY[0x277D82BD8](v27);
          if ((v28 & 1) == 0)
          {
            v23 = [v77 objectForKeyedSubscript:@"path"];
            NSLog(&cfstr_ZiparchiveSetA.isa, v23);
            MEMORY[0x277D82BD8](v23);
          }

          if (v78)
          {
            v22 = [v78 localizedDescription];
            NSLog(&cfstr_ZiparchiveErro_0.isa, v22);
            MEMORY[0x277D82BD8](v22);
          }

          ++v31;
          if (v29 + 1 >= v32)
          {
            v31 = 0;
            v32 = [v33 countByEnumeratingWithState:v76 objects:v137 count:16];
            if (!v32)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](v33);
      if (v111 & 1) != 0 && (objc_opt_respondsToSelector())
      {
        [v127 zipArchiveDidUnzipArchiveAtPath:location[0] zipInformation:v116 unzippedPath:{v117, v131}];
      }

      if (v110 & 1) == 0 && (objc_opt_respondsToSelector())
      {
        [v127 zipArchiveProgressEvent:v119 total:v119];
      }

      if (v125)
      {
        (*(v125 + 2))(v125, location[0], 1, 0);
      }

      v134 = v111 & 1;
      v121 = 1;
      objc_storeStrong(&v78, 0);
      objc_storeStrong(&v112, 0);
      objc_storeStrong(&v113, 0);
    }

    objc_storeStrong(&v120, 0);
  }

  else
  {
    v147 = *MEMORY[0x277CCA450];
    v148[0] = @"Failed to unzip file";
    v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v148 forKeys:&v147 count:1];
    v122 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ZipArchiveErrorDomain" code:-1 userInfo:v123];
    if (v128)
    {
      v11 = v122;
      *v128 = v122;
    }

    if (v125)
    {
      (*(v125 + 2))(v125, 0, 0, v122);
    }

    v134 = 0;
    v121 = 1;
    objc_storeStrong(&v122, 0);
    objc_storeStrong(&v123, 0);
  }

  objc_storeStrong(&v125, 0);
  objc_storeStrong(&v126, 0);
  objc_storeStrong(&v127, 0);
  objc_storeStrong(&v129, 0);
  objc_storeStrong(&v131, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v134 & 1;
}

+ (BOOL)createZipFileAtPath:(id)a3 withFilesAtPaths:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  v4 = [Main alloc];
  v16 = [(Main *)v4 initWithPath:location[0]];
  if ([v16 open])
  {
    memset(__b, 0, sizeof(__b));
    v11 = MEMORY[0x277D82BE0](v18);
    v12 = [v11 countByEnumeratingWithState:__b objects:v20 count:16];
    if (v12)
    {
      v8 = *__b[2];
      v9 = 0;
      v10 = v12;
      while (1)
      {
        v7 = v9;
        if (*__b[2] != v8)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(__b[1] + 8 * v9);
        [v16 writeFile:v15];
        ++v9;
        if (v7 + 1 >= v10)
        {
          v9 = 0;
          v10 = [v11 countByEnumeratingWithState:__b objects:v20 count:16];
          if (!v10)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v11);
    v17 = [v16 close];
  }

  v6 = v17;
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v6 & 1;
}

+ (BOOL)createZipFileAtPath:(id)a3 withContentsOfDirectory:(id)a4
{
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [v9 createZipFileAtPath:location[0] withContentsOfDirectory:v7 keepParentDirectory:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v6;
}

+ (BOOL)createZipFileAtPath:(id)a3 withContentsOfDirectory:(id)a4 keepParentDirectory:(BOOL)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = 0;
  objc_storeStrong(&v33, a4);
  v32 = a5;
  v31 = 0;
  v30 = 0;
  v5 = [Main alloc];
  v29 = [(Main *)v5 initWithPath:location[0]];
  if ([v29 open])
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v7 = v30;
    v30 = v6;
    MEMORY[0x277D82BD8](v7);
    v28 = [v30 enumeratorAtPath:v33];
    v27 = 0;
    while (1)
    {
      v21 = [v28 nextObject];
      v8 = v27;
      v27 = v21;
      MEMORY[0x277D82BD8](v8);
      if (!v21)
      {
        break;
      }

      v26 = 0;
      v25 = [v33 stringByAppendingPathComponent:v27];
      [v30 fileExistsAtPath:v25 isDirectory:&v26];
      if (v26)
      {
        v18 = [MEMORY[0x277CCAA00] defaultManager];
        v17 = [v18 subpathsOfDirectoryAtPath:v25 error:0];
        v19 = [v17 count];
        MEMORY[0x277D82BD8](v17);
        MEMORY[0x277D82BD8](v18);
        if (!v19)
        {
          v24 = [v25 stringByAppendingPathComponent:?];
          [&stru_28677B088 writeToFile:v24 atomically:1 encoding:4 error:?];
          v14 = v29;
          v13 = v24;
          v15 = [v27 stringByAppendingPathComponent:@".DS_Store"];
          [v14 writeFileAtPath:v13 withFileName:?];
          MEMORY[0x277D82BD8](v15);
          v16 = [MEMORY[0x277CCAA00] defaultManager];
          [v16 removeItemAtPath:v24 error:0];
          MEMORY[0x277D82BD8](v16);
          objc_storeStrong(&v24, 0);
        }
      }

      else
      {
        if (v32)
        {
          v20 = [v33 lastPathComponent];
          v9 = [v20 stringByAppendingPathComponent:v27];
          v10 = v27;
          v27 = v9;
          MEMORY[0x277D82BD8](v10);
          MEMORY[0x277D82BD8](v20);
        }

        [v29 writeFileAtPath:v25 withFileName:v27];
      }

      objc_storeStrong(&v25, 0);
    }

    v31 = [v29 close];
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
  }

  v12 = v31;
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  return v12 & 1;
}

- (Main)initWithPath:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v11 = 0;
  v9.receiver = v3;
  v9.super_class = Main;
  v8 = [(Main *)&v9 init];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    v4 = [location[0] copy];
    path = v11->_path;
    v11->_path = v4;
    MEMORY[0x277D82BD8](path);
  }

  v7 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (BOOL)open
{
  [(NSString *)self->_path UTF8String];
  self->_zip = zipOpen();
  return self->_zip != 0;
}

- (void)zipInformation:(id *)a3 setDate:(id)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v12 = [MEMORY[0x277CBEA80] currentCalendar];
  v11 = 252;
  v10 = [v12 components:252 fromDate:location];
  v4 = [v10 second];
  v14->var0.var0 = v4;
  v5 = [v10 minute];
  v14->var0.var1 = v5;
  v6 = [v10 hour];
  v14->var0.var2 = v6;
  v7 = [v10 day];
  v14->var0.var3 = v7;
  v8 = [v10 month];
  v14->var0.var4 = v8 - 1;
  v9 = [v10 year];
  v14->var0.var5 = v9;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

- (BOOL)writeFolderAtPath:(id)a3 withFolderName:(id)a4
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  memset(__b, 0, sizeof(__b));
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = [v10 attributesOfItemAtPath:location[0] error:0];
  MEMORY[0x277D82BD8](v10);
  if (v18)
  {
    v17 = [v18 objectForKeyedSubscript:*MEMORY[0x277CCA150]];
    if (v17)
    {
      [v22 zipInformation:__b setDate:v17];
    }

    v16 = [v18 objectForKeyedSubscript:*MEMORY[0x277CCA180]];
    if (v16)
    {
      v15 = [v16 shortValue];
      v14 = v15 + 0x8000;
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
      v9 = [v8 unsignedLongValue];
      MEMORY[0x277D82BD8](v8);
      v13 = v9;
      __b[5] = v9 < 0x10;
    }

    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
  }

  v12 = 0;
  v6 = v22[3];
  v7 = [v20 stringByAppendingString:@"/"];
  v4 = v7;
  zipOpenNewFileInZip(v6, [v7 UTF8String], __b, 0, 0, 0, 0, 0, 8, 0);
  MEMORY[0x277D82BD8](v7);
  zipWriteInFileInZip(v22[3], &v12, 0);
  zipCloseFileInZip(v22[3]);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)writeFile:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(Main *)v6 writeFileAtPath:location[0] withFileName:0];
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)writeFileAtPath:(id)a3 withFileName:(id)a4
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v13 = location[0];
  v4 = location[0];
  v24 = fopen([v13 UTF8String], "r");
  if (v24)
  {
    v22 = 0;
    if (v25)
    {
      v11 = v25;
      v6 = v25;
      v22 = [v11 UTF8String];
    }

    else
    {
      v12 = [location[0] lastPathComponent];
      v5 = v12;
      v22 = [v12 UTF8String];
      MEMORY[0x277D82BD8](v12);
    }

    memset(__b, 0, sizeof(__b));
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = [v10 attributesOfItemAtPath:location[0] error:0];
    MEMORY[0x277D82BD8](v10);
    if (v20)
    {
      v19 = [v20 objectForKeyedSubscript:*MEMORY[0x277CCA150]];
      if (v19)
      {
        [v27 zipInformation:__b setDate:v19];
      }

      v18 = [v20 objectForKeyedSubscript:*MEMORY[0x277CCA180]];
      if (v18)
      {
        v17 = [v18 shortValue] + 0x8000;
        v8 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
        v9 = [v8 unsignedLongValue];
        MEMORY[0x277D82BD8](v8);
        __b[5] = v9 << 16;
      }

      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v19, 0);
    }

    zipOpenNewFileInZip(v27[3], v22, __b, 0, 0, 0, 0, 0, 8, -1);
    __ptr = malloc_type_malloc(0x4000uLL, 0x1270542AuLL);
    while (!feof(v24))
    {
      v15 = fread(__ptr, 1uLL, 0x4000uLL, v24);
      zipWriteInFileInZip(v27[3], __ptr, v15);
    }

    zipCloseFileInZip(v27[3]);
    free(__ptr);
    v28 = 1;
    v23 = 1;
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v28 = 0;
    v23 = 1;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  return v28 & 1;
}

- (BOOL)writeData:(id)a3 fileName:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  if (v19->_zip)
  {
    if (location[0])
    {
      memset(__b, 0, 0x30uLL);
      v7 = v19;
      v8 = [MEMORY[0x277CBEAA8] date];
      [(Main *)v7 zipInformation:__b setDate:?];
      MEMORY[0x277D82BD8](v8);
      zip = v19->_zip;
      v9 = v17;
      v4 = v17;
      zipOpenNewFileInZip(zip, [v9 UTF8String], __b, 0, 0, 0, 0, 0, 8, -1);
      v13 = v19->_zip;
      v11 = location[0];
      v5 = location[0];
      v12 = [v11 bytes];
      zipWriteInFileInZip(v13, v12, [location[0] length]);
      zipCloseFileInZip(v19->_zip);
      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    v16 = 1;
  }

  else
  {
    v20 = 0;
    v16 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  return v20 & 1;
}

+ (id)dateWithMicrosoftDOSFormat:(unsigned int)a3
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v13 = &dateWithMicrosoftDOSFormat__onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_3);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setYear:((v9 & 0xFE000000) >> 25) + 1980];
  [v8 setMonth:(v9 & 0x1E00000) >> 21];
  [v8 setDay:(v9 & 0x1F0000) >> 16];
  [v8 setHour:(v9 & 0xF800) >> 11];
  [v8 setMinute:(v9 & 0x7E0) >> 5];
  [v8 setSecond:2 * (v9 & 0x1F)];
  v4 = MEMORY[0x277CBEAA8];
  v5 = [dateWithMicrosoftDOSFormat__gregorian dateFromComponents:v8];
  v7 = [v4 dateWithTimeInterval:0.0 sinceDate:?];
  MEMORY[0x277D82BD8](v5);
  v6 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);

  return v6;
}

uint64_t __35__Main_dateWithMicrosoftDOSFormat___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEA80]);
  v1 = [v0 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v2 = dateWithMicrosoftDOSFormat__gregorian;
  dateWithMicrosoftDOSFormat__gregorian = v1;
  return MEMORY[0x277D82BD8](v2);
}

@end