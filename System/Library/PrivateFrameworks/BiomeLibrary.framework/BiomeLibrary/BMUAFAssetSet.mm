@interface BMUAFAssetSet
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMUAFAssetSet)initWithAssetSetName:(id)name assets:(id)assets assetType:(id)type assetSetId:(id)id audienceId:(id)audienceId mobileAssetDownloadErrorCodeFrequency:(id)frequency fromPreSoftwareUpdateStaging:(id)staging expensiveCellularDownloadRequested:(id)self0;
- (BMUAFAssetSet)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_assetsJSONArray;
- (id)_mobileAssetDownloadErrorCodeFrequencyJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMUAFAssetSet

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    assetSetName = [(BMUAFAssetSet *)self assetSetName];
    assetSetName2 = [v5 assetSetName];
    v8 = assetSetName2;
    if (assetSetName == assetSetName2)
    {
    }

    else
    {
      assetSetName3 = [(BMUAFAssetSet *)self assetSetName];
      assetSetName4 = [v5 assetSetName];
      v11 = [assetSetName3 isEqual:assetSetName4];

      if (!v11)
      {
        goto LABEL_37;
      }
    }

    assets = [(BMUAFAssetSet *)self assets];
    assets2 = [v5 assets];
    v15 = assets2;
    if (assets == assets2)
    {
    }

    else
    {
      assets3 = [(BMUAFAssetSet *)self assets];
      assets4 = [v5 assets];
      v18 = [assets3 isEqual:assets4];

      if (!v18)
      {
        goto LABEL_37;
      }
    }

    assetType = [(BMUAFAssetSet *)self assetType];
    assetType2 = [v5 assetType];
    v21 = assetType2;
    if (assetType == assetType2)
    {
    }

    else
    {
      assetType3 = [(BMUAFAssetSet *)self assetType];
      assetType4 = [v5 assetType];
      v24 = [assetType3 isEqual:assetType4];

      if (!v24)
      {
        goto LABEL_37;
      }
    }

    assetSetId = [(BMUAFAssetSet *)self assetSetId];
    assetSetId2 = [v5 assetSetId];
    v27 = assetSetId2;
    if (assetSetId == assetSetId2)
    {
    }

    else
    {
      assetSetId3 = [(BMUAFAssetSet *)self assetSetId];
      assetSetId4 = [v5 assetSetId];
      v30 = [assetSetId3 isEqual:assetSetId4];

      if (!v30)
      {
        goto LABEL_37;
      }
    }

    audienceId = [(BMUAFAssetSet *)self audienceId];
    audienceId2 = [v5 audienceId];
    v33 = audienceId2;
    if (audienceId == audienceId2)
    {
    }

    else
    {
      audienceId3 = [(BMUAFAssetSet *)self audienceId];
      audienceId4 = [v5 audienceId];
      v36 = [audienceId3 isEqual:audienceId4];

      if (!v36)
      {
        goto LABEL_37;
      }
    }

    mobileAssetDownloadErrorCodeFrequency = [(BMUAFAssetSet *)self mobileAssetDownloadErrorCodeFrequency];
    mobileAssetDownloadErrorCodeFrequency2 = [v5 mobileAssetDownloadErrorCodeFrequency];
    v39 = mobileAssetDownloadErrorCodeFrequency2;
    if (mobileAssetDownloadErrorCodeFrequency == mobileAssetDownloadErrorCodeFrequency2)
    {
    }

    else
    {
      mobileAssetDownloadErrorCodeFrequency3 = [(BMUAFAssetSet *)self mobileAssetDownloadErrorCodeFrequency];
      mobileAssetDownloadErrorCodeFrequency4 = [v5 mobileAssetDownloadErrorCodeFrequency];
      v42 = [mobileAssetDownloadErrorCodeFrequency3 isEqual:mobileAssetDownloadErrorCodeFrequency4];

      if (!v42)
      {
        goto LABEL_37;
      }
    }

    if (!-[BMUAFAssetSet hasFromPreSoftwareUpdateStaging](self, "hasFromPreSoftwareUpdateStaging") && ![v5 hasFromPreSoftwareUpdateStaging] || -[BMUAFAssetSet hasFromPreSoftwareUpdateStaging](self, "hasFromPreSoftwareUpdateStaging") && objc_msgSend(v5, "hasFromPreSoftwareUpdateStaging") && (v43 = -[BMUAFAssetSet fromPreSoftwareUpdateStaging](self, "fromPreSoftwareUpdateStaging"), v43 == objc_msgSend(v5, "fromPreSoftwareUpdateStaging")))
    {
      if (!-[BMUAFAssetSet hasExpensiveCellularDownloadRequested](self, "hasExpensiveCellularDownloadRequested") && ![v5 hasExpensiveCellularDownloadRequested])
      {
        LOBYTE(v12) = 1;
        goto LABEL_38;
      }

      if (-[BMUAFAssetSet hasExpensiveCellularDownloadRequested](self, "hasExpensiveCellularDownloadRequested") && [v5 hasExpensiveCellularDownloadRequested])
      {
        expensiveCellularDownloadRequested = [(BMUAFAssetSet *)self expensiveCellularDownloadRequested];
        v12 = expensiveCellularDownloadRequested ^ [v5 expensiveCellularDownloadRequested] ^ 1;
LABEL_38:

        goto LABEL_39;
      }
    }

