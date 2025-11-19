@interface BMFrontBoardDisplayElementDisplay
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMFrontBoardDisplayElementDisplay)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMFrontBoardDisplayElementDisplay)initWithType:(int)a3 name:(id)a4 deviceName:(id)a5 hardwareIdentifier:(id)a6 interfaceOrientation:(int)a7 backlightStatus:(int)a8 transitionReasons:(id)a9;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_transitionReasonsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMFrontBoardDisplayElementDisplay

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMFrontBoardDisplayElementDisplay *)self type];
    if (v6 == [v5 type])
    {
      v7 = [(BMFrontBoardDisplayElementDisplay *)self name];
      v8 = [v5 name];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(BMFrontBoardDisplayElementDisplay *)self name];
        v11 = [v5 name];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_20;
        }
      }

      v14 = [(BMFrontBoardDisplayElementDisplay *)self deviceName];
      v15 = [v5 deviceName];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMFrontBoardDisplayElementDisplay *)self deviceName];
        v18 = [v5 deviceName];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_20;
        }
      }

      v20 = [(BMFrontBoardDisplayElementDisplay *)self hardwareIdentifier];
      v21 = [v5 hardwareIdentifier];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMFrontBoardDisplayElementDisplay *)self hardwareIdentifier];
        v24 = [v5 hardwareIdentifier];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_20;
        }
      }

      v26 = [(BMFrontBoardDisplayElementDisplay *)self interfaceOrientation];
      if (v26 == [v5 interfaceOrientation])
      {
        v27 = [(BMFrontBoardDisplayElementDisplay *)self backlightStatus];
        if (v27 == [v5 backlightStatus])
        {
          v28 = [(BMFrontBoardDisplayElementDisplay *)self transitionReasons];
          v29 = [v5 transitionReasons];
          if (v28 == v29)
          {
            v13 = 1;
          }

          else
          {
            v30 = [(BMFrontBoardDisplayElementDisplay *)self transitionReasons];
            v31 = [v5 transitionReasons];
            v13 = [v30 isEqual:v31];
          }

          goto LABEL_21;
        }
      }
    }

LABEL_20:
    v13 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v13 = 0;
LABEL_22:

  return v13;
}

- (id)jsonDictionary
{
  v26[7] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFrontBoardDisplayElementDisplay type](self, "type")}];
  v4 = [(BMFrontBoardDisplayElementDisplay *)self name];
  v5 = [(BMFrontBoardDisplayElementDisplay *)self deviceName];
  v6 = [(BMFrontBoardDisplayElementDisplay *)self hardwareIdentifier];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFrontBoardDisplayElementDisplay interfaceOrientation](self, "interfaceOrientation")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFrontBoardDisplayElementDisplay backlightStatus](self, "backlightStatus")}];
  v9 = [(BMFrontBoardDisplayElementDisplay *)self _transitionReasonsJSONArray];
  v25[0] = @"type";
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v10;
  v26[0] = v10;
  v25[1] = @"name";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v11;
  v26[1] = v11;
  v25[2] = @"deviceName";
  v12 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v3;
  v20 = v12;
  v26[2] = v12;
  v25[3] = @"hardwareIdentifier";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v4;
  v26[3] = v13;
  v25[4] = @"interfaceOrientation";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v14;
  v25[5] = @"backlightStatus";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = v15;
  v25[6] = @"transitionReasons";
  v16 = v9;
  if (!v9)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_17;
    }

LABEL_27:

    if (v7)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  if (!v8)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (v7)
  {
    goto LABEL_18;
  }

LABEL_28:

LABEL_18:
  if (!v6)
  {
  }

  if (v5)
  {
    if (v23)
    {
      goto LABEL_22;
    }

LABEL_30:

    if (v24)
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

  if (!v23)
  {
    goto LABEL_30;
  }

LABEL_22:
  if (v24)
  {
    goto LABEL_23;
  }

LABEL_31:

LABEL_23:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_transitionReasonsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMFrontBoardDisplayElementDisplay *)self transitionReasons];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMFrontBoardDisplayElementDisplay)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v124[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"type"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_9:
    v9 = [v5 objectForKeyedSubscript:@"name"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v31 = 0;
          v32 = 0;
          goto LABEL_65;
        }

        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = v7;
        v36 = *MEMORY[0x1E698F240];
        v121 = *MEMORY[0x1E696A578];
        v37 = v9;
        v38 = objc_alloc(MEMORY[0x1E696AEC0]);
        v83 = objc_opt_class();
        v39 = v38;
        v9 = v37;
        v40 = [v39 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v83, @"name"];
        v122 = v40;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
        v42 = v34;
        v10 = v41;
        v43 = v36;
        v7 = v35;
        v31 = 0;
        v32 = 0;
        *a4 = [v42 initWithDomain:v43 code:2 userInfo:v41];
        goto LABEL_64;
      }

      v98 = v9;
    }

    else
    {
      v98 = 0;
    }

    v10 = [v5 objectForKeyedSubscript:@"deviceName"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v40 = 0;
          v32 = 0;
          v31 = v98;
          goto LABEL_64;
        }

        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v49 = v7;
        v50 = *MEMORY[0x1E698F240];
        v119 = *MEMORY[0x1E696A578];
        v51 = v9;
        v52 = objc_alloc(MEMORY[0x1E696AEC0]);
        v84 = objc_opt_class();
        v53 = v52;
        v9 = v51;
        v99 = [v53 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v84, @"deviceName"];
        v120 = v99;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
        v54 = v50;
        v7 = v49;
        v55 = [v48 initWithDomain:v54 code:2 userInfo:v33];
        v100 = 0;
        v32 = 0;
        *a4 = v55;
        v31 = v98;
LABEL_63:

        v40 = v100;
LABEL_64:

        goto LABEL_65;
      }

      v11 = self;
      v12 = v10;
    }

    else
    {
      v11 = self;
      v12 = 0;
    }

    v13 = [v5 objectForKeyedSubscript:@"hardwareIdentifier"];
    v95 = v11;
    v97 = v10;
    v100 = v12;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v99 = 0;
          v32 = 0;
          v31 = v98;
          v33 = v13;
          self = v95;
          goto LABEL_63;
        }

        v59 = objc_alloc(MEMORY[0x1E696ABC0]);
        v60 = v7;
        v61 = *MEMORY[0x1E698F240];
        v117 = *MEMORY[0x1E696A578];
        v62 = v9;
        v63 = objc_alloc(MEMORY[0x1E696AEC0]);
        v85 = objc_opt_class();
        v64 = v63;
        v9 = v62;
        v65 = [v64 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v85, @"hardwareIdentifier"];
        v118 = v65;
        v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
        v67 = v59;
        v16 = v65;
        v68 = v61;
        v7 = v60;
        v33 = v13;
        v96 = v66;
        v99 = 0;
        v32 = 0;
        *a4 = [v67 initWithDomain:v68 code:2 userInfo:?];
        v31 = v98;
        self = v95;
        goto LABEL_62;
      }

      v93 = v13;
      v99 = v13;
      self = v11;
    }

    else
    {
      v93 = v13;
      v99 = 0;
      self = v11;
    }

    v14 = [v5 objectForKeyedSubscript:@"interfaceOrientation"];
    v94 = v7;
    v96 = v14;
    if (v14 && (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v16 = 0;
            v32 = 0;
            v31 = v98;
            v33 = v93;
            goto LABEL_62;
          }

          v75 = objc_alloc(MEMORY[0x1E696ABC0]);
          v76 = v9;
          v77 = *MEMORY[0x1E698F240];
          v115 = *MEMORY[0x1E696A578];
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"interfaceOrientation"];
          v116 = v30;
          v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
          v79 = v77;
          v9 = v76;
          v92 = v78;
          v16 = 0;
          v32 = 0;
          *a4 = [v75 initWithDomain:v79 code:2 userInfo:?];
          goto LABEL_88;
        }

        v16 = [MEMORY[0x1E696AD98] numberWithInt:BMFrontBoardDisplayElementDisplayInterfaceOrientationFromString(v15)];
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = [v5 objectForKeyedSubscript:@"backlightStatus"];
    v90 = v6;
    v91 = v9;
    v92 = v17;
    if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v89 = 0;
