@interface BMSiriPostSiriEngagementSignal
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriPostSiriEngagementSignal)initWithDomain:(id)domain action:(id)action isPostSiriEngagement:(id)engagement pseDelta:(id)delta pseContents:(id)contents donatedTimestamp:(id)timestamp;
- (BMSiriPostSiriEngagementSignal)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_pseContentsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriPostSiriEngagementSignal

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    domain = [(BMSiriPostSiriEngagementSignal *)self domain];
    domain2 = [v5 domain];
    v8 = domain2;
    if (domain == domain2)
    {
    }

    else
    {
      domain3 = [(BMSiriPostSiriEngagementSignal *)self domain];
      domain4 = [v5 domain];
      v11 = [domain3 isEqual:domain4];

      if (!v11)
      {
        goto LABEL_29;
      }
    }

    action = [(BMSiriPostSiriEngagementSignal *)self action];
    action2 = [v5 action];
    v15 = action2;
    if (action == action2)
    {
    }

    else
    {
      action3 = [(BMSiriPostSiriEngagementSignal *)self action];
      action4 = [v5 action];
      v18 = [action3 isEqual:action4];

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    if (-[BMSiriPostSiriEngagementSignal hasIsPostSiriEngagement](self, "hasIsPostSiriEngagement") || [v5 hasIsPostSiriEngagement])
    {
      if (![(BMSiriPostSiriEngagementSignal *)self hasIsPostSiriEngagement])
      {
        goto LABEL_29;
      }

      if (![v5 hasIsPostSiriEngagement])
      {
        goto LABEL_29;
      }

      isPostSiriEngagement = [(BMSiriPostSiriEngagementSignal *)self isPostSiriEngagement];
      if (isPostSiriEngagement != [v5 isPostSiriEngagement])
      {
        goto LABEL_29;
      }
    }

    pseDelta = [(BMSiriPostSiriEngagementSignal *)self pseDelta];
    pseDelta2 = [v5 pseDelta];
    v22 = pseDelta2;
    if (pseDelta == pseDelta2)
    {
    }

    else
    {
      pseDelta3 = [(BMSiriPostSiriEngagementSignal *)self pseDelta];
      pseDelta4 = [v5 pseDelta];
      v25 = [pseDelta3 isEqual:pseDelta4];

      if (!v25)
      {
        goto LABEL_29;
      }
    }

    pseContents = [(BMSiriPostSiriEngagementSignal *)self pseContents];
    pseContents2 = [v5 pseContents];
    v28 = pseContents2;
    if (pseContents == pseContents2)
    {
    }

    else
    {
      pseContents3 = [(BMSiriPostSiriEngagementSignal *)self pseContents];
      pseContents4 = [v5 pseContents];
      v31 = [pseContents3 isEqual:pseContents4];

      if (!v31)
      {
        goto LABEL_29;
      }
    }

    if (!-[BMSiriPostSiriEngagementSignal hasDonatedTimestamp](self, "hasDonatedTimestamp") && ![v5 hasDonatedTimestamp])
    {
      v12 = 1;
      goto LABEL_30;
    }

    if (-[BMSiriPostSiriEngagementSignal hasDonatedTimestamp](self, "hasDonatedTimestamp") && [v5 hasDonatedTimestamp])
    {
      [(BMSiriPostSiriEngagementSignal *)self donatedTimestamp];
      v33 = v32;
      [v5 donatedTimestamp];
      v12 = v33 == v34;
LABEL_30:

      goto LABEL_31;
    }

LABEL_29:
    v12 = 0;
    goto LABEL_30;
  }

  v12 = 0;
LABEL_31:

  return v12;
}

