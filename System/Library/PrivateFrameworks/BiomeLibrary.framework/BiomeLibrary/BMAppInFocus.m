@interface BMAppInFocus
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppInFocus)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMAppInFocus)initWithLaunchReason:(id)a3 type:(int)a4 starting:(id)a5 absoluteTimestamp:(id)a6 bundleID:(id)a7 parentBundleID:(id)a8 extensionHostID:(id)a9 shortVersionString:(id)a10 exactVersionString:(id)a11 dyldPlatform:(id)a12 isNativeArchitecture:(id)a13 displayType:(int)a14;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAppInFocus

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppInFocus *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

+ (id)columns
{
  v19[14] = *MEMORY[0x1E69E9840];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"launchReason" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"launchType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:1];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"duration" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"parentBundleID" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"extensionHostID" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shortVersionString" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"exactVersionString" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dyldPlatform" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isNativeArchitecture" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"displayType" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:4 convertedType:0];
  v19[0] = v18;
  v19[1] = v17;
  v19[2] = v16;
  v19[3] = v15;
  v19[4] = v2;
  v19[5] = v3;
  v19[6] = v4;
  v19[7] = v5;
  v19[8] = v6;
  v19[9] = v14;
  v19[10] = v7;
  v19[11] = v13;
  v19[12] = v8;
  v19[13] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:14];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAppInFocus *)self launchReason];
    v7 = [v5 launchReason];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAppInFocus *)self launchReason];
      v10 = [v5 launchReason];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_47;
      }
    }

    v13 = [(BMAppInFocus *)self type];
    if (v13 != [v5 type])
    {
      goto LABEL_47;
    }

    if (-[BMAppInFocus hasStarting](self, "hasStarting") || [v5 hasStarting])
    {
      if (![(BMAppInFocus *)self hasStarting])
      {
        goto LABEL_47;
      }

      if (![v5 hasStarting])
      {
        goto LABEL_47;
      }

      v14 = [(BMAppInFocus *)self starting];
      if (v14 != [v5 starting])
      {
        goto LABEL_47;
      }
    }

    v15 = [(BMAppInFocus *)self absoluteTimestamp];
    v16 = [v5 absoluteTimestamp];
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      v18 = [(BMAppInFocus *)self absoluteTimestamp];
      v19 = [v5 absoluteTimestamp];
      v20 = [v18 isEqual:v19];

      if (!v20)
      {
        goto LABEL_47;
      }
    }

    v21 = [(BMAppInFocus *)self bundleID];
    v22 = [v5 bundleID];
    v23 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      v24 = [(BMAppInFocus *)self bundleID];
      v25 = [v5 bundleID];
      v26 = [v24 isEqual:v25];

      if (!v26)
      {
        goto LABEL_47;
      }
    }

    v27 = [(BMAppInFocus *)self parentBundleID];
    v28 = [v5 parentBundleID];
    v29 = v28;
    if (v27 == v28)
    {
    }

    else
    {
      v30 = [(BMAppInFocus *)self parentBundleID];
      v31 = [v5 parentBundleID];
      v32 = [v30 isEqual:v31];

      if (!v32)
      {
        goto LABEL_47;
      }
    }

    v33 = [(BMAppInFocus *)self extensionHostID];
    v34 = [v5 extensionHostID];
    v35 = v34;
    if (v33 == v34)
    {
    }

    else
    {
      v36 = [(BMAppInFocus *)self extensionHostID];
      v37 = [v5 extensionHostID];
      v38 = [v36 isEqual:v37];

      if (!v38)
      {
        goto LABEL_47;
      }
    }

    v39 = [(BMAppInFocus *)self shortVersionString];
    v40 = [v5 shortVersionString];
    v41 = v40;
    if (v39 == v40)
    {
    }

    else
    {
      v42 = [(BMAppInFocus *)self shortVersionString];
      v43 = [v5 shortVersionString];
      v44 = [v42 isEqual:v43];

      if (!v44)
      {
        goto LABEL_47;
      }
    }

    v45 = [(BMAppInFocus *)self exactVersionString];
    v46 = [v5 exactVersionString];
    v47 = v46;
    if (v45 == v46)
    {
    }

    else
    {
      v48 = [(BMAppInFocus *)self exactVersionString];
      v49 = [v5 exactVersionString];
      v50 = [v48 isEqual:v49];

      if (!v50)
      {
        goto LABEL_47;
      }
    }

    if (!-[BMAppInFocus hasDyldPlatform](self, "hasDyldPlatform") && ![v5 hasDyldPlatform] || -[BMAppInFocus hasDyldPlatform](self, "hasDyldPlatform") && objc_msgSend(v5, "hasDyldPlatform") && (v51 = -[BMAppInFocus dyldPlatform](self, "dyldPlatform"), v51 == objc_msgSend(v5, "dyldPlatform")))
    {
      if (!-[BMAppInFocus hasIsNativeArchitecture](self, "hasIsNativeArchitecture") && ![v5 hasIsNativeArchitecture] || -[BMAppInFocus hasIsNativeArchitecture](self, "hasIsNativeArchitecture") && objc_msgSend(v5, "hasIsNativeArchitecture") && (v52 = -[BMAppInFocus isNativeArchitecture](self, "isNativeArchitecture"), v52 == objc_msgSend(v5, "isNativeArchitecture")))
      {
        v54 = [(BMAppInFocus *)self displayType];
        v12 = v54 == [v5 displayType];
        goto LABEL_48;
      }
    }