LABEL_37:
    LOBYTE(v12) = 0;
    goto LABEL_38;
  }

  LOBYTE(v12) = 0;
LABEL_39:

  return v12;
}

- (id)jsonDictionary
{
  v28[8] = *MEMORY[0x1E69E9840];
  assetSetName = [(BMUAFAssetSet *)self assetSetName];
  _assetsJSONArray = [(BMUAFAssetSet *)self _assetsJSONArray];
  assetType = [(BMUAFAssetSet *)self assetType];
  assetSetId = [(BMUAFAssetSet *)self assetSetId];
  audienceId = [(BMUAFAssetSet *)self audienceId];
  _mobileAssetDownloadErrorCodeFrequencyJSONArray = [(BMUAFAssetSet *)self _mobileAssetDownloadErrorCodeFrequencyJSONArray];
  if ([(BMUAFAssetSet *)self hasFromPreSoftwareUpdateStaging])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUAFAssetSet fromPreSoftwareUpdateStaging](self, "fromPreSoftwareUpdateStaging")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMUAFAssetSet *)self hasExpensiveCellularDownloadRequested])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUAFAssetSet expensiveCellularDownloadRequested](self, "expensiveCellularDownloadRequested")}];
  }

  else
  {
    v8 = 0;
  }

  v27[0] = @"assetSetName";
  null = assetSetName;
  if (!assetSetName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null;
  v28[0] = null;
  v27[1] = @"assets";
  null2 = _assetsJSONArray;
  if (!_assetsJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null2;
  v28[1] = null2;
  v27[2] = @"assetType";
  null3 = assetType;
  if (!assetType)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = assetSetName;
  v20 = null3;
  v28[2] = null3;
  v27[3] = @"assetSetId";
  null4 = assetSetId;
  if (!assetSetId)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = _assetsJSONArray;
  v28[3] = null4;
  v27[4] = @"audienceId";
  null5 = audienceId;
  if (!audienceId)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v28[4] = null5;
  v27[5] = @"mobileAssetDownloadErrorCodeFrequency";
  null6 = _mobileAssetDownloadErrorCodeFrequencyJSONArray;
  if (!_mobileAssetDownloadErrorCodeFrequencyJSONArray)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = null6;
  v27[6] = @"fromPreSoftwareUpdateStaging";
  null7 = v7;
  if (!v7)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v28[6] = null7;
  v27[7] = @"expensiveCellularDownloadRequested";
  null8 = v8;
  if (!v8)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v28[7] = null8;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:8];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_25;
    }
  }

  else
  {

    if (v7)
    {
      goto LABEL_25;
    }
  }

LABEL_25:
  if (!_mobileAssetDownloadErrorCodeFrequencyJSONArray)
  {
  }

  if (!audienceId)
  {
  }

  if (!assetSetId)
  {
  }

  if (assetType)
  {
    if (v23)
    {
      goto LABEL_33;
    }

LABEL_40:

    if (v24)
    {
      goto LABEL_34;
    }

    goto LABEL_41;
  }

  if (!v23)
  {
    goto LABEL_40;
  }

LABEL_33:
  if (v24)
  {
    goto LABEL_34;
  }

