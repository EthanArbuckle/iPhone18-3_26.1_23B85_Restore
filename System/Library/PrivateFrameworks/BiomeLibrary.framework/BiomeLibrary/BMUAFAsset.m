@interface BMUAFAsset
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMUAFAsset)initWithAssetName:(id)a3 assetSpecifier:(id)a4 assetVersion:(id)a5 assetLocale:(id)a6 assetSource:(int)a7 isAssetPathValid:(id)a8 assetPath:(id)a9 assetDownloadSizeInBytes:(id)a10 assetUnarchivedSizeInBytes:(id)a11;
- (BMUAFAsset)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMUAFAsset

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMUAFAsset *)self assetName];
    v7 = [v5 assetName];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMUAFAsset *)self assetName];
      v10 = [v5 assetName];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_39;
      }
    }

    v13 = [(BMUAFAsset *)self assetSpecifier];
    v14 = [v5 assetSpecifier];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMUAFAsset *)self assetSpecifier];
      v17 = [v5 assetSpecifier];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_39;
      }
    }

    v19 = [(BMUAFAsset *)self assetVersion];
    v20 = [v5 assetVersion];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMUAFAsset *)self assetVersion];
      v23 = [v5 assetVersion];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_39;
      }
    }

    v25 = [(BMUAFAsset *)self assetLocale];
    v26 = [v5 assetLocale];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMUAFAsset *)self assetLocale];
      v29 = [v5 assetLocale];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_39;
      }
    }

    v31 = [(BMUAFAsset *)self assetSource];
    if (v31 != [v5 assetSource])
    {
      goto LABEL_39;
    }

    if (-[BMUAFAsset hasIsAssetPathValid](self, "hasIsAssetPathValid") || [v5 hasIsAssetPathValid])
    {
      if (![(BMUAFAsset *)self hasIsAssetPathValid])
      {
        goto LABEL_39;
      }

      if (![v5 hasIsAssetPathValid])
      {
        goto LABEL_39;
      }

      v32 = [(BMUAFAsset *)self isAssetPathValid];
      if (v32 != [v5 isAssetPathValid])
      {
        goto LABEL_39;
      }
    }

    v33 = [(BMUAFAsset *)self assetPath];
    v34 = [v5 assetPath];
    v35 = v34;
    if (v33 == v34)
    {
    }

    else
    {
      v36 = [(BMUAFAsset *)self assetPath];
      v37 = [v5 assetPath];
      v38 = [v36 isEqual:v37];

      if (!v38)
      {
        goto LABEL_39;
      }
    }

    if (!-[BMUAFAsset hasAssetDownloadSizeInBytes](self, "hasAssetDownloadSizeInBytes") && ![v5 hasAssetDownloadSizeInBytes] || -[BMUAFAsset hasAssetDownloadSizeInBytes](self, "hasAssetDownloadSizeInBytes") && objc_msgSend(v5, "hasAssetDownloadSizeInBytes") && (v39 = -[BMUAFAsset assetDownloadSizeInBytes](self, "assetDownloadSizeInBytes"), v39 == objc_msgSend(v5, "assetDownloadSizeInBytes")))
    {
      if (!-[BMUAFAsset hasAssetUnarchivedSizeInBytes](self, "hasAssetUnarchivedSizeInBytes") && ![v5 hasAssetUnarchivedSizeInBytes])
      {
        v12 = 1;
        goto LABEL_40;
      }

      if (-[BMUAFAsset hasAssetUnarchivedSizeInBytes](self, "hasAssetUnarchivedSizeInBytes") && [v5 hasAssetUnarchivedSizeInBytes])
      {
        v40 = [(BMUAFAsset *)self assetUnarchivedSizeInBytes];
        v12 = v40 == [v5 assetUnarchivedSizeInBytes];
LABEL_40:

        goto LABEL_41;
      }
    }

LABEL_39:
    v12 = 0;
    goto LABEL_40;
  }

  v12 = 0;
LABEL_41:

  return v12;
}

