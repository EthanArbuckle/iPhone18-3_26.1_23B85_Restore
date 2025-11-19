@interface BMMapsRecentConversationsIntentContactInformation
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMapsRecentConversationsIntentContactInformation)initWithIdentifier:(id)a3 fullDisplayName:(id)a4 friendlyName:(id)a5 emailAddress:(id)a6 phoneNumber:(id)a7;
- (BMMapsRecentConversationsIntentContactInformation)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_emailAddressJSONArray;
- (id)_phoneNumberJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMapsRecentConversationsIntentContactInformation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMapsRecentConversationsIntentContactInformation *)self identifier];
    v7 = [v5 identifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMapsRecentConversationsIntentContactInformation *)self identifier];
      v10 = [v5 identifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v13 = [(BMMapsRecentConversationsIntentContactInformation *)self fullDisplayName];
    v14 = [v5 fullDisplayName];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMMapsRecentConversationsIntentContactInformation *)self fullDisplayName];
      v17 = [v5 fullDisplayName];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v19 = [(BMMapsRecentConversationsIntentContactInformation *)self friendlyName];
    v20 = [v5 friendlyName];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMMapsRecentConversationsIntentContactInformation *)self friendlyName];
      v23 = [v5 friendlyName];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    v25 = [(BMMapsRecentConversationsIntentContactInformation *)self emailAddress];
    v26 = [v5 emailAddress];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMMapsRecentConversationsIntentContactInformation *)self emailAddress];
      v29 = [v5 emailAddress];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    v31 = [(BMMapsRecentConversationsIntentContactInformation *)self phoneNumber];
    v32 = [v5 phoneNumber];
    if (v31 == v32)
    {
      v12 = 1;
    }

    else
    {
      v33 = [(BMMapsRecentConversationsIntentContactInformation *)self phoneNumber];
      v34 = [v5 phoneNumber];
      v12 = [v33 isEqual:v34];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMMapsRecentConversationsIntentContactInformation *)self identifier];
  v4 = [(BMMapsRecentConversationsIntentContactInformation *)self fullDisplayName];
  v5 = [(BMMapsRecentConversationsIntentContactInformation *)self friendlyName];
  v6 = [(BMMapsRecentConversationsIntentContactInformation *)self _emailAddressJSONArray];
  v7 = [(BMMapsRecentConversationsIntentContactInformation *)self _phoneNumberJSONArray];
  v18 = @"identifier";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v8;
  v23[0] = v8;
  v19 = @"fullDisplayName";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v9;
  v20 = @"friendlyName";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v10;
  v21 = @"emailAddress";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v11;
  v22 = @"phoneNumber";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v6)
    {
LABEL_13:
      if (v5)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (v5)
  {
LABEL_14:
    if (v4)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_phoneNumberJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMMapsRecentConversationsIntentContactInformation *)self phoneNumber];
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

- (id)_emailAddressJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMMapsRecentConversationsIntentContactInformation *)self emailAddress];
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

- (BMMapsRecentConversationsIntentContactInformation)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v106[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"identifier"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v105 = *MEMORY[0x1E696A578];
        v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
        v106[0] = v32;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:&v105 count:1];
        v34 = v30;
        v9 = v33;
        v35 = [v34 initWithDomain:v31 code:2 userInfo:v33];
        v8 = 0;
        v36 = 0;
        *a4 = v35;
        goto LABEL_72;
      }

      v8 = 0;
      v36 = 0;
      goto LABEL_73;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"fullDisplayName"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v39 = v9;
        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = *MEMORY[0x1E698F240];
        v103 = *MEMORY[0x1E696A578];
        v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fullDisplayName"];
        v104 = v42;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
        v44 = v40;
        v9 = v39;
        v78 = v43;
        v45 = [v44 initWithDomain:v41 code:2 userInfo:?];
        v32 = 0;
        v36 = 0;
        *a4 = v45;
        goto LABEL_71;
      }

      v32 = 0;
      v36 = 0;
      goto LABEL_72;
    }

    v77 = v9;
  }

  else
  {
    v77 = 0;
  }

  v10 = [v6 objectForKeyedSubscript:@"friendlyName"];
  v74 = v9;
  v75 = v7;
  v78 = v10;
  if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = *MEMORY[0x1E698F240];
        v101 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"friendlyName"];
        v102 = v12;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
        v48 = [v46 initWithDomain:v47 code:2 userInfo:v15];
        v76 = 0;
        v36 = 0;
        *a4 = v48;
        v32 = v77;
        goto LABEL_69;
      }

      v42 = 0;
      v36 = 0;
      v32 = v77;
      goto LABEL_71;
    }

    v76 = v11;
  }

  else
  {
    v76 = 0;
  }

  v12 = [v6 objectForKeyedSubscript:@"emailAddress"];
  v13 = [MEMORY[0x1E695DFB0] null];
  v14 = [v12 isEqual:v13];

  if (v14)
  {
    v72 = v6;
    v73 = a4;
    v71 = self;

    v12 = 0;
  }

  else
  {
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v36 = 0;
          v32 = v77;
          goto LABEL_70;
        }

        v54 = objc_alloc(MEMORY[0x1E696ABC0]);
        v55 = a4;
        v56 = *MEMORY[0x1E698F240];
        v99 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"emailAddress"];
        v100 = v15;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
        v57 = [v54 initWithDomain:v56 code:2 userInfo:v21];
        v36 = 0;
        *v55 = v57;
        goto LABEL_58;
      }
    }

    v72 = v6;
    v73 = a4;
    v71 = self;
  }

  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v12 = v12;
  v16 = [v12 countByEnumeratingWithState:&v83 objects:v98 count:16];
  v70 = v8;
  if (!v16)
  {
    goto LABEL_26;
  }

  v17 = v16;
  v18 = *v84;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v84 != v18)
      {
        objc_enumerationMutation(v12);
      }

      v20 = *(*(&v83 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v73)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v25 = *MEMORY[0x1E698F240];
          v96 = *MEMORY[0x1E696A578];
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"emailAddress"];
          v97 = v26;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
          v28 = v24;
          v29 = v25;
