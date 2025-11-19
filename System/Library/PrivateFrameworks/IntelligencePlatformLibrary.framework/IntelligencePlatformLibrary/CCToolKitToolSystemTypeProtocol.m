@interface CCToolKitToolSystemTypeProtocol
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolSystemTypeProtocol)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolSystemTypeProtocol)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5;
- (CCToolKitToolSystemTypeProtocolAssistantSchema)assistantSchema;
- (CCToolKitToolSystemTypeProtocolIntentUpdatableEntity)intentUpdatableEntity;
- (CCToolKitToolSystemTypeProtocolPersistentFileIdentifiable)persistentFileIdentifiable;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolSystemTypeProtocol

- (CCToolKitToolSystemTypeProtocol)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v63[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"unk"];
    v10 = [v6 objectForKeyedSubscript:@"mailAccount"];
    v11 = [v6 objectForKeyedSubscript:@"mailAddressee"];
    v12 = [v6 objectForKeyedSubscript:@"mailMessage"];
    v60 = [v6 objectForKeyedSubscript:@"mailbox"];
    v59 = [v6 objectForKeyedSubscript:@"intentMessage"];
    v58 = [v6 objectForKeyedSubscript:@"messageGroup"];
    v57 = [v6 objectForKeyedSubscript:@"messageParticipants"];
    v56 = [v6 objectForKeyedSubscript:@"uniqueEntity"];
    v13 = [v6 objectForKeyedSubscript:@"intentUpdatableEntity"];
    if (v13)
    {
      v63[0] = 0;
      v14 = [[CCToolKitToolSystemTypeProtocolIntentUpdatableEntity alloc] initWithJSONDictionary:v13 error:v63];
      v15 = v63[0];
      if (!v14 || v15)
      {
        v55 = v15;
        CCSetError();
        v16 = 0;
LABEL_60:

        goto LABEL_61;
      }

      v54 = v11;

      v13 = v14;
    }

    else
    {
      v54 = v11;
    }

    v53 = v12;
    v55 = [v6 objectForKeyedSubscript:@"urlRepresentable"];
    v14 = [v6 objectForKeyedSubscript:@"visualSearch"];
    v52 = [v6 objectForKeyedSubscript:@"visualSearchOcr"];
    v17 = [v6 objectForKeyedSubscript:@"assistantSchema"];
    if (v17)
    {
      v62 = 0;
      v18 = [[CCToolKitToolSystemTypeProtocolAssistantSchema alloc] initWithJSONDictionary:v17 error:&v62];
      v19 = v62;
      if (!v18 || v19)
      {
        v51 = v19;
        CCSetError();
        v16 = 0;
LABEL_59:

        v12 = v53;
        v11 = v54;
        goto LABEL_60;
      }

      v47 = v8;
      v20 = v14;
      v21 = a4;

      v17 = v18;
    }

    else
    {
      v47 = v8;
      v20 = v14;
      v21 = a4;
    }

    v51 = [v6 objectForKeyedSubscript:@"updatableEntity"];
    v18 = [v6 objectForKeyedSubscript:@"persistentFileIdentifiable"];
    if (v18)
    {
      v61 = 0;
      v22 = [[CCToolKitToolSystemTypeProtocolPersistentFileIdentifiable alloc] initWithJSONDictionary:v18 error:&v61];
      v23 = v61;
      v50 = v22;
      if (!v22 || v23)
      {
        v49 = v23;
        CCSetError();
        v16 = 0;
        v14 = v20;
        v8 = v47;
LABEL_58:

        goto LABEL_59;
      }

      v18 = v22;
    }

    v46 = self;
    v49 = [v6 objectForKeyedSubscript:@"transientEntity"];
    v50 = [v6 objectForKeyedSubscript:@"indexedEntity"];
    v48 = v10;
    if (v9)
    {
      v24 = v9;
      v25 = 1;
    }

    else
    {
      v25 = 0;
    }

    v26 = v9;
    v27 = v21;
    if (v48)
    {
      v26 = v48;

      v25 = 2;
    }

    v45 = v9;
    v14 = v20;
    if (v54)
    {
      v28 = v54;

      v25 = 3;
      v26 = v28;
    }

    v8 = v47;
    if (v53)
    {
      v29 = v53;

      v25 = 4;
      v26 = v29;
    }

    if (v60)
    {
      v30 = v60;

      v25 = 5;
      v26 = v30;
    }

    if (v59)
    {
      v31 = v59;

      v25 = 6;
      v26 = v31;
    }

    if (v58)
    {
      v32 = v58;

      v25 = 7;
      v26 = v32;
    }

    if (v57)
    {
      v33 = v57;

      v25 = 8;
      v26 = v33;
    }

    if (v56)
    {
      v34 = v56;

      v25 = 9;
      v26 = v34;
    }

    if (v13)
    {
      v35 = v13;

      v25 = 10;
      v26 = v35;
    }

    if (v55)
    {
      v36 = v55;

      v25 = 11;
      v26 = v36;
    }

    if (v14)
    {
      v37 = v14;

      v25 = 12;
      v26 = v37;
    }

    if (v52)
    {
      v38 = v52;

      v25 = 13;
      v26 = v38;
    }

    if (v17)
    {
      v39 = v17;

      v25 = 14;
      v26 = v39;
    }

    if (v51)
    {
      v40 = v51;

      v25 = 15;
      v26 = v40;
    }

    if (v18)
    {
      v41 = v18;

      v25 = 16;
      v26 = v41;
    }

    if (v49)
    {
      v42 = v49;

      v25 = 17;
      v26 = v42;
    }

    if (v50)
    {
      v43 = v50;

      v25 = 18;
      v26 = v43;
    }

    v9 = v45;
    v16 = [[CCToolKitToolSystemTypeProtocol alloc] initWithKind:v26 kindType:v25 error:v27];

    self = v46;
    v10 = v48;
    goto LABEL_58;
  }

  CCSetError();
  v16 = 0;