LABEL_24:
      v19 = [v5 objectForKeyedSubscript:@"transitionReasons"];
      v20 = [MEMORY[0x1E695DFB0] null];
      v21 = [v19 isEqual:v20];

      if (v21)
      {

        v19 = 0;
LABEL_32:
        v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v19, "count")}];
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v19 = v19;
        v23 = [v19 countByEnumeratingWithState:&v102 objects:v110 count:16];
        if (!v23)
        {
          goto LABEL_41;
        }

        v24 = v23;
        v25 = *v103;
        v88 = v5;
LABEL_34:
        v26 = v16;
        v27 = v12;
        v28 = 0;
        while (1)
        {
          if (*v103 != v25)
          {
            objc_enumerationMutation(v19);
          }

          v29 = *(*(&v102 + 1) + 8 * v28);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v31 = v98;
            v33 = v93;
            v16 = v26;
            v5 = v88;
            v30 = v89;
            if (a4)
            {
              v87 = objc_alloc(MEMORY[0x1E696ABC0]);
              v86 = *MEMORY[0x1E698F240];
              v106 = *MEMORY[0x1E696A578];
              v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"transitionReasons"];
              v107 = v44;
              v45 = MEMORY[0x1E695DF20];
              v46 = &v107;
              v47 = &v106;
LABEL_57:
              v56 = [v45 dictionaryWithObjects:v46 forKeys:v47 count:1];
              *a4 = [v87 initWithDomain:v86 code:2 userInfo:v56];
            }

            goto LABEL_58;
          }

          [v22 addObject:v29];
          if (v24 == ++v28)
          {
            v24 = [v19 countByEnumeratingWithState:&v102 objects:v110 count:16];
            v12 = v27;
            v16 = v26;
            v5 = v88;
            if (v24)
            {
              goto LABEL_34;
            }

LABEL_41:

            v30 = v89;
            v31 = v98;
            self = -[BMFrontBoardDisplayElementDisplay initWithType:name:deviceName:hardwareIdentifier:interfaceOrientation:backlightStatus:transitionReasons:](v95, "initWithType:name:deviceName:hardwareIdentifier:interfaceOrientation:backlightStatus:transitionReasons:", [v94 intValue], v98, v12, v99, objc_msgSend(v16, "intValue"), objc_msgSend(v89, "intValue"), v22);
            v32 = self;
LABEL_42:
            v33 = v93;
LABEL_59:

            v6 = v90;
            goto LABEL_60;
          }
        }

        v31 = v98;
        v33 = v93;
        v16 = v26;
        v5 = v88;
        v30 = v89;
        if (a4)
        {
          v87 = objc_alloc(MEMORY[0x1E696ABC0]);
          v86 = *MEMORY[0x1E698F240];
          v108 = *MEMORY[0x1E696A578];
          v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"transitionReasons"];
          v109 = v44;
          v45 = MEMORY[0x1E695DF20];
          v46 = &v109;
          v47 = &v108;
          goto LABEL_57;
        }

LABEL_58:

        v32 = 0;
        self = v95;
        goto LABEL_59;
      }

      if (!v19)
      {
        goto LABEL_32;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_32;
      }

      if (a4)
      {
        v72 = objc_alloc(MEMORY[0x1E696ABC0]);
        v73 = *MEMORY[0x1E698F240];
        v111 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"transitionReasons"];
        v112 = v22;
        v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
        *a4 = [v72 initWithDomain:v73 code:2 userInfo:v74];

        v32 = 0;
        v31 = v98;
        v33 = v93;
        v30 = v89;
        goto LABEL_59;
      }

      v32 = 0;
      v31 = v98;
      v33 = v93;
      v30 = v89;