LABEL_38:
          v8 = v70;
          v32 = v77;
          *v73 = [v28 initWithDomain:v29 code:2 userInfo:v27];

          v36 = 0;
          v21 = v12;
          goto LABEL_66;
        }

LABEL_41:
        v36 = 0;
        v21 = v12;
        self = v71;
        v6 = v72;
        v8 = v70;
LABEL_58:
        v32 = v77;
        goto LABEL_68;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v73)
        {
          v37 = objc_alloc(MEMORY[0x1E696ABC0]);
          v38 = *MEMORY[0x1E698F240];
          v94 = *MEMORY[0x1E696A578];
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"emailAddress"];
          v95 = v26;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
          v28 = v37;
          v29 = v38;
          goto LABEL_38;
        }

        goto LABEL_41;
      }

      [v15 addObject:v20];
    }

    v17 = [v12 countByEnumeratingWithState:&v83 objects:v98 count:16];
    v8 = v70;
  }

  while (v17);
LABEL_26:

  v6 = v72;
  v21 = [v72 objectForKeyedSubscript:@"phoneNumber"];
  v22 = [MEMORY[0x1E695DFB0] null];
  v23 = [v21 isEqual:v22];

  if (v23)
  {

    v21 = 0;
    goto LABEL_46;
  }

  if (v21)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v73)
      {
        v66 = objc_alloc(MEMORY[0x1E696ABC0]);
        v67 = *MEMORY[0x1E698F240];
        v92 = *MEMORY[0x1E696A578];
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"phoneNumber"];
        v93 = v26;
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
        *v73 = [v66 initWithDomain:v67 code:2 userInfo:v68];

        v36 = 0;
        v32 = v77;
        goto LABEL_67;
      }

      v36 = 0;
      self = v71;
      goto LABEL_58;
    }
  }

LABEL_46:
  v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v21, "count")}];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v21 = v21;
  v49 = [v21 countByEnumeratingWithState:&v79 objects:v91 count:16];
  if (!v49)
  {
    goto LABEL_55;
  }

  v50 = v49;
  v51 = *v80;
  while (2)
  {
    v52 = 0;
    while (2)
    {
      if (*v80 != v51)
      {
        objc_enumerationMutation(v21);
      }

      v53 = *(*(&v79 + 1) + 8 * v52);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v70;
        v32 = v77;
        if (v73)
        {
          v58 = objc_alloc(MEMORY[0x1E696ABC0]);
          v69 = *MEMORY[0x1E698F240];
          v89 = *MEMORY[0x1E696A578];
          v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"phoneNumber"];
          v90 = v59;
          v60 = MEMORY[0x1E695DF20];
          v61 = &v90;
          v62 = &v89;
LABEL_64:
          v63 = [v60 dictionaryWithObjects:v61 forKeys:v62 count:1];
          *v73 = [v58 initWithDomain:v69 code:2 userInfo:v63];
        }

LABEL_65:

        v36 = 0;
        goto LABEL_66;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = v70;
        v32 = v77;
        if (v73)
        {
          v58 = objc_alloc(MEMORY[0x1E696ABC0]);
          v69 = *MEMORY[0x1E698F240];
          v87 = *MEMORY[0x1E696A578];
          v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"phoneNumber"];
          v88 = v59;
          v60 = MEMORY[0x1E695DF20];
          v61 = &v88;
          v62 = &v87;
          goto LABEL_64;
        }

        goto LABEL_65;
      }

      [v26 addObject:v53];
      if (v50 != ++v52)
      {
        continue;
      }

      break;
    }

    v50 = [v21 countByEnumeratingWithState:&v79 objects:v91 count:16];
    if (v50)
    {
      continue;
    }

    break;
  }

