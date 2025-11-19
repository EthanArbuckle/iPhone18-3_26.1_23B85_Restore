@interface BMDeviceEdgeSelection
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDeviceEdgeSelection)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMDeviceEdgeSelection)initWithPublicIPPrefix:(id)a3 addressFamily:(id)a4 prefixLength:(id)a5 interfaceType:(id)a6 radioType:(id)a7 radioBand:(id)a8 country:(id)a9 timeZone:(id)a10 geohash:(id)a11;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMDeviceEdgeSelection

+ (id)columns
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"publicIPPrefix" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"addressFamily" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"prefixLength" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"interfaceType" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"radioType" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"radioBand" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"country" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timeZone" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"geohash" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMDeviceEdgeSelection *)self publicIPPrefix];
    v7 = [v5 publicIPPrefix];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMDeviceEdgeSelection *)self publicIPPrefix];
      v10 = [v5 publicIPPrefix];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_35;
      }
    }

    if (-[BMDeviceEdgeSelection hasAddressFamily](self, "hasAddressFamily") || [v5 hasAddressFamily])
    {
      if (![(BMDeviceEdgeSelection *)self hasAddressFamily])
      {
        goto LABEL_35;
      }

      if (![v5 hasAddressFamily])
      {
        goto LABEL_35;
      }

      v13 = [(BMDeviceEdgeSelection *)self addressFamily];
      if (v13 != [v5 addressFamily])
      {
        goto LABEL_35;
      }
    }

    if (-[BMDeviceEdgeSelection hasPrefixLength](self, "hasPrefixLength") || [v5 hasPrefixLength])
    {
      if (![(BMDeviceEdgeSelection *)self hasPrefixLength])
      {
        goto LABEL_35;
      }

      if (![v5 hasPrefixLength])
      {
        goto LABEL_35;
      }

      v14 = [(BMDeviceEdgeSelection *)self prefixLength];
      if (v14 != [v5 prefixLength])
      {
        goto LABEL_35;
      }
    }

    v15 = [(BMDeviceEdgeSelection *)self interfaceType];
    v16 = [v5 interfaceType];
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      v18 = [(BMDeviceEdgeSelection *)self interfaceType];
      v19 = [v5 interfaceType];
      v20 = [v18 isEqual:v19];

      if (!v20)
      {
        goto LABEL_35;
      }
    }

    v21 = [(BMDeviceEdgeSelection *)self radioType];
    v22 = [v5 radioType];
    v23 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      v24 = [(BMDeviceEdgeSelection *)self radioType];
      v25 = [v5 radioType];
      v26 = [v24 isEqual:v25];

      if (!v26)
      {
        goto LABEL_35;
      }
    }

    v27 = [(BMDeviceEdgeSelection *)self radioBand];
    v28 = [v5 radioBand];
    v29 = v28;
    if (v27 == v28)
    {
    }

    else
    {
      v30 = [(BMDeviceEdgeSelection *)self radioBand];
      v31 = [v5 radioBand];
      v32 = [v30 isEqual:v31];

      if (!v32)
      {
        goto LABEL_35;
      }
    }

    v33 = [(BMDeviceEdgeSelection *)self country];
    v34 = [v5 country];
    v35 = v34;
    if (v33 == v34)
    {
    }

    else
    {
      v36 = [(BMDeviceEdgeSelection *)self country];
      v37 = [v5 country];
      v38 = [v36 isEqual:v37];

      if (!v38)
      {
        goto LABEL_35;
      }
    }

    v39 = [(BMDeviceEdgeSelection *)self timeZone];
    v40 = [v5 timeZone];
    v41 = v40;
    if (v39 == v40)
    {
    }

    else
    {
      v42 = [(BMDeviceEdgeSelection *)self timeZone];
      v43 = [v5 timeZone];
      v44 = [v42 isEqual:v43];

      if (!v44)
      {
LABEL_35:
        v12 = 0;
LABEL_36:

        goto LABEL_37;
      }
    }

    v46 = [(BMDeviceEdgeSelection *)self geohash];
    v47 = [v5 geohash];
    if (v46 == v47)
    {
      v12 = 1;
    }

    else
    {
      v48 = [(BMDeviceEdgeSelection *)self geohash];
      v49 = [v5 geohash];
      v12 = [v48 isEqual:v49];
    }

    goto LABEL_36;
  }

  v12 = 0;
