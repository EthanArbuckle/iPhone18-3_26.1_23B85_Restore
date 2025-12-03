@interface BMCameraCaptureAutoFocusROI
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMCameraCaptureAutoFocusROI)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMCameraCaptureAutoFocusROI)initWithPortType:(id)type focusRegionType:(int)regionType topLeftCornerRow:(id)row topLeftCornerColumn:(id)column width:(id)width height:(id)height luxLevel:(id)level subjectDistance:(id)self0 clientApplicationIDType:(int)self1;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMCameraCaptureAutoFocusROI

+ (id)columns
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"portType" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"focusRegionType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"topLeftCornerRow" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"topLeftCornerColumn" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"width" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"height" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"luxLevel" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subjectDistance" dataType:1 requestOnly:0 fieldNumber:8 protoDataType:1 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientApplicationIDType" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:4 convertedType:0];
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
    portType = [(BMCameraCaptureAutoFocusROI *)self portType];
    portType2 = [v5 portType];
    v8 = portType2;
    if (portType == portType2)
    {
    }

    else
    {
      portType3 = [(BMCameraCaptureAutoFocusROI *)self portType];
      portType4 = [v5 portType];
      v11 = [portType3 isEqual:portType4];

      if (!v11)
      {
        goto LABEL_39;
      }
    }

    focusRegionType = [(BMCameraCaptureAutoFocusROI *)self focusRegionType];
    if (focusRegionType == [v5 focusRegionType])
    {
      if (!-[BMCameraCaptureAutoFocusROI hasTopLeftCornerRow](self, "hasTopLeftCornerRow") && ![v5 hasTopLeftCornerRow] || -[BMCameraCaptureAutoFocusROI hasTopLeftCornerRow](self, "hasTopLeftCornerRow") && objc_msgSend(v5, "hasTopLeftCornerRow") && (v14 = -[BMCameraCaptureAutoFocusROI topLeftCornerRow](self, "topLeftCornerRow"), v14 == objc_msgSend(v5, "topLeftCornerRow")))
      {
        if (!-[BMCameraCaptureAutoFocusROI hasTopLeftCornerColumn](self, "hasTopLeftCornerColumn") && ![v5 hasTopLeftCornerColumn] || -[BMCameraCaptureAutoFocusROI hasTopLeftCornerColumn](self, "hasTopLeftCornerColumn") && objc_msgSend(v5, "hasTopLeftCornerColumn") && (v15 = -[BMCameraCaptureAutoFocusROI topLeftCornerColumn](self, "topLeftCornerColumn"), v15 == objc_msgSend(v5, "topLeftCornerColumn")))
        {
          if (!-[BMCameraCaptureAutoFocusROI hasWidth](self, "hasWidth") && ![v5 hasWidth] || -[BMCameraCaptureAutoFocusROI hasWidth](self, "hasWidth") && objc_msgSend(v5, "hasWidth") && (v16 = -[BMCameraCaptureAutoFocusROI width](self, "width"), v16 == objc_msgSend(v5, "width")))
          {
            if (!-[BMCameraCaptureAutoFocusROI hasHeight](self, "hasHeight") && ![v5 hasHeight] || -[BMCameraCaptureAutoFocusROI hasHeight](self, "hasHeight") && objc_msgSend(v5, "hasHeight") && (v17 = -[BMCameraCaptureAutoFocusROI height](self, "height"), v17 == objc_msgSend(v5, "height")))
            {
              if (!-[BMCameraCaptureAutoFocusROI hasLuxLevel](self, "hasLuxLevel") && ![v5 hasLuxLevel] || -[BMCameraCaptureAutoFocusROI hasLuxLevel](self, "hasLuxLevel") && objc_msgSend(v5, "hasLuxLevel") && (v18 = -[BMCameraCaptureAutoFocusROI luxLevel](self, "luxLevel"), v18 == objc_msgSend(v5, "luxLevel")))
              {
                if (!-[BMCameraCaptureAutoFocusROI hasSubjectDistance](self, "hasSubjectDistance") && ![v5 hasSubjectDistance] || -[BMCameraCaptureAutoFocusROI hasSubjectDistance](self, "hasSubjectDistance") && objc_msgSend(v5, "hasSubjectDistance") && (-[BMCameraCaptureAutoFocusROI subjectDistance](self, "subjectDistance"), v20 = v19, objc_msgSend(v5, "subjectDistance"), v20 == v21))
                {
                  clientApplicationIDType = [(BMCameraCaptureAutoFocusROI *)self clientApplicationIDType];
                  v12 = clientApplicationIDType == [v5 clientApplicationIDType];
LABEL_40:

                  goto LABEL_41;
                }
              }
            }
          }
        }
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
  v36[9] = *MEMORY[0x1E69E9840];
  portType = [(BMCameraCaptureAutoFocusROI *)self portType];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCameraCaptureAutoFocusROI focusRegionType](self, "focusRegionType")}];
  if ([(BMCameraCaptureAutoFocusROI *)self hasTopLeftCornerRow])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMCameraCaptureAutoFocusROI topLeftCornerRow](self, "topLeftCornerRow")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMCameraCaptureAutoFocusROI *)self hasTopLeftCornerColumn])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMCameraCaptureAutoFocusROI topLeftCornerColumn](self, "topLeftCornerColumn")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMCameraCaptureAutoFocusROI *)self hasWidth])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMCameraCaptureAutoFocusROI width](self, "width")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMCameraCaptureAutoFocusROI *)self hasHeight])
  {
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMCameraCaptureAutoFocusROI height](self, "height")}];
  }

  else
  {
    v34 = 0;
  }

  if ([(BMCameraCaptureAutoFocusROI *)self hasLuxLevel])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMCameraCaptureAutoFocusROI luxLevel](self, "luxLevel")}];
  }

  else
  {
    v33 = 0;
  }

  if (![(BMCameraCaptureAutoFocusROI *)self hasSubjectDistance]|| ([(BMCameraCaptureAutoFocusROI *)self subjectDistance], fabs(v8) == INFINITY))
  {
    v10 = 0;
  }

  else
  {
    [(BMCameraCaptureAutoFocusROI *)self subjectDistance];
    v9 = MEMORY[0x1E696AD98];
    [(BMCameraCaptureAutoFocusROI *)self subjectDistance];
    v10 = [v9 numberWithDouble:?];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCameraCaptureAutoFocusROI clientApplicationIDType](self, "clientApplicationIDType")}];
  v35[0] = @"portType";
  null = portType;
  if (!portType)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null;
  v36[0] = null;
  v35[1] = @"focusRegionType";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null2;
  v36[1] = null2;
  v35[2] = @"topLeftCornerRow";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = portType;
  v27 = null3;
  v36[2] = null3;
  v35[3] = @"topLeftCornerColumn";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v4;
  v26 = null4;
  v36[3] = null4;
  v35[4] = @"width";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v5;
  v36[4] = null5;
  v35[5] = @"height";
  null6 = v34;
  if (!v34)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v6;
  v36[5] = null6;
  v35[6] = @"luxLevel";
  null7 = v33;
  if (!v33)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v7;
  v36[6] = null7;
  v35[7] = @"subjectDistance";
  null8 = v10;
  if (!v10)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v36[7] = null8;
  v35[8] = @"clientApplicationIDType";
  null9 = v11;
  if (!v11)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v36[8] = null9;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:9];
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
  if (!v33)
  {
  }

  if (!v34)
  {
  }

  if (!v20)
  {
  }

  if (!v18)
  {
  }

  if (v30)
  {
    if (v31)
    {
      goto LABEL_50;
    }

LABEL_57:

    if (v32)
    {
      goto LABEL_51;
    }

    goto LABEL_58;
  }

  if (!v31)
  {
    goto LABEL_57;
  }