LABEL_47:
    v12 = 0;
LABEL_48:

    goto LABEL_49;
  }

  v12 = 0;
LABEL_49:

  return v12;
}

- (id)jsonDictionary
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = [(BMAppInFocus *)self launchReason];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppInFocus type](self, "type")}];
  if ([(BMAppInFocus *)self hasStarting])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppInFocus starting](self, "starting")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(BMAppInFocus *)self absoluteTimestamp];
  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [(BMAppInFocus *)self absoluteTimestamp];
    [v8 timeIntervalSinceReferenceDate];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  v42 = [(BMAppInFocus *)self bundleID];
  v41 = [(BMAppInFocus *)self parentBundleID];
  v40 = [(BMAppInFocus *)self extensionHostID];
  v39 = [(BMAppInFocus *)self shortVersionString];
  v38 = [(BMAppInFocus *)self exactVersionString];
  if ([(BMAppInFocus *)self hasDyldPlatform])
  {
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAppInFocus dyldPlatform](self, "dyldPlatform")}];
  }

  else
  {
    v37 = 0;
  }

  if ([(BMAppInFocus *)self hasIsNativeArchitecture])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppInFocus isNativeArchitecture](self, "isNativeArchitecture")}];
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppInFocus displayType](self, "displayType")}];
  v43[0] = @"launchReason";
  v12 = v3;
  if (!v3)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v12;
  v55 = v12;
  v43[1] = @"type";
  if (v4)
  {
    v56 = v4;
    v44 = @"launchType";
    v13 = v4;
  }

  else
  {
    v27 = [MEMORY[0x1E695DFB0] null];
    v56 = v27;
    v44 = @"launchType";
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v13;
  v57 = v13;
  v45 = @"starting";
  v14 = v5;
  if (!v5)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v14;
  v58 = v14;
  v46 = @"absoluteTimestamp";
  v15 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v15;
  v59 = v15;
  v47 = @"bundleID";
  v16 = v42;
  if (!v42)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v3;
  v60 = v16;
  v48 = @"parentBundleID";
  v17 = v41;
  if (!v41)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v4;
  v61 = v17;
  v49 = @"extensionHostID";
  v18 = v40;
  if (!v40)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v5;
  v62 = v18;
  v50 = @"shortVersionString";
  v19 = v39;
  if (!v39)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v9;
  v63 = v19;
  v51 = @"exactVersionString";
  v21 = v38;
  if (!v38)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v16;
  v64 = v21;
  v52 = @"dyldPlatform";
  v22 = v37;
  if (!v37)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = v22;
  v53 = @"isNativeArchitecture";
  v23 = v10;
  if (!v10)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = v23;
  v54 = @"displayType";
  v24 = v11;
  if (!v11)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = v24;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:v43 count:13];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_40;
    }
  }

  else
  {

    if (v10)
    {
      goto LABEL_40;
    }
  }

