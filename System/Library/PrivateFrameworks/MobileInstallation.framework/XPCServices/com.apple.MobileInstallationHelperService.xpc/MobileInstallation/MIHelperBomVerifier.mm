@interface MIHelperBomVerifier
+ (BOOL)applyAndVerifyBOMPropertiesForURL:(id)l toUID:(unsigned int)d GID:(unsigned int)iD removeACLs:(BOOL)ls setProtectionClass:(BOOL)class setFileAttributes:(id)attributes excludePathsAtURL:(id)rL error:(id *)self0;
@end

@implementation MIHelperBomVerifier

+ (BOOL)applyAndVerifyBOMPropertiesForURL:(id)l toUID:(unsigned int)d GID:(unsigned int)iD removeACLs:(BOOL)ls setProtectionClass:(BOOL)class setFileAttributes:(id)attributes excludePathsAtURL:(id)rL error:(id *)self0
{
  lCopy = l;
  attributesCopy = attributes;
  rLCopy = rL;
  v15 = +[MIFileManager defaultManager];
  v16 = [attributesCopy mutableCopy];
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = sub_100003AE4;
  v80 = sub_100003AF4;
  v81 = 0;
  v17 = [NSSet setWithObjects:@"embedded.provisionprofile", @"embedded.mobileprovision", 0];
  if (rLCopy)
  {
    path = [rLCopy path];
    if ([path hasPrefix:@"/private/"])
    {
      v19 = [path substringFromIndex:{objc_msgSend(@"/private", "length")}];

      path = v19;
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      path2 = [lCopy path];
      v46 = path2;
      v47 = path;
      MOLogWrite();
LABEL_10:
    }
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      path2 = [lCopy path];
      v46 = path2;
      MOLogWrite();
      path = 0;
      goto LABEL_10;
    }

    path = 0;
  }

  v21 = lCopy;
  [lCopy fileSystemRepresentation];
  v75 = 0;
  v62 = _NSConcreteStackBlock;
  v63 = 3221225472;
  v64 = sub_100003AFC;
  v65 = &unk_1000248B8;
  v49 = path;
  v66 = v49;
  v22 = v17;
  v67 = v22;
  v23 = v16;
  v68 = v23;
  v70 = &v76;
  classCopy = class;
  v48 = v15;
  v69 = v48;
  dCopy = d;
  iDCopy = iD;
  lsCopy = ls;
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
            lastPathComponent = [v32 lastPathComponent];
            if (([lastPathComponent hasPrefix:@"._"] & 1) != 0 || objc_msgSend(v22, "containsObject:", lastPathComponent))
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

      allKeys = [v28 allKeys];
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
  allKeys = v25[5];
  v25[5] = v43;
LABEL_35:

LABEL_36:
  v44 = 0;
  if (error)
  {
    *error = v77[5];
  }

LABEL_38:

  _Block_object_dispose(&v76, 8);
  return v44;
}

@end