- (id)jsonDictionary
{
  v26[6] = *MEMORY[0x1E69E9840];
  domain = [(BMSiriPostSiriEngagementSignal *)self domain];
  action = [(BMSiriPostSiriEngagementSignal *)self action];
  if ([(BMSiriPostSiriEngagementSignal *)self hasIsPostSiriEngagement])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriPostSiriEngagementSignal isPostSiriEngagement](self, "isPostSiriEngagement")}];
  }

  else
  {
    v5 = 0;
  }

  pseDelta = [(BMSiriPostSiriEngagementSignal *)self pseDelta];
  jsonDictionary = [pseDelta jsonDictionary];

  _pseContentsJSONArray = [(BMSiriPostSiriEngagementSignal *)self _pseContentsJSONArray];
  if (![(BMSiriPostSiriEngagementSignal *)self hasDonatedTimestamp]|| ([(BMSiriPostSiriEngagementSignal *)self donatedTimestamp], fabs(v9) == INFINITY))
  {
    v11 = 0;
  }

  else
  {
    [(BMSiriPostSiriEngagementSignal *)self donatedTimestamp];
    v10 = MEMORY[0x1E696AD98];
    [(BMSiriPostSiriEngagementSignal *)self donatedTimestamp];
    v11 = [v10 numberWithDouble:?];
  }

  v25[0] = @"domain";
  null = domain;
  if (!domain)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v23 = action;
  v26[0] = null;
  v25[1] = @"action";
  null2 = action;
  if (!action)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = null2;
  v25[2] = @"isPostSiriEngagement";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = domain;
  v26[2] = null3;
  v25[3] = @"pseDelta";
  null4 = jsonDictionary;
  if (!jsonDictionary)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25[4] = @"pseContents";
  null5 = _pseContentsJSONArray;
  if (!_pseContentsJSONArray)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v25[5] = @"donatedTimestamp";
  null6 = v11;
  if (!v11)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null6;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:{6, v21}];
  if (v11)
  {
    if (_pseContentsJSONArray)
    {
      goto LABEL_22;
    }

LABEL_31:

    if (jsonDictionary)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (!_pseContentsJSONArray)
  {
    goto LABEL_31;
  }

LABEL_22:
  if (jsonDictionary)
  {
    goto LABEL_23;
  }

LABEL_32:

LABEL_23:
  if (!v5)
  {
  }

  if (v23)
  {
    if (v24)
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (v24)
    {
      goto LABEL_27;
    }
  }

LABEL_27:
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_pseContentsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  pseContents = [(BMSiriPostSiriEngagementSignal *)self pseContents];
  v5 = [pseContents countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(pseContents);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [pseContents countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSiriPostSiriEngagementSignal)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v96[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
  v70 = p_isa;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (p_isa)
      {
        v29 = p_isa;
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v95 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domain"];
        v96[0] = v11;
        v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:&v95 count:1];
        v32 = [v30 initWithDomain:v31 code:2 userInfo:?];
        v8 = 0;
        p_isa = 0;
        *v29 = v32;
        goto LABEL_73;
      }

      v8 = 0;
      goto LABEL_74;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"action"];
  v71 = v9;
  if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v70)
      {
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = *MEMORY[0x1E698F240];
        v93 = *MEMORY[0x1E696A578];
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"action"];
        v94 = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
        v37 = [v33 initWithDomain:v34 code:2 userInfo:v36];
        v11 = 0;
        p_isa = 0;
        *v70 = v37;
        goto LABEL_72;
      }

      v11 = 0;
      p_isa = 0;
      goto LABEL_73;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"isPostSiriEngagement"];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v36 = v12;
      p_isa = v70;
      if (v70)
      {
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v91 = *MEMORY[0x1E696A578];
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isPostSiriEngagement"];
        v92 = v27;
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
        v40 = [v38 initWithDomain:v39 code:2 userInfo:?];
        v69 = 0;
        p_isa = 0;
        *v70 = v40;

        goto LABEL_71;
      }

      v35 = 0;
      goto LABEL_72;
    }

    v66 = v12;
    v69 = v12;
  }

  else
  {
    v66 = v12;
    v69 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"pseDelta"];
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v13;
        v79 = 0;
        v67 = [[BMSiriPostSiriEngagementSignalDeltaEvent alloc] initWithJSONDictionary:v27 error:&v79];
        v28 = v79;
        if (!v28)
        {
          v63 = v13;
          v64 = v7;

          goto LABEL_13;
        }

        if (v70)
        {
          v28 = v28;
          *v70 = v28;
        }

        p_isa = 0;
      }

      else
      {
        if (!v70)
        {
          p_isa = 0;
          v36 = v66;
          v27 = v13;
          goto LABEL_71;
        }

        v73 = objc_alloc(MEMORY[0x1E696ABC0]);
        v65 = *MEMORY[0x1E698F240];
        v89 = *MEMORY[0x1E696A578];
        v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"pseDelta"];
        v90 = v67;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        *v70 = [v73 initWithDomain:v65 code:2 userInfo:v41];

        p_isa = 0;
        v27 = v13;
      }

      v36 = v66;
      goto LABEL_70;
    }
  }

  v63 = v13;
  v64 = v7;
  v67 = 0;