LABEL_50:
  if (v32)
  {
    goto LABEL_51;
  }

LABEL_58:

LABEL_51:
  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (BMCameraCaptureAutoFocusROI)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v115[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"portType"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"focusRegionType"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v10 = 0;
            error = 0;
            goto LABEL_79;
          }

          errorCopy = error;
          v60 = objc_alloc(MEMORY[0x1E696ABC0]);
          v61 = *MEMORY[0x1E698F240];
          v112 = *MEMORY[0x1E696A578];
          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"focusRegionType"];
          v113 = v34;
          v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
          v63 = v61;
          v16 = v62;
          v64 = [v60 initWithDomain:v63 code:2 userInfo:v62];
          v10 = 0;
          error = 0;
          *errorCopy = v64;
          goto LABEL_78;
        }

        v11 = [MEMORY[0x1E696AD98] numberWithInt:BMCameraCaptureAutoFocusROIFocusRegionTypeFromString(v9)];
      }

      v10 = v11;
    }

    else
    {
      v10 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"topLeftCornerRow"];
    errorCopy2 = error;
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v34 = 0;
LABEL_78:

          goto LABEL_79;
        }

        v97 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = *MEMORY[0x1E698F240];
        v110 = *MEMORY[0x1E696A578];
        v29 = v10;
        v30 = objc_alloc(MEMORY[0x1E696AEC0]);
        v76 = objc_opt_class();
        v31 = v30;
        v10 = v29;
        v95 = [v31 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v76, @"topLeftCornerRow"];
        v111 = v95;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
        v33 = [v97 initWithDomain:v28 code:2 userInfo:v32];
        v34 = 0;
        error = 0;
        *errorCopy2 = v33;
