@interface CCSerializedSetMessage
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCSerializedSetDevice)localDevice;
- (CCSerializedSetMessage)initWithItemType:(id)a3 setIdentifier:(id)a4 personaIdentifier:(id)a5 descriptors:(id)a6 sharedItemCount:(id)a7 localItemInstanceCount:(id)a8 localDevice:(id)a9 remoteDevices:(id)a10 items:(id)a11 options:(id)a12 error:(id *)a13;
- (CCSerializedSetMessage)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (NSArray)descriptors;
- (NSArray)items;
- (NSArray)remoteDevices;
- (NSString)personaIdentifier;
- (NSString)setIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCSerializedSetMessage

- (CCSerializedSetMessage)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v110 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  v106 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"itemType"];
    v10 = [v6 objectForKeyedSubscript:@"setIdentifier"];
    v11 = [v6 objectForKeyedSubscript:@"personaIdentifier"];
    v12 = [v6 objectForKeyedSubscript:@"descriptors"];
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

      v74 = a4;
      v78 = self;
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
              self = v78;
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
      a4 = v74;
    }

    else
    {
      v16 = 0;
    }

    v27 = [v6 objectForKeyedSubscript:@"sharedItemCount"];
    v28 = [v6 objectForKeyedSubscript:@"localItemInstanceCount"];
    v29 = [v6 objectForKeyedSubscript:@"localDevice"];
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

    v35 = [v6 objectForKeyedSubscript:@"remoteDevices"];
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
      v79 = self;
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
              self = v79;
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

    v50 = [v6 objectForKeyedSubscript:@"items"];
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
      v80 = self;
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
              self = v80;
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
      self = v80;
      v28 = v70;
    }

    else
    {
      v83 = v11;
      v54 = 0;
      v73 = v8;
    }

    v66 = [v6 objectForKeyedSubscript:@"options"];
    v34 = [[CCSerializedSetMessage alloc] initWithItemType:v85 setIdentifier:v10 personaIdentifier:v83 descriptors:v16 sharedItemCount:v71 localItemInstanceCount:v28 localDevice:v84 remoteDevices:v86 items:v54 options:v66 error:a4];

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
    v5 = [(CCSerializedSetMessage *)self setIdentifier];
    [v3 setObject:v5 forKeyedSubscript:@"setIdentifier"];
  }

  if (self->_personaIdentifier)
  {
    v6 = [(CCSerializedSetMessage *)self personaIdentifier];
    [v3 setObject:v6 forKeyedSubscript:@"personaIdentifier"];
  }

  if (self->_descriptors)
  {
    v7 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v8 = [(CCSerializedSetMessage *)self descriptors];
    v9 = [v8 countByEnumeratingWithState:&v44 objects:v50 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v44 + 1) + 8 * i) jsonDictionary];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v44 objects:v50 count:16];
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
    v16 = [(CCSerializedSetMessage *)self localDevice];
    v17 = [v16 jsonDictionary];
    [v3 setObject:v17 forKeyedSubscript:@"localDevice"];
  }

  if (self->_remoteDevices)
  {
    v18 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v19 = [(CCSerializedSetMessage *)self remoteDevices];
    v20 = [v19 countByEnumeratingWithState:&v40 objects:v49 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v40 + 1) + 8 * j) jsonDictionary];
          [v18 addObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v40 objects:v49 count:16];
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
    v26 = [(CCSerializedSetMessage *)self items];
    v27 = [v26 countByEnumeratingWithState:&v36 objects:v48 count:16];
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
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v36 + 1) + 8 * k) jsonDictionary];
          [v25 addObject:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v36 objects:v48 count:16];
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

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v16 = a3;
  v5 = MEMORY[0x1E69939A8];
  if (self->_hasItemType)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] uint32Value:self->_itemType];
    v16[2](v16, v6);
  }

  if (self->_setIdentifier)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 stringValue:self->_setIdentifier];
    v16[2](v16, v7);
  }

  if (self->_personaIdentifier)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 stringValue:self->_personaIdentifier];
    v16[2](v16, v8);
  }

  if (self->_descriptors)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 repeatedSubMessageValue:self->_descriptors];
    v16[2](v16, v9);
  }

  if (self->_hasSharedItemCount)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 uint32Value:self->_sharedItemCount];
    v16[2](v16, v10);
  }

  if (self->_hasLocalItemInstanceCount)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 uint32Value:self->_localItemInstanceCount];
    v16[2](v16, v11);
  }

  if (self->_localDevice)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 subMessageValue:self->_localDevice];
    v16[2](v16, v12);
  }

  if (self->_remoteDevices)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 repeatedSubMessageValue:self->_remoteDevices];
    v16[2](v16, v13);
  }

  if (self->_items)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 repeatedSubMessageValue:self->_items];
    v16[2](v16, v14);
  }

  if (self->_hasOptions)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 uint32Value:self->_options];
    v16[2](v16, v15);
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

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v76 = a4;
  v77 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v77];
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
    [v56 addObject:{v55, v76}];
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
    v69 = v77;
  }

  else
  {
    v70 = MEMORY[0x1E6993AA8];
    v69 = v77;
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

- (CCSerializedSetMessage)initWithItemType:(id)a3 setIdentifier:(id)a4 personaIdentifier:(id)a5 descriptors:(id)a6 sharedItemCount:(id)a7 localItemInstanceCount:(id)a8 localDevice:(id)a9 remoteDevices:(id)a10 items:(id)a11 options:(id)a12 error:(id *)a13
{
  v105 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v79 = a8;
  v80 = a9;
  v77 = a10;
  v78 = a11;
  v76 = a12;
  v23 = objc_opt_new();
  v73 = v18;
  v74 = v21;
  if (v18)
  {
    objc_opt_class();
    v101 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v25 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_61;
    }

    v26 = v22;
    [v18 unsignedIntValue];
    CCPBDataWriterWriteUint32Field();
  }

  else
  {
    v26 = v22;
    v25 = 0;
  }

  if (v19)
  {
    objc_opt_class();
    v100 = v25;
    v27 = CCValidateIsInstanceOfExpectedClass();
    v28 = v25;

    if (!v27)
    {
      v38 = v19;
      v39 = v20;
      CCSetError();
      v40 = 0;
      v25 = v28;
LABEL_25:
      v41 = self;
      v22 = v26;
LABEL_63:
      v44 = v79;
      goto LABEL_64;
    }

    CCPBDataWriterWriteStringField();
    if (!v20)
    {
LABEL_8:
      v25 = v28;
      goto LABEL_12;
    }
  }

  else
  {
    v28 = v25;
    if (!v20)
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
    v38 = v19;
    v39 = v20;
    CCSetError();
    v40 = 0;
    goto LABEL_25;
  }

  CCPBDataWriterWriteStringField();
LABEL_12:
  v22 = v26;
  if (v21)
  {
    objc_opt_class();
    v98 = v25;
    v30 = CCValidateArrayValues();
    v31 = v25;

    if (!v30)
    {
      v38 = v19;
LABEL_33:
      v39 = v20;
      CCSetError();
      v40 = 0;
      v25 = v31;
LABEL_62:
      v41 = self;
      goto LABEL_63;
    }

    v70 = v26;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v32 = v21;
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

          v37 = [*(*(&v94 + 1) + 8 * i) data];
          CCPBDataWriterWriteDataField();
        }

        v34 = [v32 countByEnumeratingWithState:&v94 objects:v104 count:16];
      }

      while (v34);
    }

    v22 = v70;
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

  [v22 unsignedIntValue];
  CCPBDataWriterWriteUint32Field();