LABEL_40:
  if (!v37)
  {
  }

  if (!v38)
  {
  }

  if (!v39)
  {
  }

  if (!v40)
  {
  }

  if (!v41)
  {
  }

  if (v42)
  {
    if (v20)
    {
      goto LABEL_52;
    }
  }

  else
  {

    if (v20)
    {
LABEL_52:
      if (v34)
      {
        goto LABEL_53;
      }

      goto LABEL_62;
    }
  }

  if (v34)
  {
LABEL_53:
    if (v35)
    {
      goto LABEL_54;
    }

LABEL_63:

    if (v36)
    {
      goto LABEL_55;
    }

    goto LABEL_64;
  }

LABEL_62:

  if (!v35)
  {
    goto LABEL_63;
  }

LABEL_54:
  if (v36)
  {
    goto LABEL_55;
  }

LABEL_64:

LABEL_55:
  v25 = *MEMORY[0x1E69E9840];

  return v33;
}

- (BMAppInFocus)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v163[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"launchReason"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [v5 objectForKeyedSubscript:@"type"];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = [v5 objectForKeyedSubscript:@"launchType"];
      if (!v9)
      {
LABEL_8:
        v136 = 0;
        goto LABEL_15;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v9;
      v136 = v9;
      goto LABEL_15;
    }

    v10 = a4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v136 = [MEMORY[0x1E696AD98] numberWithInt:BMAppInFocusTypeFromString(v9)];
LABEL_15:
      v11 = [v5 objectForKeyedSubscript:@"starting"];
      if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v134 = 0;
        goto LABEL_18;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v134 = v11;
LABEL_18:
        v12 = [v5 objectForKeyedSubscript:@"absoluteTimestamp"];
        if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v135 = 0;
LABEL_34:
          v37 = [v5 objectForKeyedSubscript:@"bundleID"];
          v131 = v37;
          if (v37 && (v38 = v37, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!a4)
              {
                v133 = 0;
                v23 = v136;
                v35 = self;
                v34 = v134;
LABEL_111:

                goto LABEL_112;
              }

              v55 = v7;
              v56 = objc_alloc(MEMORY[0x1E696ABC0]);
              v57 = a4;
              v58 = *MEMORY[0x1E698F240];
              v154 = *MEMORY[0x1E696A578];
              v132 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
              v155 = v132;
              v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
              v60 = v56;
              v7 = v55;
              v130 = v59;
              v61 = [v60 initWithDomain:v58 code:2 userInfo:?];
              v133 = 0;
              a4 = 0;
              *v57 = v61;
              v23 = v136;
              v35 = self;
              v34 = v134;
              goto LABEL_110;
            }

            v133 = v38;
          }

          else
          {
            v133 = 0;
          }

          v139 = v5;
          v39 = [v5 objectForKeyedSubscript:@"parentBundleID"];
          v126 = v9;
          v130 = v39;
          if (!v39 || (v40 = v39, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v132 = 0;
LABEL_42:
            v41 = [v5 objectForKeyedSubscript:@"extensionHostID"];
            v128 = v41;
            if (!v41 || (v42 = v41, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v43 = v6;
              v129 = 0;
              goto LABEL_45;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v43 = v6;
              v129 = v42;
LABEL_45:
              v44 = [v5 objectForKeyedSubscript:@"shortVersionString"];
              v123 = v7;
              v121 = v44;
              if (!v44 || (v45 = v44, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v125 = 0;
                goto LABEL_48;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v125 = v45;
LABEL_48:
                v46 = [v5 objectForKeyedSubscript:@"exactVersionString"];
                v6 = v43;
                v119 = v46;
                if (v46)
                {
                  v47 = v46;
                  objc_opt_class();
                  v48 = v47;
                  v9 = v126;
                  if (objc_opt_isKindOfClass())
                  {
                    v122 = 0;
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (!a4)
                      {
                        v122 = 0;
                        v23 = v136;
                        v35 = self;
                        v34 = v134;
                        goto LABEL_107;
                      }

                      v91 = v12;
                      v92 = a4;
                      v93 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v94 = *MEMORY[0x1E698F240];
                      v146 = *MEMORY[0x1E696A578];
                      v120 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"exactVersionString"];
                      v147 = v120;
                      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
                      v95 = [v93 initWithDomain:v94 code:2 userInfo:v49];
                      v122 = 0;
                      a4 = 0;
                      *v92 = v95;
                      v12 = v91;
                      goto LABEL_124;
                    }

                    v122 = v48;
                  }
                }

                else
                {
                  v122 = 0;
                  v9 = v126;
                }

                v49 = [v5 objectForKeyedSubscript:@"dyldPlatform"];
                v118 = v11;
                v124 = v12;
                if (!v49 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v117 = a4;
                  v120 = 0;
                  goto LABEL_63;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v117 = a4;
                  v120 = v49;
LABEL_63:
                  v50 = [v5 objectForKeyedSubscript:@"isNativeArchitecture"];
                  if (!v50 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v51 = self;
                    v52 = 0;
                    goto LABEL_66;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v51 = self;
                    v52 = v50;
LABEL_66:
                    v53 = [v5 objectForKeyedSubscript:@"displayType"];
                    if (v53 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v85 = v53;
                      }

                      else
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          if (v117)
                          {
                            v138 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v116 = *MEMORY[0x1E698F240];
                            v140 = *MEMORY[0x1E696A578];
                            v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"displayType"];
                            v141 = v112;
                            v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
                            *v117 = [v138 initWithDomain:v116 code:2 userInfo:v113];
                          }

                          v54 = 0;
                          a4 = 0;
                          goto LABEL_104;
                        }

                        v85 = [MEMORY[0x1E696AD98] numberWithInt:BMAppInFocusDisplayTypeFromString(v53)];
                      }

                      v54 = v85;
                    }

                    else
                    {
                      v54 = 0;
                    }

                    v102 = [v136 intValue];
                    LODWORD(v114) = [v54 intValue];
                    a4 = [(BMAppInFocus *)v51 initWithLaunchReason:v123 type:v102 starting:v134 absoluteTimestamp:v135 bundleID:v133 parentBundleID:v132 extensionHostID:v129 shortVersionString:v125 exactVersionString:v122 dyldPlatform:v120 isNativeArchitecture:v52 displayType:v114];
                    v51 = a4;
LABEL_104:

                    v23 = v136;
                    v34 = v134;
LABEL_105:

                    v35 = v51;
                    v11 = v118;
                    v12 = v124;
LABEL_106:

                    goto LABEL_107;
                  }

                  v51 = self;
                  if (v117)
                  {
                    v115 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v100 = *MEMORY[0x1E698F240];
                    v142 = *MEMORY[0x1E696A578];
                    v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isNativeArchitecture"];
                    v143 = v54;
                    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
                    v101 = [v115 initWithDomain:v100 code:2 userInfo:v53];
                    v52 = 0;
                    a4 = 0;
                    *v117 = v101;
                    goto LABEL_104;
                  }

                  v52 = 0;
                  a4 = 0;
LABEL_129:
                  v23 = v136;
                  v34 = v134;
                  goto LABEL_105;
                }

                if (a4)
                {
                  v51 = self;
                  v96 = a4;
                  v97 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v98 = *MEMORY[0x1E698F240];
                  v144 = *MEMORY[0x1E696A578];
                  v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"dyldPlatform"];
                  v145 = v52;
                  v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
                  v99 = [v97 initWithDomain:v98 code:2 userInfo:v50];
                  v120 = 0;
                  a4 = 0;
                  *v96 = v99;
                  goto LABEL_129;
                }

                v120 = 0;
