@interface CCSerializedSet
+ (id)_serializeSet:(id)set useCase:(id)case error:(id *)error;
+ (id)setEnumeratorWithSerializedSets:(id)sets;
- (BOOL)writeToStream:(id)stream format:(unsigned __int8)format error:(id *)error;
- (CCSerializedSet)initWithCoder:(id)coder;
- (CCSerializedSet)initWithData:(id)data error:(id *)error;
- (CCSerializedSet)initWithSet:(id)set useCase:(id)case error:(id *)error;
- (CCSerializedSet)initWithSetMessage:(id)message error:(id *)error;
- (id)_deduplicateItemsOfType:(unsigned __int16)type localInstances:(id)instances error:(id *)error;
- (id)_placeholderLocalDevice:(id *)device;
- (id)changePublisherWithUseCase:(id)case;
@end

@implementation CCSerializedSet

+ (id)setEnumeratorWithSerializedSets:(id)sets
{
  setsCopy = sets;
  v4 = [[CCSerializedSetEnumerator alloc] initWithSerializedSets:setsCopy];

  return v4;
}

- (CCSerializedSet)initWithSetMessage:(id)message error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = CCTypeIdentifierRegistryBridge();
  setIdentifier = [messageCopy setIdentifier];
  v30 = [v5 itemTypeForSetIdentifier:setIdentifier];

  v32 = messageCopy;
  descriptors = [messageCopy descriptors];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(descriptors, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = descriptors;
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v15 = [CCSetDescriptor alloc];
        v16 = [v14 key];
        value = [v14 value];
        v18 = [(BMResourceDescriptor *)v15 initWithKey:v16 value:value error:error];

        if (!v18)
        {

          v19 = 0;
          goto LABEL_11;
        }

        [v8 addObject:v18];
      }

      v11 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v19 = [v8 copy];
LABEL_11:

  selfCopy = self;
  if (v19)
  {
    personaIdentifier = [v32 personaIdentifier];
    v34.receiver = self;
    v34.super_class = CCSerializedSet;
    v22 = -[CCSet initWithItemType:personaIdentifier:descriptors:options:error:](&v34, sel_initWithItemType_personaIdentifier_descriptors_options_error_, v30, personaIdentifier, v19, [v32 options], error);
    v23 = v22;
    if (v22)
    {
      objc_storeStrong(&v22->_setMessage, message);
      data = [(CCSerializedSetMessage *)v23->_setMessage data];
      data = v23->_data;
      v23->_data = data;
    }

    selfCopy = v23;

    v26 = selfCopy;
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (CCSerializedSet)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [dataCopy subdataWithRange:{0, 1}];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
  if ([v8 isEqual:@"{"])
  {
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:error];
    if (!v9)
    {
      goto LABEL_4;
    }

    v10 = v9;
    v11 = [objc_alloc(getCCSerializedSetMessageClass()) initWithJSONDictionary:v9 error:error];

    if (!v11)
    {
      goto LABEL_4;
    }

LABEL_6:
    self = [(CCSerializedSet *)self initWithSetMessage:v11 error:error];

    selfCopy = self;
    goto LABEL_7;
  }

  v11 = [objc_alloc(getCCSerializedSetMessageClass()) initWithData:dataCopy error:error];
  if (v11)
  {
    goto LABEL_6;
  }

LABEL_4:
  selfCopy = 0;
LABEL_7:

  return selfCopy;
}

- (id)_placeholderLocalDevice:(id *)device
{
  v4 = objc_alloc(getCCSerializedSetDeviceClass());
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [MEMORY[0x1E698E9A0] platform];
  v6 = BMDevicePlatformToString();
  v7 = [v4 initWithDeviceUUID:uUID idsDeviceIdentifier:0 platformString:v6 options:&unk_1F2EC9288 error:device];

  return v7;
}