LABEL_61:

  return v16;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  kindType = self->_kindType;
  if (kindType == 1)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemTypeProtocol unk](self, "unk")}];
    [v3 setObject:v5 forKeyedSubscript:@"unk"];

    kindType = self->_kindType;
  }

  if (kindType == 2)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemTypeProtocol mailAccount](self, "mailAccount")}];
    [v3 setObject:v6 forKeyedSubscript:@"mailAccount"];

    kindType = self->_kindType;
  }

  if (kindType == 3)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemTypeProtocol mailAddressee](self, "mailAddressee")}];
    [v3 setObject:v7 forKeyedSubscript:@"mailAddressee"];

    kindType = self->_kindType;
  }

  if (kindType == 4)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemTypeProtocol mailMessage](self, "mailMessage")}];
    [v3 setObject:v8 forKeyedSubscript:@"mailMessage"];

    kindType = self->_kindType;
  }

  if (kindType == 5)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemTypeProtocol mailbox](self, "mailbox")}];
    [v3 setObject:v9 forKeyedSubscript:@"mailbox"];

    kindType = self->_kindType;
  }

  if (kindType == 6)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemTypeProtocol intentMessage](self, "intentMessage")}];
    [v3 setObject:v10 forKeyedSubscript:@"intentMessage"];

    kindType = self->_kindType;
  }

  if (kindType == 7)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemTypeProtocol messageGroup](self, "messageGroup")}];
    [v3 setObject:v11 forKeyedSubscript:@"messageGroup"];

    kindType = self->_kindType;
  }

  if (kindType == 8)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemTypeProtocol messageParticipants](self, "messageParticipants")}];
    [v3 setObject:v12 forKeyedSubscript:@"messageParticipants"];

    kindType = self->_kindType;
  }

  if (kindType == 9)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemTypeProtocol uniqueEntity](self, "uniqueEntity")}];
    [v3 setObject:v13 forKeyedSubscript:@"uniqueEntity"];

    kindType = self->_kindType;
  }

  if (kindType == 10)
  {
    if (!self->_intentUpdatableEntity)
    {
      goto LABEL_40;
    }

    v14 = [(CCToolKitToolSystemTypeProtocol *)self intentUpdatableEntity];
    v15 = [v14 jsonDictionary];
    [v3 setObject:v15 forKeyedSubscript:@"intentUpdatableEntity"];

    kindType = self->_kindType;
  }

  if (kindType == 11)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemTypeProtocol urlRepresentable](self, "urlRepresentable")}];
    [v3 setObject:v16 forKeyedSubscript:@"urlRepresentable"];

    kindType = self->_kindType;
  }

  if (kindType == 12)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemTypeProtocol visualSearch](self, "visualSearch")}];
    [v3 setObject:v17 forKeyedSubscript:@"visualSearch"];

    kindType = self->_kindType;
  }

  if (kindType == 13)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemTypeProtocol visualSearchOcr](self, "visualSearchOcr")}];
    [v3 setObject:v18 forKeyedSubscript:@"visualSearchOcr"];

    kindType = self->_kindType;
  }

  if (kindType == 14)
  {
    if (!self->_assistantSchema)
    {
      goto LABEL_40;
    }

    v19 = [(CCToolKitToolSystemTypeProtocol *)self assistantSchema];
    v20 = [v19 jsonDictionary];
    [v3 setObject:v20 forKeyedSubscript:@"assistantSchema"];

    kindType = self->_kindType;
  }

  if (kindType == 15)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemTypeProtocol updatableEntity](self, "updatableEntity")}];
    [v3 setObject:v21 forKeyedSubscript:@"updatableEntity"];

    kindType = self->_kindType;
  }

  if (kindType == 16)
  {
    if (!self->_persistentFileIdentifiable)
    {
      goto LABEL_40;
    }

    v22 = [(CCToolKitToolSystemTypeProtocol *)self persistentFileIdentifiable];
    v23 = [v22 jsonDictionary];
    [v3 setObject:v23 forKeyedSubscript:@"persistentFileIdentifiable"];

    kindType = self->_kindType;
  }

  if (kindType == 17)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemTypeProtocol transientEntity](self, "transientEntity")}];
    [v3 setObject:v24 forKeyedSubscript:@"transientEntity"];

    kindType = self->_kindType;
  }

  if (kindType == 18)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemTypeProtocol indexedEntity](self, "indexedEntity")}];
    [v3 setObject:v25 forKeyedSubscript:@"indexedEntity"];
  }

