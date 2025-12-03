@interface CCSerializedSetMessage
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCSerializedSetDevice)localDevice;
- (CCSerializedSetMessage)initWithItemType:(id)type setIdentifier:(id)identifier personaIdentifier:(id)personaIdentifier descriptors:(id)descriptors sharedItemCount:(id)count localItemInstanceCount:(id)instanceCount localDevice:(id)device remoteDevices:(id)self0 items:(id)self1 options:(id)self2 error:(id *)self3;
- (CCSerializedSetMessage)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (NSArray)descriptors;
- (NSArray)items;
- (NSArray)remoteDevices;
- (NSString)personaIdentifier;
- (NSString)setIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCSerializedSetMessage

- (CCSerializedSetMessage)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v110 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v106 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"itemType"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"setIdentifier"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"personaIdentifier"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"descriptors"];
    v85 = v9;
    if (v12)
    {
      v13 = v12;
      objc_opt_class();
      v105 = v8;
      v14 = CCValidateIsInstanceOfExpectedClass();
      v15 = v8;

      if ((v14 & 1) == 0)
      {
        CCSetError();
        v34 = 0;
        v16 = v13;
        v8 = v15;
LABEL_65:

        goto LABEL_66;
      }

      errorCopy = error;
      selfCopy = self;
      v81 = v11;
      v75 = v10;
      v16 = objc_opt_new();
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v17 = v13;
      v18 = [v17 countByEnumeratingWithState:&v101 objects:v109 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v102;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v102 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v101 + 1) + 8 * i);
            v23 = [CCSerializedSetDescriptor alloc];
            v100 = 0;
            v24 = [(CCSerializedSetDescriptor *)v23 initWithJSONDictionary:v22 error:&v100];
            v25 = v100;
            if (v24)
            {
              v26 = v25 == 0;
            }

            else
            {
              v26 = 0;
            }

            if (!v26)
            {
              v33 = v25;
              CCSetError();

              v34 = 0;
              v16 = v17;
              v10 = v75;
              self = selfCopy;
              v11 = v81;
              v8 = v15;
              goto LABEL_65;
            }

            [v16 addObject:v24];
          }

          v19 = [v17 countByEnumeratingWithState:&v101 objects:v109 count:16];
        }

        while (v19);
      }

      v10 = v75;
      v11 = v81;
      v8 = v15;
      error = errorCopy;
    }

    else
    {
      v16 = 0;
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"sharedItemCount"];
    v28 = [dictionaryCopy objectForKeyedSubscript:@"localItemInstanceCount"];
    v29 = [dictionaryCopy objectForKeyedSubscript:@"localDevice"];
    if (v29)
    {
      v30 = v8;
      v99 = 0;
      v84 = v29;
      v31 = [[CCSerializedSetDevice alloc] initWithJSONDictionary:v29 error:&v99];
      v32 = v99;
      if (!v31 || v32)
      {
        v49 = v32;
        CCSetError();

        v65 = v49;
        v34 = 0;
        v8 = v30;
LABEL_64:

        goto LABEL_65;
      }

      v71 = v27;

      v84 = v31;
      v8 = v30;
    }

    else
    {
      v71 = v27;
      v84 = 0;
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"remoteDevices"];
    v70 = v28;
    if (v35)
    {
      v36 = v35;
      objc_opt_class();
      v98 = v8;
      v37 = CCValidateIsInstanceOfExpectedClass();
      v38 = v8;

      if ((v37 & 1) == 0)
      {
        CCSetError();
        v34 = 0;
        v65 = v36;
        v8 = v38;
LABEL_58:
        v28 = v70;
        v27 = v71;
        goto LABEL_64;
      }

      v72 = v38;
      selfCopy2 = self;
      v82 = v11;
      v76 = v10;
      v86 = objc_opt_new();
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v39 = v36;
      v40 = [v39 countByEnumeratingWithState:&v94 objects:v108 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v95;
        do
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v95 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v94 + 1) + 8 * j);
            v45 = [CCSerializedSetDevice alloc];
            v93 = 0;
            v46 = [(CCSerializedSetDevice *)v45 initWithJSONDictionary:v44 error:&v93];
            v47 = v93;
            if (v46)
            {
              v48 = v47 == 0;
            }

            else
            {
              v48 = 0;
            }

            if (!v48)
            {
              v64 = v47;
              CCSetError();

              v34 = 0;
              v65 = v39;
              v8 = v72;
              v10 = v76;
              self = selfCopy2;
              v11 = v82;
              goto LABEL_58;
            }

            [v86 addObject:v46];
          }

          v41 = [v39 countByEnumeratingWithState:&v94 objects:v108 count:16];
        }

        while (v41);
      }

      v10 = v76;
      v11 = v82;
      v8 = v72;
      v28 = v70;
    }

    else
    {
      v86 = 0;
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"items"];
    if (v50)
    {
      v51 = v50;
      objc_opt_class();
      v92 = v8;
      v52 = v8;
      v53 = CCValidateIsInstanceOfExpectedClass();
      v8 = v8;

      if ((v53 & 1) == 0)
      {
        CCSetError();
        v34 = 0;
LABEL_62:
        v28 = v70;
        goto LABEL_63;
      }

      v73 = v8;
      selfCopy3 = self;
      v83 = v11;
      v77 = v10;
      v54 = objc_opt_new();
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v51 = v51;
      v55 = [v51 countByEnumeratingWithState:&v88 objects:v107 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v89;
        do
        {
          for (k = 0; k != v56; ++k)
          {
            if (*v89 != v57)
            {
              objc_enumerationMutation(v51);
            }

            v59 = *(*(&v88 + 1) + 8 * k);
            v60 = [CCSerializedSetItem alloc];
            v87 = 0;
            v61 = [(CCSerializedSetItem *)v60 initWithJSONDictionary:v59 error:&v87];
            v62 = v87;
            if (v61)
            {
              v63 = v62 == 0;
            }

            else
            {
              v63 = 0;
            }

            if (!v63)
            {
              v67 = v62;
              CCSetError();

              v34 = 0;
              v10 = v77;
              self = selfCopy3;
              v11 = v83;
              v8 = v73;
              goto LABEL_62;
            }

            [v54 addObject:v61];
          }

          v56 = [v51 countByEnumeratingWithState:&v88 objects:v107 count:16];
        }

        while (v56);
      }

      v10 = v77;
      self = selfCopy3;
      v28 = v70;
    }

    else
    {
      v83 = v11;
      v54 = 0;
      v73 = v8;
    }

    v66 = [dictionaryCopy objectForKeyedSubscript:@"options"];
    v34 = [[CCSerializedSetMessage alloc] initWithItemType:v85 setIdentifier:v10 personaIdentifier:v83 descriptors:v16 sharedItemCount:v71 localItemInstanceCount:v28 localDevice:v84 remoteDevices:v86 items:v54 options:v66 error:error];

    v51 = v54;
    v11 = v83;
    v8 = v73;