- (id)_deduplicateItemsOfType:(unsigned __int16)type localInstances:(id)instances error:(id *)error
{
  typeCopy = type;
  v69 = *MEMORY[0x1E69E9840];
  instancesCopy = instances;
  v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v8 = instancesCopy;
  v9 = [v8 countByEnumeratingWithState:&v62 objects:v68 count:16];
  v57 = v8;
  v58 = v6;
  if (v9)
  {
    v10 = v9;
    v11 = *v63;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v63 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v62 + 1) + 8 * i);
        content = [v13 content];
        itemType = [objc_opt_class() itemType];

        if (itemType != typeCopy)
        {
          v43 = MEMORY[0x1E696ABC0];
          v66 = *MEMORY[0x1E696A278];
          v44 = MEMORY[0x1E696AEC0];
          v45 = CCTypeIdentifierRegistryBridge();
          v46 = [v45 descriptionForTypeIdentifier:itemType];
          v47 = CCTypeIdentifierRegistryBridge();
          v48 = [v47 descriptionForTypeIdentifier:typeCopy];
          v49 = [v44 stringWithFormat:@"Inconsistent item type (%@) of instance: %@ expected itemType: %@", v46, v13, v48];
          v67 = v49;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
          v51 = [v43 errorWithDomain:@"com.apple.CascadeSets.Item" code:2 userInfo:v50];
          CCSetError(error, v51);

          v6 = v58;
          v52 = v57;

          v42 = 0;
          v32 = v57;
          goto LABEL_22;
        }

        metaContent = [v13 metaContent];
        sourceItemIdentifier = [metaContent sourceItemIdentifier];

        if (([v7 containsObject:sourceItemIdentifier] & 1) == 0)
        {
          [v7 addObject:sourceItemIdentifier];
          sharedIdentifier = [v13 sharedIdentifier];
          instanceIdentifier = [v13 instanceIdentifier];
          longLongValue = [instanceIdentifier longLongValue];

          v21 = [v6 indexOfObject:sharedIdentifier];
          if (v21 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v6 addObject:sharedIdentifier];
            content2 = [v13 content];
            data = [content2 data];
            [v56 addObject:data];

            v24 = objc_alloc_init(CCMutableRepeatedInt64);
            [(CCMutableRepeatedInt64 *)v24 appendInt64Value:longLongValue];
            [v60 addObject:v24];
            v25 = objc_alloc(MEMORY[0x1E695DF70]);
            metaContent2 = [v13 metaContent];
            data2 = [metaContent2 data];
            v28 = [v25 initWithObjects:{data2, 0}];
            [v59 addObject:v28];
          }

          else
          {
            v29 = v21;
            v30 = [v60 objectAtIndex:v21];
            [v30 appendInt64Value:longLongValue];

            v24 = [v59 objectAtIndex:v29];
            metaContent2 = [v13 metaContent];
            data2 = [metaContent2 data];
            [(CCMutableRepeatedInt64 *)v24 addObject:data2];
          }

          v8 = v57;
          v6 = v58;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v62 objects:v68 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v31 = [v6 count];
  v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v31];
  if (v31)
  {
    v33 = v31;
    v34 = 0;
    while (1)
    {
      v35 = objc_alloc(getCCSerializedSetItemClass());
      v36 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
      v37 = [v6 objectAtIndex:v34];
      v38 = [v60 objectAtIndex:v34];
      v39 = [v56 objectAtIndex:v34];
      v40 = [v59 objectAtIndex:v34];
      v41 = [v35 initWithItemType:v36 sharedIdentifier:v37 localInstanceIdentifiers:v38 content:v39 localMetaContent:v40 remoteDeviceIndices:0 error:error];

      if (!v41)
      {
        break;
      }

      [v32 addObject:v41];

      ++v34;
      v6 = v58;
      if (v33 == v34)
      {
        goto LABEL_18;
      }
    }

    v42 = 0;
    v6 = v58;
  }

  else
  {
LABEL_18:
    v32 = v32;
    v42 = v32;
  }

  v52 = v57;
LABEL_22:

  v53 = *MEMORY[0x1E69E9840];

  return v42;
}

