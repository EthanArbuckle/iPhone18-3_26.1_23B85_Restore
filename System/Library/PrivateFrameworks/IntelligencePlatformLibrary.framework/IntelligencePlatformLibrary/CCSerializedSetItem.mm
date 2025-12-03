@interface CCSerializedSetItem
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCSerializedSetItem)initWithItemType:(id)type sharedIdentifier:(id)identifier localInstanceIdentifiers:(id)identifiers content:(id)content localMetaContent:(id)metaContent remoteDeviceIndices:(id)indices error:(id *)error;
- (CCSerializedSetItem)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (NSArray)localMetaContent;
- (NSData)content;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCSerializedSetItem

- (CCSerializedSetItem)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v105 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = 0x1E695D000uLL;
  objc_opt_class();
  v101 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v9 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"itemType"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"sharedIdentifier"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"localInstanceIdentifiers"];
    if (v12)
    {
      v13 = v12;
      objc_opt_class();
      v100 = v9;
      v14 = CCValidateIsInstanceOfExpectedClass();
      v15 = v9;

      if ((v14 & 1) == 0)
      {
        CCSetError();
        v24 = 0;
LABEL_68:

        v9 = v15;
        goto LABEL_69;
      }

      errorCopy = error;
      v77 = v11;
      v79 = v10;
      v81 = objc_opt_new();
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v16 = v13;
      v17 = [v16 countByEnumeratingWithState:&v96 objects:v104 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v97;
        while (2)
        {
          v20 = 0;
          v21 = v15;
          do
          {
            if (*v97 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v96 + 1) + 8 * v20);
            objc_opt_class();
            v95[1] = v21;
            v23 = CCValidateIsInstanceOfExpectedClass();
            v15 = v21;

            if (!v23)
            {
              CCSetError();

              v24 = 0;
              v13 = v16;
              v11 = v77;
              v10 = v79;
              goto LABEL_68;
            }

            [v81 appendInt64Value:{objc_msgSend(v22, "longLongValue")}];
            ++v20;
            v21 = v15;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v96 objects:v104 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v9 = v15;
      v11 = v77;
      v10 = v79;
      error = errorCopy;
      v7 = 0x1E695D000;
    }

    else
    {
      v81 = 0;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"content"];
    v26 = *(v7 + 3872);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v95[0] = 0;
      v27 = [MEMORY[0x1E6993A00] contentMessageForItemType:objc_msgSend(v10 jsonDictionary:"unsignedIntValue") error:{v25, v95}];
      v28 = v95[0];
      v29 = v28;
      if (v27 && !v28)
      {
        data = [v27 data];

        v25 = data;
LABEL_23:

LABEL_24:
        v33 = [dictionaryCopy objectForKeyedSubscript:@"localMetaContent"];
        v78 = v11;
        if (v33)
        {
          v34 = v33;
          objc_opt_class();
          v93 = v9;
          v35 = CCValidateIsInstanceOfExpectedClass();
          v36 = v9;

          if ((v35 & 1) == 0)
          {
            CCSetError();
            v24 = 0;
            v57 = v34;
LABEL_66:

            v9 = v36;
            v11 = v78;
            goto LABEL_67;
          }

          v67 = v25;
          errorCopy2 = error;
          v73 = dictionaryCopy;
          v80 = v10;
          v37 = objc_opt_new();
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          obj = v34;
          v38 = [obj countByEnumeratingWithState:&v89 objects:v103 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v90;
            while (2)
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v90 != v40)
                {
                  objc_enumerationMutation(obj);
                }

                v42 = *(*(&v89 + 1) + 8 * i);
                v43 = *(v7 + 3872);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v44 = MEMORY[0x1E6993A00];
                  unsignedIntValue = [v80 unsignedIntValue];
                  v88 = 0;
                  v46 = [v44 metaContentMessageForItemType:unsignedIntValue jsonDictionary:v42 error:&v88];
                  v47 = v88;
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

LABEL_63:
                    v24 = 0;
                    v57 = obj;
                    dictionaryCopy = v73;
                    v10 = v80;
                    v25 = v67;
                    goto LABEL_66;
                  }

                  data2 = [v46 data];
                  [v37 addObject:data2];
                }

                else
                {
                  objc_opt_class();
                  v87 = v36;
                  v50 = CCValidateIsInstanceOfExpectedClass();
                  v51 = v36;

                  if ((v50 & 1) == 0)
                  {
                    CCSetError();
                    v36 = v51;
                    goto LABEL_63;
                  }

                  [v37 addObject:v42];
                  v36 = v51;
                }
              }

              v39 = [obj countByEnumeratingWithState:&v89 objects:v103 count:16];
              if (v39)
              {
                continue;
              }

              break;
            }
          }

          v69 = v37;

          v9 = v36;
          error = errorCopy2;
          dictionaryCopy = v73;
          v10 = v80;
          v25 = v67;
        }

        else
        {
          v69 = 0;
        }

        v52 = [dictionaryCopy objectForKeyedSubscript:@"remoteDeviceIndices"];
        if (v52)
        {
          v53 = v52;
          objc_opt_class();
          v86 = v9;
          v54 = CCValidateIsInstanceOfExpectedClass();
          v36 = v9;

          if ((v54 & 1) == 0)
          {
            CCSetError();
            v24 = 0;
            v57 = v69;
            goto LABEL_65;
          }

          v68 = v25;
          errorCopy3 = error;
          v74 = dictionaryCopy;
          obja = self;
          v55 = objc_opt_new();
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v53 = v53;
          v56 = [v53 countByEnumeratingWithState:&v82 objects:v102 count:16];
          v57 = v69;
          if (v56)
          {
            v58 = v56;
            v59 = *v83;
            while (2)
            {
              v60 = 0;
              v61 = v36;
              do
              {
                if (*v83 != v59)
                {
                  objc_enumerationMutation(v53);
                }

                v62 = *(*(&v82 + 1) + 8 * v60);
                objc_opt_class();
                v63 = CCValidateIsInstanceOfExpectedClass();
                v36 = v61;

                if (!v63)
                {
                  CCSetError();

                  v24 = 0;
                  dictionaryCopy = v74;
                  self = obja;
                  v25 = v68;
                  v57 = v69;
                  goto LABEL_65;
                }

                [v55 appendUInt32Value:{objc_msgSend(v62, "unsignedIntValue")}];
                ++v60;
                v61 = v36;
              }

              while (v58 != v60);
              v58 = [v53 countByEnumeratingWithState:&v82 objects:v102 count:16];
              v57 = v69;
              if (v58)
              {
                continue;
              }

              break;
            }
          }

          dictionaryCopy = v74;
          self = obja;
          error = errorCopy3;
          v25 = v68;
        }

        else
        {
          v55 = 0;
          v36 = v9;
          v57 = v69;
        }

        v24 = [[CCSerializedSetItem alloc] initWithItemType:v10 sharedIdentifier:v78 localInstanceIdentifiers:v81 content:v25 localMetaContent:v57 remoteDeviceIndices:v55 error:error];
        v53 = v55;
