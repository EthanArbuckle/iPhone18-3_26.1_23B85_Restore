@interface PKPassTileStateMetadataVehicleFunction
- (BOOL)_setUpWithDictionary:(id)dictionary;
- (BOOL)isEqualToUnresolvedMetadata:(id)metadata;
- (PKPassTileStateMetadataVehicleFunction)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTileStateMetadataVehicleFunction

- (BOOL)_setUpWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = PKPassTileStateMetadataVehicleFunction;
  v5 = [(PKPassTileStateMetadata *)&v23 _setUpWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKDictionaryForKey:@"vehicleFunctionStates"];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __63__PKPassTileStateMetadataVehicleFunction__setUpWithDictionary___block_invoke;
      v18 = &unk_1E79E3A18;
      v20 = v8;
      v21 = v9;
      v22 = v10;
      v11 = v7;
      v19 = v11;
      [v6 enumerateKeysAndObjectsUsingBlock:&v15];
      if ([v11 count])
      {
        v12 = [v11 copy];
      }

      else
      {
        v12 = MEMORY[0x1E695E0F8];
      }

      vehicleFunctionStates = self->_vehicleFunctionStates;
      self->_vehicleFunctionStates = v12;
    }
  }

  return v5;
}

void __63__PKPassTileStateMetadataVehicleFunction__setUpWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_16;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
    v12 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v5];
    if ([v12 scanHexInt:&v15] && objc_msgSend(v12, "isAtEnd"))
    {
      v13 = *(a1 + 32);
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
      [v13 setObject:v7 forKeyedSubscript:v14];
    }
  }

LABEL_16:
}

- (PKPassTileStateMetadataVehicleFunction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKPassTileStateMetadataVehicleFunction;
  v5 = [(PKPassTileStateMetadata *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"vehicleFunctions"];
    vehicleFunctionStates = v5->_vehicleFunctionStates;
    v5->_vehicleFunctionStates = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassTileStateMetadataVehicleFunction;
  coderCopy = coder;
  [(PKPassTileStateMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_vehicleFunctionStates forKey:{@"vehicleFunctionStates", v5.receiver, v5.super_class}];
}

- (BOOL)isEqualToUnresolvedMetadata:(id)metadata
{
  metadataCopy = metadata;
  v10.receiver = self;
  v10.super_class = PKPassTileStateMetadataVehicleFunction;
  if ([(PKPassTileStateMetadata *)&v10 isEqualToUnresolvedMetadata:metadataCopy])
  {
    v5 = metadataCopy[2];
    vehicleFunctionStates = self->_vehicleFunctionStates;
    if (v5)
    {
      v7 = vehicleFunctionStates == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v5 == vehicleFunctionStates;
    }

    else
    {
      v8 = [(NSDictionary *)v5 isEqual:?];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end