LABEL_124:
                v23 = v136;
                v35 = self;
                v34 = v134;
                goto LABEL_106;
              }

              if (a4)
              {
                v86 = objc_alloc(MEMORY[0x1E696ABC0]);
                v87 = v12;
                v88 = a4;
                v89 = *MEMORY[0x1E698F240];
                v148 = *MEMORY[0x1E696A578];
                v122 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shortVersionString"];
                v149 = v122;
                v119 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
                v90 = [v86 initWithDomain:v89 code:2 userInfo:?];
                v125 = 0;
                a4 = 0;
                *v88 = v90;
                v12 = v87;
                v23 = v136;
                v35 = self;
                v34 = v134;
                v6 = v43;
                v9 = v126;
LABEL_107:

                v7 = v123;
LABEL_108:

LABEL_109:
                goto LABEL_110;
              }

              v125 = 0;
              v23 = v136;
              v35 = self;
              v34 = v134;
              v6 = v43;
              v9 = v126;
LABEL_121:
              v5 = v139;
              goto LABEL_108;
            }

            if (a4)
            {
              v77 = v11;
              v78 = v7;
              v79 = objc_alloc(MEMORY[0x1E696ABC0]);
              v80 = a4;
              v81 = *MEMORY[0x1E698F240];
              v150 = *MEMORY[0x1E696A578];
              v125 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"extensionHostID"];
              v151 = v125;
              v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
              v83 = v79;
              v7 = v78;
              v11 = v77;
              v35 = self;
              v121 = v82;
              v84 = [v83 initWithDomain:v81 code:2 userInfo:?];
              v129 = 0;
              a4 = 0;
              *v80 = v84;
              v23 = v136;
              v34 = v134;
              goto LABEL_121;
            }

            v129 = 0;
            v23 = v136;
            v35 = self;
