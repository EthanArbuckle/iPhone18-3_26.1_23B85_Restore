@interface BMDeviceEdgeSelection
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceEdgeSelection)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMDeviceEdgeSelection)initWithPublicIPPrefix:(id)prefix addressFamily:(id)family prefixLength:(id)length interfaceType:(id)type radioType:(id)radioType radioBand:(id)band country:(id)country timeZone:(id)self0 geohash:(id)self1;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    publicIPPrefix = [(BMDeviceEdgeSelection *)self publicIPPrefix];
    publicIPPrefix2 = [v5 publicIPPrefix];
    v8 = publicIPPrefix2;
    if (publicIPPrefix == publicIPPrefix2)
    {
    }

    else
    {
      publicIPPrefix3 = [(BMDeviceEdgeSelection *)self publicIPPrefix];
      publicIPPrefix4 = [v5 publicIPPrefix];
      v11 = [publicIPPrefix3 isEqual:publicIPPrefix4];

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

      addressFamily = [(BMDeviceEdgeSelection *)self addressFamily];
      if (addressFamily != [v5 addressFamily])
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

      prefixLength = [(BMDeviceEdgeSelection *)self prefixLength];
      if (prefixLength != [v5 prefixLength])
      {
        goto LABEL_35;
      }
    }

    interfaceType = [(BMDeviceEdgeSelection *)self interfaceType];
    interfaceType2 = [v5 interfaceType];
    v17 = interfaceType2;
    if (interfaceType == interfaceType2)
    {
    }

    else
    {
      interfaceType3 = [(BMDeviceEdgeSelection *)self interfaceType];
      interfaceType4 = [v5 interfaceType];
      v20 = [interfaceType3 isEqual:interfaceType4];

      if (!v20)
      {
        goto LABEL_35;
      }
    }

    radioType = [(BMDeviceEdgeSelection *)self radioType];
    radioType2 = [v5 radioType];
    v23 = radioType2;
    if (radioType == radioType2)
    {
    }

    else
    {
      radioType3 = [(BMDeviceEdgeSelection *)self radioType];
      radioType4 = [v5 radioType];
      v26 = [radioType3 isEqual:radioType4];

      if (!v26)
      {
        goto LABEL_35;
      }
    }

    radioBand = [(BMDeviceEdgeSelection *)self radioBand];
    radioBand2 = [v5 radioBand];
    v29 = radioBand2;
    if (radioBand == radioBand2)
    {
    }

    else
    {
      radioBand3 = [(BMDeviceEdgeSelection *)self radioBand];
      radioBand4 = [v5 radioBand];
      v32 = [radioBand3 isEqual:radioBand4];

      if (!v32)
      {
        goto LABEL_35;
      }
    }

    country = [(BMDeviceEdgeSelection *)self country];
    country2 = [v5 country];
    v35 = country2;
    if (country == country2)
    {
    }

    else
    {
      country3 = [(BMDeviceEdgeSelection *)self country];
      country4 = [v5 country];
      v38 = [country3 isEqual:country4];

      if (!v38)
      {
        goto LABEL_35;
      }
    }

    timeZone = [(BMDeviceEdgeSelection *)self timeZone];
    timeZone2 = [v5 timeZone];
    v41 = timeZone2;
    if (timeZone == timeZone2)
    {
    }

    else
    {
      timeZone3 = [(BMDeviceEdgeSelection *)self timeZone];
      timeZone4 = [v5 timeZone];
      v44 = [timeZone3 isEqual:timeZone4];

      if (!v44)
      {
LABEL_35:
        v12 = 0;
LABEL_36:

        goto LABEL_37;
      }
    }

    geohash = [(BMDeviceEdgeSelection *)self geohash];
    geohash2 = [v5 geohash];
    if (geohash == geohash2)
    {
      v12 = 1;
    }

    else
    {
      geohash3 = [(BMDeviceEdgeSelection *)self geohash];
      geohash4 = [v5 geohash];
      v12 = [geohash3 isEqual:geohash4];
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
  publicIPPrefix = [(BMDeviceEdgeSelection *)self publicIPPrefix];
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

  interfaceType = [(BMDeviceEdgeSelection *)self interfaceType];
  radioType = [(BMDeviceEdgeSelection *)self radioType];
  radioBand = [(BMDeviceEdgeSelection *)self radioBand];
  country = [(BMDeviceEdgeSelection *)self country];
  timeZone = [(BMDeviceEdgeSelection *)self timeZone];
  geohash = [(BMDeviceEdgeSelection *)self geohash];
  v31[0] = @"publicIPPrefix";
  null = publicIPPrefix;
  if (!publicIPPrefix)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null;
  v32[0] = null;
  v31[1] = @"addressFamily";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null2;
  v32[1] = null2;
  v31[2] = @"prefixLength";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = publicIPPrefix;
  v23 = null3;
  v32[2] = null3;
  v31[3] = @"interfaceType";
  null4 = interfaceType;
  if (!interfaceType)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v4;
  v22 = null4;
  v32[3] = null4;
  v31[4] = @"radioType";
  null5 = radioType;
  if (!radioType)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v5;
  v32[4] = null5;
  v31[5] = @"radioBand";
  null6 = radioBand;
  if (!radioBand)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v32[5] = null6;
  v31[6] = @"country";
  null7 = country;
  if (!country)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v32[6] = null7;
  v31[7] = @"timeZone";
  null8 = timeZone;
  if (!timeZone)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v32[7] = null8;
  v31[8] = @"geohash";
  null9 = geohash;
  if (!geohash)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v32[8] = null9;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:9];
  if (geohash)
  {
    if (timeZone)
    {
      goto LABEL_27;
    }

LABEL_41:

    if (country)
    {
      goto LABEL_28;
    }

    goto LABEL_42;
  }

  if (!timeZone)
  {
    goto LABEL_41;
  }

