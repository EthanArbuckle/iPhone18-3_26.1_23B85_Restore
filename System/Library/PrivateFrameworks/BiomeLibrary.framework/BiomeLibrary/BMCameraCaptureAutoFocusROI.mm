@interface BMCameraCaptureAutoFocusROI
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMCameraCaptureAutoFocusROI)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMCameraCaptureAutoFocusROI)initWithPortType:(id)a3 focusRegionType:(int)a4 topLeftCornerRow:(id)a5 topLeftCornerColumn:(id)a6 width:(id)a7 height:(id)a8 luxLevel:(id)a9 subjectDistance:(id)a10 clientApplicationIDType:(int)a11;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMCameraCaptureAutoFocusROI *)self portType];
    v7 = [v5 portType];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMCameraCaptureAutoFocusROI *)self portType];
      v10 = [v5 portType];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_39;
      }
    }

    v13 = [(BMCameraCaptureAutoFocusROI *)self focusRegionType];
    if (v13 == [v5 focusRegionType])
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
                  v22 = [(BMCameraCaptureAutoFocusROI *)self clientApplicationIDType];
                  v12 = v22 == [v5 clientApplicationIDType];
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
  v3 = [(BMCameraCaptureAutoFocusROI *)self portType];
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
  v12 = v3;
  if (!v3)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v12;
  v36[0] = v12;
  v35[1] = @"focusRegionType";
  v13 = v4;
  if (!v4)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v13;
  v36[1] = v13;
  v35[2] = @"topLeftCornerRow";
  v14 = v5;
  if (!v5)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v3;
  v27 = v14;
  v36[2] = v14;
  v35[3] = @"topLeftCornerColumn";
  v15 = v6;
  if (!v6)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v4;
  v26 = v15;
  v36[3] = v15;
  v35[4] = @"width";
  v16 = v7;
  if (!v7)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v5;
  v36[4] = v16;
  v35[5] = @"height";
  v17 = v34;
  if (!v34)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v6;
  v36[5] = v17;
  v35[6] = @"luxLevel";
  v19 = v33;
  if (!v33)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v7;
  v36[6] = v19;
  v35[7] = @"subjectDistance";
  v21 = v10;
  if (!v10)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v36[7] = v21;
  v35[8] = @"clientApplicationIDType";
  v22 = v11;
  if (!v11)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v36[8] = v22;
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

- (BMCameraCaptureAutoFocusROI)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v115[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"portType"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"focusRegionType"];
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
          if (!a4)
          {
            v10 = 0;
            a4 = 0;
            goto LABEL_79;
          }

          v59 = a4;
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
          a4 = 0;
          *v59 = v64;
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

    v16 = [v6 objectForKeyedSubscript:@"topLeftCornerRow"];
    v89 = a4;
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
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
        a4 = 0;
        *v89 = v33;
LABEL_77:

        goto LABEL_78;
      }

      v96 = v8;
      v17 = self;
      v94 = v16;
    }

    else
    {
      v96 = v8;
      v17 = self;
      v94 = 0;
    }

    v18 = [v6 objectForKeyedSubscript:@"topLeftCornerColumn"];
    v90 = v16;
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v95 = 0;
          v34 = v94;
          v32 = v18;
          self = v17;
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
        a4 = 0;
        *v89 = v42;
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

    v19 = [v6 objectForKeyedSubscript:@"width"];
    v91 = v19;
    if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v93 = 0;
