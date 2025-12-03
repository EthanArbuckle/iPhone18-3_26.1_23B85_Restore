@interface BMSiriRequestContextMeCard
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriRequestContextMeCard)initWithGivenName:(id)name middleName:(id)middleName familyName:(id)familyName nickName:(id)nickName fullName:(id)fullName addresses:(id)addresses;
- (BMSiriRequestContextMeCard)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_addressesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriRequestContextMeCard

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    givenName = [(BMSiriRequestContextMeCard *)self givenName];
    givenName2 = [v5 givenName];
    v8 = givenName2;
    if (givenName == givenName2)
    {
    }

    else
    {
      givenName3 = [(BMSiriRequestContextMeCard *)self givenName];
      givenName4 = [v5 givenName];
      v11 = [givenName3 isEqual:givenName4];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    middleName = [(BMSiriRequestContextMeCard *)self middleName];
    middleName2 = [v5 middleName];
    v15 = middleName2;
    if (middleName == middleName2)
    {
    }

    else
    {
      middleName3 = [(BMSiriRequestContextMeCard *)self middleName];
      middleName4 = [v5 middleName];
      v18 = [middleName3 isEqual:middleName4];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    familyName = [(BMSiriRequestContextMeCard *)self familyName];
    familyName2 = [v5 familyName];
    v21 = familyName2;
    if (familyName == familyName2)
    {
    }

    else
    {
      familyName3 = [(BMSiriRequestContextMeCard *)self familyName];
      familyName4 = [v5 familyName];
      v24 = [familyName3 isEqual:familyName4];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    nickName = [(BMSiriRequestContextMeCard *)self nickName];
    nickName2 = [v5 nickName];
    v27 = nickName2;
    if (nickName == nickName2)
    {
    }

    else
    {
      nickName3 = [(BMSiriRequestContextMeCard *)self nickName];
      nickName4 = [v5 nickName];
      v30 = [nickName3 isEqual:nickName4];

      if (!v30)
      {
        goto LABEL_21;
      }
    }

    fullName = [(BMSiriRequestContextMeCard *)self fullName];
    fullName2 = [v5 fullName];
    v33 = fullName2;
    if (fullName == fullName2)
    {
    }

    else
    {
      fullName3 = [(BMSiriRequestContextMeCard *)self fullName];
      fullName4 = [v5 fullName];
      v36 = [fullName3 isEqual:fullName4];

      if (!v36)
      {
LABEL_21:
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    addresses = [(BMSiriRequestContextMeCard *)self addresses];
    addresses2 = [v5 addresses];
    if (addresses == addresses2)
    {
      v12 = 1;
    }

    else
    {
      addresses3 = [(BMSiriRequestContextMeCard *)self addresses];
      addresses4 = [v5 addresses];
      v12 = [addresses3 isEqual:addresses4];
    }

    goto LABEL_22;
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (id)jsonDictionary
{
  v23[6] = *MEMORY[0x1E69E9840];
  givenName = [(BMSiriRequestContextMeCard *)self givenName];
  middleName = [(BMSiriRequestContextMeCard *)self middleName];
  familyName = [(BMSiriRequestContextMeCard *)self familyName];
  nickName = [(BMSiriRequestContextMeCard *)self nickName];
  fullName = [(BMSiriRequestContextMeCard *)self fullName];
  _addressesJSONArray = [(BMSiriRequestContextMeCard *)self _addressesJSONArray];
  v22[0] = @"givenName";
  null = givenName;
  if (!givenName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v23[0] = null;
  v22[1] = @"middleName";
  null2 = middleName;
  if (!middleName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null2;
  v23[1] = null2;
  v22[2] = @"familyName";
  null3 = familyName;
  if (!familyName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = givenName;
  v23[2] = null3;
  v22[3] = @"nickName";
  null4 = nickName;
  if (!nickName)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22[4] = @"fullName";
  null5 = fullName;
  if (!fullName)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v22[5] = @"addresses";
  null6 = _addressesJSONArray;
  if (!_addressesJSONArray)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = null6;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (_addressesJSONArray)
  {
    if (fullName)
    {
      goto LABEL_15;
    }

LABEL_23:

    if (nickName)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (!fullName)
  {
    goto LABEL_23;
  }

LABEL_15:
  if (nickName)
  {
    goto LABEL_16;
  }

LABEL_24:

LABEL_16:
  if (familyName)
  {
    if (middleName)
    {
      goto LABEL_18;
    }

LABEL_26:

    if (v21)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (!middleName)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (v21)
  {
    goto LABEL_19;
  }

LABEL_27:

LABEL_19:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_addressesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  addresses = [(BMSiriRequestContextMeCard *)self addresses];
  v5 = [addresses countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(addresses);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [addresses countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSiriRequestContextMeCard)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v132[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"givenName"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (p_isa)
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v131 = *MEMORY[0x1E696A578];
        selfCopy = self;
        v34 = objc_alloc(MEMORY[0x1E696AEC0]);
        v94 = objc_opt_class();
        v35 = v34;
        self = selfCopy;
        v29 = [v35 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v94, @"givenName"];
        v132[0] = v29;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v132 forKeys:&v131 count:1];
        v37 = v31;
        v9 = v36;
        v38 = [v37 initWithDomain:v32 code:2 userInfo:v36];
        v8 = 0;
        v39 = p_isa;
        p_isa = 0;
        *v39 = v38;
        goto LABEL_69;
      }

      v8 = 0;
      goto LABEL_70;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"middleName"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (p_isa)
      {
        v40 = p_isa;
        v41 = v9;
        v42 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = v8;
        v44 = *MEMORY[0x1E698F240];
        v129 = *MEMORY[0x1E696A578];
        v45 = v7;
        v46 = objc_alloc(MEMORY[0x1E696AEC0]);
        v95 = objc_opt_class();
        v47 = v46;
        v7 = v45;
        v30 = [v47 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v95, @"middleName"];
        v130 = v30;
        v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
        v49 = v42;
        v9 = v41;
        v50 = v44;
        v8 = v43;
        v110 = v48;
        v29 = 0;
        p_isa = 0;
        *v40 = [v49 initWithDomain:v50 code:2 userInfo:?];
        goto LABEL_68;
      }

      v29 = 0;
      goto LABEL_69;
    }

    v108 = v9;
  }

  else
  {
    v108 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"familyName"];
  v110 = v10;
  if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (p_isa)
      {
        v51 = p_isa;
        v52 = v9;
        v53 = objc_alloc(MEMORY[0x1E696ABC0]);
        v54 = v8;
        v55 = *MEMORY[0x1E698F240];
        v127 = *MEMORY[0x1E696A578];
        v56 = v7;
        v57 = objc_alloc(MEMORY[0x1E696AEC0]);
        v96 = objc_opt_class();
        v58 = v57;
        v7 = v56;
        v109 = [v58 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v96, @"familyName"];
        v128 = v109;
        v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
        v60 = v53;
        v9 = v52;
        v61 = v55;
        v8 = v54;
        v107 = v59;
        v30 = 0;
        p_isa = 0;
        *v51 = [v60 initWithDomain:v61 code:2 userInfo:?];
        v29 = v108;
        goto LABEL_67;
      }

      v30 = 0;
      v29 = v108;
      goto LABEL_68;
    }

    v105 = v11;
  }

  else
  {
    v105 = 0;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"nickName"];
  v107 = v12;
  if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!p_isa)
      {
        v109 = 0;
        v29 = v108;
        v30 = v105;
        goto LABEL_67;
      }

      v62 = p_isa;
      v63 = v9;
      v64 = objc_alloc(MEMORY[0x1E696ABC0]);
      v65 = v8;
      v66 = *MEMORY[0x1E698F240];
      v125 = *MEMORY[0x1E696A578];
      v67 = v7;
      v68 = objc_alloc(MEMORY[0x1E696AEC0]);
      v97 = objc_opt_class();
      v69 = v68;
      v7 = v67;
      v106 = [v69 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v97, @"nickName"];
      v126 = v106;
      v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
      v71 = v64;
      v9 = v63;
      v72 = v66;
      v8 = v65;
      v104 = v70;
      v109 = 0;
      p_isa = 0;
      *v62 = [v71 initWithDomain:v72 code:2 userInfo:?];
      goto LABEL_78;
    }

    v101 = v9;
    v109 = v13;
  }

  else
  {
    v101 = v9;
    v109 = 0;
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"fullName"];
  v102 = v7;
  v103 = v8;
  v104 = v14;
  if (!v14 || (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v106 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (p_isa)
    {
      v73 = v7;
      v74 = objc_alloc(MEMORY[0x1E696ABC0]);
      v75 = *MEMORY[0x1E698F240];
      v123 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fullName"];
      v124 = v16;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
      v76 = v74;
      v7 = v73;
      v77 = [v76 initWithDomain:v75 code:2 userInfo:v19];
      v106 = 0;
      v78 = p_isa;
      p_isa = 0;
      *v78 = v77;
LABEL_62:
      v29 = v108;
      goto LABEL_63;
    }

    v106 = 0;
    v9 = v101;
LABEL_78:
    v29 = v108;
    v30 = v105;
    goto LABEL_66;
  }

  v106 = v15;
LABEL_16:
  v16 = [dictionaryCopy objectForKeyedSubscript:@"addresses"];
  null = [MEMORY[0x1E695DFB0] null];
  v18 = [v16 isEqual:null];

  if (!v18)
  {
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v98 = p_isa;
      selfCopy3 = self;
      v100 = dictionaryCopy;
      goto LABEL_27;
    }

    v29 = v108;
    if (!p_isa)
    {
      v7 = v102;
      v30 = v105;
      goto LABEL_65;
    }

    v90 = objc_alloc(MEMORY[0x1E696ABC0]);
    v91 = *MEMORY[0x1E698F240];
    v121 = *MEMORY[0x1E696A578];
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"addresses"];
    v122 = v19;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
    v93 = v92 = p_isa;
    *v92 = [v90 initWithDomain:v91 code:2 userInfo:v93];

    p_isa = 0;
    v7 = v102;
LABEL_63:
    v30 = v105;
    goto LABEL_64;
  }

  v98 = p_isa;
  selfCopy3 = self;
  v100 = dictionaryCopy;

  v16 = 0;
LABEL_27:
  v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v16, "count")}];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v16 = v16;
  v20 = [v16 countByEnumeratingWithState:&v112 objects:v120 count:16];
  if (!v20)
  {
    goto LABEL_37;
  }

  v21 = v20;
  v22 = *v113;
  while (2)
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v113 != v22)
      {
        objc_enumerationMutation(v16);
      }

      v24 = *(*(&v112 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self = selfCopy3;
        dictionaryCopy = v100;
        v7 = v102;
        v79 = v98;
        if (v98)
        {
          v80 = objc_alloc(MEMORY[0x1E696ABC0]);
          v81 = *MEMORY[0x1E698F240];
          v118 = *MEMORY[0x1E696A578];
          v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"addresses"];
          v119 = v25;
          v82 = MEMORY[0x1E695DF20];
          v83 = &v119;
          v84 = &v118;
LABEL_56:
          v85 = [v82 dictionaryWithObjects:v83 forKeys:v84 count:1];
          v86 = v80;
          v7 = v102;
          *v79 = [v86 initWithDomain:v81 code:2 userInfo:v85];
LABEL_60:
        }

LABEL_61:

        p_isa = 0;
        goto LABEL_62;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        self = selfCopy3;
        dictionaryCopy = v100;
        v7 = v102;
        v79 = v98;
        if (v98)
        {
          v80 = objc_alloc(MEMORY[0x1E696ABC0]);
          v81 = *MEMORY[0x1E698F240];
          v116 = *MEMORY[0x1E696A578];
          v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"addresses"];
          v117 = v25;
          v82 = MEMORY[0x1E695DF20];
          v83 = &v117;
          v84 = &v116;
          goto LABEL_56;
        }

        goto LABEL_61;
      }

      v25 = v24;
      v26 = [BMSiriRequestContextAddress alloc];
      v111 = 0;
      v27 = [(BMSiriRequestContextAddress *)v26 initWithJSONDictionary:v25 error:&v111];
      v28 = v111;
      if (v28)
      {
        v85 = v28;
        if (v98)
        {
          v87 = v28;
          *v98 = v85;
        }

        self = selfCopy3;
        dictionaryCopy = v100;
        v7 = v102;
        goto LABEL_60;
      }

      [v19 addObject:v27];
    }

    v21 = [v16 countByEnumeratingWithState:&v112 objects:v120 count:16];
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_37:

  v29 = v108;
  v30 = v105;
  self = [(BMSiriRequestContextMeCard *)selfCopy3 initWithGivenName:v103 middleName:v108 familyName:v105 nickName:v109 fullName:v106 addresses:v19];
  p_isa = &self->super.super.isa;
  dictionaryCopy = v100;
  v7 = v102;