LABEL_65:

        goto LABEL_66;
      }

      CCSetError();

      v24 = 0;
    }

    else
    {
      if (!v25)
      {
        goto LABEL_24;
      }

      objc_opt_class();
      v94 = v9;
      v31 = CCValidateIsInstanceOfExpectedClass();
      v32 = v9;

      if (v31)
      {
        v27 = v25;
        v25 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v25 options:0];
        v9 = v32;
        goto LABEL_23;
      }

      CCSetError();
      v24 = 0;
      v9 = v32;
    }

LABEL_67:

    v15 = v9;
    v13 = v81;
    goto LABEL_68;
  }

  CCSetError();
  v24 = 0;
LABEL_69:

  v65 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)jsonDictionary
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_hasItemType)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCSerializedSetItem itemType](self, "itemType")}];
    [v3 setObject:v4 forKeyedSubscript:@"itemType"];
  }

  if (self->_hasSharedIdentifier)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCSerializedSetItem sharedIdentifier](self, "sharedIdentifier")}];
    [v3 setObject:v5 forKeyedSubscript:@"sharedIdentifier"];
  }

  if (self->_localInstanceIdentifiers)
  {
    v6 = objc_opt_new();
    localInstanceIdentifiers = [(CCSerializedSetItem *)self localInstanceIdentifiers];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __37__CCSerializedSetItem_jsonDictionary__block_invoke;
    v37[3] = &unk_1E73E8EF0;
    v38 = v6;
    v8 = v6;
    [localInstanceIdentifiers enumerateInt64ValuesWithBlock:v37];

    [v3 setObject:v8 forKeyedSubscript:@"localInstanceIdentifiers"];
  }

  if (self->_content)
  {
    v9 = MEMORY[0x1E6993A00];
    itemType = [(CCSerializedSetItem *)self itemType];
    content = [(CCSerializedSetItem *)self content];
    v12 = [v9 contentMessageForItemType:itemType data:content error:0];

    if (v12)
    {
      jsonDictionary = [v12 jsonDictionary];
      [v3 setObject:jsonDictionary forKeyedSubscript:@"content"];
    }

    else
    {
      jsonDictionary = [(CCSerializedSetItem *)self content];
      v14 = [jsonDictionary base64EncodedStringWithOptions:0];
      [v3 setObject:v14 forKeyedSubscript:@"content"];
    }
  }

  if (self->_localMetaContent)
  {
    v15 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    localMetaContent = [(CCSerializedSetItem *)self localMetaContent];
    v17 = [localMetaContent countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(localMetaContent);
          }

          v21 = *(*(&v33 + 1) + 8 * i);
          v22 = [MEMORY[0x1E6993A00] metaContentMessageForItemType:-[CCSerializedSetItem itemType](self data:"itemType") error:{v21, 0}];
          v23 = v22;
          if (v22)
          {
            [v22 jsonDictionary];
          }

          else
          {
            [v21 base64EncodedStringWithOptions:0];
          }
          v24 = ;
          [v15 addObject:v24];
        }

        v18 = [localMetaContent countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKeyedSubscript:@"localMetaContent"];
  }

  if (self->_remoteDeviceIndices)
  {
    v25 = objc_opt_new();
    remoteDeviceIndices = [(CCSerializedSetItem *)self remoteDeviceIndices];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __37__CCSerializedSetItem_jsonDictionary__block_invoke_2;
    v31[3] = &unk_1E73E8EA0;
    v32 = v25;
    v27 = v25;
    [remoteDeviceIndices enumerateUInt32ValuesWithBlock:v31];

    [v3 setObject:v27 forKeyedSubscript:@"remoteDeviceIndices"];
  }

  v28 = [v3 copy];

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