- (CCSerializedSet)initWithSet:(id)set useCase:(id)case error:(id *)error
{
  caseCopy = case;
  setCopy = set;
  v10 = [objc_opt_class() _serializeSet:setCopy useCase:caseCopy error:error];

  if (v10)
  {
    self = [(CCSerializedSet *)self initWithSetMessage:v10 error:error];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)writeToStream:(id)stream format:(unsigned __int8)format error:(id *)error
{
  formatCopy = format;
  streamCopy = stream;
  if (formatCopy == 2)
  {
    jsonDictionary = [(CCSerializedSetMessage *)self->_setMessage jsonDictionary];
    v9 = [MEMORY[0x1E696ACB0] writeJSONObject:jsonDictionary toStream:streamCopy options:9 error:error];
  }

  else if (formatCopy == 1)
  {
    v9 = [streamCopy write:-[NSData bytes](self->_data maxLength:{"bytes"), -[NSData length](self->_data, "length")}];
  }

  else
  {
    v9 = 0;
  }

  return v9 > 0;
}

+ (id)_serializeSet:(id)set useCase:(id)case error:(id *)error
{
  setCopy = set;
  caseCopy = case;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(setCopy, "itemType")}];
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__0;
  v66 = __Block_byref_object_dispose__0;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__0;
  v60 = __Block_byref_object_dispose__0;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__0;
  v54 = __Block_byref_object_dispose__0;
  v55 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = __Block_byref_object_copy__0;
  v48[4] = __Block_byref_object_dispose__0;
  v49 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__0;
  v46 = __Block_byref_object_dispose__0;
  v47 = 0;
  v30 = caseCopy;
  v10 = [setCopy changePublisherWithUseCase:caseCopy];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __47__CCSerializedSet__serializeSet_useCase_error___block_invoke;
  v41[3] = &unk_1E7C8AED8;
  v41[4] = &v62;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __47__CCSerializedSet__serializeSet_useCase_error___block_invoke_2;
  v31[3] = &unk_1E7C8AF00;
  v34 = &v72;
  v35 = &v68;
  v36 = &v56;
  v37 = &v62;
  v38 = v48;
  v39 = &v50;
  v11 = v9;
  v32 = v11;
  v40 = &v42;
  v12 = v10;
  v33 = v12;
  v13 = [v12 drivableSinkWithBookmark:0 completion:v41 shouldContinue:v31];
  v14 = v63[5];
  if (v14)
  {
    CCSetError(error, v14);
    v15 = 0;
  }

  else
  {
    errorCopy = error;
    v16 = CCTypeIdentifierRegistryBridge();
    v28 = [v16 setIdentifierForItemType:{objc_msgSend(setCopy, "itemType")}];

    descriptors = [setCopy descriptors];
    v18 = _encodeDescriptors(descriptors, error);

    if (v18)
    {
      v26 = objc_alloc(getCCSerializedSetMessageClass());
      personaIdentifier = [setCopy personaIdentifier];
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v73[3]];
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v69[3]];
      v21 = v57[5];
      v22 = v51[5];
      v23 = v43[5];
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(setCopy, "options")}];
      v15 = [v26 initWithItemType:v11 setIdentifier:v28 personaIdentifier:personaIdentifier descriptors:v18 sharedItemCount:v19 localItemInstanceCount:v20 localDevice:v21 remoteDevices:v22 items:v23 options:v24 error:errorCopy];
    }

    else
    {
      v15 = 0;
    }
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(v48, 8);

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);

  return v15;
}

