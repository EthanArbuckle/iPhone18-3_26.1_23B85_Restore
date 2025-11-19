@interface MIHelperBomVerifier
+ (BOOL)applyAndVerifyBOMPropertiesForURL:(id)a3 toUID:(unsigned int)a4 GID:(unsigned int)a5 removeACLs:(BOOL)a6 setProtectionClass:(BOOL)a7 setFileAttributes:(id)a8 excludePathsAtURL:(id)a9 error:(id *)a10;
@end

@implementation MIHelperBomVerifier

+ (BOOL)applyAndVerifyBOMPropertiesForURL:(id)a3 toUID:(unsigned int)a4 GID:(unsigned int)a5 removeACLs:(BOOL)a6 setProtectionClass:(BOOL)a7 setFileAttributes:(id)a8 excludePathsAtURL:(id)a9 error:(id *)a10
{
  v53 = a3;
  v52 = a8;
  v51 = a9;
  v15 = +[MIFileManager defaultManager];
  v16 = [v52 mutableCopy];
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = sub_100003AE4;
  v80 = sub_100003AF4;
  v81 = 0;
  v17 = [NSSet setWithObjects:@"embedded.provisionprofile", @"embedded.mobileprovision", 0];
  if (v51)
  {
    v18 = [v51 path];
    if ([v18 hasPrefix:@"/private/"])
    {
      v19 = [v18 substringFromIndex:{objc_msgSend(@"/private", "length")}];

      v18 = v19;
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v20 = [v53 path];
      v46 = v20;
      v47 = v18;
      MOLogWrite();
LABEL_10:
    }
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v20 = [v53 path];
      v46 = v20;
      MOLogWrite();
      v18 = 0;
      goto LABEL_10;
    }

    v18 = 0;
  }

  v21 = v53;
  [v53 fileSystemRepresentation];
  v75 = 0;
  v62 = _NSConcreteStackBlock;
  v63 = 3221225472;
  v64 = sub_100003AFC;
  v65 = &unk_1000248B8;
  v49 = v18;
  v66 = v49;
  v22 = v17;
  v67 = v22;
  v23 = v16;
  v68 = v23;
  v70 = &v76;
  v73 = a7;
  v48 = v15;
  v69 = v48;
  v71 = a4;
  v72 = a5;
  v74 = a6;
  v24 = TraverseDirectory();
  v50 = 0;
  v25 = v77;
  v26 = v77[5];
  if (v24)
  {
    if (!v26)
    {
      v27 = objc_opt_new();
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v28 = v23;
      v29 = [v28 countByEnumeratingWithState:&v58 objects:v83 count:16];
      if (v29)
      {
        v30 = *v59;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v59 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v58 + 1) + 8 * i);
            v33 = [v32 lastPathComponent];
            if (([v33 hasPrefix:@"._"] & 1) != 0 || objc_msgSend(v22, "containsObject:", v33))
            {
              [v27 addObject:v32];
            }
          }

          v29 = [v28 countByEnumeratingWithState:&v58 objects:v83 count:16];
        }

        while (v29);
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v34 = v27;
      v35 = [v34 countByEnumeratingWithState:&v54 objects:v82 count:16];
      if (v35)
      {
        v36 = *v55;
        do
        {
          for (j = 0; j != v35; j = j + 1)
          {
            if (*v55 != v36)
            {
              objc_enumerationMutation(v34);
            }

            [v28 removeObjectForKey:{*(*(&v54 + 1) + 8 * j), v46}];
          }

          v35 = [v34 countByEnumeratingWithState:&v54 objects:v82 count:16];
        }

        while (v35);
      }

      v38 = [v28 count];
      if (!v38)
      {
        v44 = 1;
        goto LABEL_38;
      }

      v39 = [v28 allKeys];
      v41 = _CreateAndLogError("+[MIHelperBomVerifier applyAndVerifyBOMPropertiesForURL:toUID:GID:removeACLs:setProtectionClass:setFileAttributes:excludePathsAtURL:error:]", 156, MIInstallerErrorDomain, 229, 0, 0, @"Failed to locate items in Bom (count: %lu) as paths in app bundle. Missing files: %@", v40, v38);
      v42 = v77[5];
      v77[5] = v41;

      goto LABEL_35;
    }

LABEL_33:
    v34 = 0;
    goto LABEL_36;
  }

  if (v26)
  {
    goto LABEL_33;
  }

  v43 = v50;
  v34 = 0;
  v39 = v25[5];
  v25[5] = v43;
LABEL_35:

LABEL_36:
  v44 = 0;
  if (a10)
  {
    *a10 = v77[5];
  }

LABEL_38:

  _Block_object_dispose(&v76, 8);
  return v44;
}

@end