LABEL_25:
      v21 = [v6 objectForKeyedSubscript:@"height"];
      self = v17;
      v88 = v10;
      if (v21 && (objc_opt_class(), v8 = v96, (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v92 = 0;
            a4 = 0;
            v32 = v85;
            goto LABEL_75;
          }

          v52 = objc_alloc(MEMORY[0x1E696ABC0]);
          v53 = *MEMORY[0x1E698F240];
          v104 = *MEMORY[0x1E696A578];
          v54 = self;
          v55 = objc_alloc(MEMORY[0x1E696AEC0]);
          v79 = objc_opt_class();
          v56 = v55;
          self = v54;
          v86 = [v56 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v79, @"height"];
          v105 = v86;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
          v57 = v52;
          v16 = v90;
          v58 = v53;
          v10 = v88;
          v92 = 0;
          a4 = 0;
          *v89 = [v57 initWithDomain:v58 code:2 userInfo:v22];
          goto LABEL_73;
        }

        v92 = v21;
      }

      else
      {
        v92 = 0;
      }

      v22 = [v6 objectForKeyedSubscript:@"luxLevel"];
      v84 = v7;
      if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v86 = 0;
            a4 = 0;
            goto LABEL_73;
          }

          v65 = self;
          v66 = objc_alloc(MEMORY[0x1E696ABC0]);
          v87 = *MEMORY[0x1E698F240];
          v102 = *MEMORY[0x1E696A578];
          v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"luxLevel"];
          v103 = v25;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
          v67 = v66;
          self = v65;
          v7 = v84;
          v68 = [v67 initWithDomain:v87 code:2 userInfo:v23];
          v86 = 0;
          a4 = 0;
          *v89 = v68;
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

      v23 = [v6 objectForKeyedSubscript:@"subjectDistance"];
      if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v25 = 0;
            a4 = 0;
            goto LABEL_72;
          }

          v24 = self;
          v82 = objc_alloc(MEMORY[0x1E696ABC0]);
          v69 = *MEMORY[0x1E698F240];
          v100 = *MEMORY[0x1E696A578];
          v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"subjectDistance"];
          v101 = v27;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
          v70 = [v82 initWithDomain:v69 code:2 userInfo:v26];
          v25 = 0;
          a4 = 0;
          *v89 = v70;
          goto LABEL_71;
        }

        v24 = self;
        v25 = v23;
      }

      else
      {
        v24 = self;
        v25 = 0;
      }

      v26 = [v6 objectForKeyedSubscript:@"clientApplicationIDType"];
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
            if (a4)
            {
              v83 = objc_alloc(MEMORY[0x1E696ABC0]);
              v81 = *MEMORY[0x1E698F240];
              v98 = *MEMORY[0x1E696A578];
              v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"clientApplicationIDType"];
              v99 = v74;
              v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
              *v89 = [v83 initWithDomain:v81 code:2 userInfo:v75];
            }

            v27 = 0;
            a4 = 0;
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

      v71 = [v88 intValue];
      LODWORD(v80) = [v27 intValue];
      a4 = [(BMCameraCaptureAutoFocusROI *)v24 initWithPortType:v96 focusRegionType:v71 topLeftCornerRow:v94 topLeftCornerColumn:v95 width:v93 height:v92 luxLevel:v86 subjectDistance:v25 clientApplicationIDType:v80];
      v24 = a4;
LABEL_71:

      self = v24;
      v7 = v84;
      goto LABEL_72;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v93 = v20;
      goto LABEL_25;
    }

    if (a4)
    {
      v44 = a4;
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
      a4 = 0;
      *v44 = v51;
      v32 = v85;
      self = v17;
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
    self = v17;
    v8 = v96;
    goto LABEL_76;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (a4)
  {
    v12 = a4;
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = *MEMORY[0x1E698F240];
    v114 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"portType"];
    v115[0] = v10;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v115 forKeys:&v114 count:1];
    v15 = [v13 initWithDomain:v14 code:2 userInfo:v9];
    v8 = 0;
    a4 = 0;
    *v12 = v15;
LABEL_79:

    goto LABEL_80;
  }

  v8 = 0;