LABEL_37:

  return v12;
}

- (id)jsonDictionary
{
  v32[9] = *MEMORY[0x1E69E9840];
  v3 = [(BMDeviceEdgeSelection *)self publicIPPrefix];
  if ([(BMDeviceEdgeSelection *)self hasAddressFamily])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceEdgeSelection addressFamily](self, "addressFamily")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMDeviceEdgeSelection *)self hasPrefixLength])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceEdgeSelection prefixLength](self, "prefixLength")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(BMDeviceEdgeSelection *)self interfaceType];
  v7 = [(BMDeviceEdgeSelection *)self radioType];
  v30 = [(BMDeviceEdgeSelection *)self radioBand];
  v8 = [(BMDeviceEdgeSelection *)self country];
  v9 = [(BMDeviceEdgeSelection *)self timeZone];
  v10 = [(BMDeviceEdgeSelection *)self geohash];
  v31[0] = @"publicIPPrefix";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v11;
  v32[0] = v11;
  v31[1] = @"addressFamily";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v12;
  v32[1] = v12;
  v31[2] = @"prefixLength";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v3;
  v23 = v13;
  v32[2] = v13;
  v31[3] = @"interfaceType";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v4;
  v22 = v14;
  v32[3] = v14;
  v31[4] = @"radioType";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v5;
  v32[4] = v15;
  v31[5] = @"radioBand";
  v16 = v30;
  if (!v30)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v32[5] = v16;
  v31[6] = @"country";
  v17 = v8;
  if (!v8)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v32[6] = v17;
  v31[7] = @"timeZone";
  v18 = v9;
  if (!v9)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v32[7] = v18;
  v31[8] = @"geohash";
  v19 = v10;
  if (!v10)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v32[8] = v19;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:9];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_27;
    }

LABEL_41:

    if (v8)
    {
      goto LABEL_28;
    }

    goto LABEL_42;
  }

  if (!v9)
  {
    goto LABEL_41;
  }

LABEL_27:
  if (v8)
  {
    goto LABEL_28;
  }

LABEL_42:

LABEL_28:
  if (!v30)
  {
  }

  if (!v7)
  {
  }

  if (!v6)
  {
  }

  if (v27)
  {
    if (v28)
    {
      goto LABEL_36;
    }

LABEL_44:

    if (v29)
    {
      goto LABEL_37;
    }

    goto LABEL_45;
  }

  if (!v28)
  {
    goto LABEL_44;
  }

LABEL_36:
  if (v29)
  {
    goto LABEL_37;
  }

LABEL_45:

LABEL_37:
  v20 = *MEMORY[0x1E69E9840];

  return v26;
}

- (BMDeviceEdgeSelection)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v105[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"publicIPPrefix"];
  v87 = v7;
  if (!v7 || (v8 = v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
LABEL_4:
    v10 = [v6 objectForKeyedSubscript:@"addressFamily"];
    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v82 = a4;
      v11 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v82 = a4;
      v11 = v10;
LABEL_7:
      v12 = [v6 objectForKeyedSubscript:@"prefixLength"];
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v81 = 0;
LABEL_10:
        v13 = [v6 objectForKeyedSubscript:@"interfaceType"];
        v85 = v10;
        if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v82)
            {
              v86 = 0;
              v27 = 0;
              v26 = v81;
              v41 = v13;
              goto LABEL_76;
            }

            v42 = objc_alloc(MEMORY[0x1E696ABC0]);
            v74 = v12;
            v43 = *MEMORY[0x1E698F240];
            v98 = *MEMORY[0x1E696A578];
            v44 = v13;
            v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"interfaceType"];
            v99 = v83;
            v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
            v46 = v43;
            v12 = v74;
            v47 = [v42 initWithDomain:v46 code:2 userInfo:v45];
            v86 = 0;
            v27 = 0;
            *v82 = v47;
            v41 = v44;
            v26 = v81;
            goto LABEL_82;
          }

          v86 = v13;
          v14 = self;
        }

        else
        {
          v14 = self;
          v86 = 0;
        }

        v15 = [v6 objectForKeyedSubscript:@"radioType"];
        v77 = v13;
        v79 = v15;
        if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v83 = 0;