- (id)jsonDictionary
{
  v34[9] = *MEMORY[0x1E69E9840];
  v3 = [(BMUAFAsset *)self assetName];
  v4 = [(BMUAFAsset *)self assetSpecifier];
  v5 = [(BMUAFAsset *)self assetVersion];
  v6 = [(BMUAFAsset *)self assetLocale];
  v7 = [v6 jsonDictionary];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMUAFAsset assetSource](self, "assetSource")}];
  if ([(BMUAFAsset *)self hasIsAssetPathValid])
  {
    v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUAFAsset isAssetPathValid](self, "isAssetPathValid")}];
  }

  else
  {
    v32 = 0;
  }

  v31 = [(BMUAFAsset *)self assetPath];
  if ([(BMUAFAsset *)self hasAssetDownloadSizeInBytes])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMUAFAsset assetDownloadSizeInBytes](self, "assetDownloadSizeInBytes")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMUAFAsset *)self hasAssetUnarchivedSizeInBytes])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMUAFAsset assetUnarchivedSizeInBytes](self, "assetUnarchivedSizeInBytes")}];
  }

  else
  {
    v10 = 0;
  }

  v33[0] = @"assetName";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v11;
  v34[0] = v11;
  v33[1] = @"assetSpecifier";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v12;
  v34[1] = v12;
  v33[2] = @"assetVersion";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v3;
  v25 = v13;
  v34[2] = v13;
  v33[3] = @"assetLocale";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v4;
  v24 = v14;
  v34[3] = v14;
  v33[4] = @"assetSource";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v5;
  v34[4] = v15;
  v33[5] = @"isAssetPathValid";
  v16 = v32;
  if (!v32)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v34[5] = v16;
  v33[6] = @"assetPath";
  v17 = v31;
  if (!v31)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v8;
  v34[6] = v17;
  v33[7] = @"assetDownloadSizeInBytes";
  v19 = v9;
  if (!v9)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v34[7] = v19;
  v33[8] = @"assetUnarchivedSizeInBytes";
  v20 = v10;
  if (!v10)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v34[8] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:9];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_30;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_30;
    }
  }

LABEL_30:
  if (!v31)
  {
  }

  if (!v32)
  {
  }

  if (!v18)
  {
  }

  if (!v7)
  {
  }

  if (v28)
  {
    if (v29)
    {
      goto LABEL_40;
    }

LABEL_47:

    if (v30)
    {
      goto LABEL_41;
    }

    goto LABEL_48;
  }

  if (!v29)
  {
    goto LABEL_47;
  }

LABEL_40:
  if (v30)
  {
    goto LABEL_41;
  }

LABEL_48:

LABEL_41:
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BMUAFAsset)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v108[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"assetName"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"assetSpecifier"];
    v88 = v9;
    if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
LABEL_7:
      v12 = [v6 objectForKeyedSubscript:@"assetVersion"];
      v86 = v12;
      v87 = v8;
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v13 = 0;
        goto LABEL_10;
      }

      v13 = a4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