LABEL_40:
  v26 = [v3 copy];

  return v26;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v25 = a3;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_unk];
  v25[2](v25, v7);

  v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_mailAccount];
  v25[2](v25, v8);

  v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_mailAddressee];
  v25[2](v25, v9);

  v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_mailMessage];
  v25[2](v25, v10);

  v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_mailbox];
  v25[2](v25, v11);

  v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_intentMessage];
  v25[2](v25, v12);

  v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_messageGroup];
  v25[2](v25, v13);

  v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_messageParticipants];
  v25[2](v25, v14);

  v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_uniqueEntity];
  v25[2](v25, v15);

  if (self->_intentUpdatableEntity)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_intentUpdatableEntity];
    v25[2](v25, v16);
  }

  v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_urlRepresentable];
  v25[2](v25, v17);

  v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_visualSearch];
  v25[2](v25, v18);

  v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_visualSearchOcr];
  v25[2](v25, v19);

  if (self->_assistantSchema)
  {
    v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_assistantSchema];
    v25[2](v25, v20);
  }

  v21 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_updatableEntity];
  v25[2](v25, v21);

  if (self->_persistentFileIdentifiable)
  {
    v22 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_persistentFileIdentifiable];
    v25[2](v25, v22);
  }

  v23 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_transientEntity];
  v25[2](v25, v23);

  v24 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_indexedEntity];
  v25[2](v25, v24);
}

- (CCToolKitToolSystemTypeProtocolPersistentFileIdentifiable)persistentFileIdentifiable
{
  v2 = [(CCToolKitToolSystemTypeProtocolPersistentFileIdentifiable *)self->_persistentFileIdentifiable copy];

  return v2;
}

- (CCToolKitToolSystemTypeProtocolAssistantSchema)assistantSchema
{
  v2 = [(CCToolKitToolSystemTypeProtocolAssistantSchema *)self->_assistantSchema copy];

  return v2;
}