LABEL_16:
          v17 = [v6 objectForKeyedSubscript:@"radioBand"];
          self = v14;
          v78 = v9;
          v75 = v17;
          if (v17 && (v18 = v17, objc_opt_class(), v10 = v85, (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!v82)
              {
                v80 = 0;
                v27 = 0;
                v26 = v81;
                goto LABEL_73;
              }

              v53 = v12;
              v54 = v11;
              v55 = objc_alloc(MEMORY[0x1E696ABC0]);
              v56 = *MEMORY[0x1E698F240];
              v94 = *MEMORY[0x1E696A578];
              v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"radioBand"];
              v95 = v20;
              v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
              v57 = v55;
              v11 = v54;
              v12 = v53;
              v80 = 0;
              v27 = 0;
              *v82 = [v57 initWithDomain:v56 code:2 userInfo:v19];
              goto LABEL_85;
            }

            v80 = v18;
          }

          else
          {
            v80 = 0;
          }

          v19 = [v6 objectForKeyedSubscript:@"country"];
          v76 = v11;
          if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v20 = 0;
            goto LABEL_22;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = v19;
LABEL_22:
            v21 = [v6 objectForKeyedSubscript:@"timeZone"];
            v73 = v12;
            if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v22 = self;
              v23 = 0;
              goto LABEL_25;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = self;
              v23 = v21;
LABEL_25:
              v24 = [v6 objectForKeyedSubscript:@"geohash"];
              if (!v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v25 = 0;
LABEL_28:
                v26 = v81;
                v27 = [(BMDeviceEdgeSelection *)v22 initWithPublicIPPrefix:v78 addressFamily:v76 prefixLength:v81 interfaceType:v86 radioType:v83 radioBand:v80 country:v20 timeZone:v23 geohash:v25];
                v22 = v27;
LABEL_70:

                self = v22;
                v12 = v73;
LABEL_71:

                v11 = v76;
LABEL_72:

                v9 = v78;
                v10 = v85;
LABEL_73:
                v51 = v75;
                goto LABEL_74;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v25 = v24;
                goto LABEL_28;
              }

              if (v82)
              {
                v72 = objc_alloc(MEMORY[0x1E696ABC0]);
                v70 = *MEMORY[0x1E698F240];
                v88 = *MEMORY[0x1E696A578];
                v65 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"geohash"];
                v89 = v65;
                v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
                *v82 = [v72 initWithDomain:v70 code:2 userInfo:v66];
              }

              v25 = 0;
              v27 = 0;
LABEL_69:
              v26 = v81;
              goto LABEL_70;
            }

            if (v82)
            {
              v22 = self;
              v71 = objc_alloc(MEMORY[0x1E696ABC0]);
              v63 = *MEMORY[0x1E698F240];
              v90 = *MEMORY[0x1E696A578];
              v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"timeZone"];
              v91 = v25;
              v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
              v64 = [v71 initWithDomain:v63 code:2 userInfo:v24];
              v23 = 0;
              v27 = 0;
              *v82 = v64;
              goto LABEL_69;
            }

            v23 = 0;
            v27 = 0;
LABEL_87:
            v26 = v81;
            goto LABEL_71;
          }

          if (v82)
          {
            v58 = objc_alloc(MEMORY[0x1E696ABC0]);
            v59 = v12;
            v60 = self;
            v61 = *MEMORY[0x1E698F240];
            v92 = *MEMORY[0x1E696A578];
            v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"country"];
            v93 = v23;
            v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
            v62 = v61;
            self = v60;
            v12 = v59;
            v20 = 0;
            v27 = 0;
            *v82 = [v58 initWithDomain:v62 code:2 userInfo:v21];
            goto LABEL_87;
          }

          v20 = 0;
          v27 = 0;
LABEL_85:
          v26 = v81;
          goto LABEL_72;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v83 = v16;
          goto LABEL_16;
        }

        if (v82)
        {
          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = v11;
          v50 = *MEMORY[0x1E698F240];
          v96 = *MEMORY[0x1E696A578];
          v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"radioType"];
          v97 = v80;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
          v52 = v50;
          v11 = v49;
          v83 = 0;
          v27 = 0;
          *v82 = [v48 initWithDomain:v52 code:2 userInfo:v51];
          v26 = v81;
          self = v14;
          v10 = v85;