LABEL_13:
  v14 = [dictionaryCopy objectForKeyedSubscript:@"pseContents"];
  null = [MEMORY[0x1E695DFB0] null];
  v16 = [v14 isEqual:null];

  if (v16)
  {
    v60 = v11;
    v61 = v8;
    selfCopy2 = self;

    v14 = 0;
  }

  else
  {
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v70)
        {
          p_isa = 0;
          v36 = v66;
          goto LABEL_69;
        }

        v50 = objc_alloc(MEMORY[0x1E696ABC0]);
        v51 = *MEMORY[0x1E698F240];
        v87 = *MEMORY[0x1E696A578];
        v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"pseContents"];
        v88 = v72;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
        v52 = [v50 initWithDomain:v51 code:2 userInfo:v26];
        p_isa = 0;
        *v70 = v52;
LABEL_62:
        v36 = v66;
        goto LABEL_68;
      }
    }

    v60 = v11;
    v61 = v8;
    selfCopy2 = self;
  }

  v72 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v14 = v14;
  v17 = [v14 countByEnumeratingWithState:&v75 objects:v86 count:16];
  if (!v17)
  {
    goto LABEL_32;
  }

  v18 = v17;
  v19 = *v76;
  v59 = dictionaryCopy;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v76 != v19)
      {
        objc_enumerationMutation(v14);
      }

      v21 = *(*(&v75 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v70)
        {
          v42 = objc_alloc(MEMORY[0x1E696ABC0]);
          v43 = *MEMORY[0x1E698F240];
          v84 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"pseContents"];
          v85 = v22;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
          *v70 = [v42 initWithDomain:v43 code:2 userInfo:v44];

LABEL_55:
          p_isa = 0;
          v26 = v14;
          dictionaryCopy = v59;
          v11 = v60;
          v8 = v61;
          self = selfCopy2;
          v36 = v66;
          goto LABEL_67;
        }

        goto LABEL_61;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v70)
        {
          v45 = objc_alloc(MEMORY[0x1E696ABC0]);
          v46 = *MEMORY[0x1E698F240];
          v82 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"pseContents"];
          v83 = v22;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
          *v70 = [v45 initWithDomain:v46 code:2 userInfo:v47];

          goto LABEL_55;
        }