LABEL_27:
  if (country)
  {
    goto LABEL_28;
  }

LABEL_42:

LABEL_28:
  if (!radioBand)
  {
  }

  if (!radioType)
  {
  }

  if (!interfaceType)
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

- (BMDeviceEdgeSelection)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v105[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"publicIPPrefix"];
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
    v10 = [dictionaryCopy objectForKeyedSubscript:@"addressFamily"];
    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      errorCopy2 = error;
      v11 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      errorCopy2 = error;
      v11 = v10;
LABEL_7:
      v12 = [dictionaryCopy objectForKeyedSubscript:@"prefixLength"];
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v81 = 0;
LABEL_10:
        v13 = [dictionaryCopy objectForKeyedSubscript:@"interfaceType"];
        v85 = v10;
        if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy2)
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
            *errorCopy2 = v47;
            v41 = v44;
            v26 = v81;
            goto LABEL_82;
          }

          v86 = v13;
          selfCopy2 = self;
        }

        else
        {
          selfCopy2 = self;
          v86 = 0;
        }

        v15 = [dictionaryCopy objectForKeyedSubscript:@"radioType"];
        v77 = v13;
        v79 = v15;
        if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v83 = 0;
LABEL_16:
          v17 = [dictionaryCopy objectForKeyedSubscript:@"radioBand"];
          self = selfCopy2;
          v78 = v9;
          v75 = v17;
          if (v17 && (v18 = v17, objc_opt_class(), v10 = v85, (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!errorCopy2)
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
              *errorCopy2 = [v57 initWithDomain:v56 code:2 userInfo:v19];
              goto LABEL_85;
            }

            v80 = v18;
          }

          else
          {
            v80 = 0;
          }

          v19 = [dictionaryCopy objectForKeyedSubscript:@"country"];
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
            v21 = [dictionaryCopy objectForKeyedSubscript:@"timeZone"];
            v73 = v12;
            if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              selfCopy5 = self;
              v23 = 0;
              goto LABEL_25;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              selfCopy5 = self;
              v23 = v21;
LABEL_25:
              v24 = [dictionaryCopy objectForKeyedSubscript:@"geohash"];
              if (!v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v25 = 0;
LABEL_28:
                v26 = v81;
                v27 = [(BMDeviceEdgeSelection *)selfCopy5 initWithPublicIPPrefix:v78 addressFamily:v76 prefixLength:v81 interfaceType:v86 radioType:v83 radioBand:v80 country:v20 timeZone:v23 geohash:v25];
                selfCopy5 = v27;
LABEL_70:

                self = selfCopy5;
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

              if (errorCopy2)
              {
                v72 = objc_alloc(MEMORY[0x1E696ABC0]);
                v70 = *MEMORY[0x1E698F240];
                v88 = *MEMORY[0x1E696A578];
                v65 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"geohash"];
                v89 = v65;
                v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
                *errorCopy2 = [v72 initWithDomain:v70 code:2 userInfo:v66];
              }

              v25 = 0;
              v27 = 0;
LABEL_69:
              v26 = v81;
              goto LABEL_70;
            }

            if (errorCopy2)
            {
              selfCopy5 = self;
              v71 = objc_alloc(MEMORY[0x1E696ABC0]);
              v63 = *MEMORY[0x1E698F240];
              v90 = *MEMORY[0x1E696A578];
              v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"timeZone"];
              v91 = v25;
              v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
              v64 = [v71 initWithDomain:v63 code:2 userInfo:v24];
              v23 = 0;
              v27 = 0;
              *errorCopy2 = v64;
              goto LABEL_69;
            }

            v23 = 0;
            v27 = 0;