LABEL_77:

        goto LABEL_78;
      }

      v96 = v8;
      selfCopy2 = self;
      v94 = v16;
    }

    else
    {
      v96 = v8;
      selfCopy2 = self;
      v94 = 0;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"topLeftCornerColumn"];
    v90 = v16;
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v95 = 0;
          v34 = v94;
          v32 = v18;
          self = selfCopy2;
          v8 = v96;
          goto LABEL_77;
        }

        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v108 = *MEMORY[0x1E696A578];
        v37 = v10;
        v38 = objc_alloc(MEMORY[0x1E696AEC0]);
        v77 = objc_opt_class();
        v39 = v38;
        v10 = v37;
        v32 = v18;
        v93 = [v39 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v77, @"topLeftCornerColumn"];
        v109 = v93;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
        v41 = v36;
        v16 = v90;
        v91 = v40;
        v42 = [v35 initWithDomain:v41 code:2 userInfo:?];
        v95 = 0;
        error = 0;
        *errorCopy2 = v42;
        goto LABEL_83;
      }

      v85 = v18;
      v95 = v18;
    }

    else
    {
      v85 = v18;
      v95 = 0;
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"width"];
    v91 = v19;
    if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v93 = 0;
LABEL_25:
      v21 = [dictionaryCopy objectForKeyedSubscript:@"height"];
      self = selfCopy2;
      v88 = v10;
      if (v21 && (objc_opt_class(), v8 = v96, (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v92 = 0;
            error = 0;
            v32 = v85;
            goto LABEL_75;
          }

          v52 = objc_alloc(MEMORY[0x1E696ABC0]);
          v53 = *MEMORY[0x1E698F240];
          v104 = *MEMORY[0x1E696A578];
          selfCopy3 = self;
          v55 = objc_alloc(MEMORY[0x1E696AEC0]);
          v79 = objc_opt_class();
          v56 = v55;
          self = selfCopy3;
          v86 = [v56 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v79, @"height"];
          v105 = v86;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
          v57 = v52;
          v16 = v90;
          v58 = v53;
          v10 = v88;
          v92 = 0;
          error = 0;
          *errorCopy2 = [v57 initWithDomain:v58 code:2 userInfo:v22];
          goto LABEL_73;
        }

        v92 = v21;
      }

      else
      {
        v92 = 0;
      }

      v22 = [dictionaryCopy objectForKeyedSubscript:@"luxLevel"];
      v84 = v7;
      if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v86 = 0;
            error = 0;
            goto LABEL_73;
          }

          selfCopy4 = self;
          v66 = objc_alloc(MEMORY[0x1E696ABC0]);
          v87 = *MEMORY[0x1E698F240];
          v102 = *MEMORY[0x1E696A578];
          v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"luxLevel"];
          v103 = v25;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
          v67 = v66;
          self = selfCopy4;
          v7 = v84;
          v68 = [v67 initWithDomain:v87 code:2 userInfo:v23];
          v86 = 0;
          error = 0;
          *errorCopy2 = v68;