LABEL_41:

LABEL_34:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_mobileAssetDownloadErrorCodeFrequencyJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mobileAssetDownloadErrorCodeFrequency = [(BMUAFAssetSet *)self mobileAssetDownloadErrorCodeFrequency];
  v5 = [mobileAssetDownloadErrorCodeFrequency countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(mobileAssetDownloadErrorCodeFrequency);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [mobileAssetDownloadErrorCodeFrequency countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_assetsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  assets = [(BMUAFAssetSet *)self assets];
  v5 = [assets countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(assets);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [assets countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMUAFAssetSet)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v152[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"assetSetName"];
  v114 = v6;
  if (v6 && (v7 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v151 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"assetSetName"];
        v152[0] = v9;
        v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v152 forKeys:&v151 count:1];
        v24 = [v22 initWithDomain:v23 code:2 userInfo:?];
        v8 = 0;
        selfCopy4 = 0;
        *error = v24;

        goto LABEL_120;
      }

      v8 = 0;
      selfCopy4 = 0;
      goto LABEL_121;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"assets"];
  null = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:null];

  if (v11)
  {
    v111 = v8;

    v9 = 0;
  }

  else
  {
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v149 = *MEMORY[0x1E696A578];
          v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"assets"];
          v150 = v115;
          v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
          v38 = [v35 initWithDomain:v36 code:2 userInfo:v37];
          selfCopy4 = 0;
          *error = v38;
          errorCopy = v37;
          goto LABEL_118;
        }

        selfCopy4 = 0;
        goto LABEL_120;
      }
    }

    v111 = v8;
  }

  v115 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v9 = v9;
  v12 = [v9 countByEnumeratingWithState:&v123 objects:v148 count:16];
  if (!v12)
  {
LABEL_19:

    v17 = [dictionaryCopy objectForKeyedSubscript:@"assetType"];
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy = error;
        if (error)
        {
          v55 = objc_alloc(MEMORY[0x1E696ABC0]);
          v56 = *MEMORY[0x1E698F240];
          v142 = *MEMORY[0x1E696A578];
          v57 = dictionaryCopy;
          v58 = objc_alloc(MEMORY[0x1E696AEC0]);
          v95 = objc_opt_class();
          v59 = v58;
          dictionaryCopy = v57;
          v21 = [v59 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v95, @"assetType"];
          v143 = v21;
          v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
          v60 = [v55 initWithDomain:v56 code:2 userInfo:?];
          errorCopy = 0;
          selfCopy4 = 0;
          *error = v60;
          v8 = v111;

          goto LABEL_116;
        }

        selfCopy4 = 0;
        v8 = v111;
LABEL_117:

        goto LABEL_118;
      }

      v101 = v17;
    }

    else
    {
      v101 = 0;
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"assetSetId"];
    v103 = v21;
    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = 0;
      }

      else
      {
        selfCopy2 = self;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v21 = 0;
            selfCopy4 = 0;
            v8 = v111;
            errorCopy = v101;
            goto LABEL_115;
          }

          v61 = objc_alloc(MEMORY[0x1E696ABC0]);
          v62 = *MEMORY[0x1E698F240];
          v140 = *MEMORY[0x1E696A578];
          v63 = dictionaryCopy;
          v64 = objc_alloc(MEMORY[0x1E696AEC0]);
          v96 = objc_opt_class();
          v65 = v64;
          dictionaryCopy = v63;
          v102 = [v65 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v96, @"assetSetId"];
          v141 = v102;
          v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
          v66 = [v61 initWithDomain:v62 code:2 userInfo:?];
          v21 = 0;
          selfCopy4 = 0;
          *error = v66;
          goto LABEL_100;
        }

        v21 = v21;
      }
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"audienceId"];
    v110 = dictionaryCopy;
    v100 = v40;
    if (!v40 || (v41 = v40, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v102 = 0;
      goto LABEL_48;
    }

    selfCopy2 = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v102 = v41;
LABEL_48:
      v42 = [dictionaryCopy objectForKeyedSubscript:@"mobileAssetDownloadErrorCodeFrequency"];
      null2 = [MEMORY[0x1E695DFB0] null];
      v44 = [v42 isEqual:null2];

      if (v44)
      {

        v42 = 0;
      }

      else if (v42)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          obj = v42;
          v8 = v111;
          if (!error)
          {
            selfCopy4 = 0;
            errorCopy = v101;
            goto LABEL_113;
          }

          v79 = objc_alloc(MEMORY[0x1E696ABC0]);
          v80 = *MEMORY[0x1E698F240];
          v136 = *MEMORY[0x1E696A578];
          v108 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"mobileAssetDownloadErrorCodeFrequency"];
          v137 = v108;
          v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
          v82 = v79;
          v54 = v81;
          v83 = [v82 initWithDomain:v80 code:2 userInfo:v81];
          selfCopy4 = 0;
          *error = v83;
          goto LABEL_87;
        }
      }

      v108 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v42, "count")}];
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      obj = v42;
      v45 = [obj countByEnumeratingWithState:&v118 objects:v135 count:16];
      if (!v45)
      {
        goto LABEL_62;
      }

      v46 = v45;
      v47 = *v119;
      selfCopy3 = self;