LABEL_80:

  v72 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMCameraCaptureAutoFocusROI *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v69.receiver = self;
  v69.super_class = BMCameraCaptureAutoFocusROI;
  v5 = [(BMEventBase *)&v69 init];
  if (!v5)
  {
    goto LABEL_134;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_132;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v70) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v70 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
            v46 = [v4 position] + 1;
            if (v46 >= [v4 position] && (v47 = objc_msgSend(v4, "position") + 1, v47 <= objc_msgSend(v4, "length")))
            {
              v48 = [v4 data];
              [v48 getBytes:&v70 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
            v31 = [v4 position] + 1;
            if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 1, v32 <= objc_msgSend(v4, "length")))
            {
              v33 = [v4 data];
              [v33 getBytes:&v70 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
          v25 = [v4 position] + 1;
          if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 1, v26 <= objc_msgSend(v4, "length")))
          {
            v27 = [v4 data];
            [v27 getBytes:&v70 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if (([v4 hasError] & 1) != 0 || v18 > 4)
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
      v66 = [v4 position];
      if (v66 >= [v4 length])
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
          v58 = [v4 position] + 1;
          if (v58 >= [v4 position] && (v59 = objc_msgSend(v4, "position") + 1, v59 <= objc_msgSend(v4, "length")))
          {
            v60 = [v4 data];
            [v60 getBytes:&v70 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if ([v4 hasError])
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
          v38 = [v4 position] + 1;
          if (v38 >= [v4 position] && (v39 = objc_msgSend(v4, "position") + 1, v39 <= objc_msgSend(v4, "length")))
          {
            v40 = [v4 data];
            [v40 getBytes:&v70 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if ([v4 hasError])
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
          v61 = [v4 position] + 4;
          if (v61 >= [v4 position] && (v62 = objc_msgSend(v4, "position") + 4, v62 <= objc_msgSend(v4, "length")))
          {
            v65 = [v4 data];
            [v65 getBytes:&v70 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
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
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v70 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if (([v4 hasError] & 1) != 0 || v18 > 0x2E)
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
        v52 = [v4 position] + 1;
        if (v52 >= [v4 position] && (v53 = objc_msgSend(v4, "position") + 1, v53 <= objc_msgSend(v4, "length")))
        {
          v54 = [v4 data];
          [v54 getBytes:&v70 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      if ([v4 hasError])
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
  if ([v4 hasError])
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
  v4 = [(BMCameraCaptureAutoFocusROI *)self portType];
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
  v14 = [v3 initWithFormat:@"BMCameraCaptureAutoFocusROI with portType: %@, focusRegionType: %@, topLeftCornerRow: %@, topLeftCornerColumn: %@, width: %@, height: %@, luxLevel: %@, subjectDistance: %@, clientApplicationIDType: %@", v4, v5, v6, v7, v8, v9, v10, v12, v13];

  return v14;
}

- (BMCameraCaptureAutoFocusROI)initWithPortType:(id)a3 focusRegionType:(int)a4 topLeftCornerRow:(id)a5 topLeftCornerColumn:(id)a6 width:(id)a7 height:(id)a8 luxLevel:(id)a9 subjectDistance:(id)a10 clientApplicationIDType:(int)a11
{
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v34.receiver = self;
  v34.super_class = BMCameraCaptureAutoFocusROI;
  v25 = [(BMEventBase *)&v34 init];
  if (v25)
  {
    v25->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v25->_portType, a3);
    v25->_focusRegionType = a4;
    if (v19)
    {
      v25->_hasTopLeftCornerRow = 1;
      v26 = [v19 unsignedIntValue];
    }

    else
    {
      v26 = 0;
      v25->_hasTopLeftCornerRow = 0;
    }

    v25->_topLeftCornerRow = v26;
    if (v20)
    {
      v25->_hasTopLeftCornerColumn = 1;
      v27 = [v20 unsignedIntValue];
    }

    else
    {
      v27 = 0;
      v25->_hasTopLeftCornerColumn = 0;
    }

    v25->_topLeftCornerColumn = v27;
    if (v21)
    {
      v25->_hasWidth = 1;
      v28 = [v21 unsignedIntValue];
    }

    else
    {
      v28 = 0;
      v25->_hasWidth = 0;
    }

    v25->_width = v28;
    if (v22)
    {
      v25->_hasHeight = 1;
      v29 = [v22 unsignedIntValue];
    }

    else
    {
      v29 = 0;
      v25->_hasHeight = 0;
    }

    v25->_height = v29;
    if (v23)
    {
      v25->_hasLuxLevel = 1;
      v30 = [v23 unsignedIntValue];
    }

    else
    {
      v30 = 0;
      v25->_hasLuxLevel = 0;
    }

    v25->_luxLevel = v30;
    if (v24)
    {
      v25->_hasSubjectDistance = 1;
      [v24 floatValue];
      v32 = v31;
    }

    else
    {
      v25->_hasSubjectDistance = 0;
      v32 = -1.0;
    }

    v25->_subjectDistance = v32;
    v25->_clientApplicationIDType = a11;
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