LABEL_10:
        v14 = [v6 objectForKeyedSubscript:@"assetLocale"];
        v89 = v6;
        v85 = v14;
        if (!v14 || (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v16 = self;
          v17 = v7;
          v84 = 0;
          goto LABEL_13;
        }

        v22 = self;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v15;
          v90 = 0;
          v84 = [[BMUAFISOLocale alloc] initWithJSONDictionary:v23 error:&v90];
          v24 = v90;
          if (v24)
          {
            if (a4)
            {
              v24 = v24;
              *a4 = v24;
            }

            v25 = 0;
            v12 = v86;
            v26 = v84;
            goto LABEL_83;
          }

          v17 = v7;

          v16 = self;
          v12 = v86;
LABEL_13:
          v18 = [v89 objectForKeyedSubscript:@"assetSource"];
          v77 = v18;
          v78 = v13;
          if (v18 && (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v82 = v19;
              v12 = v86;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!a4)
                {
                  v82 = 0;
                  v25 = 0;
                  v26 = v84;
                  v7 = v17;
                  self = v16;
                  v33 = v85;
                  v12 = v86;
                  v6 = v89;
                  goto LABEL_82;
                }

                v73 = objc_alloc(MEMORY[0x1E696ABC0]);
                v74 = *MEMORY[0x1E698F240];
                v99 = *MEMORY[0x1E696A578];
                v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"assetSource"];
                v100 = v80;
                v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
                v82 = 0;
                v25 = 0;
                *a4 = [v73 initWithDomain:v74 code:2 userInfo:?];
                v26 = v84;
                v7 = v17;
                self = v16;
                v33 = v85;
                v12 = v86;
                goto LABEL_93;
              }

              v82 = [MEMORY[0x1E696AD98] numberWithInt:BMUAFAssetUAFAssetSourceFromString(v19)];
              v12 = v86;
            }
          }

          else
          {
            v82 = 0;
          }

          v20 = [v89 objectForKeyedSubscript:@"isAssetPathValid"];
          v83 = v11;
          v76 = v20;
          if (!v20)
          {
            v80 = 0;
            self = v16;
            goto LABEL_33;
          }

          v21 = v20;
          objc_opt_class();
          self = v16;
          if (objc_opt_isKindOfClass())
          {
            v80 = 0;
LABEL_33:
            v33 = v85;
            goto LABEL_34;
          }

          objc_opt_class();
          v33 = v85;
          if (objc_opt_isKindOfClass())
          {
            v80 = v21;
LABEL_34:
            v34 = [v89 objectForKeyedSubscript:@"assetPath"];
            v7 = v17;
            v81 = self;
            if (v34)
            {
              objc_opt_class();
              v6 = v89;
              if (objc_opt_isKindOfClass())
              {
                v35 = 0;
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (!a4)
                  {
                    v58 = 0;
                    v25 = 0;
                    v12 = v86;
                    v26 = v84;
                    goto LABEL_80;
                  }

                  v60 = a4;
                  v61 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v62 = *MEMORY[0x1E698F240];
                  v95 = *MEMORY[0x1E696A578];
                  v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"assetPath"];
                  v96 = v49;
                  v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
                  v63 = [v61 initWithDomain:v62 code:2 userInfo:v47];
                  v58 = 0;
                  v25 = 0;
                  *v60 = v63;
                  v13 = v78;
                  goto LABEL_78;
                }

                v35 = v34;
              }
            }

            else
            {
              v35 = 0;
              v6 = v89;
            }

            v47 = [v6 objectForKeyedSubscript:@"assetDownloadSizeInBytes"];
            if (v47 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!a4)
                {
                  v58 = v35;
                  v49 = 0;
                  v25 = 0;
                  goto LABEL_77;
                }

                v64 = objc_alloc(MEMORY[0x1E696ABC0]);
                v65 = *MEMORY[0x1E698F240];
                v93 = *MEMORY[0x1E696A578];
                v66 = a4;
                v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"assetDownloadSizeInBytes"];
                v94 = v51;
                v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
                v67 = [v64 initWithDomain:v65 code:2 userInfo:v50];
                v49 = 0;
                v25 = 0;
                *v66 = v67;
                goto LABEL_75;
              }

              v48 = a4;
              v49 = v47;
            }

            else
            {
              v48 = a4;
              v49 = 0;
            }

            v50 = [v89 objectForKeyedSubscript:@"assetUnarchivedSizeInBytes"];
            if (!v50 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v51 = 0;
LABEL_54:
              v13 = v78;
              v25 = -[BMUAFAsset initWithAssetName:assetSpecifier:assetVersion:assetLocale:assetSource:isAssetPathValid:assetPath:assetDownloadSizeInBytes:assetUnarchivedSizeInBytes:](v81, "initWithAssetName:assetSpecifier:assetVersion:assetLocale:assetSource:isAssetPathValid:assetPath:assetDownloadSizeInBytes:assetUnarchivedSizeInBytes:", v87, v11, v78, v84, [v82 intValue], v80, v35, v49, v51);
              v81 = v25;
LABEL_76:
              v58 = v35;

LABEL_77:
              v33 = v85;
LABEL_78:

              self = v81;
              v12 = v86;
              v26 = v84;
              goto LABEL_79;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v51 = v50;
              goto LABEL_54;
            }

            if (v48)
            {
              v68 = objc_alloc(MEMORY[0x1E696ABC0]);
              v75 = *MEMORY[0x1E698F240];
              v91 = *MEMORY[0x1E696A578];
              v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"assetUnarchivedSizeInBytes"];
              v92 = v69;
              v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
              *v48 = [v68 initWithDomain:v75 code:2 userInfo:v70];
            }

            v51 = 0;
            v25 = 0;