LABEL_61:
        p_isa = 0;
        v26 = v14;
        dictionaryCopy = v59;
        v11 = v60;
        v8 = v61;
        self = selfCopy2;
        goto LABEL_62;
      }

      v22 = v21;
      v23 = [BMSiriPostSiriEngagementSignalContent alloc];
      v74 = 0;
      v24 = [(BMSiriPostSiriEngagementSignalContent *)v23 initWithJSONDictionary:v22 error:&v74];
      v25 = v74;
      if (v25)
      {
        v48 = v25;
        v36 = v66;
        if (v70)
        {
          v49 = v25;
          *v70 = v48;
        }

        p_isa = 0;
        v26 = v14;
        dictionaryCopy = v59;
        v11 = v60;
        v8 = v61;
        self = selfCopy2;
        goto LABEL_67;
      }

      [v72 addObject:v24];
    }

    v18 = [v14 countByEnumeratingWithState:&v75 objects:v86 count:16];
    dictionaryCopy = v59;
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_32:

  v22 = [dictionaryCopy objectForKeyedSubscript:@"donatedTimestamp"];
  if (v22)
  {
    objc_opt_class();
    v8 = v61;
    self = selfCopy2;
    v11 = v60;
    if (objc_opt_isKindOfClass())
    {
      v26 = 0;
      goto LABEL_65;
    }

    objc_opt_class();
    v36 = v66;
    if (objc_opt_isKindOfClass())
    {
      v26 = v22;
      goto LABEL_66;
    }

    p_isa = v70;
    if (v70)
    {
      v58 = objc_alloc(MEMORY[0x1E696ABC0]);
      v55 = *MEMORY[0x1E698F240];
      v80 = *MEMORY[0x1E696A578];
      v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"donatedTimestamp"];
      v81 = v56;
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      *v70 = [v58 initWithDomain:v55 code:2 userInfo:v57];

      v26 = 0;
      p_isa = 0;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
    v8 = v61;
    self = selfCopy2;
    v11 = v60;
LABEL_65:
    v36 = v66;
LABEL_66:
    self = [(BMSiriPostSiriEngagementSignal *)self initWithDomain:v8 action:v11 isPostSiriEngagement:v69 pseDelta:v67 pseContents:v72 donatedTimestamp:v26];
    p_isa = &self->super.super.isa;
  }

LABEL_67:

LABEL_68:
LABEL_69:

  v27 = v63;
  v7 = v64;
LABEL_70:

LABEL_71:
  v35 = v69;
LABEL_72:

LABEL_73:
LABEL_74:

  v53 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriPostSiriEngagementSignal *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_action)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsPostSiriEngagement)
  {
    isPostSiriEngagement = self->_isPostSiriEngagement;
    PBDataWriterWriteBOOLField();
  }

  if (self->_pseDelta)
  {
    v18 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriPostSiriEngagementSignalDeltaEvent *)self->_pseDelta writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_pseContents;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v18 = 0;
        PBDataWriterPlaceMark();
        [v11 writeTo:{toCopy, v14}];
        PBDataWriterRecallMark();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  if (self->_hasDonatedTimestamp)
  {
    donatedTimestamp = self->_donatedTimestamp;
    PBDataWriterWriteDoubleField();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v40.receiver = self;
  v40.super_class = BMSiriPostSiriEngagementSignal;
  v5 = [(BMEventBase *)&v40 init];
  if (!v5)
  {
    goto LABEL_55;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_53;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v41) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (LOBYTE(v41) & 0x7F) << v8;
        if ((LOBYTE(v41) & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_53;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 3)
      {
        break;
      }

      switch(v16)
      {
        case 4:
          v41 = 0.0;
          v42 = 0;
          if (!PBReaderPlaceMark() || (v28 = [[BMSiriPostSiriEngagementSignalDeltaEvent alloc] initByReadFrom:fromCopy]) == 0)
          {
LABEL_57:

            goto LABEL_54;
          }

          pseDelta = v5->_pseDelta;
          v5->_pseDelta = v28;

          PBReaderRecallMark();
          break;
        case 5:
          v41 = 0.0;
          v42 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_57;
          }

          v31 = [[BMSiriPostSiriEngagementSignalContent alloc] initByReadFrom:fromCopy];
          if (!v31)
          {
            goto LABEL_57;
          }

          v32 = v31;
          [v6 addObject:v31];
          PBReaderRecallMark();

          break;
        case 6:
          v5->_hasDonatedTimestamp = 1;
          v41 = 0.0;
          v24 = [fromCopy position] + 8;
          if (v24 >= [fromCopy position] && (v25 = objc_msgSend(fromCopy, "position") + 8, v25 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_donatedTimestamp = v41;
          break;
        default:
LABEL_41:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_57;
          }

          break;
      }

LABEL_52:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_53;
      }
    }

    switch(v16)
    {
      case 1:
        v26 = PBReaderReadString();
        v27 = 24;
LABEL_44:
        v30 = *(&v5->super.super.isa + v27);
        *(&v5->super.super.isa + v27) = v26;

        goto LABEL_52;
      case 2:
        v26 = PBReaderReadString();
        v27 = 32;
        goto LABEL_44;
      case 3:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v5->_hasIsPostSiriEngagement = 1;
        while (1)
        {
          LOBYTE(v41) = 0;
          v20 = [fromCopy position] + 1;
          if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v19 |= (LOBYTE(v41) & 0x7F) << v17;
          if ((LOBYTE(v41) & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v14 = v18++ >= 9;
          if (v14)
          {
            LOBYTE(v23) = 0;
            goto LABEL_49;
          }
        }

        v23 = (v19 != 0) & ~[fromCopy hasError];
LABEL_49:
        v5->_isPostSiriEngagement = v23;
        goto LABEL_52;
    }

    goto LABEL_41;
  }

LABEL_53:
  v35 = [v6 copy];
  pseContents = v5->_pseContents;
  v5->_pseContents = v35;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_54:
    v38 = 0;
  }

  else
  {
LABEL_55:
    v38 = v5;
  }

  return v38;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  domain = [(BMSiriPostSiriEngagementSignal *)self domain];
  action = [(BMSiriPostSiriEngagementSignal *)self action];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriPostSiriEngagementSignal isPostSiriEngagement](self, "isPostSiriEngagement")}];
  pseDelta = [(BMSiriPostSiriEngagementSignal *)self pseDelta];
  pseContents = [(BMSiriPostSiriEngagementSignal *)self pseContents];
  v9 = MEMORY[0x1E696AD98];
  [(BMSiriPostSiriEngagementSignal *)self donatedTimestamp];
  v10 = [v9 numberWithDouble:?];
  v11 = [v3 initWithFormat:@"BMSiriPostSiriEngagementSignal with domain: %@, action: %@, isPostSiriEngagement: %@, pseDelta: %@, pseContents: %@, donatedTimestamp: %@", domain, action, v6, pseDelta, pseContents, v10];

  return v11;
}