LABEL_72:

          v10 = v88;
          v16 = v90;
LABEL_73:
          v32 = v85;

          goto LABEL_74;
        }

        v86 = v22;
      }

      else
      {
        v86 = 0;
      }

      v23 = [dictionaryCopy objectForKeyedSubscript:@"subjectDistance"];
      if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v25 = 0;
            error = 0;
            goto LABEL_72;
          }

          errorCopy3 = self;
          v82 = objc_alloc(MEMORY[0x1E696ABC0]);
          v69 = *MEMORY[0x1E698F240];
          v100 = *MEMORY[0x1E696A578];
          v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"subjectDistance"];
          v101 = v27;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
          v70 = [v82 initWithDomain:v69 code:2 userInfo:v26];
          v25 = 0;
          error = 0;
          *errorCopy2 = v70;
          goto LABEL_71;
        }

        errorCopy3 = self;
        v25 = v23;
      }

      else
      {
        errorCopy3 = self;
        v25 = 0;
      }

      v26 = [dictionaryCopy objectForKeyedSubscript:@"clientApplicationIDType"];
      if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v43 = v26;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              v83 = objc_alloc(MEMORY[0x1E696ABC0]);
              v81 = *MEMORY[0x1E698F240];
              v98 = *MEMORY[0x1E696A578];
              v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"clientApplicationIDType"];
              v99 = v74;
              v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
              *errorCopy2 = [v83 initWithDomain:v81 code:2 userInfo:v75];
            }

            v27 = 0;
            error = 0;
            goto LABEL_71;
          }

          v43 = [MEMORY[0x1E696AD98] numberWithInt:BMCameraCaptureAutoFocusROIClientApplicationIDTypeFromString(v26)];
        }

        v27 = v43;
      }

      else
      {
        v27 = 0;
      }

      intValue = [v88 intValue];
      LODWORD(v80) = [v27 intValue];
      error = [(BMCameraCaptureAutoFocusROI *)errorCopy3 initWithPortType:v96 focusRegionType:intValue topLeftCornerRow:v94 topLeftCornerColumn:v95 width:v93 height:v92 luxLevel:v86 subjectDistance:v25 clientApplicationIDType:v80];
      errorCopy3 = error;
LABEL_71:

      self = errorCopy3;
      v7 = v84;
      goto LABEL_72;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v93 = v20;
      goto LABEL_25;
    }

    if (error)
    {
      errorCopy4 = error;
      v45 = objc_alloc(MEMORY[0x1E696ABC0]);
      v46 = *MEMORY[0x1E698F240];
      v106 = *MEMORY[0x1E696A578];
      v47 = v10;
      v48 = objc_alloc(MEMORY[0x1E696AEC0]);
      v78 = objc_opt_class();
      v49 = v48;
      v10 = v47;
      v92 = [v49 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v78, @"width"];
      v107 = v92;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
      v50 = v46;
      v16 = v90;
      v51 = [v45 initWithDomain:v50 code:2 userInfo:v21];
      v93 = 0;
      error = 0;
      *errorCopy4 = v51;
      v32 = v85;
      self = selfCopy2;
LABEL_74:
      v8 = v96;
LABEL_75:

LABEL_76:
      v34 = v94;
      goto LABEL_77;
    }

    v93 = 0;
    v32 = v85;