LABEL_74:

          v41 = v77;
          v45 = v79;
LABEL_75:

          goto LABEL_76;
        }

        v83 = 0;
        v27 = 0;
        v26 = v81;
        v41 = v13;
        v45 = v79;
        self = v14;
LABEL_82:
        v10 = v85;
        goto LABEL_75;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v81 = v12;
        goto LABEL_10;
      }

      v26 = v82;
      if (v82)
      {
        v84 = objc_alloc(MEMORY[0x1E696ABC0]);
        v37 = *MEMORY[0x1E698F240];
        v100 = *MEMORY[0x1E696A578];
        v38 = v11;
        v39 = objc_alloc(MEMORY[0x1E696AEC0]);
        v69 = objc_opt_class();
        v40 = v39;
        v11 = v38;
        v86 = [v40 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v69, @"prefixLength"];
        v101 = v86;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
        v27 = 0;
        *v82 = [v84 initWithDomain:v37 code:2 userInfo:v41];
        v26 = 0;
LABEL_76:

        goto LABEL_77;
      }

      v27 = 0;
LABEL_77:

      goto LABEL_78;
    }

    if (a4)
    {
      v31 = objc_alloc(MEMORY[0x1E696ABC0]);
      v32 = a4;
      v33 = *MEMORY[0x1E698F240];
      v102 = *MEMORY[0x1E696A578];
      v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"addressFamily"];
      v103 = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
      v36 = v33;
      v12 = v35;
      v11 = 0;
      v27 = 0;
      *v32 = [v31 initWithDomain:v36 code:2 userInfo:v35];
      v26 = v34;
      goto LABEL_77;
    }

    v11 = 0;
    v27 = 0;
LABEL_78:

    v8 = v87;
    goto LABEL_79;
  }

  if (a4)
  {
    v28 = objc_alloc(MEMORY[0x1E696ABC0]);
    v29 = a4;
    v30 = *MEMORY[0x1E698F240];
    v104 = *MEMORY[0x1E696A578];
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"publicIPPrefix"];
    v105[0] = v11;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:&v104 count:1];
    v9 = 0;
    v27 = 0;
    *v29 = [v28 initWithDomain:v30 code:2 userInfo:v10];
    goto LABEL_78;
  }

  v9 = 0;
  v27 = 0;