LABEL_54:
      v48 = 0;
      while (1)
      {
        if (*v119 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v49 = *(*(&v118 + 1) + 8 * v48);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          errorCopy3 = error;
          if (error)
          {
            v71 = objc_alloc(MEMORY[0x1E696ABC0]);
            v72 = *MEMORY[0x1E698F240];
            v131 = *MEMORY[0x1E696A578];
            v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"mobileAssetDownloadErrorCodeFrequency"];
            v132 = v50;
            v73 = MEMORY[0x1E695DF20];
            v74 = &v132;
            v75 = &v131;
            goto LABEL_79;
          }

          goto LABEL_86;
        }

        v50 = v49;
        v51 = [BMUAFMobileAssetDownloadErrorCodeFrequency alloc];
        v117 = 0;
        v52 = [(BMUAFMobileAssetDownloadErrorCodeFrequency *)v51 initWithJSONDictionary:v50 error:&v117];
        v53 = v117;
        if (v53)
        {
          v76 = v53;
          if (error)
          {
            v78 = v53;
            *error = v76;
          }

          selfCopy4 = 0;
          goto LABEL_83;
        }

        [v108 addObject:v52];

        if (v46 == ++v48)
        {
          v46 = [obj countByEnumeratingWithState:&v118 objects:v135 count:16];
          dictionaryCopy = v110;
          self = selfCopy3;
          if (v46)
          {
            goto LABEL_54;
          }

LABEL_62:

          v50 = [dictionaryCopy objectForKeyedSubscript:@"fromPreSoftwareUpdateStaging"];
          if (!v50)
          {
            v54 = 0;
            v8 = v111;
            goto LABEL_91;
          }

          objc_opt_class();
          v8 = v111;
          if (objc_opt_isKindOfClass())
          {
            v54 = 0;
LABEL_91:
            v84 = [dictionaryCopy objectForKeyedSubscript:@"expensiveCellularDownloadRequested"];
            v98 = v84;
            if (!v84 || (v85 = v84, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v76 = 0;
              goto LABEL_94;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v76 = v85;
LABEL_94:
              errorCopy = v101;
              self = [(BMUAFAssetSet *)self initWithAssetSetName:v8 assets:v115 assetType:v101 assetSetId:v21 audienceId:v102 mobileAssetDownloadErrorCodeFrequency:v108 fromPreSoftwareUpdateStaging:v54 expensiveCellularDownloadRequested:v76];
              selfCopy4 = self;
LABEL_108:

LABEL_109:
LABEL_110:

LABEL_111:
LABEL_112:

              dictionaryCopy = v110;
LABEL_113:

LABEL_114:
LABEL_115:

LABEL_116:
              goto LABEL_117;
            }

            if (error)
            {
              v97 = objc_alloc(MEMORY[0x1E696ABC0]);
              v90 = *MEMORY[0x1E698F240];
              v127 = *MEMORY[0x1E696A578];
              v112 = v54;
              v91 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"expensiveCellularDownloadRequested"];
              v128 = v91;
              v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
              *error = [v97 initWithDomain:v90 code:2 userInfo:v92];

              v54 = v112;
            }

            v76 = 0;
            selfCopy4 = 0;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v54 = v50;
              goto LABEL_91;
            }

            if (!error)
            {
              v54 = 0;
              selfCopy4 = 0;
              errorCopy = v101;
              goto LABEL_110;
            }

            v99 = objc_alloc(MEMORY[0x1E696ABC0]);
            v86 = *MEMORY[0x1E698F240];
            v129 = *MEMORY[0x1E696A578];
            v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"fromPreSoftwareUpdateStaging"];
            v130 = v76;
            v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
            v88 = v99;
            v98 = v87;
            v89 = [v88 initWithDomain:v86 code:2 userInfo:?];
            v54 = 0;
            selfCopy4 = 0;
            *error = v89;
          }

          errorCopy = v101;
          goto LABEL_108;
        }
      }

      errorCopy3 = error;
      if (error)
      {
        v71 = objc_alloc(MEMORY[0x1E696ABC0]);
        v72 = *MEMORY[0x1E698F240];
        v133 = *MEMORY[0x1E696A578];
        v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"mobileAssetDownloadErrorCodeFrequency"];
        v134 = v50;
        v73 = MEMORY[0x1E695DF20];
        v74 = &v134;
        v75 = &v133;