LABEL_64:

LABEL_65:
  v8 = v103;
  v9 = v101;
LABEL_66:

LABEL_67:
LABEL_68:

LABEL_69:
LABEL_70:

  v88 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriRequestContextMeCard *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_givenName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_middleName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_familyName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_nickName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fullName)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_addresses;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v28.receiver = self;
  v28.super_class = BMSiriRequestContextMeCard;
  v5 = [(BMEventBase *)&v28 init];
  if (!v5)
  {
    goto LABEL_39;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_37;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v29[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v29 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v29[0] & 0x7F) << v8;
        if ((v29[0] & 0x80) == 0)
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
        goto LABEL_37;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 3)
      {
        break;
      }

      if (v16 == 4)
      {
        v17 = PBReaderReadString();
        v18 = 48;
        goto LABEL_35;
      }

      if (v16 == 5)
      {
        v17 = PBReaderReadString();
        v18 = 56;
        goto LABEL_35;
      }

      if (v16 != 6)
      {
        goto LABEL_31;
      }

      v29[0] = 0;
      v29[1] = 0;
      if (!PBReaderPlaceMark() || (v19 = [[BMSiriRequestContextAddress alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_41:

        goto LABEL_38;
      }

      v20 = v19;
      [v6 addObject:v19];
      PBReaderRecallMark();

LABEL_36:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_37;
      }
    }

    switch(v16)
    {
      case 1:
        v17 = PBReaderReadString();
        v18 = 24;
        goto LABEL_35;
      case 2:
        v17 = PBReaderReadString();
        v18 = 32;
        goto LABEL_35;
      case 3:
        v17 = PBReaderReadString();
        v18 = 40;
LABEL_35:
        v21 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;

        goto LABEL_36;
    }

LABEL_31:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_37:
  v23 = [v6 copy];
  addresses = v5->_addresses;
  v5->_addresses = v23;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_38:
    v26 = 0;
  }

  else
  {
LABEL_39:
    v26 = v5;
  }

  return v26;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  givenName = [(BMSiriRequestContextMeCard *)self givenName];
  middleName = [(BMSiriRequestContextMeCard *)self middleName];
  familyName = [(BMSiriRequestContextMeCard *)self familyName];
  nickName = [(BMSiriRequestContextMeCard *)self nickName];
  fullName = [(BMSiriRequestContextMeCard *)self fullName];
  addresses = [(BMSiriRequestContextMeCard *)self addresses];
  v10 = [v3 initWithFormat:@"BMSiriRequestContextMeCard with givenName: %@, middleName: %@, familyName: %@, nickName: %@, fullName: %@, addresses: %@", givenName, middleName, familyName, nickName, fullName, addresses];

  return v10;
}

- (BMSiriRequestContextMeCard)initWithGivenName:(id)name middleName:(id)middleName familyName:(id)familyName nickName:(id)nickName fullName:(id)fullName addresses:(id)addresses
{
  nameCopy = name;
  middleNameCopy = middleName;
  familyNameCopy = familyName;
  nickNameCopy = nickName;
  fullNameCopy = fullName;
  addressesCopy = addresses;
  v23.receiver = self;
  v23.super_class = BMSiriRequestContextMeCard;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_givenName, name);
    objc_storeStrong(&v18->_middleName, middleName);
    objc_storeStrong(&v18->_familyName, familyName);
    objc_storeStrong(&v18->_nickName, nickName);
    objc_storeStrong(&v18->_fullName, fullName);
    objc_storeStrong(&v18->_addresses, addresses);
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"givenName" number:1 type:13 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"middleName" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"familyName" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nickName" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fullName" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"addresses" number:6 type:14 subMessageClass:objc_opt_class()];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"givenName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"middleName" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"familyName" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nickName" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fullName" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"addresses_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_275];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __37__BMSiriRequestContextMeCard_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _addressesJSONArray];
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

    v8 = [[BMSiriRequestContextMeCard alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end