LABEL_63:

    v27 = v71;
    v65 = v86;
    goto LABEL_64;
  }

  CCSetError();
  v34 = 0;
LABEL_66:

  v68 = *MEMORY[0x1E69E9840];
  return v34;
}

- (id)jsonDictionary
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_hasItemType)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCSerializedSetMessage itemType](self, "itemType")}];
    [v3 setObject:v4 forKeyedSubscript:@"itemType"];
  }

  if (self->_setIdentifier)
  {
    setIdentifier = [(CCSerializedSetMessage *)self setIdentifier];
    [v3 setObject:setIdentifier forKeyedSubscript:@"setIdentifier"];
  }

  if (self->_personaIdentifier)
  {
    personaIdentifier = [(CCSerializedSetMessage *)self personaIdentifier];
    [v3 setObject:personaIdentifier forKeyedSubscript:@"personaIdentifier"];
  }

  if (self->_descriptors)
  {
    v7 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    descriptors = [(CCSerializedSetMessage *)self descriptors];
    v9 = [descriptors countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v45;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v45 != v11)
          {
            objc_enumerationMutation(descriptors);
          }

          jsonDictionary = [*(*(&v44 + 1) + 8 * i) jsonDictionary];
          [v7 addObject:jsonDictionary];
        }

        v10 = [descriptors countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"descriptors"];
  }

  if (self->_hasSharedItemCount)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCSerializedSetMessage sharedItemCount](self, "sharedItemCount")}];
    [v3 setObject:v14 forKeyedSubscript:@"sharedItemCount"];
  }

  if (self->_hasLocalItemInstanceCount)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCSerializedSetMessage localItemInstanceCount](self, "localItemInstanceCount")}];
    [v3 setObject:v15 forKeyedSubscript:@"localItemInstanceCount"];
  }

  if (self->_localDevice)
  {
    localDevice = [(CCSerializedSetMessage *)self localDevice];
    jsonDictionary2 = [localDevice jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"localDevice"];
  }

  if (self->_remoteDevices)
  {
    v18 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    remoteDevices = [(CCSerializedSetMessage *)self remoteDevices];
    v20 = [remoteDevices countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v41;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(remoteDevices);
          }

          jsonDictionary3 = [*(*(&v40 + 1) + 8 * j) jsonDictionary];
          [v18 addObject:jsonDictionary3];
        }

        v21 = [remoteDevices countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v21);
    }

    [v3 setObject:v18 forKeyedSubscript:@"remoteDevices"];
  }

  if (self->_items)
  {
    v25 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    items = [(CCSerializedSetMessage *)self items];
    v27 = [items countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v37;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(items);
          }

          jsonDictionary4 = [*(*(&v36 + 1) + 8 * k) jsonDictionary];
          [v25 addObject:jsonDictionary4];
        }

        v28 = [items countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v28);
    }

    [v3 setObject:v25 forKeyedSubscript:@"items"];
  }

  if (self->_hasOptions)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCSerializedSetMessage options](self, "options")}];
    [v3 setObject:v32 forKeyedSubscript:@"options"];
  }

  v33 = [v3 copy];

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = MEMORY[0x1E69939A8];
  if (self->_hasItemType)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] uint32Value:self->_itemType];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_setIdentifier)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 stringValue:self->_setIdentifier];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_personaIdentifier)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 stringValue:self->_personaIdentifier];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_descriptors)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 repeatedSubMessageValue:self->_descriptors];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_hasSharedItemCount)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 uint32Value:self->_sharedItemCount];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_hasLocalItemInstanceCount)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 uint32Value:self->_localItemInstanceCount];
    blockCopy[2](blockCopy, v11);
  }

  if (self->_localDevice)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 subMessageValue:self->_localDevice];
    blockCopy[2](blockCopy, v12);
  }

  if (self->_remoteDevices)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 repeatedSubMessageValue:self->_remoteDevices];
    blockCopy[2](blockCopy, v13);
  }

  if (self->_items)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 repeatedSubMessageValue:self->_items];
    blockCopy[2](blockCopy, v14);
  }

  if (self->_hasOptions)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 uint32Value:self->_options];
    blockCopy[2](blockCopy, v15);
  }
}

