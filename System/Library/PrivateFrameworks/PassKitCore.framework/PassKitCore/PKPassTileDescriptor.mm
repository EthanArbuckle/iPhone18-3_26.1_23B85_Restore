@interface PKPassTileDescriptor
+ (id)createWithPassDictionary:(id)dictionary privateDictionary:(id)privateDictionary;
+ (uint64_t)_createConcreteTilesForDictionaries:(void *)dictionaries privateDictionaryMap:(uint64_t)map context:;
- (id)_init;
- (id)_initWithMetadata:(void *)metadata dictionary:(void *)dictionary privateDictionary:;
- (id)createTileForState:(id)state childTiles:(id)tiles withBundle:(id)bundle privateBundle:(id)privateBundle;
@end

@implementation PKPassTileDescriptor

+ (id)createWithPassDictionary:(id)dictionary privateDictionary:(id)privateDictionary
{
  v70 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  privateDictionaryCopy = privateDictionary;
  v7 = [privateDictionaryCopy PKArrayForKey:@"tilesV2"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [privateDictionaryCopy PKArrayForKey:@"tiles"];
  }

  v10 = v9;

  v11 = off_1E79C0000;
  v51 = [PKPassTileMetadata _createDictionaryMapForDictionaries:v10];
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = [dictionaryCopy PKArrayForKey:@"tilesV2"];
  if ([v13 count])
  {
    v43 = v10;
    v44 = privateDictionaryCopy;
    v45 = dictionaryCopy;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v60;
      v47 = v14;
      v48 = v12;
      v46 = *v60;
      do
      {
        v18 = 0;
        v49 = v16;
        do
        {
          if (*v60 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v53 = v18;
          v19 = *(*(&v59 + 1) + 8 * v18);
          v20 = [v19 PKStringForKey:{@"context", v43, v44, v45}];
          v21 = PKPassTileContextFromString(v20);

          if (v21)
          {
            v22 = [v19 PKArrayForKey:@"groups"];
            v58 = v51;
            v57 = objc_opt_self();
            v52 = v22;
            if ([v22 count])
            {
              v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              v23 = v22;
              v24 = [v23 countByEnumeratingWithState:&v64 objects:v69 count:16];
              v25 = v58;
              if (v24)
              {
                v26 = v24;
                v27 = *v65;
                v55 = *v65;
                v56 = v23;
                do
                {
                  for (i = 0; i != v26; ++i)
                  {
                    if (*v65 != v27)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v29 = *(*(&v64 + 1) + 8 * i);
                    v63 = 0;
                    v30 = [(__objc2_class *)v11[96] _createWithDictionary:v29 privateDictionaryMap:v25 privateDictionary:&v63 context:v21];
                    v31 = v30;
                    if (v30 && [v30 isGroupType])
                    {
                      v32 = [PKPassTileDescriptor alloc];
                      v33 = [(PKPassTileDescriptor *)v32 _initWithMetadata:v31 dictionary:v29 privateDictionary:v63];
                      if (v33)
                      {
                        v34 = v11;
                        v35 = [v29 PKArrayForKey:@"tiles"];
                        v36 = [(PKPassTileDescriptor *)v57 _createConcreteTilesForDictionaries:v35 privateDictionaryMap:v25 context:v21];
                        [v33 setChildDescriptors:v36];

                        childDescriptors = [v33 childDescriptors];
                        v38 = [childDescriptors count];

                        if (v38)
                        {
                          [v54 addObject:v33];
                        }

                        v11 = v34;
                        v25 = v58;
                        v27 = v55;
                        v23 = v56;
                      }
                    }
                  }

                  v26 = [v23 countByEnumeratingWithState:&v64 objects:v69 count:16];
                }

                while (v26);
              }

              if ([v54 count])
              {
                v39 = [v54 copy];
              }

              else
              {
                v39 = 0;
              }

              v14 = v47;
              v12 = v48;
              v17 = v46;
              v16 = v49;
            }

            else
            {
              v39 = 0;
            }

            [v12 pk_safelyAddObjectsFromArray:v39];
          }

          v18 = v53 + 1;
        }

        while (v53 + 1 != v16);
        v16 = [v14 countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v16);
    }

    privateDictionaryCopy = v44;
    dictionaryCopy = v45;
    v10 = v43;
    goto LABEL_37;
  }

  v14 = [dictionaryCopy PKArrayForKey:@"tiles"];

  if ([v14 count])
  {
    v40 = [(PKPassTileDescriptor *)self _createConcreteTilesForDictionaries:v14 privateDictionaryMap:v51 context:1];
    [v12 pk_safelyAddObjectsFromArray:v40];

LABEL_37:
    v41 = v12;
    goto LABEL_38;
  }

  v41 = 0;
LABEL_38:

  return v41;
}

+ (uint64_t)_createConcreteTilesForDictionaries:(void *)dictionaries privateDictionaryMap:(uint64_t)map context:
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a2;
  dictionariesCopy = dictionaries;
  objc_opt_self();
  if ([v6 count])
  {
    v25 = v6;
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v29;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          v27 = 0;
          v15 = [PKPassTileMetadata _createWithDictionary:v14 privateDictionaryMap:dictionariesCopy privateDictionary:&v27 context:map];
          v16 = v15;
          if (v15)
          {
            isSelectable = [v15 isSelectable];
            if (v11)
            {
              if (v11 == 1)
              {
                if ((isSelectable & 1) == 0)
                {
                  goto LABEL_25;
                }

                v11 = 1;
              }

              else
              {
                if (isSelectable)
                {
LABEL_25:
                  v22 = PKLogFacilityTypeGetObject(0);
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    identifier = [v16 identifier];
                    *buf = 138412290;
                    v33 = identifier;
                    _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "PKPassTileDescriptor: invalid configuration of tiles found by tile %@ - rejecting all tiles.", buf, 0xCu);
                  }

                  v21 = 0;
                  v6 = v25;
                  v20 = v26;
                  goto LABEL_30;
                }

                v11 = 2;
              }
            }

            else if (isSelectable)
            {
              v11 = 1;
            }

            else
            {
              v11 = 2;
            }

            v18 = [PKPassTileDescriptor alloc];
            v19 = [(PKPassTileDescriptor *)v18 _initWithMetadata:v16 dictionary:v14 privateDictionary:v27];
            if (v19)
            {
              [v26 addObject:v19];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v20 = v26;
    if ([v26 count])
    {
      v21 = [v26 copy];
    }

    else
    {
      v21 = 0;
    }

    v6 = v25;
LABEL_30:
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)_initWithMetadata:(void *)metadata dictionary:(void *)dictionary privateDictionary:
{
  v8 = a2;
  metadataCopy = metadata;
  dictionaryCopy = dictionary;
  if (self)
  {
    _init = [self _init];
    v12 = _init;
    if (_init)
    {
      objc_storeStrong((_init + 16), a2);
      type = [*(v12 + 16) type];
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __71__PKPassTileDescriptor__initWithMetadata_dictionary_privateDictionary___block_invoke;
      v31 = &unk_1E79E2CB0;
      v33 = type;
      v15 = v14;
      v32 = v15;
      v16 = _Block_copy(&v28);
      if (dictionaryCopy)
      {
        v17 = [dictionaryCopy PKDictionaryForKey:{@"states", v28, v29, v30, v31}];
        v16[2](v16, v17);
      }

      v18 = [metadataCopy PKDictionaryForKey:{@"states", v28, v29, v30, v31}];
      v16[2](v16, v18);

      v19 = [v15 copy];
      v20 = *(v12 + 24);
      *(v12 + 24) = v19;

      v21 = [metadataCopy PKDictionaryForKey:@"defaultConfiguration"];
      v22 = [v21 PKStringForKey:@"state"];
      v23 = *(v12 + 40);
      *(v12 + 40) = v22;

      v24 = [v21 PKNumberForKey:@"enabled"];
      v25 = v24;
      if (v24)
      {
        bOOLValue = [v24 BOOLValue];
      }

      else
      {
        bOOLValue = 1;
      }

      *(v12 + 8) = bOOLValue;
    }

    self = v12;
  }

  return self;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPassTileDescriptor;
  return [(PKPassTileDescriptor *)&v3 init];
}

void __71__PKPassTileDescriptor__initWithMetadata_dictionary_privateDictionary___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __71__PKPassTileDescriptor__initWithMetadata_dictionary_privateDictionary___block_invoke_2;
    v4[3] = &unk_1E79E2C88;
    v3 = *(a1 + 32);
    v6 = *(a1 + 40);
    v5 = v3;
    [a2 enumerateKeysAndObjectsUsingBlock:v4];
  }
}