LABEL_79:

  v67 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceEdgeSelection *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_publicIPPrefix)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_hasAddressFamily)
  {
    addressFamily = self->_addressFamily;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_hasPrefixLength)
  {
    prefixLength = self->_prefixLength;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_interfaceType)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_radioType)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_radioBand)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_country)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_timeZone)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_geohash)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = BMDeviceEdgeSelection;
  v5 = [(BMEventBase *)&v36 init];
  if (!v5)
  {
    goto LABEL_70;
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
        v37 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v37 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v37 & 0x7F) << v7;
        if ((v37 & 0x80) == 0)
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
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v5->_hasPrefixLength = 1;
            while (1)
            {
              v37 = 0;
              v28 = [v4 position] + 1;
              if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
              {
                v30 = [v4 data];
                [v30 getBytes:&v37 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v27 |= (v37 & 0x7F) << v25;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v13 = v26++ >= 9;
              if (v13)
              {
                v24 = 0;
                goto LABEL_65;
              }
            }

            if ([v4 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v27;
            }

LABEL_65:
            v32 = 28;
LABEL_66:
            *(&v5->super.super.isa + v32) = v24;
            goto LABEL_67;
          }

          if (v15 != 4)
          {
            goto LABEL_56;
          }

          v16 = PBReaderReadString();
          v17 = 40;
        }

        else
        {
          if (v15 != 1)
          {
            if (v15 != 2)
            {
              goto LABEL_56;
            }

            v18 = 0;
            v19 = 0;
            v20 = 0;
            v5->_hasAddressFamily = 1;
            while (1)
            {
              v37 = 0;
              v21 = [v4 position] + 1;
              if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
              {
                v23 = [v4 data];
                [v23 getBytes:&v37 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v20 |= (v37 & 0x7F) << v18;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v13 = v19++ >= 9;
              if (v13)
              {
                v24 = 0;
                goto LABEL_61;
              }
            }

            if ([v4 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v20;
            }

LABEL_61:
            v32 = 24;
            goto LABEL_66;
          }

          v16 = PBReaderReadString();
          v17 = 32;
        }
      }

      else if (v15 <= 6)
      {
        if (v15 == 5)
        {
          v16 = PBReaderReadString();
          v17 = 48;
        }

        else
        {
          if (v15 != 6)
          {
LABEL_56:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_69;
            }

            goto LABEL_67;
          }

          v16 = PBReaderReadString();
          v17 = 56;
        }
      }

      else
      {
        switch(v15)
        {
          case 7:
            v16 = PBReaderReadString();
            v17 = 64;
            break;
          case 8:
            v16 = PBReaderReadString();
            v17 = 72;
            break;
          case 9:
            v16 = PBReaderReadString();
            v17 = 80;
            break;
          default:
            goto LABEL_56;
        }
      }

      v31 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_67:
      v33 = [v4 position];
    }

    while (v33 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_69:
    v34 = 0;
  }

  else
  {
LABEL_70:
    v34 = v5;
  }

  return v34;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMDeviceEdgeSelection *)self publicIPPrefix];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceEdgeSelection addressFamily](self, "addressFamily")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceEdgeSelection prefixLength](self, "prefixLength")}];
  v7 = [(BMDeviceEdgeSelection *)self interfaceType];
  v8 = [(BMDeviceEdgeSelection *)self radioType];
  v9 = [(BMDeviceEdgeSelection *)self radioBand];
  v10 = [(BMDeviceEdgeSelection *)self country];
  v11 = [(BMDeviceEdgeSelection *)self timeZone];
  v12 = [(BMDeviceEdgeSelection *)self geohash];
  v13 = [v3 initWithFormat:@"BMDeviceEdgeSelection with publicIPPrefix: %@, addressFamily: %@, prefixLength: %@, interfaceType: %@, radioType: %@, radioBand: %@, country: %@, timeZone: %@, geohash: %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (BMDeviceEdgeSelection)initWithPublicIPPrefix:(id)a3 addressFamily:(id)a4 prefixLength:(id)a5 interfaceType:(id)a6 radioType:(id)a7 radioBand:(id)a8 country:(id)a9 timeZone:(id)a10 geohash:(id)a11
{
  v30 = a3;
  v18 = a4;
  v19 = a5;
  v29 = a6;
  v28 = a7;
  v27 = a8;
  v26 = a9;
  v25 = a10;
  v24 = a11;
  v31.receiver = self;
  v31.super_class = BMDeviceEdgeSelection;
  v20 = [(BMEventBase *)&v31 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_publicIPPrefix, a3);
    if (v18)
    {
      v20->_hasAddressFamily = 1;
      v21 = [v18 unsignedIntValue];
    }

    else
    {
      v21 = 0;
      v20->_hasAddressFamily = 0;
    }

    v20->_addressFamily = v21;
    if (v19)
    {
      v20->_hasPrefixLength = 1;
      v22 = [v19 unsignedIntValue];
    }

    else
    {
      v22 = 0;
      v20->_hasPrefixLength = 0;
    }

    v20->_prefixLength = v22;
    objc_storeStrong(&v20->_interfaceType, a6);
    objc_storeStrong(&v20->_radioType, a7);
    objc_storeStrong(&v20->_radioBand, a8);
    objc_storeStrong(&v20->_country, a9);
    objc_storeStrong(&v20->_timeZone, a10);
    objc_storeStrong(&v20->_geohash, a11);
  }

  return v20;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"publicIPPrefix" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"addressFamily" number:2 type:4 subMessageClass:{0, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"prefixLength" number:3 type:4 subMessageClass:0];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interfaceType" number:4 type:13 subMessageClass:0];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"radioType" number:5 type:13 subMessageClass:0];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"radioBand" number:6 type:13 subMessageClass:0];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"country" number:7 type:13 subMessageClass:0];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeZone" number:8 type:13 subMessageClass:0];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"geohash" number:9 type:13 subMessageClass:0];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
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

    v8 = [[BMDeviceEdgeSelection alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end