- (NSArray)items
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_items copyItems:1];

  return v2;
}

- (NSArray)remoteDevices
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_remoteDevices copyItems:1];

  return v2;
}

- (CCSerializedSetDevice)localDevice
{
  v2 = [(CCSerializedSetDevice *)self->_localDevice copy];

  return v2;
}

- (NSArray)descriptors
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_descriptors copyItems:1];

  return v2;
}

- (NSString)personaIdentifier
{
  v2 = [(NSString *)self->_personaIdentifier copy];

  return v2;
}

- (NSString)setIdentifier
{
  v2 = [(NSString *)self->_setIdentifier copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  errorCopy = error;
  dataCopy = data;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] < *&v5[*MEMORY[0x1E6993AB0]])
  {
    v8 = 0;
    v78 = 0;
    v79 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E6993AA8];
    v11 = MEMORY[0x1E6993AA0];
    while (2)
    {
      if (*&v5[*v10])
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == 0;
      }

      if (!v12)
      {
        goto LABEL_108;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v6;
        v17 = *&v5[v16];
        if (v17 == -1 || v17 >= *&v5[*v7])
        {
          break;
        }

        v18 = *(*&v5[*v11] + v17);
        *&v5[v16] = v17 + 1;
        v15 |= (v18 & 0x7F) << v13;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        v19 = v14++ >= 9;
        if (v19)
        {
          v20 = 0;
          if (*&v5[*v10])
          {
            goto LABEL_107;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v10] = 1;
LABEL_17:
      v21 = *&v5[*v10];
      if (v21)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15;
      }

      if (v21)
      {
        goto LABEL_107;
      }

LABEL_21:
      v22 = v20 >> 3;
      if ((v20 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            v41 = 0;
            v42 = 0;
            v43 = 0;
            while (1)
            {
              v44 = *v6;
              v45 = *&v5[v44];
              if (v45 == -1 || v45 >= *&v5[*v7])
              {
                break;
              }

              v46 = *(*&v5[*v11] + v45);
              *&v5[v44] = v45 + 1;
              v43 |= (v46 & 0x7F) << v41;
              if ((v46 & 0x80) == 0)
              {
                goto LABEL_88;
              }

              v41 += 7;
              v19 = v42++ >= 9;
              if (v19)
              {
                LODWORD(v43) = 0;
                goto LABEL_90;
              }
            }

            *&v5[*v10] = 1;
LABEL_88:
            if (*&v5[*v10])
            {
              LODWORD(v43) = 0;
            }

LABEL_90:
            v8 = 0;
            self->_itemType = v43;
            v61 = 16;
            goto LABEL_103;
          }

          if (v22 != 2)
          {
LABEL_85:
            if ((CCPBReaderSkipValueWithTag() & 1) == 0)
            {
              v59 = objc_opt_class();
              v38 = NSStringFromClass(v59);
              v60 = *&v5[*v10];
              v8 = CCSkipFieldErrorForMessage();
              goto LABEL_84;
            }

LABEL_66:
            v8 = 0;
            goto LABEL_104;
          }

          v35 = CCPBReaderReadStringNoCopy();
          v36 = 40;
        }

        else
        {
          if (v22 != 3)
          {
            if (v22 != 4)
            {
              if (v22 == 5)
              {
                v23 = 0;
                v24 = 0;
                v25 = 0;
                while (1)
                {
                  v26 = *v6;
                  v27 = *&v5[v26];
                  if (v27 == -1 || v27 >= *&v5[*v7])
                  {
                    break;
                  }

                  v28 = *(*&v5[*v11] + v27);
                  *&v5[v26] = v27 + 1;
                  v25 |= (v28 & 0x7F) << v23;
                  if ((v28 & 0x80) == 0)
                  {
                    goto LABEL_96;
                  }

                  v23 += 7;
                  v19 = v24++ >= 9;
                  if (v19)
                  {
                    LODWORD(v25) = 0;
                    goto LABEL_98;
                  }
                }

                *&v5[*v10] = 1;
LABEL_96:
                if (*&v5[*v10])
                {
                  LODWORD(v25) = 0;
                }

LABEL_98:
                v8 = 0;
                self->_sharedItemCount = v25;
                v61 = 17;
LABEL_103:
                *(&self->super.super.isa + v61) = 1;
LABEL_104:
                if (*&v5[*v6] < *&v5[*v7])
                {
                  continue;
                }

                goto LABEL_108;
              }

              goto LABEL_85;
            }

            v38 = CCPBReaderReadDataNoCopy();
            if (!v78)
            {
              v78 = objc_opt_new();
            }

            v57 = [CCSerializedSetDescriptor alloc];
            v83 = 0;
            v55 = [(CCItemMessage *)v57 initWithData:v38 error:&v83];
            v8 = v83;
            if (v8 || !v55)
            {
              goto LABEL_83;
            }

            v56 = v78;
            goto LABEL_82;
          }

          v35 = CCPBReaderReadStringNoCopy();
          v36 = 48;
        }

        v53 = *(&self->super.super.isa + v36);
        *(&self->super.super.isa + v36) = v35;

        goto LABEL_66;
      }

      break;
    }

    if (v22 <= 7)
    {
      if (v22 == 6)
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        while (1)
        {
          v50 = *v6;
          v51 = *&v5[v50];
          if (v51 == -1 || v51 >= *&v5[*v7])
          {
            break;
          }

          v52 = *(*&v5[*v11] + v51);
          *&v5[v50] = v51 + 1;
          v49 |= (v52 & 0x7F) << v47;
          if ((v52 & 0x80) == 0)
          {
            goto LABEL_92;
          }

          v47 += 7;
          v19 = v48++ >= 9;
          if (v19)
          {
            LODWORD(v49) = 0;
            goto LABEL_94;
          }
        }

        *&v5[*v10] = 1;
LABEL_92:
        if (*&v5[*v10])
        {
          LODWORD(v49) = 0;
        }

LABEL_94:
        v8 = 0;
        self->_localItemInstanceCount = v49;
        v61 = 18;
        goto LABEL_103;
      }

      if (v22 != 7)
      {
        goto LABEL_85;
      }

      v37 = [CCSerializedSetDevice alloc];
      v38 = CCPBReaderReadDataNoCopy();
      v82 = 0;
      v39 = [(CCItemMessage *)v37 initWithData:v38 error:&v82];
      v8 = v82;
      localDevice = self->_localDevice;
      self->_localDevice = v39;