void __71__PKPassTileDescriptor__initWithMetadata_dictionary_privateDictionary___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [PKPassTileState _createForDictionary:v5 withTileType:*(a1 + 40)];
    if (v6)
    {
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
    }
  }
}

- (id)createTileForState:(id)state childTiles:(id)tiles withBundle:(id)bundle privateBundle:(id)privateBundle
{
  stateCopy = state;
  tilesCopy = tiles;
  bundleCopy = bundle;
  privateBundleCopy = privateBundle;
  if ([stateCopy isSupported] && (v14 = objc_msgSend(stateCopy, "isEnabled"), v14 != 2) && (v14 || self->_defaultEnabled))
  {
    stateIdentifier = [stateCopy stateIdentifier];
    defaultStateIdentifier = stateIdentifier;
    if (!stateIdentifier)
    {
      defaultStateIdentifier = self->_defaultStateIdentifier;
    }

    v17 = defaultStateIdentifier;

    stateOverride = [stateCopy stateOverride];
    if (!stateOverride && v17)
    {
      stateOverride = [(NSDictionary *)self->_states objectForKeyedSubscript:v17];
    }

    v19 = [stateOverride createResolvedStateWithBundle:bundleCopy privateBundle:privateBundleCopy];

    if (v19)
    {
      v20 = -[PKPassTile _initWithMetadata:childTiles:stateIdentifier:state:inProgress:]([PKPassTile alloc], "_initWithMetadata:childTiles:stateIdentifier:state:inProgress:", self->_metadata, tilesCopy, v17, v19, [stateCopy isInProgress]);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end