LABEL_75:
            v13 = v78;
            goto LABEL_76;
          }

          if (a4)
          {
            v56 = objc_alloc(MEMORY[0x1E696ABC0]);
            v57 = *MEMORY[0x1E698F240];
            v97 = *MEMORY[0x1E696A578];
            v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isAssetPathValid"];
            v98 = v58;
            v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
            v59 = v56;
            v12 = v86;
            v80 = 0;
            v25 = 0;
            *a4 = [v59 initWithDomain:v57 code:2 userInfo:v34];
            v26 = v84;
            v7 = v17;
LABEL_79:
            v6 = v89;
LABEL_80:

            v11 = v83;
LABEL_81:

LABEL_82:
            v23 = v33;
            goto LABEL_83;
          }

          v80 = 0;
          v25 = 0;
          v26 = v84;
          v7 = v17;
LABEL_93:
          v6 = v89;
          goto LABEL_81;
        }

        if (!a4)
        {
          v25 = 0;
          v12 = v86;
          goto LABEL_84;
        }

        v52 = objc_alloc(MEMORY[0x1E696ABC0]);
        v53 = *MEMORY[0x1E698F240];
        v101 = *MEMORY[0x1E696A578];
        v79 = v13;
        v54 = a4;
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"assetLocale"];
        v102 = v26;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
        *v54 = [v52 initWithDomain:v53 code:2 userInfo:v55];
        v13 = v79;

        v25 = 0;
        v23 = v15;
        self = v22;
        v12 = v86;
LABEL_83:

        v15 = v23;
LABEL_84:

        v8 = v87;
        goto LABEL_85;
      }

      if (a4)
      {
        v42 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = v11;
        v44 = *MEMORY[0x1E698F240];
        v103 = *MEMORY[0x1E696A578];
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"assetVersion"];
        v104 = v23;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
        v45 = v42;
        v12 = v86;
        v46 = v44;
        v11 = v43;
        v25 = 0;
        *v13 = [v45 initWithDomain:v46 code:2 userInfo:v26];
        v13 = 0;
        goto LABEL_83;
      }

      v25 = 0;
LABEL_85:

      v10 = v88;
      goto LABEL_86;
    }

    if (a4)
    {
      v36 = objc_alloc(MEMORY[0x1E696ABC0]);
      v37 = *MEMORY[0x1E698F240];
      v105 = *MEMORY[0x1E696A578];
      v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"assetSpecifier"];
      v106 = v38;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
      v40 = v36;
      v12 = v39;
      v41 = [v40 initWithDomain:v37 code:2 userInfo:v39];
      v11 = 0;
      v25 = 0;
      *a4 = v41;
      v13 = v38;
      goto LABEL_85;
    }

    v11 = 0;
    v25 = 0;
LABEL_86:

    goto LABEL_87;
  }

  if (a4)
  {
    v27 = objc_alloc(MEMORY[0x1E696ABC0]);
    v28 = *MEMORY[0x1E698F240];
    v107 = *MEMORY[0x1E696A578];
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"assetName"];
    v108[0] = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:&v107 count:1];
    v31 = v27;
    v10 = v30;
    v32 = v28;
    v11 = v29;
    v8 = 0;
    v25 = 0;
    *a4 = [v31 initWithDomain:v32 code:2 userInfo:v30];
    goto LABEL_86;
  }

  v8 = 0;
  v25 = 0;