LABEL_84:
      goto LABEL_104;
    }

    switch(v22)
    {
      case 8:
        v38 = CCPBReaderReadDataNoCopy();
        if (!v79)
        {
          v79 = objc_opt_new();
        }

        v54 = [CCSerializedSetDevice alloc];
        v81 = 0;
        v55 = [(CCItemMessage *)v54 initWithData:v38 error:&v81];
        v8 = v81;
        if (v8 || !v55)
        {
          goto LABEL_83;
        }

        v56 = v79;
        break;
      case 9:
        v38 = CCPBReaderReadDataNoCopy();
        if (!v9)
        {
          v9 = objc_opt_new();
        }

        v58 = [CCSerializedSetItem alloc];
        v80 = 0;
        v55 = [(CCItemMessage *)v58 initWithData:v38 error:&v80];
        v8 = v80;
        if (v8 || !v55)
        {
          goto LABEL_83;
        }

        v56 = v9;
        break;
      case 0xA:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          v32 = *v6;
          v33 = *&v5[v32];
          if (v33 == -1 || v33 >= *&v5[*v7])
          {
            break;
          }

          v34 = *(*&v5[*v11] + v33);
          *&v5[v32] = v33 + 1;
          v31 |= (v34 & 0x7F) << v29;
          if ((v34 & 0x80) == 0)
          {
            goto LABEL_100;
          }

          v29 += 7;
          v19 = v30++ >= 9;
          if (v19)
          {
            LODWORD(v31) = 0;
            goto LABEL_102;
          }
        }

        *&v5[*v10] = 1;