void __47__CCSerializedSet__serializeSet_useCase_error___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 state] == 1)
  {
    v3 = [v6 error];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

BOOL __47__CCSerializedSet__serializeSet_useCase_error___block_invoke_2(uint64_t a1, void *a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 sharedItem];
  v62 = [v4 sharedIdentifier];

  v5 = [v3 sharedItem];
  v6 = [v5 content];
  v61 = [v6 data];

  ++*(*(*(a1 + 48) + 8) + 24);
  v7 = [v3 allLocalInstances];
  v8 = [v7 count];

  v63 = v3;
  if (v8)
  {
    v9 = objc_alloc_init(CCMutableRepeatedInt64);
    v10 = objc_alloc(MEMORY[0x1E695DF70]);
    v11 = [v3 allLocalInstances];
    v12 = [v10 initWithCapacity:{objc_msgSend(v11, "count")}];

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v13 = [v3 allLocalInstances];
    v14 = [v13 countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v74;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v74 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v73 + 1) + 8 * i);
          v19 = [v18 instanceIdentifier];
          -[CCMutableRepeatedInt64 appendInt64Value:](v9, "appendInt64Value:", [v19 longLongValue]);

          v20 = [v18 metaContent];
          v21 = [v20 data];
          [v12 addObject:v21];

          ++*(*(*(a1 + 56) + 8) + 24);
        }

        v15 = [v13 countByEnumeratingWithState:&v73 objects:v78 count:16];
      }

      while (v15);
    }

    v3 = v63;
  }

  else
  {
    v12 = 0;
    v9 = 0;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = [v3 allDevices];
  v22 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (!v22)
  {
    v24 = 0;
    goto LABEL_33;
  }

  v23 = v22;
  v24 = 0;
  v25 = *v70;
  do
  {
    v26 = 0;
    do
    {
      if (*v70 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v69 + 1) + 8 * v26);
      if (![v27 isLocal])
      {
        v32 = [*(*(*(a1 + 80) + 8) + 40) objectForKeyedSubscript:v27];
        if (v32)
        {
          if (v24)
          {
LABEL_22:
            -[CCMutableRepeatedUInt32 appendUInt32Value:](v24, "appendUInt32Value:", [v32 unsignedIntegerValue]);

            goto LABEL_23;
          }
        }

        else
        {
          v64 = v24;
          v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(*(a1 + 88) + 8) + 40), "count")}];
          if (!*(*(*(a1 + 88) + 8) + 40))
          {
            v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v34 = *(*(a1 + 88) + 8);
            v35 = *(v34 + 40);
            *(v34 + 40) = v33;

            v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v37 = *(*(a1 + 80) + 8);
            v38 = *(v37 + 40);
            *(v37 + 40) = v36;
          }

          v39 = *(*(a1 + 72) + 8);
          v67 = *(v39 + 40);
          v40 = _encodeDevice(v27, &v67);
          objc_storeStrong((v39 + 40), v67);
          if (!v40)
          {

            v55 = 0;
            v57 = v62;
            v56 = v63;
            v58 = v61;
            v24 = v64;
            goto LABEL_39;
          }

          [*(*(*(a1 + 88) + 8) + 40) addObject:v40];
          [*(*(*(a1 + 80) + 8) + 40) setObject:v32 forKey:v27];

          v24 = v64;
          if (v64)
          {
            goto LABEL_22;
          }
        }

        v24 = objc_alloc_init(CCMutableRepeatedUInt32);
        goto LABEL_22;
      }

      if (!*(*(*(a1 + 64) + 8) + 40))
      {
        v28 = *(*(a1 + 72) + 8);
        v68 = *(v28 + 40);
        v29 = _encodeDevice(v27, &v68);
        objc_storeStrong((v28 + 40), v68);
        v30 = *(*(a1 + 64) + 8);
        v31 = *(v30 + 40);
        *(v30 + 40) = v29;

        if (!*(*(*(a1 + 64) + 8) + 40))
        {
          v55 = 0;
          v57 = v62;
          v56 = v63;
          v58 = v61;
          goto LABEL_39;
        }
      }

LABEL_23:
      ++v26;
    }

    while (v23 != v26);
    v41 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
    v23 = v41;
  }

  while (v41);
LABEL_33:

  v42 = objc_alloc(getCCSerializedSetItemClass());
  v43 = *(a1 + 32);
  v44 = v24;
  v45 = *(*(a1 + 72) + 8);
  v66 = *(v45 + 40);
  v58 = v61;
  v57 = v62;
  v46 = v44;
  v47 = [v42 initWithItemType:v43 sharedIdentifier:v62 localInstanceIdentifiers:v9 content:v61 localMetaContent:v12 remoteDeviceIndices:&v66 error:?];
  objc_storeStrong((v45 + 40), v66);
  v55 = v47 != 0;
  obj = v47;
  if (v47)
  {
    v48 = *(*(*(a1 + 96) + 8) + 40);
    v56 = v63;
    v24 = v46;
    if (!v48)
    {
      v49 = objc_alloc(MEMORY[0x1E695DF70]);
      v50 = [*(a1 + 40) sharedItemCount];
      v51 = v49;
      v24 = v46;
      v52 = [v51 initWithCapacity:v50];
      v53 = *(*(a1 + 96) + 8);
      v54 = *(v53 + 40);
      *(v53 + 40) = v52;

      v48 = *(*(*(a1 + 96) + 8) + 40);
    }

    [v48 addObject:obj];
    v55 = 1;
  }

  else
  {
    v56 = v63;
    v24 = v46;
  }

LABEL_39:

  v59 = *MEMORY[0x1E69E9840];
  return v55;
}

- (id)changePublisherWithUseCase:(id)case
{
  v4 = [CCSetChangePublisher alloc];
  v5 = [[CCSerializedSetChangeEnumerator alloc] initWithSetMessage:self->_setMessage];
  v6 = [(CCSetChangePublisher *)v4 initWithEnumerator:v5];

  return v6;
}

- (CCSerializedSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];

  v13 = 0;
  v6 = [(CCSerializedSet *)self initWithData:v5 error:&v13];
  v7 = v13;
  v8 = v6;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CCSerializedSet initWithCoder:];
    }
  }

  return v9;
}

- (void)initWithCoder:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1B6DB2000, v0, OS_LOG_TYPE_ERROR, "Failed to decode serialized set %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end