LABEL_87:
            v26 = v81;
            goto LABEL_71;
          }

          if (errorCopy2)
          {
            v58 = objc_alloc(MEMORY[0x1E696ABC0]);
            v59 = v12;
            selfCopy6 = self;
            v61 = *MEMORY[0x1E698F240];
            v92 = *MEMORY[0x1E696A578];
            v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"country"];
            v93 = v23;
            v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
            v62 = v61;
            self = selfCopy6;
            v12 = v59;
            v20 = 0;
            v27 = 0;
            *errorCopy2 = [v58 initWithDomain:v62 code:2 userInfo:v21];
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

        if (errorCopy2)
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
          *errorCopy2 = [v48 initWithDomain:v52 code:2 userInfo:v51];
          v26 = v81;
          self = selfCopy2;
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
        self = selfCopy2;
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

      v26 = errorCopy2;
      if (errorCopy2)
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
        *errorCopy2 = [v84 initWithDomain:v37 code:2 userInfo:v41];
        v26 = 0;
LABEL_76:

        goto LABEL_77;
      }

      v27 = 0;
LABEL_77:

      goto LABEL_78;
    }

    if (error)
    {
      v31 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy3 = error;
      v33 = *MEMORY[0x1E698F240];
      v102 = *MEMORY[0x1E696A578];
      v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"addressFamily"];
      v103 = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
      v36 = v33;
      v12 = v35;
      v11 = 0;
      v27 = 0;
      *errorCopy3 = [v31 initWithDomain:v36 code:2 userInfo:v35];
      v26 = v34;
      goto LABEL_77;
    }

    v11 = 0;
    v27 = 0;
LABEL_78:

    v8 = v87;
    goto LABEL_79;
  }

  if (error)
  {
    v28 = objc_alloc(MEMORY[0x1E696ABC0]);
    errorCopy4 = error;
    v30 = *MEMORY[0x1E698F240];
    v104 = *MEMORY[0x1E696A578];
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"publicIPPrefix"];
    v105[0] = v11;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:&v104 count:1];
    v9 = 0;
    v27 = 0;
    *errorCopy4 = [v28 initWithDomain:v30 code:2 userInfo:v10];
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
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_publicIPPrefix)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_hasAddressFamily)
  {
    addressFamily = self->_addressFamily;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }

  if (self->_hasPrefixLength)
  {
    prefixLength = self->_prefixLength;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }

  if (self->_interfaceType)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_radioType)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_radioBand)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_country)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_timeZone)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_geohash)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v36.receiver = self;
  v36.super_class = BMDeviceEdgeSelection;
  v5 = [(BMEventBase *)&v36 init];
  if (!v5)
  {
    goto LABEL_70;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v37 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
              v28 = [fromCopy position] + 1;
              if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if ([fromCopy hasError])
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
              v21 = [fromCopy position] + 1;
              if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if ([fromCopy hasError])
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  publicIPPrefix = [(BMDeviceEdgeSelection *)self publicIPPrefix];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceEdgeSelection addressFamily](self, "addressFamily")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceEdgeSelection prefixLength](self, "prefixLength")}];
  interfaceType = [(BMDeviceEdgeSelection *)self interfaceType];
  radioType = [(BMDeviceEdgeSelection *)self radioType];
  radioBand = [(BMDeviceEdgeSelection *)self radioBand];
  country = [(BMDeviceEdgeSelection *)self country];
  timeZone = [(BMDeviceEdgeSelection *)self timeZone];
  geohash = [(BMDeviceEdgeSelection *)self geohash];
  v13 = [v3 initWithFormat:@"BMDeviceEdgeSelection with publicIPPrefix: %@, addressFamily: %@, prefixLength: %@, interfaceType: %@, radioType: %@, radioBand: %@, country: %@, timeZone: %@, geohash: %@", publicIPPrefix, v5, v6, interfaceType, radioType, radioBand, country, timeZone, geohash];

  return v13;
}

- (BMDeviceEdgeSelection)initWithPublicIPPrefix:(id)prefix addressFamily:(id)family prefixLength:(id)length interfaceType:(id)type radioType:(id)radioType radioBand:(id)band country:(id)country timeZone:(id)self0 geohash:(id)self1
{
  prefixCopy = prefix;
  familyCopy = family;
  lengthCopy = length;
  typeCopy = type;
  radioTypeCopy = radioType;
  bandCopy = band;
  countryCopy = country;
  zoneCopy = zone;
  geohashCopy = geohash;
  v31.receiver = self;
  v31.super_class = BMDeviceEdgeSelection;
  v20 = [(BMEventBase *)&v31 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_publicIPPrefix, prefix);
    if (familyCopy)
    {
      v20->_hasAddressFamily = 1;
      unsignedIntValue = [familyCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v20->_hasAddressFamily = 0;
    }

    v20->_addressFamily = unsignedIntValue;
    if (lengthCopy)
    {
      v20->_hasPrefixLength = 1;
      unsignedIntValue2 = [lengthCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v20->_hasPrefixLength = 0;
    }

    v20->_prefixLength = unsignedIntValue2;
    objc_storeStrong(&v20->_interfaceType, type);
    objc_storeStrong(&v20->_radioType, radioType);
    objc_storeStrong(&v20->_radioBand, band);
    objc_storeStrong(&v20->_country, country);
    objc_storeStrong(&v20->_timeZone, zone);
    objc_storeStrong(&v20->_geohash, geohash);
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