LABEL_117:
            v34 = v134;
            v5 = v139;
            goto LABEL_109;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v132 = v40;
            goto LABEL_42;
          }

          if (a4)
          {
            v68 = v6;
            v69 = v11;
            v70 = v7;
            v71 = objc_alloc(MEMORY[0x1E696ABC0]);
            v72 = a4;
            v73 = *MEMORY[0x1E698F240];
            v152 = *MEMORY[0x1E696A578];
            v129 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"parentBundleID"];
            v153 = v129;
            v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
            v75 = v71;
            v7 = v70;
            v11 = v69;
            v35 = self;
            v6 = v68;
            v9 = v126;
            v128 = v74;
            v76 = [v75 initWithDomain:v73 code:2 userInfo:?];
            v132 = 0;
            a4 = 0;
            *v72 = v76;
            v23 = v136;
            goto LABEL_117;
          }

          v132 = 0;
          v23 = v136;
          v35 = self;
          v34 = v134;
LABEL_110:

          goto LABEL_111;
        }

        v13 = a4;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = MEMORY[0x1E695DF00];
          v15 = v11;
          v16 = v12;
          v17 = [v14 alloc];
          [v16 doubleValue];
          v19 = v18;

          v11 = v15;
          v20 = [v17 initWithTimeIntervalSinceReferenceDate:v19];
LABEL_25:
          v135 = v20;
LABEL_33:
          a4 = v13;
          goto LABEL_34;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v135 = [v36 dateFromString:v12];

          goto LABEL_33;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v12;
          goto LABEL_25;
        }

        if (a4)
        {
          v127 = v9;
          v105 = v11;
          v106 = objc_alloc(MEMORY[0x1E696ABC0]);
          v107 = v7;
          v108 = *MEMORY[0x1E698F240];
          v156 = *MEMORY[0x1E696A578];
          v133 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
          v157 = v133;
          v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
          v110 = v106;
          v11 = v105;
          v35 = self;
          v9 = v127;
          v111 = v108;
          v7 = v107;
          v131 = v109;
          v135 = 0;
          a4 = 0;
          *v13 = [v110 initWithDomain:v111 code:2 userInfo:?];
          v23 = v136;
          v34 = v134;
          goto LABEL_111;
        }

        v135 = 0;
        a4 = 0;
        v23 = v136;
        v34 = v134;
LABEL_30:
        v35 = self;
LABEL_112:

        goto LABEL_113;
      }

      if (a4)
      {
        v26 = v11;
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = v7;
        v29 = *MEMORY[0x1E698F240];
        v158 = *MEMORY[0x1E696A578];
        v30 = a4;
        v135 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
        v159 = v135;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
        v32 = v27;
        v11 = v26;
        v33 = v29;
        v7 = v28;
        v34 = 0;
        a4 = 0;
        *v30 = [v32 initWithDomain:v33 code:2 userInfo:v31];
        v12 = v31;
        v23 = v136;
        goto LABEL_30;
      }

      v34 = 0;
      v23 = v136;