LABEL_60:

      v9 = v91;
      goto LABEL_61;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v89 = v18;
      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v89 = [MEMORY[0x1E696AD98] numberWithInt:BMFrontBoardDisplayElementDisplayBacklightStatusFromString(v18)];
      goto LABEL_24;
    }

    if (a4)
    {
      v80 = objc_alloc(MEMORY[0x1E696ABC0]);
      v81 = *MEMORY[0x1E698F240];
      v113 = *MEMORY[0x1E696A578];
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"backlightStatus"];
      v114 = v19;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
      v82 = [v80 initWithDomain:v81 code:2 userInfo:v22];
      v30 = 0;
      v32 = 0;
      *a4 = v82;
      v31 = v98;
      goto LABEL_42;
    }

    v30 = 0;
    v32 = 0;
LABEL_88:
    v31 = v98;
    v33 = v93;
LABEL_61:

    v7 = v94;
LABEL_62:

    v10 = v97;
    goto LABEL_63;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
LABEL_8:
    v7 = v8;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{bsearch_b(v6, BMFrontBoardDisplayElementDisplayTypeFromString_sortedStrings, 1uLL, 8uLL, &__block_literal_global_59494) != 0}];
    goto LABEL_8;
  }

  if (!a4)
  {
    v7 = 0;
    v32 = 0;
    goto LABEL_66;
  }

  v69 = objc_alloc(MEMORY[0x1E696ABC0]);
  v70 = *MEMORY[0x1E698F240];
  v123 = *MEMORY[0x1E696A578];
  v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
  v124[0] = v31;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v124 forKeys:&v123 count:1];
  v71 = [v69 initWithDomain:v70 code:2 userInfo:v9];
  v7 = 0;
  v32 = 0;
  *a4 = v71;
LABEL_65:

LABEL_66:
  v57 = *MEMORY[0x1E69E9840];
  return v32;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFrontBoardDisplayElementDisplay *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  type = self->_type;
  PBDataWriterWriteUint32Field();
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hardwareIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  interfaceOrientation = self->_interfaceOrientation;
  PBDataWriterWriteUint32Field();
  backlightStatus = self->_backlightStatus;
  PBDataWriterWriteUint32Field();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_transitionReasons;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        PBDataWriterWriteStringField();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = BMFrontBoardDisplayElementDisplay;
  v5 = [(BMEventBase *)&v46 init];
  if (!v5)
  {
    goto LABEL_78;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_76;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v47 = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v47 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v47 & 0x7F) << v8;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_76;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 3)
      {
        switch(v16)
        {
          case 1:
            v31 = 0;
            v32 = 0;
            v19 = 0;
            while (1)
            {
              v47 = 0;
              v33 = [v4 position] + 1;
              if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
              {
                v35 = [v4 data];
                [v35 getBytes:&v47 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v19 |= (v47 & 0x7F) << v31;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v23 = v32++ > 8;
              if (v23)
              {
                goto LABEL_64;
              }
            }

            if (([v4 hasError] & 1) != 0 || v19 > 1)
            {
LABEL_64:
              LODWORD(v19) = 0;
            }

            v39 = 20;
            goto LABEL_74;
          case 2:
            v24 = PBReaderReadString();
            v25 = 32;
            goto LABEL_61;
          case 3:
            v24 = PBReaderReadString();
            v25 = 40;
LABEL_61:
            v38 = *(&v5->super.super.isa + v25);
            *(&v5->super.super.isa + v25) = v24;

            goto LABEL_75;
        }

        goto LABEL_55;
      }

      if (v16 <= 5)
      {
        break;
      }

      if (v16 != 7)
      {
        if (v16 == 6)
        {
          v26 = 0;
          v27 = 0;
          v19 = 0;
          while (1)
          {
            v47 = 0;
            v28 = [v4 position] + 1;
            if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
            {
              v30 = [v4 data];
              [v30 getBytes:&v47 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v19 |= (v47 & 0x7F) << v26;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v23 = v27++ > 8;
            if (v23)
            {
              goto LABEL_72;
            }
          }

          if (([v4 hasError] & 1) != 0 || v19 > 2)
          {
LABEL_72:
            LODWORD(v19) = 0;
          }

          v39 = 28;
          goto LABEL_74;
        }

LABEL_55:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_80;
        }

        goto LABEL_75;
      }

      v36 = PBReaderReadString();
      if (!v36)
      {
LABEL_80:

        goto LABEL_77;
      }

      v37 = v36;
      [v6 addObject:v36];

LABEL_75:
      v40 = [v4 position];
      if (v40 >= [v4 length])
      {
        goto LABEL_76;
      }
    }

    if (v16 == 4)
    {
      v24 = PBReaderReadString();
      v25 = 48;
      goto LABEL_61;
    }

    if (v16 == 5)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v47 = 0;
        v20 = [v4 position] + 1;
        if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
        {
          v22 = [v4 data];
          [v22 getBytes:&v47 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v19 |= (v47 & 0x7F) << v17;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v23 = v18++ > 8;
        if (v23)
        {
          goto LABEL_68;
        }
      }

      if (([v4 hasError] & 1) != 0 || v19 > 4)
      {
LABEL_68:
        LODWORD(v19) = 0;
      }

      v39 = 24;
LABEL_74:
      *(&v5->super.super.isa + v39) = v19;
      goto LABEL_75;
    }

    goto LABEL_55;
  }

LABEL_76:
  v41 = [v6 copy];
  transitionReasons = v5->_transitionReasons;
  v5->_transitionReasons = v41;

  v43 = [v4 hasError];
  if (v43)
  {
LABEL_77:
    v44 = 0;
  }

  else
  {
LABEL_78:
    v44 = v5;
  }

  return v44;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMFrontBoardDisplayElementDisplayTypeAsString([(BMFrontBoardDisplayElementDisplay *)self type]);
  v5 = [(BMFrontBoardDisplayElementDisplay *)self name];
  v6 = [(BMFrontBoardDisplayElementDisplay *)self deviceName];
  v7 = [(BMFrontBoardDisplayElementDisplay *)self hardwareIdentifier];
  v8 = BMFrontBoardDisplayElementDisplayInterfaceOrientationAsString([(BMFrontBoardDisplayElementDisplay *)self interfaceOrientation]);
  v9 = BMFrontBoardDisplayElementDisplayBacklightStatusAsString([(BMFrontBoardDisplayElementDisplay *)self backlightStatus]);
  v10 = [(BMFrontBoardDisplayElementDisplay *)self transitionReasons];
  v11 = [v3 initWithFormat:@"BMFrontBoardDisplayElementDisplay with type: %@, name: %@, deviceName: %@, hardwareIdentifier: %@, interfaceOrientation: %@, backlightStatus: %@, transitionReasons: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BMFrontBoardDisplayElementDisplay)initWithType:(int)a3 name:(id)a4 deviceName:(id)a5 hardwareIdentifier:(id)a6 interfaceOrientation:(int)a7 backlightStatus:(int)a8 transitionReasons:(id)a9
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a9;
  v22.receiver = self;
  v22.super_class = BMFrontBoardDisplayElementDisplay;
  v18 = [(BMEventBase *)&v22 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    v18->_type = a3;
    objc_storeStrong(&v18->_name, a4);
    objc_storeStrong(&v18->_deviceName, a5);
    objc_storeStrong(&v18->_hardwareIdentifier, a6);
    v18->_interfaceOrientation = a7;
    v18->_backlightStatus = a8;
    objc_storeStrong(&v18->_transitionReasons, a9);
  }

  return v18;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:2 type:13 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceName" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hardwareIdentifier" number:4 type:13 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interfaceOrientation" number:5 type:4 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"backlightStatus" number:6 type:4 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transitionReasons" number:7 type:13 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceName" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hardwareIdentifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"interfaceOrientation" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"backlightStatus" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"transitionReasons_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_107_59564];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __44__BMFrontBoardDisplayElementDisplay_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _transitionReasonsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMFrontBoardDisplayElementDisplay alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end