LABEL_100:
        if (*&v5[*v10])
        {
          LODWORD(v31) = 0;
        }

LABEL_102:
        v8 = 0;
        self->_options = v31;
        v61 = 19;
        goto LABEL_103;
      default:
        goto LABEL_85;
    }

LABEL_82:
    [v56 addObject:{v55, errorCopy}];
LABEL_83:

    goto LABEL_84;
  }

  v9 = 0;
  v78 = 0;
  v79 = 0;
LABEL_107:
  v8 = 0;
LABEL_108:
  v62 = [v78 copy];
  descriptors = self->_descriptors;
  self->_descriptors = v62;

  v64 = [v79 copy];
  remoteDevices = self->_remoteDevices;
  self->_remoteDevices = v64;

  v66 = [v9 copy];
  items = self->_items;
  self->_items = v66;

  if (v8)
  {
    CCSetError();
    v68 = 0;
    v69 = dataCopy;
  }

  else
  {
    v70 = MEMORY[0x1E6993AA8];
    v69 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v71 = objc_opt_class();
      v72 = NSStringFromClass(v71);
      v73 = *&v5[*v70];
      v74 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v68 = 0;
    }

    else
    {
      v68 = 1;
    }
  }

  return v68;
}

- (CCSerializedSetMessage)initWithItemType:(id)type setIdentifier:(id)identifier personaIdentifier:(id)personaIdentifier descriptors:(id)descriptors sharedItemCount:(id)count localItemInstanceCount:(id)instanceCount localDevice:(id)device remoteDevices:(id)self0 items:(id)self1 options:(id)self2 error:(id *)self3
{
  v105 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  identifierCopy = identifier;
  personaIdentifierCopy = personaIdentifier;
  descriptorsCopy = descriptors;
  countCopy = count;
  instanceCountCopy = instanceCount;
  deviceCopy = device;
  devicesCopy = devices;
  itemsCopy = items;
  optionsCopy = options;
  v23 = objc_opt_new();
  v73 = typeCopy;
  v74 = descriptorsCopy;
  if (typeCopy)
  {
    objc_opt_class();
    v101 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v25 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_61;
    }

    v26 = countCopy;
    [typeCopy unsignedIntValue];
    CCPBDataWriterWriteUint32Field();
  }

  else
  {
    v26 = countCopy;
    v25 = 0;
  }

  if (identifierCopy)
  {
    objc_opt_class();
    v100 = v25;
    v27 = CCValidateIsInstanceOfExpectedClass();
    v28 = v25;

    if (!v27)
    {
      v38 = identifierCopy;
      v39 = personaIdentifierCopy;
      CCSetError();
      v40 = 0;
      v25 = v28;
LABEL_25:
      selfCopy4 = self;
      countCopy = v26;
LABEL_63:
      v44 = instanceCountCopy;
      goto LABEL_64;
    }

    CCPBDataWriterWriteStringField();
    if (!personaIdentifierCopy)
    {
LABEL_8:
      v25 = v28;
      goto LABEL_12;
    }
  }

  else
  {
    v28 = v25;
    if (!personaIdentifierCopy)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v99 = v28;
  v29 = CCValidateIsInstanceOfExpectedClass();
  v25 = v28;

  if (!v29)
  {
    v38 = identifierCopy;
    v39 = personaIdentifierCopy;
    CCSetError();
    v40 = 0;
    goto LABEL_25;
  }

  CCPBDataWriterWriteStringField();
LABEL_12:
  countCopy = v26;
  if (descriptorsCopy)
  {
    objc_opt_class();
    v98 = v25;
    v30 = CCValidateArrayValues();
    v31 = v25;

    if (!v30)
    {
      v38 = identifierCopy;
LABEL_33:
      v39 = personaIdentifierCopy;
      CCSetError();
      v40 = 0;
      v25 = v31;
LABEL_62:
      selfCopy4 = self;
      goto LABEL_63;
    }

    v70 = v26;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v32 = descriptorsCopy;
    v33 = [v32 countByEnumeratingWithState:&v94 objects:v104 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v95;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v95 != v35)
          {
            objc_enumerationMutation(v32);
          }

          data = [*(*(&v94 + 1) + 8 * i) data];
          CCPBDataWriterWriteDataField();
        }

        v34 = [v32 countByEnumeratingWithState:&v94 objects:v104 count:16];
      }

      while (v34);
    }

    countCopy = v70;
    if (!v70)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v31 = v25;
    if (!v26)
    {
LABEL_22:
      v25 = v31;
      goto LABEL_29;
    }
  }

  objc_opt_class();
  v93 = v31;
  v42 = CCValidateIsInstanceOfExpectedClass();
  v25 = v31;

  if (!v42)
  {
    goto LABEL_61;
  }

  [countCopy unsignedIntValue];
  CCPBDataWriterWriteUint32Field();