LABEL_91:
      v35 = self;
LABEL_113:

      goto LABEL_114;
    }

    if (a4)
    {
      v62 = objc_alloc(MEMORY[0x1E696ABC0]);
      v63 = v7;
      v64 = *MEMORY[0x1E698F240];
      v160 = *MEMORY[0x1E696A578];
      v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
      v161 = v34;
      v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
      v66 = v62;
      v11 = v65;
      v67 = v64;
      v7 = v63;
      v23 = 0;
      a4 = 0;
      *v10 = [v66 initWithDomain:v67 code:2 userInfo:v65];
      goto LABEL_91;
    }

    v23 = 0;
    a4 = 0;
LABEL_98:
    v35 = self;
LABEL_114:

    goto LABEL_115;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    goto LABEL_4;
  }

  if (a4)
  {
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = *MEMORY[0x1E698F240];
    v162 = *MEMORY[0x1E696A578];
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"launchReason"];
    v163[0] = v23;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v163 forKeys:&v162 count:1];
    v24 = [v21 initWithDomain:v22 code:2 userInfo:v9];
    v7 = 0;
    v25 = a4;
    a4 = 0;
    *v25 = v24;
    goto LABEL_98;
  }

  v7 = 0;
  v35 = self;
LABEL_115:

  v103 = *MEMORY[0x1E69E9840];
  return a4;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  if (self->_launchReason)
  {
    PBDataWriterWriteStringField();
  }

  type = self->_type;
  PBDataWriterWriteUint32Field();
  if (self->_hasStarting)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_parentBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_extensionHostID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_shortVersionString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_exactVersionString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasDyldPlatform)
  {
    dyldPlatform = self->_dyldPlatform;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasIsNativeArchitecture)
  {
    isNativeArchitecture = self->_isNativeArchitecture;
    PBDataWriterWriteBOOLField();
  }

  displayType = self->_displayType;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v61.receiver = self;
  v61.super_class = BMAppInFocus;
  v5 = [(BMEventBase *)&v61 init];
  if (!v5)
  {
    goto LABEL_116;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_114;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v62) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v62 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v62) & 0x7F) << v7;
        if ((LOBYTE(v62) & 0x80) == 0)
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
        goto LABEL_114;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 7)
      {
        break;
      }

      if (v15 <= 10)
      {
        switch(v15)
        {
          case 8:
            v23 = PBReaderReadString();
            v24 = 80;
            break;
          case 9:
            v23 = PBReaderReadString();
            v24 = 88;
            break;
          case 0xA:
            v23 = PBReaderReadString();
            v24 = 96;
            break;
          default:
            goto LABEL_88;
        }

LABEL_78:
        v47 = *(&v5->super.super.isa + v24);
        *(&v5->super.super.isa + v24) = v23;

        goto LABEL_113;
      }

      switch(v15)
      {
        case 0xB:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v5->_hasDyldPlatform = 1;
          while (1)
          {
            LOBYTE(v62) = 0;
            v37 = [v4 position] + 1;
            if (v37 >= [v4 position] && (v38 = objc_msgSend(v4, "position") + 1, v38 <= objc_msgSend(v4, "length")))
            {
              v39 = [v4 data];
              [v39 getBytes:&v62 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v36 |= (LOBYTE(v62) & 0x7F) << v34;
            if ((LOBYTE(v62) & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v13 = v35++ >= 9;
            if (v13)
            {
              v40 = 0;
              goto LABEL_102;
            }
          }

          if ([v4 hasError])
          {
            v40 = 0;
          }

          else
          {
            v40 = v36;
          }

LABEL_102:
          v56 = 48;
          break;
        case 0xC:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v5->_hasIsNativeArchitecture = 1;
          while (1)
          {
            LOBYTE(v62) = 0;
            v51 = [v4 position] + 1;
            if (v51 >= [v4 position] && (v52 = objc_msgSend(v4, "position") + 1, v52 <= objc_msgSend(v4, "length")))
            {
              v53 = [v4 data];
              [v53 getBytes:&v62 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v50 |= (LOBYTE(v62) & 0x7F) << v48;
            if ((LOBYTE(v62) & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v13 = v49++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_109;
            }
          }

          v22 = (v50 != 0) & ~[v4 hasError];
LABEL_109:
          v54 = 35;
LABEL_110:
          *(&v5->super.super.isa + v54) = v22;
          goto LABEL_113;
        case 0xD:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          while (1)
          {
            LOBYTE(v62) = 0;
            v28 = [v4 position] + 1;
            if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
            {
              v30 = [v4 data];
              [v30 getBytes:&v62 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v27 |= (LOBYTE(v62) & 0x7F) << v25;
            if ((LOBYTE(v62) & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v31 = v26++ > 8;
            if (v31)
            {
              goto LABEL_97;
            }
          }

          if ([v4 hasError])
          {
            v55 = 0;
          }

          else
          {
            v55 = v27;
          }

          if (v55 <= 4)
          {
            v40 = dword_1855456C4[v55];
            goto LABEL_98;
          }

LABEL_97:
          v40 = 0;
LABEL_98:
          v56 = 52;
          break;
        default:
LABEL_88:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_115;
          }

          goto LABEL_113;
      }

      *(&v5->super.super.isa + v56) = v40;
LABEL_113:
      v58 = [v4 position];
      if (v58 >= [v4 length])
      {
        goto LABEL_114;
      }
    }

    if (v15 > 3)
    {
      switch(v15)
      {
        case 4:
          v5->_hasRaw_absoluteTimestamp = 1;
          v62 = 0.0;
          v32 = [v4 position] + 8;
          if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 8, v33 <= objc_msgSend(v4, "length")))
          {
            v57 = [v4 data];
            [v57 getBytes:&v62 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v5->_raw_absoluteTimestamp = v62;
          goto LABEL_113;
        case 6:
          v23 = PBReaderReadString();
          v24 = 64;
          break;
        case 7:
          v23 = PBReaderReadString();
          v24 = 72;
          break;
        default:
          goto LABEL_88;
      }
    }

    else
    {
      if (v15 != 1)
      {
        if (v15 == 2)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          while (1)
          {
            LOBYTE(v62) = 0;
            v44 = [v4 position] + 1;
            if (v44 >= [v4 position] && (v45 = objc_msgSend(v4, "position") + 1, v45 <= objc_msgSend(v4, "length")))
            {
              v46 = [v4 data];
              [v46 getBytes:&v62 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v43 |= (LOBYTE(v62) & 0x7F) << v41;
            if ((LOBYTE(v62) & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v31 = v42++ > 8;
            if (v31)
            {
              goto LABEL_106;
            }
          }

          if (([v4 hasError] & 1) != 0 || v43 > 3)
          {
LABEL_106:
            LODWORD(v43) = 0;
          }

          v5->_type = v43;
          goto LABEL_113;
        }

        if (v15 != 3)
        {
          goto LABEL_88;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasStarting = 1;
        while (1)
        {
          LOBYTE(v62) = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v62 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (LOBYTE(v62) & 0x7F) << v16;
          if ((LOBYTE(v62) & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v13 = v17++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_91;
          }
        }

        v22 = (v18 != 0) & ~[v4 hasError];
LABEL_91:
        v54 = 32;
        goto LABEL_110;
      }

      v23 = PBReaderReadString();
      v24 = 56;
    }

    goto LABEL_78;
  }

LABEL_114:
  if ([v4 hasError])
  {
LABEL_115:
    v59 = 0;
  }

  else
  {
LABEL_116:
    v59 = v5;
  }

  return v59;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = [(BMAppInFocus *)self launchReason];
  v16 = BMAppInFocusTypeAsString([(BMAppInFocus *)self type]);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppInFocus starting](self, "starting")}];
  v4 = [(BMAppInFocus *)self absoluteTimestamp];
  v5 = [(BMAppInFocus *)self bundleID];
  v6 = [(BMAppInFocus *)self parentBundleID];
  v7 = [(BMAppInFocus *)self extensionHostID];
  v8 = [(BMAppInFocus *)self shortVersionString];
  v9 = [(BMAppInFocus *)self exactVersionString];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAppInFocus dyldPlatform](self, "dyldPlatform")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppInFocus isNativeArchitecture](self, "isNativeArchitecture")}];
  v12 = BMAppInFocusDisplayTypeAsString([(BMAppInFocus *)self displayType]);
  v15 = [v14 initWithFormat:@"BMAppInFocus with launchReason: %@, type: %@, starting: %@, absoluteTimestamp: %@, bundleID: %@, parentBundleID: %@, extensionHostID: %@, shortVersionString: %@, exactVersionString: %@, dyldPlatform: %@, isNativeArchitecture: %@, displayType: %@", v17, v16, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v15;
}

- (BMAppInFocus)initWithLaunchReason:(id)a3 type:(int)a4 starting:(id)a5 absoluteTimestamp:(id)a6 bundleID:(id)a7 parentBundleID:(id)a8 extensionHostID:(id)a9 shortVersionString:(id)a10 exactVersionString:(id)a11 dyldPlatform:(id)a12 isNativeArchitecture:(id)a13 displayType:(int)a14
{
  v36 = a3;
  v18 = a5;
  v19 = a6;
  v29 = a7;
  v35 = a7;
  v34 = a8;
  v33 = a9;
  v32 = a10;
  v31 = a11;
  v20 = a12;
  v21 = v19;
  v22 = a13;
  v37.receiver = self;
  v37.super_class = BMAppInFocus;
  v23 = [(BMEventBase *)&v37 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v23->_launchReason, a3);
    v23->_type = a4;
    if (v18)
    {
      v23->_hasStarting = 1;
      v23->_starting = [v18 BOOLValue];
    }

    else
    {
      v23->_hasStarting = 0;
      v23->_starting = 0;
    }

    if (v21)
    {
      v23->_hasRaw_absoluteTimestamp = 1;
      [v21 timeIntervalSinceReferenceDate];
    }

    else
    {
      v23->_hasRaw_absoluteTimestamp = 0;
      v24 = -1.0;
    }

    v23->_raw_absoluteTimestamp = v24;
    objc_storeStrong(&v23->_bundleID, v29);
    objc_storeStrong(&v23->_parentBundleID, a8);
    objc_storeStrong(&v23->_extensionHostID, a9);
    objc_storeStrong(&v23->_shortVersionString, a10);
    objc_storeStrong(&v23->_exactVersionString, a11);
    if (v20)
    {
      v23->_hasDyldPlatform = 1;
      v25 = [v20 unsignedIntValue];
    }

    else
    {
      v25 = 0;
      v23->_hasDyldPlatform = 0;
    }

    v23->_dyldPlatform = v25;
    if (v22)
    {
      v23->_hasIsNativeArchitecture = 1;
      v23->_isNativeArchitecture = [v22 BOOLValue];
    }

    else
    {
      v23->_hasIsNativeArchitecture = 0;
      v23->_isNativeArchitecture = 0;
    }

    v23->_displayType = a14;
  }

  return v23;
}

+ (id)protoFields
{
  v18[13] = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"launchReason" number:1 type:13 subMessageClass:0];
  v18[0] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:2 type:4 subMessageClass:0];
  v18[1] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:3 type:12 subMessageClass:0];
  v18[2] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:4 type:0 subMessageClass:0];
  v18[3] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"duration" number:5 type:0 subMessageClass:0];
  v18[4] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:6 type:13 subMessageClass:0];
  v18[5] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"parentBundleID" number:7 type:13 subMessageClass:0];
  v18[6] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"extensionHostID" number:8 type:13 subMessageClass:0];
  v18[7] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shortVersionString" number:9 type:13 subMessageClass:0];
  v18[8] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"exactVersionString" number:10 type:13 subMessageClass:0];
  v18[9] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dyldPlatform" number:11 type:4 subMessageClass:0];
  v18[10] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isNativeArchitecture" number:12 type:12 subMessageClass:0];
  v18[11] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"displayType" number:13 type:4 subMessageClass:0];
  v18[12] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:13];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 10)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMAppInFocus alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[10] = 10;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end