LABEL_29:
  if (!v79)
  {
    v45 = v25;
    goto LABEL_35;
  }

  v38 = v19;
  v39 = v20;
  objc_opt_class();
  v92 = v25;
  v43 = CCValidateIsInstanceOfExpectedClass();
  v44 = v79;
  v45 = v25;

  if (v43)
  {
    [v79 unsignedIntValue];
    CCPBDataWriterWriteUint32Field();
    v20 = v39;
    v19 = v38;
LABEL_35:
    if (v80)
    {
      objc_opt_class();
      v91 = v45;
      v46 = CCValidateIsInstanceOfExpectedClass();
      v25 = v45;

      if (!v46)
      {
        goto LABEL_61;
      }

      v47 = [v80 data];
      CCPBDataWriterWriteDataField();
    }

    else
    {
      v25 = v45;
    }

    v48 = v77;
    if (v77)
    {
      objc_opt_class();
      v90 = v25;
      v49 = CCValidateArrayValues();
      v50 = v25;

      if (!v49)
      {
        v38 = v19;
        v39 = v20;
        CCSetError();
        v40 = 0;
        v25 = v50;
        v41 = self;
        v44 = v79;
        goto LABEL_65;
      }

      v69 = v50;
      v71 = v22;
      v89 = 0u;
      v87 = 0u;
      v88 = 0u;
      v86 = 0u;
      v51 = v77;
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

            v56 = [*(*(&v86 + 1) + 8 * j) data];
            CCPBDataWriterWriteDataField();
          }

          v53 = [v51 countByEnumeratingWithState:&v86 objects:v103 count:16];
        }

        while (v53);
      }

      v57 = v69;
      v22 = v71;
    }

    else
    {
      v57 = v25;
    }

    if (!v78)
    {
      v25 = v57;
LABEL_68:
      if (!v76)
      {
        v38 = v19;
        v39 = v20;
        goto LABEL_72;
      }

      v38 = v19;
      objc_opt_class();
      v67 = CCValidateIsInstanceOfExpectedClass();
      v31 = v25;

      if (v67)
      {
        v39 = v20;
        [v76 unsignedIntValue];
        CCPBDataWriterWriteUint32Field();
        v25 = v31;
LABEL_72:
        v68 = [v23 immutableData];
        v41 = [(CCItemMessage *)self initWithData:v68 error:a13];

        v40 = v41;
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
      v72 = v22;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v59 = v78;
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

            v64 = [*(*(&v81 + 1) + 8 * k) data];
            CCPBDataWriterWriteDataField();
          }

          v61 = [v59 countByEnumeratingWithState:&v81 objects:v102 count:16];
        }

        while (v61);
      }

      v22 = v72;
      goto LABEL_68;
    }

LABEL_61:
    v38 = v19;
    v39 = v20;
    CCSetError();
    v40 = 0;
    goto LABEL_62;
  }

  CCSetError();
  v40 = 0;
  v25 = v45;
  v41 = self;
LABEL_64:
  v48 = v77;
LABEL_65:

  v65 = *MEMORY[0x1E69E9840];
  return v40;
}

@end