LABEL_79:
        v76 = [v73 dictionaryWithObjects:v74 forKeys:v75 count:1];
        v77 = [v71 initWithDomain:v72 code:2 userInfo:v76];
        selfCopy4 = 0;
        *errorCopy3 = v77;
LABEL_83:
        v54 = obj;
        self = selfCopy3;
        v8 = v111;
        errorCopy = v101;
        goto LABEL_109;
      }

LABEL_86:
      selfCopy4 = 0;
      v54 = obj;
      self = selfCopy3;
      v8 = v111;
LABEL_87:
      errorCopy = v101;
      goto LABEL_111;
    }

    if (error)
    {
      v67 = objc_alloc(MEMORY[0x1E696ABC0]);
      v68 = *MEMORY[0x1E698F240];
      v138 = *MEMORY[0x1E696A578];
      obj = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"audienceId"];
      v139 = obj;
      v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
      v69 = [v67 initWithDomain:v68 code:2 userInfo:?];
      v102 = 0;
      selfCopy4 = 0;
      *error = v69;
      v8 = v111;
      errorCopy = v101;
      goto LABEL_112;
    }

    v102 = 0;
    selfCopy4 = 0;
LABEL_100:
    self = selfCopy2;
    v8 = v111;
    errorCopy = v101;
    goto LABEL_114;
  }

  v13 = v12;
  v14 = *v124;
  v109 = dictionaryCopy;
  selfCopy5 = self;
LABEL_11:
  v15 = 0;
  while (1)
  {
    if (*v124 != v14)
    {
      objc_enumerationMutation(v9);
    }

    v16 = *(*(&v123 + 1) + 8 * v15);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      errorCopy5 = error;
      if (!error)
      {
        goto LABEL_40;
      }

      v27 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v144 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"assets"];
      v145 = v17;
      v29 = MEMORY[0x1E695DF20];
      v30 = &v145;
      v31 = &v144;
LABEL_33:
      v21 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:1];
      v32 = [v27 initWithDomain:v28 code:2 userInfo:v21];
      selfCopy4 = 0;
      *errorCopy5 = v32;
LABEL_37:
      errorCopy = v9;
      dictionaryCopy = v109;
      v8 = v111;
      self = selfCopy5;
      goto LABEL_116;
    }

    v17 = v16;
    v18 = [BMUAFAsset alloc];
    v122 = 0;
    v19 = [(BMUAFAsset *)v18 initWithJSONDictionary:v17 error:&v122];
    v20 = v122;
    if (v20)
    {
      v21 = v20;
      if (error)
      {
        v33 = v20;
        *error = v21;
      }

      selfCopy4 = 0;
      goto LABEL_37;
    }

    [v115 addObject:v19];

    if (v13 == ++v15)
    {
      v13 = [v9 countByEnumeratingWithState:&v123 objects:v148 count:16];
      dictionaryCopy = v109;
      self = selfCopy5;
      if (!v13)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }
  }

  errorCopy5 = error;
  if (error)
  {
    v27 = objc_alloc(MEMORY[0x1E696ABC0]);
    v28 = *MEMORY[0x1E698F240];
    v146 = *MEMORY[0x1E696A578];
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"assets"];
    v147 = v17;
    v29 = MEMORY[0x1E695DF20];
    v30 = &v147;
    v31 = &v146;
    goto LABEL_33;
  }