LABEL_87:

  v71 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMUAFAsset *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_assetName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_assetSpecifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_assetVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_assetLocale)
  {
    PBDataWriterPlaceMark();
    [(BMUAFISOLocale *)self->_assetLocale writeTo:v4];
    PBDataWriterRecallMark();
  }

  assetSource = self->_assetSource;
  PBDataWriterWriteUint32Field();
  if (self->_hasIsAssetPathValid)
  {
    isAssetPathValid = self->_isAssetPathValid;
    PBDataWriterWriteBOOLField();
  }

  if (self->_assetPath)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasAssetDownloadSizeInBytes)
  {
    assetDownloadSizeInBytes = self->_assetDownloadSizeInBytes;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasAssetUnarchivedSizeInBytes)
  {
    assetUnarchivedSizeInBytes = self->_assetUnarchivedSizeInBytes;
    PBDataWriterWriteUint64Field();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v52.receiver = self;
  v52.super_class = BMUAFAsset;
  v5 = [(BMEventBase *)&v52 init];
  if (!v5)
  {
    goto LABEL_94;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v53[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v53 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v53[0] & 0x7F) << v7;
        if ((v53[0] & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 4)
      {
        if (v15 <= 2)
        {
          if (v15 == 1)
          {
            v23 = PBReaderReadString();
            v24 = 32;
          }

          else
          {
            if (v15 != 2)
            {
              goto LABEL_74;
            }

            v23 = PBReaderReadString();
            v24 = 40;
          }

          goto LABEL_55;
        }

        if (v15 == 3)
        {
          v23 = PBReaderReadString();
          v24 = 48;
LABEL_55:
          v34 = *(&v5->super.super.isa + v24);
          *(&v5->super.super.isa + v24) = v23;

          goto LABEL_91;
        }

        if (v15 != 4)
        {
          goto LABEL_74;
        }

        v53[0] = 0;
        v53[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_93;
        }

        v25 = [[BMUAFISOLocale alloc] initByReadFrom:v4];
        if (!v25)
        {
          goto LABEL_93;
        }

        assetLocale = v5->_assetLocale;
        v5->_assetLocale = v25;

        PBReaderRecallMark();
      }

      else if (v15 <= 6)
      {
        if (v15 == 5)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          while (1)
          {
            LOBYTE(v53[0]) = 0;
            v38 = [v4 position] + 1;
            if (v38 >= [v4 position] && (v39 = objc_msgSend(v4, "position") + 1, v39 <= objc_msgSend(v4, "length")))
            {
              v40 = [v4 data];
              [v40 getBytes:v53 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v37 |= (v53[0] & 0x7F) << v35;
            if ((v53[0] & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            if (v36++ > 8)
            {
              goto LABEL_80;
            }
          }

          if (([v4 hasError] & 1) != 0 || v37 > 4)
          {
LABEL_80:
            LODWORD(v37) = 0;
          }

          v5->_assetSource = v37;
        }

        else
        {
          if (v15 != 6)
          {
LABEL_74:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_93;
            }

            goto LABEL_91;
          }

          v27 = 0;
          v28 = 0;
          v29 = 0;
          v5->_hasIsAssetPathValid = 1;
          while (1)
          {
            LOBYTE(v53[0]) = 0;
            v30 = [v4 position] + 1;
            if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 1, v31 <= objc_msgSend(v4, "length")))
            {
              v32 = [v4 data];
              [v32 getBytes:v53 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v29 |= (v53[0] & 0x7F) << v27;
            if ((v53[0] & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v13 = v28++ >= 9;
            if (v13)
            {
              LOBYTE(v33) = 0;
              goto LABEL_77;
            }
          }

          v33 = (v29 != 0) & ~[v4 hasError];
LABEL_77:
          v5->_isAssetPathValid = v33;
        }
      }

      else
      {
        switch(v15)
        {
          case 7:
            v23 = PBReaderReadString();
            v24 = 64;
            goto LABEL_55;
          case 8:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v5->_hasAssetDownloadSizeInBytes = 1;
            while (1)
            {
              LOBYTE(v53[0]) = 0;
              v45 = [v4 position] + 1;
              if (v45 >= [v4 position] && (v46 = objc_msgSend(v4, "position") + 1, v46 <= objc_msgSend(v4, "length")))
              {
                v47 = [v4 data];
                [v47 getBytes:v53 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v44 = (((v53[0] & 0x7F) << v42) | v44);
              if ((v53[0] & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v13 = v43++ >= 9;
              if (v13)
              {
                v22 = 0;
                goto LABEL_89;
              }
            }

            if ([v4 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v44;
            }

LABEL_89:
            v48 = 72;
            break;
          case 9:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v5->_hasAssetUnarchivedSizeInBytes = 1;
            while (1)
            {
              LOBYTE(v53[0]) = 0;
              v19 = [v4 position] + 1;
              if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
              {
                v21 = [v4 data];
                [v21 getBytes:v53 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 = (((v53[0] & 0x7F) << v16) | v18);
              if ((v53[0] & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v13 = v17++ >= 9;
              if (v13)
              {
                v22 = 0;
                goto LABEL_85;
              }
            }

            if ([v4 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_85:
            v48 = 80;
            break;
          default:
            goto LABEL_74;
        }

        *(&v5->super.super.isa + v48) = v22;
      }

LABEL_91:
      v49 = [v4 position];
    }

    while (v49 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_93:
    v50 = 0;
  }

  else
  {
LABEL_94:
    v50 = v5;
  }

  return v50;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [(BMUAFAsset *)self assetName];
  v4 = [(BMUAFAsset *)self assetSpecifier];
  v5 = [(BMUAFAsset *)self assetVersion];
  v6 = [(BMUAFAsset *)self assetLocale];
  v7 = BMUAFAssetUAFAssetSourceAsString([(BMUAFAsset *)self assetSource]);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUAFAsset isAssetPathValid](self, "isAssetPathValid")}];
  v9 = [(BMUAFAsset *)self assetPath];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMUAFAsset assetDownloadSizeInBytes](self, "assetDownloadSizeInBytes")}];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMUAFAsset assetUnarchivedSizeInBytes](self, "assetUnarchivedSizeInBytes")}];
  v12 = [v14 initWithFormat:@"BMUAFAsset with assetName: %@, assetSpecifier: %@, assetVersion: %@, assetLocale: %@, assetSource: %@, isAssetPathValid: %@, assetPath: %@, assetDownloadSizeInBytes: %@, assetUnarchivedSizeInBytes: %@", v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMUAFAsset)initWithAssetName:(id)a3 assetSpecifier:(id)a4 assetVersion:(id)a5 assetLocale:(id)a6 assetSource:(int)a7 isAssetPathValid:(id)a8 assetPath:(id)a9 assetDownloadSizeInBytes:(id)a10 assetUnarchivedSizeInBytes:(id)a11
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v18 = a8;
  v25 = a9;
  v19 = a10;
  v20 = a11;
  v30.receiver = self;
  v30.super_class = BMUAFAsset;
  v21 = [(BMEventBase *)&v30 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v21->_assetName, a3);
    objc_storeStrong(&v21->_assetSpecifier, a4);
    objc_storeStrong(&v21->_assetVersion, a5);
    objc_storeStrong(&v21->_assetLocale, a6);
    v21->_assetSource = a7;
    if (v18)
    {
      v21->_hasIsAssetPathValid = 1;
      v21->_isAssetPathValid = [v18 BOOLValue];
    }

    else
    {
      v21->_hasIsAssetPathValid = 0;
      v21->_isAssetPathValid = 0;
    }

    objc_storeStrong(&v21->_assetPath, a9);
    if (v19)
    {
      v21->_hasAssetDownloadSizeInBytes = 1;
      v22 = [v19 unsignedLongLongValue];
    }

    else
    {
      v22 = 0;
      v21->_hasAssetDownloadSizeInBytes = 0;
    }

    v21->_assetDownloadSizeInBytes = v22;
    if (v20)
    {
      v21->_hasAssetUnarchivedSizeInBytes = 1;
      v23 = [v20 unsignedLongLongValue];
    }

    else
    {
      v23 = 0;
      v21->_hasAssetUnarchivedSizeInBytes = 0;
    }

    v21->_assetUnarchivedSizeInBytes = v23;
  }

  return v21;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetName" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetSpecifier" number:2 type:13 subMessageClass:{0, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetVersion" number:3 type:13 subMessageClass:0];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetLocale" number:4 type:14 subMessageClass:objc_opt_class()];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetSource" number:5 type:4 subMessageClass:0];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAssetPathValid" number:6 type:12 subMessageClass:0];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetPath" number:7 type:13 subMessageClass:0];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetDownloadSizeInBytes" number:8 type:5 subMessageClass:0];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetUnarchivedSizeInBytes" number:9 type:5 subMessageClass:0];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetSpecifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetVersion" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"assetLocale_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_575_103303];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetSource" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAssetPathValid" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetPath" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetDownloadSizeInBytes" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:5 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetUnarchivedSizeInBytes" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:5 convertedType:0];
  v14[0] = v2;
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  v14[4] = v6;
  v14[5] = v7;
  v14[6] = v8;
  v14[7] = v9;
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __21__BMUAFAsset_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 assetLocale];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMUAFAsset alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end