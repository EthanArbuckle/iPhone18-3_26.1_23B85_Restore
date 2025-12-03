@interface BMFrontBoardDisplayElementDisplay
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMFrontBoardDisplayElementDisplay)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMFrontBoardDisplayElementDisplay)initWithType:(int)type name:(id)name deviceName:(id)deviceName hardwareIdentifier:(id)identifier interfaceOrientation:(int)orientation backlightStatus:(int)status transitionReasons:(id)reasons;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_transitionReasonsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMFrontBoardDisplayElementDisplay

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = [(BMFrontBoardDisplayElementDisplay *)self type];
    if (type == [v5 type])
    {
      name = [(BMFrontBoardDisplayElementDisplay *)self name];
      name2 = [v5 name];
      v9 = name2;
      if (name == name2)
      {
      }

      else
      {
        name3 = [(BMFrontBoardDisplayElementDisplay *)self name];
        name4 = [v5 name];
        v12 = [name3 isEqual:name4];

        if (!v12)
        {
          goto LABEL_20;
        }
      }

      deviceName = [(BMFrontBoardDisplayElementDisplay *)self deviceName];
      deviceName2 = [v5 deviceName];
      v16 = deviceName2;
      if (deviceName == deviceName2)
      {
      }

      else
      {
        deviceName3 = [(BMFrontBoardDisplayElementDisplay *)self deviceName];
        deviceName4 = [v5 deviceName];
        v19 = [deviceName3 isEqual:deviceName4];

        if (!v19)
        {
          goto LABEL_20;
        }
      }

      hardwareIdentifier = [(BMFrontBoardDisplayElementDisplay *)self hardwareIdentifier];
      hardwareIdentifier2 = [v5 hardwareIdentifier];
      v22 = hardwareIdentifier2;
      if (hardwareIdentifier == hardwareIdentifier2)
      {
      }

      else
      {
        hardwareIdentifier3 = [(BMFrontBoardDisplayElementDisplay *)self hardwareIdentifier];
        hardwareIdentifier4 = [v5 hardwareIdentifier];
        v25 = [hardwareIdentifier3 isEqual:hardwareIdentifier4];

        if (!v25)
        {
          goto LABEL_20;
        }
      }

      interfaceOrientation = [(BMFrontBoardDisplayElementDisplay *)self interfaceOrientation];
      if (interfaceOrientation == [v5 interfaceOrientation])
      {
        backlightStatus = [(BMFrontBoardDisplayElementDisplay *)self backlightStatus];
        if (backlightStatus == [v5 backlightStatus])
        {
          transitionReasons = [(BMFrontBoardDisplayElementDisplay *)self transitionReasons];
          transitionReasons2 = [v5 transitionReasons];
          if (transitionReasons == transitionReasons2)
          {
            v13 = 1;
          }

          else
          {
            transitionReasons3 = [(BMFrontBoardDisplayElementDisplay *)self transitionReasons];
            transitionReasons4 = [v5 transitionReasons];
            v13 = [transitionReasons3 isEqual:transitionReasons4];
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
  name = [(BMFrontBoardDisplayElementDisplay *)self name];
  deviceName = [(BMFrontBoardDisplayElementDisplay *)self deviceName];
  hardwareIdentifier = [(BMFrontBoardDisplayElementDisplay *)self hardwareIdentifier];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFrontBoardDisplayElementDisplay interfaceOrientation](self, "interfaceOrientation")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFrontBoardDisplayElementDisplay backlightStatus](self, "backlightStatus")}];
  _transitionReasonsJSONArray = [(BMFrontBoardDisplayElementDisplay *)self _transitionReasonsJSONArray];
  v25[0] = @"type";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null;
  v26[0] = null;
  v25[1] = @"name";
  null2 = name;
  if (!name)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null2;
  v26[1] = null2;
  v25[2] = @"deviceName";
  null3 = deviceName;
  if (!deviceName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v3;
  v20 = null3;
  v26[2] = null3;
  v25[3] = @"hardwareIdentifier";
  null4 = hardwareIdentifier;
  if (!hardwareIdentifier)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = name;
  v26[3] = null4;
  v25[4] = @"interfaceOrientation";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v25[5] = @"backlightStatus";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null6;
  v25[6] = @"transitionReasons";
  null7 = _transitionReasonsJSONArray;
  if (!_transitionReasonsJSONArray)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = null7;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (_transitionReasonsJSONArray)
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
  if (!hardwareIdentifier)
  {
  }

  if (deviceName)
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
  transitionReasons = [(BMFrontBoardDisplayElementDisplay *)self transitionReasons];
  v5 = [transitionReasons countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(transitionReasons);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [transitionReasons countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMFrontBoardDisplayElementDisplay)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v124[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_9:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v31 = 0;
          selfCopy3 = 0;
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
        selfCopy3 = 0;
        *error = [v42 initWithDomain:v43 code:2 userInfo:v41];
        goto LABEL_64;
      }

      v98 = v9;
    }

    else
    {
      v98 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"deviceName"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v40 = 0;
          selfCopy3 = 0;
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
        selfCopy3 = 0;
        *error = v55;
        v31 = v98;
LABEL_63:

        v40 = v100;
LABEL_64:

        goto LABEL_65;
      }

      selfCopy2 = self;
      v12 = v10;
    }

    else
    {
      selfCopy2 = self;
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"hardwareIdentifier"];
    v95 = selfCopy2;
    v97 = v10;
    v100 = v12;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v99 = 0;
          selfCopy3 = 0;
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
        selfCopy3 = 0;
        *error = [v67 initWithDomain:v68 code:2 userInfo:?];
        v31 = v98;
        self = v95;
        goto LABEL_62;
      }

      v93 = v13;
      v99 = v13;
      self = selfCopy2;
    }

    else
    {
      v93 = v13;
      v99 = 0;
      self = selfCopy2;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"interfaceOrientation"];
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
          if (!error)
          {
            v16 = 0;
            selfCopy3 = 0;
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
          selfCopy3 = 0;
          *error = [v75 initWithDomain:v79 code:2 userInfo:?];
          goto LABEL_88;
        }

        v16 = [MEMORY[0x1E696AD98] numberWithInt:BMFrontBoardDisplayElementDisplayInterfaceOrientationFromString(v15)];
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"backlightStatus"];
    v90 = v6;
    v91 = v9;
    v92 = v17;
    if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v89 = 0;