LABEL_40:
  selfCopy4 = 0;
  errorCopy = v9;
  dictionaryCopy = v109;
  v8 = v111;
  self = selfCopy5;
LABEL_118:

LABEL_120:
LABEL_121:

  v93 = *MEMORY[0x1E69E9840];
  return selfCopy4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMUAFAssetSet *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v31 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_assetSetName)
  {
    PBDataWriterWriteStringField();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_assets;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v24 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  if (self->_assetType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_assetSetId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_audienceId)
  {
    PBDataWriterWriteStringField();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_mobileAssetDownloadErrorCodeFrequency;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        v24 = 0;
        PBDataWriterPlaceMark();
        [v16 writeTo:{toCopy, v20}];
        PBDataWriterRecallMark();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v13);
  }

  if (self->_hasFromPreSoftwareUpdateStaging)
  {
    fromPreSoftwareUpdateStaging = self->_fromPreSoftwareUpdateStaging;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasExpensiveCellularDownloadRequested)
  {
    expensiveCellularDownloadRequested = self->_expensiveCellularDownloadRequested;
    PBDataWriterWriteBOOLField();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v47.receiver = self;
  v47.super_class = BMUAFAssetSet;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_69;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v48) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (v48 & 0x7F) << v9;
        if ((v48 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) > 4)
      {
        if (v17 > 6)
        {
          if (v17 == 7)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v5->_hasFromPreSoftwareUpdateStaging = 1;
            while (1)
            {
              LOBYTE(v48) = 0;
              v35 = [fromCopy position] + 1;
              if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v34 |= (v48 & 0x7F) << v32;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v15 = v33++ >= 9;
              if (v15)
              {
                LOBYTE(v30) = 0;
                goto LABEL_62;
              }
            }

            v30 = (v34 != 0) & ~[fromCopy hasError];
LABEL_62:
            v38 = 16;
            goto LABEL_65;
          }

          if (v17 == 8)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v5->_hasExpensiveCellularDownloadRequested = 1;
            while (1)
            {
              LOBYTE(v48) = 0;
              v27 = [fromCopy position] + 1;
              if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v26 |= (v48 & 0x7F) << v24;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v15 = v25++ >= 9;
              if (v15)
              {
                LOBYTE(v30) = 0;
                goto LABEL_64;
              }
            }

            v30 = (v26 != 0) & ~[fromCopy hasError];
LABEL_64:
            v38 = 18;
LABEL_65:
            *(&v5->super.super.isa + v38) = v30;
            goto LABEL_66;
          }
        }

        else
        {
          if (v17 == 5)
          {
            v22 = PBReaderReadString();
            v23 = 56;
            goto LABEL_49;
          }

          if (v17 == 6)
          {
            v48 = 0;
            v49 = 0;
            if (!PBReaderPlaceMark() || (v21 = [[BMUAFMobileAssetDownloadErrorCodeFrequency alloc] initByReadFrom:fromCopy]) == 0)
            {
LABEL_71:

              goto LABEL_68;
            }

            v19 = v21;
            v20 = v7;
            goto LABEL_31;
          }
        }
      }

      else if (v17 > 2)
      {
        if (v17 == 3)
        {
          v22 = PBReaderReadString();
          v23 = 40;
          goto LABEL_49;
        }

        if (v17 == 4)
        {
          v22 = PBReaderReadString();
          v23 = 48;
LABEL_49:
          v31 = *(&v5->super.super.isa + v23);
          *(&v5->super.super.isa + v23) = v22;

          goto LABEL_66;
        }
      }

      else
      {
        if (v17 == 1)
        {
          v22 = PBReaderReadString();
          v23 = 24;
          goto LABEL_49;
        }

        if (v17 == 2)
        {
          v48 = 0;
          v49 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_71;
          }

          v18 = [[BMUAFAsset alloc] initByReadFrom:fromCopy];
          if (!v18)
          {
            goto LABEL_71;
          }

          v19 = v18;
          v20 = v6;
LABEL_31:
          [v20 addObject:v19];
          PBReaderRecallMark();

          goto LABEL_66;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_71;
      }