- (CCToolKitToolSystemTypeProtocolIntentUpdatableEntity)intentUpdatableEntity
{
  v2 = [(CCToolKitToolSystemTypeProtocolIntentUpdatableEntity *)self->_intentUpdatableEntity copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v5];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_216;
  }

  v10 = 0;
  v11 = MEMORY[0x1E6993AA0];
  do
  {
    if (*&v6[*v9])
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (!v12)
    {
      break;
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *v7;
      v17 = *&v6[v16];
      v18 = v17 + 1;
      if (v17 == -1 || v18 > *&v6[*v8])
      {
        break;
      }

      v19 = *(*&v6[*v11] + v17);
      *&v6[v16] = v18;
      v15 |= (v19 & 0x7F) << v13;
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      v13 += 7;
      v20 = v14++ >= 9;
      if (v20)
      {
        v21 = 0;
        if (*&v6[*v9])
        {
          goto LABEL_217;
        }

        goto LABEL_21;
      }
    }

    *&v6[*v9] = 1;
LABEL_17:
    v22 = *&v6[*v9];
    if (v22)
    {
      v21 = 0;
    }

    else
    {
      v21 = v15;
    }

    if (v22)
    {
      goto LABEL_217;
    }

LABEL_21:
    switch((v21 >> 3))
    {
      case 1u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v26 = *v7;
          v27 = *&v6[v26];
          v28 = v27 + 1;
          if (v27 == -1 || v28 > *&v6[*v8])
          {
            break;
          }

          v29 = *(*&v6[*v11] + v27);
          *&v6[v26] = v28;
          v25 |= (v29 & 0x7F) << v23;
          if ((v29 & 0x80) == 0)
          {
            goto LABEL_170;
          }

          v23 += 7;
          v20 = v24++ >= 9;
          if (v20)
          {
            LODWORD(v25) = 0;
            goto LABEL_172;
          }
        }

        *&v6[*v9] = 1;
LABEL_170:
        if (*&v6[*v9])
        {
          LODWORD(v25) = 0;
        }

LABEL_172:
        self->_unk = v25;
        self->_kindType = 1;
        self->_mailAccount = 0;
        goto LABEL_177;
      case 2u:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        while (2)
        {
          v100 = *v7;
          v101 = *&v6[v100];
          v102 = v101 + 1;
          if (v101 == -1 || v102 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v103 = *(*&v6[*v11] + v101);
            *&v6[v100] = v102;
            v99 |= (v103 & 0x7F) << v97;
            if (v103 < 0)
            {
              v97 += 7;
              v20 = v98++ >= 9;
              if (v20)
              {
                LODWORD(v99) = 0;
                goto LABEL_176;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v99) = 0;
        }

LABEL_176:
        self->_mailAccount = v99;
        self->_unk = 0;
        self->_kindType = 2;
LABEL_177:
        self->_mailAddressee = 0;
        goto LABEL_178;
      case 3u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (2)
        {
          v73 = *v7;
          v74 = *&v6[v73];
          v75 = v74 + 1;
          if (v74 == -1 || v75 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v76 = *(*&v6[*v11] + v74);
            *&v6[v73] = v75;
            v72 |= (v76 & 0x7F) << v70;
            if (v76 < 0)
            {
              v70 += 7;
              v20 = v71++ >= 9;
              if (v20)
              {
                LODWORD(v72) = 0;
                goto LABEL_160;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v72) = 0;
        }

LABEL_160:
        self->_mailAddressee = v72;
        self->_unk = 0;
        self->_mailAccount = 0;
        self->_kindType = 3;
LABEL_178:
        self->_mailMessage = 0;
        goto LABEL_179;
      case 4u:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        while (2)
        {
          v86 = *v7;
          v87 = *&v6[v86];
          v88 = v87 + 1;
          if (v87 == -1 || v88 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v89 = *(*&v6[*v11] + v87);
            *&v6[v86] = v88;
            v85 |= (v89 & 0x7F) << v83;
            if (v89 < 0)
            {
              v83 += 7;
              v20 = v84++ >= 9;
              if (v20)
              {
                LODWORD(v85) = 0;
                goto LABEL_164;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v85) = 0;
        }

LABEL_164:
        self->_mailMessage = v85;
        self->_unk = 0;
        self->_mailAccount = 0;
        self->_mailAddressee = 0;
        self->_kindType = 4;
LABEL_179:
        self->_mailbox = 0;
        goto LABEL_180;
      case 5u:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        while (2)
        {
          v54 = *v7;
          v55 = *&v6[v54];
          v56 = v55 + 1;
          if (v55 == -1 || v56 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v57 = *(*&v6[*v11] + v55);
            *&v6[v54] = v56;
            v53 |= (v57 & 0x7F) << v51;
            if (v57 < 0)
            {
              v51 += 7;
              v20 = v52++ >= 9;
              if (v20)
              {
                LODWORD(v53) = 0;
                goto LABEL_152;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v53) = 0;
        }

LABEL_152:
        self->_mailbox = v53;
        self->_unk = 0;
        self->_mailAccount = 0;
        self->_mailAddressee = 0;
        self->_mailMessage = 0;
        self->_kindType = 5;
LABEL_180:
        self->_intentMessage = 0;
        goto LABEL_181;
      case 6u:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        while (2)
        {
          v114 = *v7;
          v115 = *&v6[v114];
          v116 = v115 + 1;
          if (v115 == -1 || v116 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v117 = *(*&v6[*v11] + v115);
            *&v6[v114] = v116;
            v113 |= (v117 & 0x7F) << v111;
            if (v117 < 0)
            {
              v111 += 7;
              v20 = v112++ >= 9;
              if (v20)
              {
                LODWORD(v113) = 0;
                goto LABEL_199;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v113) = 0;
        }

LABEL_199:
        self->_intentMessage = v113;
        self->_unk = 0;
        self->_mailAccount = 0;
        self->_mailAddressee = 0;
        self->_mailMessage = 0;
        self->_mailbox = 0;
        self->_kindType = 6;
LABEL_181:
        self->_messageGroup = 0;
        goto LABEL_182;
      case 7u:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        while (2)
        {
          v127 = *v7;
          v128 = *&v6[v127];
          v129 = v128 + 1;
          if (v128 == -1 || v129 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v130 = *(*&v6[*v11] + v128);
            *&v6[v127] = v129;
            v126 |= (v130 & 0x7F) << v124;
            if (v130 < 0)
            {
              v124 += 7;
              v20 = v125++ >= 9;
              if (v20)
              {
                LODWORD(v126) = 0;
                goto LABEL_203;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v126) = 0;
        }

LABEL_203:
        self->_messageGroup = v126;
        self->_unk = 0;
        self->_mailAccount = 0;
        self->_mailAddressee = 0;
        self->_mailMessage = 0;
        self->_mailbox = 0;
        self->_intentMessage = 0;
        self->_kindType = 7;
LABEL_182:
        self->_messageParticipants = 0;
        goto LABEL_183;
      case 8u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        while (2)
        {
          v93 = *v7;
          v94 = *&v6[v93];
          v95 = v94 + 1;
          if (v94 == -1 || v95 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v96 = *(*&v6[*v11] + v94);
            *&v6[v93] = v95;
            v92 |= (v96 & 0x7F) << v90;
            if (v96 < 0)
            {
              v90 += 7;
              v20 = v91++ >= 9;
              if (v20)
              {
                LODWORD(v92) = 0;
                goto LABEL_168;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v92) = 0;
        }

LABEL_168:
        self->_messageParticipants = v92;
        self->_unk = 0;
        self->_mailAccount = 0;
        self->_mailAddressee = 0;
        self->_mailMessage = 0;
        self->_mailbox = 0;
        self->_intentMessage = 0;
        self->_messageGroup = 0;
        self->_kindType = 8;
LABEL_183:
        self->_uniqueEntity = 0;
        goto LABEL_184;
      case 9u:
        v138 = 0;
        v139 = 0;
        v140 = 0;
        while (2)
        {
          v141 = *v7;
          v142 = *&v6[v141];
          v143 = v142 + 1;
          if (v142 == -1 || v143 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v144 = *(*&v6[*v11] + v142);
            *&v6[v141] = v143;
            v140 |= (v144 & 0x7F) << v138;
            if (v144 < 0)
            {
              v138 += 7;
              v20 = v139++ >= 9;
              if (v20)
              {
                LODWORD(v140) = 0;
                goto LABEL_211;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v140) = 0;
        }

LABEL_211:
        self->_uniqueEntity = v140;
        self->_unk = 0;
        self->_mailAccount = 0;
        self->_mailAddressee = 0;
        self->_mailMessage = 0;
        self->_mailbox = 0;
        self->_intentMessage = 0;
        self->_messageGroup = 0;
        self->_messageParticipants = 0;
        self->_kindType = 9;
LABEL_184:
        intentUpdatableEntity = self->_intentUpdatableEntity;
        self->_intentUpdatableEntity = 0;

        self->_urlRepresentable = 0;
        goto LABEL_185;
      case 0xAu:
        v65 = [CCToolKitToolSystemTypeProtocolIntentUpdatableEntity alloc];
        v66 = CCPBReaderReadDataNoCopy();
        v170 = 0;
        v67 = [(CCItemMessage *)v65 initWithData:v66 error:&v170];
        v10 = v170;
        v68 = self->_intentUpdatableEntity;
        self->_intentUpdatableEntity = v67;

        if (v10)
        {
          continue;
        }

        self->_unk = 0;
        self->_mailAccount = 0;
        self->_mailAddressee = 0;
        self->_mailMessage = 0;
        self->_mailbox = 0;
        self->_intentMessage = 0;
        self->_messageGroup = 0;
        self->_messageParticipants = 0;
        self->_uniqueEntity = 0;
        self->_kindType = 10;
        self->_urlRepresentable = 0;
        self->_visualSearch = 0;
        self->_visualSearchOcr = 0;
        assistantSchema = self->_assistantSchema;
        self->_assistantSchema = 0;

        goto LABEL_112;
      case 0xBu:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        while (2)
        {
          v134 = *v7;
          v135 = *&v6[v134];
          v136 = v135 + 1;
          if (v135 == -1 || v136 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v137 = *(*&v6[*v11] + v135);
            *&v6[v134] = v136;
            v133 |= (v137 & 0x7F) << v131;
            if (v137 < 0)
            {
              v131 += 7;
              v20 = v132++ >= 9;
              if (v20)
              {
                LODWORD(v133) = 0;
                goto LABEL_207;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v133) = 0;
        }

LABEL_207:
        self->_urlRepresentable = v133;
        self->_unk = 0;
        self->_mailAccount = 0;
        self->_mailAddressee = 0;
        self->_mailMessage = 0;
        self->_mailbox = 0;
        self->_intentMessage = 0;
        self->_messageGroup = 0;
        self->_messageParticipants = 0;
        self->_uniqueEntity = 0;
        v158 = self->_intentUpdatableEntity;
        self->_intentUpdatableEntity = 0;

        self->_kindType = 11;
LABEL_185:
        self->_visualSearch = 0;
        goto LABEL_186;
      case 0xCu:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        while (2)
        {
          v47 = *v7;
          v48 = *&v6[v47];
          v49 = v48 + 1;
          if (v48 == -1 || v49 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v50 = *(*&v6[*v11] + v48);
            *&v6[v47] = v49;
            v46 |= (v50 & 0x7F) << v44;
            if (v50 < 0)
            {
              v44 += 7;
              v20 = v45++ >= 9;
              if (v20)
              {
                LODWORD(v46) = 0;
                goto LABEL_148;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v46) = 0;
        }

LABEL_148:
        self->_visualSearch = v46;
        self->_unk = 0;
        self->_mailAccount = 0;
        self->_mailAddressee = 0;
        self->_mailMessage = 0;
        self->_mailbox = 0;
        self->_intentMessage = 0;
        self->_messageGroup = 0;
        self->_messageParticipants = 0;
        self->_uniqueEntity = 0;
        v150 = self->_intentUpdatableEntity;
        self->_intentUpdatableEntity = 0;

        self->_urlRepresentable = 0;
        self->_kindType = 12;
LABEL_186:
        self->_visualSearchOcr = 0;
        goto LABEL_187;
      case 0xDu:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        while (2)
        {
          v61 = *v7;
          v62 = *&v6[v61];
          v63 = v62 + 1;
          if (v62 == -1 || v63 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v64 = *(*&v6[*v11] + v62);
            *&v6[v61] = v63;
            v60 |= (v64 & 0x7F) << v58;
            if (v64 < 0)
            {
              v58 += 7;
              v20 = v59++ >= 9;
              if (v20)
              {
                LODWORD(v60) = 0;
                goto LABEL_156;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v60) = 0;
        }

LABEL_156:
        self->_visualSearchOcr = v60;
        self->_unk = 0;
        self->_mailAccount = 0;
        self->_mailAddressee = 0;
        self->_mailMessage = 0;
        self->_mailbox = 0;
        self->_intentMessage = 0;
        self->_messageGroup = 0;
        self->_messageParticipants = 0;
        self->_uniqueEntity = 0;
        v151 = self->_intentUpdatableEntity;
        self->_intentUpdatableEntity = 0;

        self->_urlRepresentable = 0;
        self->_visualSearch = 0;
        self->_kindType = 13;
LABEL_187:
        v153 = self->_assistantSchema;
        self->_assistantSchema = 0;

        self->_updatableEntity = 0;
        goto LABEL_188;
      case 0xEu:
        v118 = [CCToolKitToolSystemTypeProtocolAssistantSchema alloc];
        v119 = CCPBReaderReadDataNoCopy();
        v169 = 0;
        v120 = [(CCItemMessage *)v118 initWithData:v119 error:&v169];
        v10 = v169;
        v121 = self->_assistantSchema;
        self->_assistantSchema = v120;

        if (v10)
        {
          continue;
        }

        self->_unk = 0;
        self->_mailAccount = 0;
        self->_mailAddressee = 0;
        self->_mailMessage = 0;
        self->_mailbox = 0;
        self->_intentMessage = 0;
        self->_messageGroup = 0;
        self->_messageParticipants = 0;
        self->_uniqueEntity = 0;
        v122 = self->_intentUpdatableEntity;
        self->_intentUpdatableEntity = 0;

        self->_urlRepresentable = 0;
        self->_visualSearch = 0;
        self->_visualSearchOcr = 0;
        self->_kindType = 14;
LABEL_112:
        self->_updatableEntity = 0;
        persistentFileIdentifiable = self->_persistentFileIdentifiable;
        self->_persistentFileIdentifiable = 0;

        goto LABEL_113;
      case 0xFu:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        while (2)
        {
          v40 = *v7;
          v41 = *&v6[v40];
          v42 = v41 + 1;
          if (v41 == -1 || v42 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v43 = *(*&v6[*v11] + v41);
            *&v6[v40] = v42;
            v39 |= (v43 & 0x7F) << v37;
            if (v43 < 0)
            {
              v37 += 7;
              v20 = v38++ >= 9;
              if (v20)
              {
                LODWORD(v39) = 0;
                goto LABEL_144;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v39) = 0;
        }

LABEL_144:
        self->_updatableEntity = v39;
        self->_unk = 0;
        self->_mailAccount = 0;
        self->_mailAddressee = 0;
        self->_mailMessage = 0;
        self->_mailbox = 0;
        self->_intentMessage = 0;
        self->_messageGroup = 0;
        self->_messageParticipants = 0;
        self->_uniqueEntity = 0;
        v148 = self->_intentUpdatableEntity;
        self->_intentUpdatableEntity = 0;

        self->_urlRepresentable = 0;
        self->_visualSearch = 0;
        self->_visualSearchOcr = 0;
        v149 = self->_assistantSchema;
        self->_assistantSchema = 0;

        self->_kindType = 15;
LABEL_188:
        v154 = self->_persistentFileIdentifiable;
        self->_persistentFileIdentifiable = 0;

        v10 = 0;
        self->_transientEntity = 0;
        goto LABEL_189;
      case 0x10u:
        v77 = [CCToolKitToolSystemTypeProtocolPersistentFileIdentifiable alloc];
        v78 = CCPBReaderReadDataNoCopy();
        v168 = 0;
        v79 = [(CCItemMessage *)v77 initWithData:v78 error:&v168];
        v10 = v168;
        v80 = self->_persistentFileIdentifiable;
        self->_persistentFileIdentifiable = v79;

        if (v10)
        {
          continue;
        }

        self->_unk = 0;
        self->_mailAccount = 0;
        self->_mailAddressee = 0;
        self->_mailMessage = 0;
        self->_mailbox = 0;
        self->_intentMessage = 0;
        self->_messageGroup = 0;
        self->_messageParticipants = 0;
        self->_uniqueEntity = 0;
        v81 = self->_intentUpdatableEntity;
        self->_intentUpdatableEntity = 0;

        self->_urlRepresentable = 0;
        self->_visualSearch = 0;
        self->_visualSearchOcr = 0;
        v82 = self->_assistantSchema;
        self->_assistantSchema = 0;

        self->_updatableEntity = 0;
        self->_kindType = 16;
LABEL_113:
        self->_transientEntity = 0;
        self->_indexedEntity = 0;
        continue;
      case 0x11u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        while (2)
        {
          v33 = *v7;
          v34 = *&v6[v33];
          v35 = v34 + 1;
          if (v34 == -1 || v35 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v36 = *(*&v6[*v11] + v34);
            *&v6[v33] = v35;
            v32 |= (v36 & 0x7F) << v30;
            if (v36 < 0)
            {
              v30 += 7;
              v20 = v31++ >= 9;
              if (v20)
              {
                LODWORD(v32) = 0;
                goto LABEL_140;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v32) = 0;
        }

LABEL_140:
        self->_transientEntity = v32;
        self->_unk = 0;
        self->_mailAccount = 0;
        self->_mailAddressee = 0;
        self->_mailMessage = 0;
        self->_mailbox = 0;
        self->_intentMessage = 0;
        self->_messageGroup = 0;
        self->_messageParticipants = 0;
        self->_uniqueEntity = 0;
        v145 = self->_intentUpdatableEntity;
        self->_intentUpdatableEntity = 0;

        self->_urlRepresentable = 0;
        self->_visualSearch = 0;
        self->_visualSearchOcr = 0;
        v146 = self->_assistantSchema;
        self->_assistantSchema = 0;

        self->_updatableEntity = 0;
        v147 = self->_persistentFileIdentifiable;
        self->_persistentFileIdentifiable = 0;

        v10 = 0;
        self->_kindType = 17;
LABEL_189:
        self->_indexedEntity = 0;
        continue;
      case 0x12u:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        break;
      default:
        if (CCPBReaderSkipValueWithTag())
        {
          v10 = 0;
        }

        else
        {
          v159 = objc_opt_class();
          v160 = NSStringFromClass(v159);
          v161 = *&v6[*v9];
          v10 = CCSkipFieldErrorForMessage();
        }

        continue;
    }

    while (1)
    {
      v107 = *v7;
      v108 = *&v6[v107];
      v109 = v108 + 1;
      if (v108 == -1 || v109 > *&v6[*v8])
      {
        break;
      }

      v110 = *(*&v6[*v11] + v108);
      *&v6[v107] = v109;
      v106 |= (v110 & 0x7F) << v104;
      if ((v110 & 0x80) == 0)
      {
        goto LABEL_193;
      }

      v104 += 7;
      v20 = v105++ >= 9;
      if (v20)
      {
        LODWORD(v106) = 0;
        goto LABEL_195;
      }
    }

    *&v6[*v9] = 1;
LABEL_193:
    if (*&v6[*v9])
    {
      LODWORD(v106) = 0;
    }

LABEL_195:
    self->_indexedEntity = v106;
    self->_unk = 0;
    self->_mailAccount = 0;
    self->_mailAddressee = 0;
    self->_mailMessage = 0;
    self->_mailbox = 0;
    self->_intentMessage = 0;
    self->_messageGroup = 0;
    self->_messageParticipants = 0;
    self->_uniqueEntity = 0;
    v155 = self->_intentUpdatableEntity;
    self->_intentUpdatableEntity = 0;

    self->_urlRepresentable = 0;
    self->_visualSearch = 0;
    self->_visualSearchOcr = 0;
    v156 = self->_assistantSchema;
    self->_assistantSchema = 0;

    self->_updatableEntity = 0;
    v157 = self->_persistentFileIdentifiable;
    self->_persistentFileIdentifiable = 0;

    v10 = 0;
    self->_transientEntity = 0;
    self->_kindType = 18;
  }

  while (*&v6[*v7] < *&v6[*v8]);
  if (v10)
  {
    CCSetError();
  }

  else
  {
LABEL_216:
    if (!*&v6[*v9])
    {
      v10 = 0;
      v166 = 1;
      goto LABEL_220;
    }

LABEL_217:
    v162 = objc_opt_class();
    v163 = NSStringFromClass(v162);
    v164 = *&v6[*v9];
    v165 = CCInvalidBufferErrorForMessage();
    CCSetError();

    v10 = 0;
  }

  v166 = 0;
LABEL_220:

  return v166;
}

- (CCToolKitToolSystemTypeProtocol)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = objc_opt_new();
  if (v8 && a4 == 1)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (IsInstanceOfExpectedClass)
    {
      [v8 unsignedIntegerValue];
      v12 = CCValidateEnumField();
      v13 = v11;

      if (v12)
      {
        goto LABEL_45;
      }

      goto LABEL_46;
    }

LABEL_89:
    CCSetError();
    v31 = 0;
    goto LABEL_90;
  }

  if (v8 && a4 == 2)
  {
    objc_opt_class();
    v14 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v14)
    {
      [v8 unsignedIntegerValue];
      v15 = CCValidateEnumField();
      v13 = v11;

      if (v15)
      {
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    goto LABEL_89;
  }

  if (v8 && a4 == 3)
  {
    objc_opt_class();
    v16 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v16)
    {
      [v8 unsignedIntegerValue];
      v17 = CCValidateEnumField();
      v13 = v11;

      if (v17)
      {
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    goto LABEL_89;
  }

  if (v8 && a4 == 4)
  {
    objc_opt_class();
    v18 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v18)
    {
      [v8 unsignedIntegerValue];
      v19 = CCValidateEnumField();
      v13 = v11;

      if (v19)
      {
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    goto LABEL_89;
  }

  if (v8 && a4 == 5)
  {
    objc_opt_class();
    v20 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v20)
    {
      [v8 unsignedIntegerValue];
      v21 = CCValidateEnumField();
      v13 = v11;

      if (v21)
      {
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    goto LABEL_89;
  }

  if (v8 && a4 == 6)
  {
    objc_opt_class();
    v22 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v22)
    {
      [v8 unsignedIntegerValue];
      v23 = CCValidateEnumField();
      v13 = v11;

      if (v23)
      {
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    goto LABEL_89;
  }

  if (v8 && a4 == 7)
  {
    objc_opt_class();
    v24 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v24)
    {
      [v8 unsignedIntegerValue];
      v25 = CCValidateEnumField();
      v13 = v11;

      if (v25)
      {
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    goto LABEL_89;
  }

  if (v8 && a4 == 8)
  {
    objc_opt_class();
    v26 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v26)
    {
      [v8 unsignedIntegerValue];
      v27 = CCValidateEnumField();
      v13 = v11;

      if (v27)
      {
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    goto LABEL_89;
  }

  if (!v8 || a4 != 9)
  {
    if (v8 && a4 == 10)
    {
      objc_opt_class();
      v32 = CCValidateIsInstanceOfExpectedClass();
      v13 = 0;
      if (v32)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (v8 && a4 == 11)
      {
        objc_opt_class();
        v34 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v34)
        {
          [v8 unsignedIntegerValue];
          v35 = CCValidateEnumField();
          v13 = v11;

          if (!v35)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

        goto LABEL_89;
      }

      if (v8 && a4 == 12)
      {
        objc_opt_class();
        v36 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v36)
        {
          [v8 unsignedIntegerValue];
          v37 = CCValidateEnumField();
          v13 = v11;

          if (!v37)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

        goto LABEL_89;
      }

      if (v8 && a4 == 13)
      {
        objc_opt_class();
        v38 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v38)
        {
          [v8 unsignedIntegerValue];
          v39 = CCValidateEnumField();
          v13 = v11;

          if (!v39)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

        goto LABEL_89;
      }

      if (v8 && a4 == 14)
      {
        objc_opt_class();
        v40 = CCValidateIsInstanceOfExpectedClass();
        v13 = 0;
        if (v40)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v8 && a4 == 15)
        {
          objc_opt_class();
          v41 = CCValidateIsInstanceOfExpectedClass();
          v11 = 0;
          if (v41)
          {
            [v8 unsignedIntegerValue];
            v42 = CCValidateEnumField();
            v13 = v11;

            if (!v42)
            {
              goto LABEL_46;
            }

            goto LABEL_45;
          }

          goto LABEL_89;
        }

        if (!v8 || a4 != 16)
        {
          if (v8 && a4 == 17)
          {
            objc_opt_class();
            v44 = CCValidateIsInstanceOfExpectedClass();
            v11 = 0;
            if (v44)
            {
              [v8 unsignedIntegerValue];
              v45 = CCValidateEnumField();
              v13 = v11;

              if (!v45)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            }
          }

          else
          {
            v13 = 0;
            if (!v8 || a4 != 18)
            {
              goto LABEL_46;
            }

            objc_opt_class();
            v46 = CCValidateIsInstanceOfExpectedClass();
            v11 = 0;
            if (v46)
            {
              [v8 unsignedIntegerValue];
              v47 = CCValidateEnumField();
              v13 = v11;

              if (!v47)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            }
          }

          goto LABEL_89;
        }

        objc_opt_class();
        v43 = CCValidateIsInstanceOfExpectedClass();
        v13 = 0;
        if (v43)
        {
LABEL_50:
          v33 = [v8 data];
          CCPBDataWriterWriteDataField();

          goto LABEL_46;
        }
      }
    }

    CCSetError();
    v31 = 0;
    v11 = v13;
    goto LABEL_90;
  }

  objc_opt_class();
  v28 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if (!v28)
  {
    goto LABEL_89;
  }

  [v8 unsignedIntegerValue];
  v29 = CCValidateEnumField();
  v13 = v11;

  if (v29)
  {
LABEL_45:
    CCPBDataWriterWriteUint32Field();
  }

LABEL_46:
  v30 = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:v30 error:a5];

  v11 = v13;
  v31 = self;
LABEL_90:

  return v31;
}

@end