LABEL_24:
      v19 = [dictionaryCopy objectForKeyedSubscript:@"transitionReasons"];
      null = [MEMORY[0x1E695DFB0] null];
      v21 = [v19 isEqual:null];

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
        v88 = dictionaryCopy;
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
            dictionaryCopy = v88;
            v30 = v89;
            if (error)
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
              *error = [v87 initWithDomain:v86 code:2 userInfo:v56];
            }

            goto LABEL_58;
          }

          [v22 addObject:v29];
          if (v24 == ++v28)
          {
            v24 = [v19 countByEnumeratingWithState:&v102 objects:v110 count:16];
            v12 = v27;
            v16 = v26;
            dictionaryCopy = v88;
            if (v24)
            {
              goto LABEL_34;
            }

LABEL_41:

            v30 = v89;
            v31 = v98;
            self = -[BMFrontBoardDisplayElementDisplay initWithType:name:deviceName:hardwareIdentifier:interfaceOrientation:backlightStatus:transitionReasons:](v95, "initWithType:name:deviceName:hardwareIdentifier:interfaceOrientation:backlightStatus:transitionReasons:", [v94 intValue], v98, v12, v99, objc_msgSend(v16, "intValue"), objc_msgSend(v89, "intValue"), v22);
            selfCopy3 = self;
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
        dictionaryCopy = v88;
        v30 = v89;
        if (error)
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

        selfCopy3 = 0;
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

      if (error)
      {
        v72 = objc_alloc(MEMORY[0x1E696ABC0]);
        v73 = *MEMORY[0x1E698F240];
        v111 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"transitionReasons"];
        v112 = v22;
        v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
        *error = [v72 initWithDomain:v73 code:2 userInfo:v74];

        selfCopy3 = 0;
        v31 = v98;
        v33 = v93;
        v30 = v89;
        goto LABEL_59;
      }

      selfCopy3 = 0;
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

    if (error)
    {
      v80 = objc_alloc(MEMORY[0x1E696ABC0]);
      v81 = *MEMORY[0x1E698F240];
      v113 = *MEMORY[0x1E696A578];
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"backlightStatus"];
      v114 = v19;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
      v82 = [v80 initWithDomain:v81 code:2 userInfo:v22];
      v30 = 0;
      selfCopy3 = 0;
      *error = v82;
      v31 = v98;
      goto LABEL_42;
    }

    v30 = 0;
    selfCopy3 = 0;
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

  if (!error)
  {
    v7 = 0;
    selfCopy3 = 0;
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
  selfCopy3 = 0;
  *error = v71;
LABEL_65:

LABEL_66:
  v57 = *MEMORY[0x1E69E9840];
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFrontBoardDisplayElementDisplay *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v46.receiver = self;
  v46.super_class = BMFrontBoardDisplayElementDisplay;
  v5 = [(BMEventBase *)&v46 init];
  if (!v5)
  {
    goto LABEL_78;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_76;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v47 = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
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
              v33 = [fromCopy position] + 1;
              if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if (([fromCopy hasError] & 1) != 0 || v19 > 1)
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
            v28 = [fromCopy position] + 1;
            if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if (([fromCopy hasError] & 1) != 0 || v19 > 2)
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
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
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
        v20 = [fromCopy position] + 1;
        if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      if (([fromCopy hasError] & 1) != 0 || v19 > 4)
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

  hasError = [fromCopy hasError];
  if (hasError)
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
  name = [(BMFrontBoardDisplayElementDisplay *)self name];
  deviceName = [(BMFrontBoardDisplayElementDisplay *)self deviceName];
  hardwareIdentifier = [(BMFrontBoardDisplayElementDisplay *)self hardwareIdentifier];
  v8 = BMFrontBoardDisplayElementDisplayInterfaceOrientationAsString([(BMFrontBoardDisplayElementDisplay *)self interfaceOrientation]);
  v9 = BMFrontBoardDisplayElementDisplayBacklightStatusAsString([(BMFrontBoardDisplayElementDisplay *)self backlightStatus]);
  transitionReasons = [(BMFrontBoardDisplayElementDisplay *)self transitionReasons];
  v11 = [v3 initWithFormat:@"BMFrontBoardDisplayElementDisplay with type: %@, name: %@, deviceName: %@, hardwareIdentifier: %@, interfaceOrientation: %@, backlightStatus: %@, transitionReasons: %@", v4, name, deviceName, hardwareIdentifier, v8, v9, transitionReasons];

  return v11;
}

- (BMFrontBoardDisplayElementDisplay)initWithType:(int)type name:(id)name deviceName:(id)deviceName hardwareIdentifier:(id)identifier interfaceOrientation:(int)orientation backlightStatus:(int)status transitionReasons:(id)reasons
{
  nameCopy = name;
  deviceNameCopy = deviceName;
  identifierCopy = identifier;
  reasonsCopy = reasons;
  v22.receiver = self;
  v22.super_class = BMFrontBoardDisplayElementDisplay;
  v18 = [(BMEventBase *)&v22 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    v18->_type = type;
    objc_storeStrong(&v18->_name, name);
    objc_storeStrong(&v18->_deviceName, deviceName);
    objc_storeStrong(&v18->_hardwareIdentifier, identifier);
    v18->_interfaceOrientation = orientation;
    v18->_backlightStatus = status;
    objc_storeStrong(&v18->_transitionReasons, reasons);
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