void __37__CCSerializedSetItem_jsonDictionary__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v2 addObject:v3];
}

void __37__CCSerializedSetItem_jsonDictionary__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
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

  if (self->_hasSharedIdentifier)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 int64Value:self->_sharedIdentifier];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_localInstanceIdentifiers)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 repeatedInt64Value:self->_localInstanceIdentifiers];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_content)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 bytesValue:self->_content];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_localMetaContent)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 repeatedBytesValue:self->_localMetaContent];
    blockCopy[2](blockCopy, v10);
  }

  v11 = blockCopy;
  if (self->_remoteDeviceIndices)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 repeatedUInt32Value:self->_remoteDeviceIndices];
    blockCopy[2](blockCopy, v12);

    v11 = blockCopy;
  }
}

- (NSArray)localMetaContent
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_localMetaContent copyItems:1];

  return v2;
}

- (NSData)content
{
  v2 = [(NSData *)self->_content copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  if (*&v7[*MEMORY[0x1E6993AB8]] < *&v7[*MEMORY[0x1E6993AB0]])
  {
    v10 = 0;
    v62 = 0;
    v63 = 0;
    v11 = 0;
    v12 = MEMORY[0x1E6993AA8];
    v13 = MEMORY[0x1E6993AA0];
    while (2)
    {
      if (*&v7[*v12])
      {
        v14 = 0;
      }

      else
      {
        v14 = v10 == 0;
      }

      if (!v14)
      {
        goto LABEL_70;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = *v8;
        v19 = *&v7[v18];
        if (v19 == -1 || v19 >= *&v7[*v9])
        {
          break;
        }

        v20 = *(*&v7[*v13] + v19);
        *&v7[v18] = v19 + 1;
        v17 |= (v20 & 0x7F) << v15;
        if ((v20 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v15 += 7;
        v21 = v16++ >= 9;
        if (v21)
        {
          v22 = 0;
          if (*&v7[*v12])
          {
            goto LABEL_69;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v12] = 1;
LABEL_17:
      v23 = *&v7[*v12];
      if (v23)
      {
        v22 = 0;
      }

      else
      {
        v22 = v17;
      }

      if (v23)
      {
        goto LABEL_69;
      }

LABEL_21:
      v24 = v22 >> 3;
      if ((v22 >> 3) <= 3)
      {
        switch(v24)
        {
          case 1:
            v26 = 0;
            v27 = 0;
            v28 = 0;
            while (1)
            {
              v29 = *v8;
              v30 = *&v7[v29];
              if (v30 == -1 || v30 >= *&v7[*v9])
              {
                break;
              }

              v31 = *(*&v7[*v13] + v30);
              *&v7[v29] = v30 + 1;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                goto LABEL_58;
              }

              v26 += 7;
              v21 = v27++ >= 9;
              if (v21)
              {
                LODWORD(v28) = 0;
                goto LABEL_60;
              }
            }

            *&v7[*v12] = 1;
LABEL_58:
            if (*&v7[*v12])
            {
              LODWORD(v28) = 0;
            }

LABEL_60:
            v10 = 0;
            self->_itemType = v28;
            v46 = 16;
            break;
          case 2:
            v39 = 0;
            v40 = 0;
            v41 = 0;
            while (1)
            {
              v42 = *v8;
              v43 = *&v7[v42];
              if (v43 == -1 || v43 >= *&v7[*v9])
              {
                break;
              }

              v44 = *(*&v7[*v13] + v43);
              *&v7[v42] = v43 + 1;
              v41 |= (v44 & 0x7F) << v39;
              if ((v44 & 0x80) == 0)
              {
                goto LABEL_62;
              }

              v39 += 7;
              v21 = v40++ >= 9;
              if (v21)
              {
                v41 = 0;
                goto LABEL_64;
              }
            }

            *&v7[*v12] = 1;
LABEL_62:
            if (*&v7[*v12])
            {
              v41 = 0;
            }

LABEL_64:
            v10 = 0;
            self->_sharedIdentifier = v41;
            v46 = 17;
            break;
          case 3:
            if (!v11)
            {
              v11 = objc_opt_new();
            }

            CCPBReaderAppendRepeatedInt64FieldValues();
LABEL_56:
            v10 = 0;
            v12 = MEMORY[0x1E6993AA8];
            goto LABEL_66;
          default:
            goto LABEL_42;
        }

        *(&self->super.super.isa + v46) = 1;
LABEL_66:
        if (*&v7[*v8] < *&v7[*v9])
        {
          continue;
        }

        goto LABEL_70;
      }

      break;
    }

    switch(v24)
    {
      case 4:
        v32 = CCPBReaderReadData();
        content = self->_content;
        self->_content = v32;

        v12 = MEMORY[0x1E6993AA8];
        v10 = 0;
        goto LABEL_66;
      case 5:
        v45 = CCPBReaderReadDataNoCopy();
        if (!v63)
        {
          v63 = objc_opt_new();
        }

        if (v45)
        {
          [v63 addObject:v45];
        }

        goto LABEL_56;
      case 6:
        v25 = v62;
        if (!v62)
        {
          v25 = objc_opt_new();
        }

        v62 = v25;
        CCPBReaderAppendRepeatedUInt32FieldValues();
        goto LABEL_56;
    }

LABEL_42:
    if ((CCPBReaderSkipValueWithTag() & 1) == 0)
    {
      v34 = objc_opt_class();
      NSStringFromClass(v34);
      errorCopy = error;
      v35 = v11;
      v37 = v36 = dataCopy;
      v38 = *&v7[*MEMORY[0x1E6993AA8]];
      v10 = CCSkipFieldErrorForMessage();

      v12 = MEMORY[0x1E6993AA8];
      dataCopy = v36;
      v11 = v35;
      error = errorCopy;
      goto LABEL_66;
    }

    goto LABEL_56;
  }

  v11 = 0;
  v62 = 0;
  v63 = 0;
LABEL_69:
  v10 = 0;
LABEL_70:
  v47 = [v11 copy];
  localInstanceIdentifiers = self->_localInstanceIdentifiers;
  self->_localInstanceIdentifiers = v47;

  v49 = [v63 copy];
  localMetaContent = self->_localMetaContent;
  self->_localMetaContent = v49;

  v51 = [v62 copy];
  remoteDeviceIndices = self->_remoteDeviceIndices;
  self->_remoteDeviceIndices = v51;

  if (v10)
  {
    CCSetError();
  }

  else
  {
    v53 = MEMORY[0x1E6993AA8];
    if (!*&v7[*MEMORY[0x1E6993AA8]])
    {
      v59 = 1;
      goto LABEL_75;
    }

    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    v56 = *&v7[*v53];
    CCInvalidBufferErrorForMessage();
    v58 = v57 = dataCopy;
    CCSetError();

    dataCopy = v57;
  }

  v59 = 0;
LABEL_75:

  return v59;
}

- (CCSerializedSetItem)initWithItemType:(id)type sharedIdentifier:(id)identifier localInstanceIdentifiers:(id)identifiers content:(id)content localMetaContent:(id)metaContent remoteDeviceIndices:(id)indices error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  contentCopy = content;
  metaContentCopy = metaContent;
  indicesCopy = indices;
  v20 = objc_opt_new();
  if (typeCopy)
  {
    objc_opt_class();
    v52 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v22 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_7;
    }

    [typeCopy unsignedIntValue];
    CCPBDataWriterWriteUint32Field();
    if (!identifierCopy)
    {
LABEL_4:
      v23 = v22;
      if (identifiersCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v22 = 0;
    if (!identifierCopy)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v51 = v22;
  v26 = CCValidateIsInstanceOfExpectedClass();
  v23 = v22;

  if (!v26)
  {
LABEL_30:
    CCSetError();
    selfCopy3 = 0;
    v22 = v23;
    goto LABEL_34;
  }

  [identifierCopy longLongValue];
  CCPBDataWriterWriteInt64Field();
  if (identifiersCopy)
  {
LABEL_5:
    objc_opt_class();
    v50 = v23;
    v24 = CCValidateIsInstanceOfExpectedClass();
    v22 = v23;

    if (v24)
    {
      selfCopy2 = self;
      CCPBDataWriterWriteRepeatedInt64Field();
      goto LABEL_12;
    }

LABEL_7:
    CCSetError();
    selfCopy3 = 0;
LABEL_34:
    v36 = indicesCopy;
    goto LABEL_35;
  }

LABEL_11:
  selfCopy2 = self;
  v22 = v23;
LABEL_12:
  if (contentCopy)
  {
    objc_opt_class();
    v49 = v22;
    v27 = CCValidateIsInstanceOfExpectedClass();
    v28 = v22;

    if (!v27)
    {
      CCSetError();
      selfCopy3 = 0;
      v22 = v28;
LABEL_33:
      self = selfCopy2;
      goto LABEL_34;
    }

    CCPBDataWriterWriteDataField();
    if (!metaContentCopy)
    {
LABEL_15:
      v22 = v28;
      self = selfCopy2;
      goto LABEL_26;
    }
  }

  else
  {
    v28 = v22;
    if (!metaContentCopy)
    {
      goto LABEL_15;
    }
  }

  objc_opt_class();
  v48 = v28;
  v29 = CCValidateArrayValues();
  v22 = v28;

  if (!v29)
  {
    CCSetError();
    selfCopy3 = 0;
    goto LABEL_33;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v41 = metaContentCopy;
  v30 = metaContentCopy;
  v31 = [v30 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v45;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v45 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v44 + 1) + 8 * i);
        CCPBDataWriterWriteDataField();
      }

      v32 = [v30 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v32);
  }

  metaContentCopy = v41;
  self = selfCopy2;
LABEL_26:
  v36 = indicesCopy;
  if (indicesCopy)
  {
    objc_opt_class();
    v37 = CCValidateIsInstanceOfExpectedClass();
    v23 = v22;

    if (v37)
    {
      CCPBDataWriterWriteRepeatedUInt32Field();
      v22 = v23;
      v36 = indicesCopy;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

LABEL_29:
  immutableData = [v20 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy3 = self;
LABEL_35:

  v39 = *MEMORY[0x1E69E9840];
  return selfCopy3;
}

@end