@interface PKRemoteAssetManifest
+ (Class)_remoteAssestManifestItemClassWithValues:(id)a3;
- (PKRemoteAssetManifest)initWithFileURL:(id)a3 passURL:(id)a4 deviceSEIDs:(id)a5 error:(id *)a6;
- (id)deviceSpecificAsset;
- (id)deviceSpecificAssetForScreenScale:(double)a3 suffix:(id)a4;
@end

@implementation PKRemoteAssetManifest

+ (Class)_remoteAssestManifestItemClassWithValues:(id)a3
{
  v3 = [a3 valueForKey:@"url"];
  v4 = objc_opt_class();
  v5 = [v3 lowercaseString];
  v6 = [v5 containsString:@"cloudkit:"];

  if (v6)
  {
    v4 = objc_opt_class();
  }

  v7 = v4;

  return v4;
}

- (PKRemoteAssetManifest)initWithFileURL:(id)a3 passURL:(id)a4 deviceSEIDs:(id)a5 error:(id *)a6
{
  v108 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v91 = a4;
  v12 = a5;
  v101.receiver = self;
  v101.super_class = PKRemoteAssetManifest;
  v13 = [(PKRemoteAssetManifest *)&v101 init];
  if (!v13)
  {
    goto LABEL_65;
  }

  v21 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v11];
  if (!v21)
  {
    if (a6)
    {
      *a6 = PKValidationErrorWithReason(@"Could not read file at %@", v14, v15, v16, v17, v18, v19, v20, v11);
      v29 = v13;
      v13 = 0;
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  v29 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v21 options:0 error:a6];
  if (!v29)
  {
    if (!a6)
    {
LABEL_51:
      v73 = v13;
      v13 = 0;
      goto LABEL_62;
    }

    PKValidationErrorWithReason(@"Could not read JSON at %@", v22, v23, v24, v25, v26, v27, v28, v11);
    *a6 = LABEL_50:;
    goto LABEL_51;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a6)
    {
      goto LABEL_63;
    }

    PKValidationErrorWithReason(@"%@ is not a JSON dictionary", v30, v31, v32, v33, v34, v35, v36, v11);
    goto LABEL_50;
  }

  objc_storeStrong(&v13->_fileURL, a3);
  objc_storeStrong(&v13->_passURL, a4);
  v37 = [MEMORY[0x1E695DF90] dictionary];
  remoteAssets = v13->_remoteAssets;
  v13->_remoteAssets = v37;

  v84 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v39 = v29;
  v86 = v39;
  v90 = [v39 countByEnumeratingWithState:&v97 objects:v107 count:16];
  if (!v90)
  {

    goto LABEL_57;
  }

  v81 = v29;
  v82 = v21;
  v89 = *v98;
  v87 = a6;
  v40 = v39;
  v83 = v11;
  while (2)
  {
    for (i = 0; i != v90; ++i)
    {
      if (*v98 != v89)
      {
        objc_enumerationMutation(v40);
      }

      v42 = *(*(&v97 + 1) + 8 * i);
      v43 = [v40 objectForKey:v42];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v92 = v43;
        v51 = [(PKRemoteAssetManifest *)v92 PKArrayContaining:objc_opt_class() forKey:@"urls"];
        p_isa = &v13->super.isa;
        if ([v12 count])
        {
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v85 = v51;
          v52 = v51;
          v53 = [v52 countByEnumeratingWithState:&v93 objects:v106 count:16];
          if (v53)
          {
            v54 = v53;
            v55 = *v94;
            v56 = v42;
            while (2)
            {
              for (j = 0; j != v54; ++j)
              {
                if (*v94 != v55)
                {
                  objc_enumerationMutation(v52);
                }

                v58 = *(*(&v93 + 1) + 8 * j);
                v59 = [v58 PKStringForKey:@"seid"];
                if ([v12 containsObject:v59])
                {
                  v61 = v58;

                  v60 = 0;
                  v92 = v61;
                  goto LABEL_24;
                }
              }

              v54 = [v52 countByEnumeratingWithState:&v93 objects:v106 count:16];
              if (v54)
              {
                continue;
              }

              break;
            }

            v60 = 1;
LABEL_24:
            v11 = v83;
            v40 = v86;
          }

          else
          {
            v60 = 1;
            v56 = v42;
          }

          a6 = v87;
          v51 = v85;
          if (!v85)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v60 = 1;
          v56 = v42;
          if (!v51)
          {
            goto LABEL_32;
          }
        }

        [(PKRemoteAssetManifest *)v84 addObject:v56];
        v62 = v60 ^ 1;
        if (!v12)
        {
          v62 = 0;
        }

        if ((v62 & 1) == 0)
        {

          v13 = p_isa;
          v74 = v92;
          goto LABEL_54;
        }

LABEL_32:
        v63 = v11;
        v64 = v51;
        v65 = v63;
        v66 = [v63 URLByDeletingLastPathComponent];
        v67 = [v66 URLByAppendingPathComponent:v56];

        v13 = p_isa;
        v68 = [objc_msgSend(objc_opt_class() _remoteAssestManifestItemClassWithValues:{v92), "itemWithLocalURL:passURL:dictionary:error:", v67, v91, v92, a6}];
        v69 = v68;
        if (v68)
        {
          v70 = [v68 seid];
          v71 = v70;
          if (!v12 || !v70 || ([v12 containsObject:v70] & 1) != 0)
          {
            [p_isa[3] setObject:v69 forKey:v56];
            v72 = 1;
            goto LABEL_40;
          }

          v72 = 0;
        }

        else
        {
          v72 = 0;
          v71 = p_isa;
        }

        v13 = 0;
LABEL_40:

        v40 = v86;
        a6 = v87;
        v11 = v65;
        if ((v72 & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_41;
      }

      if (a6)
      {
        *a6 = PKValidationErrorWithReason(@"%@ is not a dictionary for key %@", v44, v45, v46, v47, v48, v49, v50, v43);
        v74 = v13;
        v13 = 0;
LABEL_54:

LABEL_55:
        goto LABEL_56;
      }

LABEL_41:
    }

    v90 = [v40 countByEnumeratingWithState:&v97 objects:v107 count:16];
    if (v90)
    {
      continue;
    }

    break;
  }

LABEL_56:

  v29 = v81;
  v21 = v82;
  if (v13)
  {
LABEL_57:
    v73 = v84;
    v75 = [(PKRemoteAssetManifest *)v84 copy];
    encryptedDeviceSpecificRemoteAssetFilenames = v13->_encryptedDeviceSpecificRemoteAssetFilenames;
    v13->_encryptedDeviceSpecificRemoteAssetFilenames = v75;

    v77 = [(NSMutableDictionary *)v13->_remoteAssets count];
  }

  else
  {
    v77 = 0;
    v73 = v84;
  }

  v78 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v103 = v77;
    v104 = 2112;
    v105 = v86;
    _os_log_impl(&dword_1AD337000, v78, OS_LOG_TYPE_DEFAULT, "Remote Asset Manifest found %lu assets from %@", buf, 0x16u);
  }