LABEL_66:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v40 = [v6 copy];
  assets = v5->_assets;
  v5->_assets = v40;

  v42 = [v7 copy];
  mobileAssetDownloadErrorCodeFrequency = v5->_mobileAssetDownloadErrorCodeFrequency;
  v5->_mobileAssetDownloadErrorCodeFrequency = v42;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_68:
    v45 = 0;
  }

  else
  {
LABEL_69:
    v45 = v5;
  }

  return v45;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  assetSetName = [(BMUAFAssetSet *)self assetSetName];
  assets = [(BMUAFAssetSet *)self assets];
  assetType = [(BMUAFAssetSet *)self assetType];
  assetSetId = [(BMUAFAssetSet *)self assetSetId];
  audienceId = [(BMUAFAssetSet *)self audienceId];
  mobileAssetDownloadErrorCodeFrequency = [(BMUAFAssetSet *)self mobileAssetDownloadErrorCodeFrequency];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUAFAssetSet fromPreSoftwareUpdateStaging](self, "fromPreSoftwareUpdateStaging")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUAFAssetSet expensiveCellularDownloadRequested](self, "expensiveCellularDownloadRequested")}];
  v12 = [v3 initWithFormat:@"BMUAFAssetSet with assetSetName: %@, assets: %@, assetType: %@, assetSetId: %@, audienceId: %@, mobileAssetDownloadErrorCodeFrequency: %@, fromPreSoftwareUpdateStaging: %@, expensiveCellularDownloadRequested: %@", assetSetName, assets, assetType, assetSetId, audienceId, mobileAssetDownloadErrorCodeFrequency, v10, v11];

  return v12;
}

- (BMUAFAssetSet)initWithAssetSetName:(id)name assets:(id)assets assetType:(id)type assetSetId:(id)id audienceId:(id)audienceId mobileAssetDownloadErrorCodeFrequency:(id)frequency fromPreSoftwareUpdateStaging:(id)staging expensiveCellularDownloadRequested:(id)self0
{
  nameCopy = name;
  assetsCopy = assets;
  typeCopy = type;
  idCopy = id;
  audienceIdCopy = audienceId;
  frequencyCopy = frequency;
  stagingCopy = staging;
  requestedCopy = requested;
  v27.receiver = self;
  v27.super_class = BMUAFAssetSet;
  v20 = [(BMEventBase *)&v27 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_assetSetName, name);
    objc_storeStrong(&v20->_assets, assets);
    objc_storeStrong(&v20->_assetType, type);
    objc_storeStrong(&v20->_assetSetId, id);
    objc_storeStrong(&v20->_audienceId, audienceId);
    objc_storeStrong(&v20->_mobileAssetDownloadErrorCodeFrequency, frequency);
    if (stagingCopy)
    {
      v20->_hasFromPreSoftwareUpdateStaging = 1;
      v20->_fromPreSoftwareUpdateStaging = [stagingCopy BOOLValue];
    }

    else
    {
      v20->_hasFromPreSoftwareUpdateStaging = 0;
      v20->_fromPreSoftwareUpdateStaging = 0;
    }

    if (requestedCopy)
    {
      v20->_hasExpensiveCellularDownloadRequested = 1;
      v20->_expensiveCellularDownloadRequested = [requestedCopy BOOLValue];
    }

    else
    {
      v20->_hasExpensiveCellularDownloadRequested = 0;
      v20->_expensiveCellularDownloadRequested = 0;
    }
  }

  return v20;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetSetName" number:1 type:13 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assets" number:2 type:14 subMessageClass:objc_opt_class()];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetType" number:3 type:13 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetSetId" number:4 type:13 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"audienceId" number:5 type:13 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mobileAssetDownloadErrorCodeFrequency" number:6 type:14 subMessageClass:objc_opt_class()];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fromPreSoftwareUpdateStaging" number:7 type:12 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"expensiveCellularDownloadRequested" number:8 type:12 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetSetName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"assets_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_420_103311];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetType" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetSetId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"audienceId" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"mobileAssetDownloadErrorCodeFrequency_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_422_103313];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fromPreSoftwareUpdateStaging" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"expensiveCellularDownloadRequested" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __24__BMUAFAssetSet_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _mobileAssetDownloadErrorCodeFrequencyJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __24__BMUAFAssetSet_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _assetsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMUAFAssetSet alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end