LABEL_29:
  if (!instanceCountCopy)
  {
    v45 = v25;
    goto LABEL_35;
  }

  v38 = identifierCopy;
  v39 = personaIdentifierCopy;
  objc_opt_class();
  v92 = v25;
  v43 = CCValidateIsInstanceOfExpectedClass();
  v44 = instanceCountCopy;
  v45 = v25;

  if (v43)
  {
    [instanceCountCopy unsignedIntValue];
    CCPBDataWriterWriteUint32Field();
    personaIdentifierCopy = v39;
    identifierCopy = v38;
LABEL_35:
    if (deviceCopy)
    {
      objc_opt_class();
      v91 = v45;
      v46 = CCValidateIsInstanceOfExpectedClass();
      v25 = v45;

      if (!v46)
      {
        goto LABEL_61;
      }

      data2 = [deviceCopy data];
      CCPBDataWriterWriteDataField();
    }

    else
    {
      v25 = v45;
    }

    v48 = devicesCopy;
    if (devicesCopy)
    {
      objc_opt_class();
      v90 = v25;
      v49 = CCValidateArrayValues();
      v50 = v25;

      if (!v49)
      {
        v38 = identifierCopy;
        v39 = personaIdentifierCopy;
        CCSetError();
        v40 = 0;
        v25 = v50;
        selfCopy4 = self;
        v44 = instanceCountCopy;
        goto LABEL_65;
      }

      v69 = v50;
      v71 = countCopy;
      v89 = 0u;
      v87 = 0u;
      v88 = 0u;
      v86 = 0u;
      v51 = devicesCopy;
      v52 = [v51 countByEnumeratingWithState:&v86 objects:v103 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v87;
        do
        {
          for (j = 0; j != v53; ++j)
          {
            if (*v87 != v54)
            {
              objc_enumerationMutation(v51);
            }

            data3 = [*(*(&v86 + 1) + 8 * j) data];
            CCPBDataWriterWriteDataField();
          }

          v53 = [v51 countByEnumeratingWithState:&v86 objects:v103 count:16];
        }

        while (v53);
      }

      v57 = v69;
      countCopy = v71;
    }

    else
    {
      v57 = v25;
    }

    if (!itemsCopy)
    {
      v25 = v57;
LABEL_68:
      if (!optionsCopy)
      {
        v38 = identifierCopy;
        v39 = personaIdentifierCopy;
        goto LABEL_72;
      }

      v38 = identifierCopy;
      objc_opt_class();
      v67 = CCValidateIsInstanceOfExpectedClass();
      v31 = v25;

      if (v67)
      {
        v39 = personaIdentifierCopy;
        [optionsCopy unsignedIntValue];
        CCPBDataWriterWriteUint32Field();
        v25 = v31;
LABEL_72:
        immutableData = [v23 immutableData];
        selfCopy4 = [(CCItemMessage *)self initWithData:immutableData error:error];

        v40 = selfCopy4;
        goto LABEL_63;
      }

      goto LABEL_33;
    }

    objc_opt_class();
    v85 = v57;
    v58 = CCValidateArrayValues();
    v25 = v57;

    if (v58)
    {
      v72 = countCopy;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v59 = itemsCopy;
      v60 = [v59 countByEnumeratingWithState:&v81 objects:v102 count:16];
      if (v60)
      {
        v61 = v60;
        v62 = *v82;
        do
        {
          for (k = 0; k != v61; ++k)
          {
            if (*v82 != v62)
            {
              objc_enumerationMutation(v59);
            }

            data4 = [*(*(&v81 + 1) + 8 * k) data];
            CCPBDataWriterWriteDataField();
          }

          v61 = [v59 countByEnumeratingWithState:&v81 objects:v102 count:16];
        }

        while (v61);
      }

      countCopy = v72;
      goto LABEL_68;
    }

LABEL_61:
    v38 = identifierCopy;
    v39 = personaIdentifierCopy;
    CCSetError();
    v40 = 0;
    goto LABEL_62;
  }

  CCSetError();
  v40 = 0;
  v25 = v45;
  selfCopy4 = self;
LABEL_64:
  v48 = devicesCopy;
LABEL_65:

  v65 = *MEMORY[0x1E69E9840];
  return v40;
}

@end