LABEL_62:
LABEL_63:

LABEL_64:
LABEL_65:
  v79 = v13;

  return v79;
}

- (id)deviceSpecificAsset
{
  v3 = PKScreenScale();

  return [(PKRemoteAssetManifest *)self deviceSpecificAssetForScreenScale:0 suffix:v3];
}

- (id)deviceSpecificAssetForScreenScale:(double)a3 suffix:(id)a4
{
  v6 = a4;
  v7 = [(NSURL *)self->_fileURL URLByDeletingPathExtension];
  v8 = [v7 pathExtension];
  v9 = [v7 URLByDeletingPathExtension];
  v10 = [v9 lastPathComponent];

  v11 = [v8 isEqualToString:@"pdf"];
  v12 = v11;
  if (v6)
  {
    if (v11)
    {
      v13 = [v10 stringByAppendingString:v6];
      v14 = [v13 stringByAppendingPathExtension:v8];

      v15 = [(NSMutableDictionary *)self->_remoteAssets objectForKey:v14];

      if (v15)
      {
        v15 = v14;
      }
    }

    else
    {
      v15 = 0;
    }

    if (a3 >= 3.0 && !v15)
    {
      v16 = [v10 stringByAppendingString:v6];
      v17 = [v16 stringByAppendingString:@"@3x"];
      v18 = [v17 stringByAppendingPathExtension:v8];

      v15 = [(NSMutableDictionary *)self->_remoteAssets objectForKey:v18];

      if (v15)
      {
        v15 = v18;
      }
    }

    if (a3 >= 2.0 && !v15)
    {
      v19 = [v10 stringByAppendingString:v6];
      v20 = [v19 stringByAppendingString:@"@2x"];
      v21 = [v20 stringByAppendingPathExtension:v8];

      v15 = [(NSMutableDictionary *)self->_remoteAssets objectForKey:v21];

      if (v15)
      {
        v15 = v21;
      }
    }

    if (v15)
    {
      goto LABEL_42;
    }

    v22 = [v10 stringByAppendingString:v6];
    v23 = [v22 stringByAppendingString:@"@1x"];
    v24 = [v23 stringByAppendingPathExtension:v8];

    v15 = [(NSMutableDictionary *)self->_remoteAssets objectForKey:v24];

    if (v15)
    {
      v15 = v24;
    }
  }

  else
  {
    v15 = 0;
  }

  if (((v15 == 0) & v12) == 1)
  {
    v25 = [v10 stringByAppendingPathExtension:v8];
    v15 = [(NSMutableDictionary *)self->_remoteAssets objectForKey:v25];

    if (v15)
    {
      v15 = v25;
    }
  }

  if (a3 >= 3.0 && !v15)
  {
    v26 = [v10 stringByAppendingString:@"@3x"];
    v27 = [v26 stringByAppendingPathExtension:v8];

    v15 = [(NSMutableDictionary *)self->_remoteAssets objectForKey:v27];

    if (v15)
    {
      v15 = v27;
    }
  }

  if (a3 >= 2.0 && !v15)
  {
    v28 = [v10 stringByAppendingString:@"@2x"];
    v29 = [v28 stringByAppendingPathExtension:v8];

    v15 = [(NSMutableDictionary *)self->_remoteAssets objectForKey:v29];

    if (v15)
    {
      v15 = v29;
    }
  }

  if (!v15)
  {
    v30 = [v10 stringByAppendingString:@"@1x"];
    v15 = [v30 stringByAppendingPathExtension:v8];

    v31 = [(NSMutableDictionary *)self->_remoteAssets objectForKey:v15];

    if (v31)
    {
      if (v15)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

    v15 = [v7 lastPathComponent];
  }

LABEL_42:
  v32 = [(NSMutableDictionary *)self->_remoteAssets objectForKey:v15];

  return v32;
}

@end