LABEL_83:
    self = selfCopy2;
    v8 = v96;
    goto LABEL_76;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (error)
  {
    errorCopy5 = error;
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = *MEMORY[0x1E698F240];
    v114 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"portType"];
    v115[0] = v10;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v115 forKeys:&v114 count:1];
    v15 = [v13 initWithDomain:v14 code:2 userInfo:v9];
    v8 = 0;
    error = 0;
    *errorCopy5 = v15;
LABEL_79:

    goto LABEL_80;
  }

  v8 = 0;
LABEL_80:

  v72 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMCameraCaptureAutoFocusROI *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_portType)
  {
    PBDataWriterWriteStringField();
  }

  focusRegionType = self->_focusRegionType;
  PBDataWriterWriteUint32Field();
  if (self->_hasTopLeftCornerRow)
  {
    topLeftCornerRow = self->_topLeftCornerRow;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasTopLeftCornerColumn)
  {
    topLeftCornerColumn = self->_topLeftCornerColumn;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasWidth)
  {
    width = self->_width;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasHeight)
  {
    height = self->_height;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasLuxLevel)
  {
    luxLevel = self->_luxLevel;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasSubjectDistance)
  {
    subjectDistance = self->_subjectDistance;
    PBDataWriterWriteFloatField();
  }

  clientApplicationIDType = self->_clientApplicationIDType;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v69.receiver = self;
  v69.super_class = BMCameraCaptureAutoFocusROI;
  v5 = [(BMEventBase *)&v69 init];
  if (!v5)
  {
    goto LABEL_134;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_132;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v70) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v70) & 0x7F) << v7;
        if ((LOBYTE(v70) & 0x80) == 0)
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
        goto LABEL_132;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 4)
      {
        break;
      }

      if (v15 > 2)
      {
        if (v15 == 3)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v5->_hasTopLeftCornerRow = 1;
          while (1)
          {
            LOBYTE(v70) = 0;
            v46 = [fromCopy position] + 1;
            if (v46 >= [fromCopy position] && (v47 = objc_msgSend(fromCopy, "position") + 1, v47 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v45 |= (LOBYTE(v70) & 0x7F) << v43;
            if ((LOBYTE(v70) & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v13 = v44++ >= 9;
            if (v13)
            {
              v34 = 0;
              goto LABEL_114;
            }
          }

          if ([fromCopy hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v45;
          }

LABEL_114:
          v64 = 32;
        }

        else
        {
          if (v15 != 4)
          {
            goto LABEL_97;
          }

          v28 = 0;
          v29 = 0;
          v30 = 0;
          v5->_hasTopLeftCornerColumn = 1;
          while (1)
          {
            LOBYTE(v70) = 0;
            v31 = [fromCopy position] + 1;
            if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v30 |= (LOBYTE(v70) & 0x7F) << v28;
            if ((LOBYTE(v70) & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v13 = v29++ >= 9;
            if (v13)
            {
              v34 = 0;
              goto LABEL_106;
            }
          }

          if ([fromCopy hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_106:
          v64 = 36;
        }

LABEL_123:
        *(&v5->super.super.isa + v64) = v34;
        goto LABEL_131;
      }

      if (v15 != 1)
      {
        if (v15 != 2)
        {
          goto LABEL_97;
        }

        v23 = 0;
        v24 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v70) = 0;
          v25 = [fromCopy position] + 1;
          if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (LOBYTE(v70) & 0x7F) << v23;
          if ((LOBYTE(v70) & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v22 = v24++ > 8;
          if (v22)
          {
            goto LABEL_101;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 4)
        {
LABEL_101:
          LODWORD(v18) = 0;
        }

        v63 = 28;
LABEL_128:
        *(&v5->super.super.isa + v63) = v18;
        goto LABEL_131;
      }

      v41 = PBReaderReadString();
      portType = v5->_portType;
      v5->_portType = v41;

LABEL_131:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_132;
      }
    }

    if (v15 <= 6)
    {
      if (v15 == 5)
      {
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v5->_hasWidth = 1;
        while (1)
        {
          LOBYTE(v70) = 0;
          v58 = [fromCopy position] + 1;
          if (v58 >= [fromCopy position] && (v59 = objc_msgSend(fromCopy, "position") + 1, v59 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v57 |= (LOBYTE(v70) & 0x7F) << v55;
          if ((LOBYTE(v70) & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v13 = v56++ >= 9;
          if (v13)
          {
            v34 = 0;
            goto LABEL_122;
          }
        }

        if ([fromCopy hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v57;
        }

LABEL_122:
        v64 = 40;
      }

      else
      {
        if (v15 != 6)
        {
LABEL_97:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_133;
          }

          goto LABEL_131;
        }

        v35 = 0;
        v36 = 0;
        v37 = 0;
        v5->_hasHeight = 1;
        while (1)
        {
          LOBYTE(v70) = 0;
          v38 = [fromCopy position] + 1;
          if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v37 |= (LOBYTE(v70) & 0x7F) << v35;
          if ((LOBYTE(v70) & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v13 = v36++ >= 9;
          if (v13)
          {
            v34 = 0;
            goto LABEL_110;
          }
        }

        if ([fromCopy hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v37;
        }

LABEL_110:
        v64 = 44;
      }
    }

    else
    {
      if (v15 != 7)
      {
        if (v15 == 8)
        {
          v5->_hasSubjectDistance = 1;
          v70 = 0.0;
          v61 = [fromCopy position] + 4;
          if (v61 >= [fromCopy position] && (v62 = objc_msgSend(fromCopy, "position") + 4, v62 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_subjectDistance = v70;
          goto LABEL_131;
        }

        if (v15 != 9)
        {
          goto LABEL_97;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v70) = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (LOBYTE(v70) & 0x7F) << v16;
          if ((LOBYTE(v70) & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v22 = v17++ > 8;
          if (v22)
          {
            goto LABEL_126;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 0x2E)
        {
LABEL_126:
          LODWORD(v18) = 0;
        }

        v63 = 52;
        goto LABEL_128;
      }

      v49 = 0;
      v50 = 0;
      v51 = 0;
      v5->_hasLuxLevel = 1;
      while (1)
      {
        LOBYTE(v70) = 0;
        v52 = [fromCopy position] + 1;
        if (v52 >= [fromCopy position] && (v53 = objc_msgSend(fromCopy, "position") + 1, v53 <= objc_msgSend(fromCopy, "length")))
        {
          data9 = [fromCopy data];
          [data9 getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v51 |= (LOBYTE(v70) & 0x7F) << v49;
        if ((LOBYTE(v70) & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        v13 = v50++ >= 9;
        if (v13)
        {
          v34 = 0;
          goto LABEL_118;
        }
      }

      if ([fromCopy hasError])
      {
        v34 = 0;
      }

      else
      {
        v34 = v51;
      }

LABEL_118:
      v64 = 48;
    }

    goto LABEL_123;
  }

LABEL_132:
  if ([fromCopy hasError])
  {
LABEL_133:
    v67 = 0;
  }

  else
  {
LABEL_134:
    v67 = v5;
  }

  return v67;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  portType = [(BMCameraCaptureAutoFocusROI *)self portType];
  v5 = BMCameraCaptureAutoFocusROIFocusRegionTypeAsString([(BMCameraCaptureAutoFocusROI *)self focusRegionType]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMCameraCaptureAutoFocusROI topLeftCornerRow](self, "topLeftCornerRow")}];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMCameraCaptureAutoFocusROI topLeftCornerColumn](self, "topLeftCornerColumn")}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMCameraCaptureAutoFocusROI width](self, "width")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMCameraCaptureAutoFocusROI height](self, "height")}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMCameraCaptureAutoFocusROI luxLevel](self, "luxLevel")}];
  v11 = MEMORY[0x1E696AD98];
  [(BMCameraCaptureAutoFocusROI *)self subjectDistance];
  v12 = [v11 numberWithDouble:?];
  v13 = BMCameraCaptureAutoFocusROIClientApplicationIDTypeAsString([(BMCameraCaptureAutoFocusROI *)self clientApplicationIDType]);
  v14 = [v3 initWithFormat:@"BMCameraCaptureAutoFocusROI with portType: %@, focusRegionType: %@, topLeftCornerRow: %@, topLeftCornerColumn: %@, width: %@, height: %@, luxLevel: %@, subjectDistance: %@, clientApplicationIDType: %@", portType, v5, v6, v7, v8, v9, v10, v12, v13];

  return v14;
}

- (BMCameraCaptureAutoFocusROI)initWithPortType:(id)type focusRegionType:(int)regionType topLeftCornerRow:(id)row topLeftCornerColumn:(id)column width:(id)width height:(id)height luxLevel:(id)level subjectDistance:(id)self0 clientApplicationIDType:(int)self1
{
  typeCopy = type;
  rowCopy = row;
  columnCopy = column;
  widthCopy = width;
  heightCopy = height;
  levelCopy = level;
  distanceCopy = distance;
  v34.receiver = self;
  v34.super_class = BMCameraCaptureAutoFocusROI;
  v25 = [(BMEventBase *)&v34 init];
  if (v25)
  {
    v25->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v25->_portType, type);
    v25->_focusRegionType = regionType;
    if (rowCopy)
    {
      v25->_hasTopLeftCornerRow = 1;
      unsignedIntValue = [rowCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v25->_hasTopLeftCornerRow = 0;
    }

    v25->_topLeftCornerRow = unsignedIntValue;
    if (columnCopy)
    {
      v25->_hasTopLeftCornerColumn = 1;
      unsignedIntValue2 = [columnCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v25->_hasTopLeftCornerColumn = 0;
    }

    v25->_topLeftCornerColumn = unsignedIntValue2;
    if (widthCopy)
    {
      v25->_hasWidth = 1;
      unsignedIntValue3 = [widthCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue3 = 0;
      v25->_hasWidth = 0;
    }

    v25->_width = unsignedIntValue3;
    if (heightCopy)
    {
      v25->_hasHeight = 1;
      unsignedIntValue4 = [heightCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue4 = 0;
      v25->_hasHeight = 0;
    }

    v25->_height = unsignedIntValue4;
    if (levelCopy)
    {
      v25->_hasLuxLevel = 1;
      unsignedIntValue5 = [levelCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue5 = 0;
      v25->_hasLuxLevel = 0;
    }

    v25->_luxLevel = unsignedIntValue5;
    if (distanceCopy)
    {
      v25->_hasSubjectDistance = 1;
      [distanceCopy floatValue];
      v32 = v31;
    }

    else
    {
      v25->_hasSubjectDistance = 0;
      v32 = -1.0;
    }

    v25->_subjectDistance = v32;
    v25->_clientApplicationIDType = dType;
  }

  return v25;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"portType" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"focusRegionType" number:2 type:4 subMessageClass:{0, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"topLeftCornerRow" number:3 type:4 subMessageClass:0];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"topLeftCornerColumn" number:4 type:4 subMessageClass:0];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"width" number:5 type:4 subMessageClass:0];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"height" number:6 type:4 subMessageClass:0];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"luxLevel" number:7 type:4 subMessageClass:0];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subjectDistance" number:8 type:1 subMessageClass:0];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientApplicationIDType" number:9 type:4 subMessageClass:0];
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

    v8 = [[BMCameraCaptureAutoFocusROI alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end