- (BMSiriPostSiriEngagementSignal)initWithDomain:(id)domain action:(id)action isPostSiriEngagement:(id)engagement pseDelta:(id)delta pseContents:(id)contents donatedTimestamp:(id)timestamp
{
  domainCopy = domain;
  actionCopy = action;
  engagementCopy = engagement;
  deltaCopy = delta;
  contentsCopy = contents;
  timestampCopy = timestamp;
  v24.receiver = self;
  v24.super_class = BMSiriPostSiriEngagementSignal;
  v19 = [(BMEventBase *)&v24 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_domain, domain);
    objc_storeStrong(&v19->_action, action);
    if (engagementCopy)
    {
      v19->_hasIsPostSiriEngagement = 1;
      v19->_isPostSiriEngagement = [engagementCopy BOOLValue];
    }

    else
    {
      v19->_hasIsPostSiriEngagement = 0;
      v19->_isPostSiriEngagement = 0;
    }

    objc_storeStrong(&v19->_pseDelta, delta);
    objc_storeStrong(&v19->_pseContents, contents);
    if (timestampCopy)
    {
      v19->_hasDonatedTimestamp = 1;
      [timestampCopy doubleValue];
    }

    else
    {
      v19->_hasDonatedTimestamp = 0;
      v20 = -1.0;
    }

    v19->_donatedTimestamp = v20;
  }

  return v19;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domain" number:1 type:13 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"action" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPostSiriEngagement" number:3 type:12 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pseDelta" number:4 type:14 subMessageClass:objc_opt_class()];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pseContents" number:5 type:14 subMessageClass:objc_opt_class()];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"donatedTimestamp" number:6 type:0 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domain" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"action" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPostSiriEngagement" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"pseDelta_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_332];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"pseContents_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_334];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"donatedTimestamp" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:0];
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

id __41__BMSiriPostSiriEngagementSignal_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _pseContentsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __41__BMSiriPostSiriEngagementSignal_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 pseDelta];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMSiriPostSiriEngagementSignal alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[5] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end