LABEL_55:

  v8 = v70;
  v32 = v77;
  v36 = [(BMMapsRecentConversationsIntentContactInformation *)v71 initWithIdentifier:v70 fullDisplayName:v77 friendlyName:v76 emailAddress:v15 phoneNumber:v26];
  v71 = v36;
LABEL_66:
  v6 = v72;
LABEL_67:

  self = v71;
LABEL_68:

LABEL_69:
  v9 = v74;
LABEL_70:

  v7 = v75;
  v42 = v76;
LABEL_71:

LABEL_72:
LABEL_73:

  v64 = *MEMORY[0x1E69E9840];
  return v36;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMapsRecentConversationsIntentContactInformation *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fullDisplayName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_friendlyName)
  {
    PBDataWriterWriteStringField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_emailAddress;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_phoneNumber;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BMMapsRecentConversationsIntentContactInformation;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_40;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [v4 position];
  if (v8 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v33 = 0;
        v12 = [v4 position] + 1;
        if (v12 >= [v4 position] && (v13 = objc_msgSend(v4, "position") + 1, v13 <= objc_msgSend(v4, "length")))
        {
          v14 = [v4 data];
          [v14 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v11 |= (v33 & 0x7F) << v9;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        if (v10++ >= 9)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [v4 hasError] ? 0 : v11;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) <= 2)
      {
        if (v17 == 1)
        {
          v21 = PBReaderReadString();
          v22 = 24;
LABEL_32:
          v19 = *(&v5->super.super.isa + v22);
          *(&v5->super.super.isa + v22) = v21;
          goto LABEL_33;
        }

        if (v17 == 2)
        {
          v21 = PBReaderReadString();
          v22 = 32;
          goto LABEL_32;
        }
      }

      else
      {
        switch(v17)
        {
          case 3:
            v21 = PBReaderReadString();
            v22 = 40;
            goto LABEL_32;
          case 4:
            v23 = PBReaderReadString();
            if (!v23)
            {
              goto LABEL_37;
            }

            v19 = v23;
            v20 = v6;
LABEL_30:
            [v20 addObject:v19];
LABEL_33:

            goto LABEL_34;
          case 5:
            v18 = PBReaderReadString();
            if (!v18)
            {
              goto LABEL_37;
            }

            v19 = v18;
            v20 = v7;
            goto LABEL_30;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
LABEL_37:

        goto LABEL_39;
      }

LABEL_34:
      v24 = [v4 position];
    }

    while (v24 < [v4 length]);
  }

  v25 = [v6 copy];
  emailAddress = v5->_emailAddress;
  v5->_emailAddress = v25;

  v27 = [v7 copy];
  phoneNumber = v5->_phoneNumber;
  v5->_phoneNumber = v27;

  v29 = [v4 hasError];
  if (v29)
  {
LABEL_39:
    v30 = 0;
  }

  else
  {
LABEL_40:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMMapsRecentConversationsIntentContactInformation *)self identifier];
  v5 = [(BMMapsRecentConversationsIntentContactInformation *)self fullDisplayName];
  v6 = [(BMMapsRecentConversationsIntentContactInformation *)self friendlyName];
  v7 = [(BMMapsRecentConversationsIntentContactInformation *)self emailAddress];
  v8 = [(BMMapsRecentConversationsIntentContactInformation *)self phoneNumber];
  v9 = [v3 initWithFormat:@"BMMapsRecentConversationsIntentContactInformation with identifier: %@, fullDisplayName: %@, friendlyName: %@, emailAddress: %@, phoneNumber: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMMapsRecentConversationsIntentContactInformation)initWithIdentifier:(id)a3 fullDisplayName:(id)a4 friendlyName:(id)a5 emailAddress:(id)a6 phoneNumber:(id)a7
{
  v19 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMMapsRecentConversationsIntentContactInformation;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_identifier, a3);
    objc_storeStrong(&v17->_fullDisplayName, a4);
    objc_storeStrong(&v17->_friendlyName, a5);
    objc_storeStrong(&v17->_emailAddress, a6);
    objc_storeStrong(&v17->_phoneNumber, a7);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fullDisplayName" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"friendlyName" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"emailAddress" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"phoneNumber" number:5 type:13 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fullDisplayName" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"friendlyName" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"emailAddress_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_104];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"phoneNumber_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_106_83462];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __60__BMMapsRecentConversationsIntentContactInformation_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _phoneNumberJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __60__BMMapsRecentConversationsIntentContactInformation_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _emailAddressJSONArray];
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

    v8 = [[BMMapsRecentConversationsIntentContactInformation alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end