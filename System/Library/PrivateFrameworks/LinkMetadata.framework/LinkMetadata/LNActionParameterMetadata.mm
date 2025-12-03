@interface LNActionParameterMetadata
- (BOOL)isEqual:(id)equal;
- (LNActionParameterMetadata)actionParameterMetadataWithCapabilities:(unint64_t)capabilities;
- (LNActionParameterMetadata)actionParameterMetadataWithDescriptiveMetadataFromParameter:(id)parameter usingLibraryKey:(id)key;
- (LNActionParameterMetadata)initWithCoder:(id)coder;
- (LNActionParameterMetadata)initWithName:(id)name valueType:(id)type optional:(BOOL)optional title:(id)title description:(id)description resolvableInputTypes:(id)types typeSpecificMetadata:(id)metadata dynamicOptionsSupport:(int64_t)self0 inputConnectionBehavior:(int64_t)self1 capabilities:(unint64_t)self2 queryIdentifier:(id)self3;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNActionParameterMetadata

- (LNActionParameterMetadata)actionParameterMetadataWithDescriptiveMetadataFromParameter:(id)parameter usingLibraryKey:(id)key
{
  parameterCopy = parameter;
  v6 = [(LNActionParameterMetadata *)self copy];
  v7 = v6[4];
  if (!v7 || ([v7 key], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, !v9))
  {
    title = [parameterCopy title];
    v11 = v6[4];
    v6[4] = title;
  }

  v12 = v6[5];
  if (!v12 || ([v12 key], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, !v14))
  {
    parameterDescription = [parameterCopy parameterDescription];
    v16 = v6[5];
    v6[5] = parameterDescription;
  }

  if (!v6[10])
  {
    v6[10] = [parameterCopy capabilities];
  }

  typeSpecificMetadata = [(LNActionParameterMetadata *)self typeSpecificMetadata];
  v18 = [typeSpecificMetadata mutableCopy];

  typeSpecificMetadata2 = [parameterCopy typeSpecificMetadata];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __105__LNActionParameterMetadata_actionParameterMetadataWithDescriptiveMetadataFromParameter_usingLibraryKey___block_invoke;
  v24[3] = &unk_1E72B12A8;
  v25 = v18;
  v20 = v18;
  [typeSpecificMetadata2 enumerateKeysAndObjectsUsingBlock:v24];

  v21 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v20];
  v22 = v6[7];
  v6[7] = v21;

  return v6;
}

void __105__LNActionParameterMetadata_actionParameterMetadataWithDescriptiveMetadataFromParameter_usingLibraryKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = [*(a1 + 32) objectForKey:v12];
  v8 = v7;
  if (isKindOfClass)
  {
    if (v7)
    {
      isKindOfClass = [v7 key];
      v9 = [isKindOfClass length];
      if (!v5 || v9)
      {

LABEL_14:
        goto LABEL_15;
      }
    }

    else if (!v5)
    {
      goto LABEL_14;
    }

    v10 = [v5 key];
    v11 = [v10 length];

    if (v8)
    {
    }

    if (v11)
    {
      [*(a1 + 32) setObject:v5 forKey:v12];
    }

    goto LABEL_14;
  }

  if (v5 && !v8)
  {
    [*(a1 + 32) setObject:v5 forKey:v12];
  }

LABEL_15:
}

- (LNActionParameterMetadata)actionParameterMetadataWithCapabilities:(unint64_t)capabilities
{
  v4 = [(LNActionParameterMetadata *)self copy];
  v4[10] = capabilities;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_49:

      goto LABEL_50;
    }

    name = [(LNActionParameterMetadata *)self name];
    name2 = [(LNActionParameterMetadata *)v6 name];
    v9 = name;
    v10 = name2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_47;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_48:

        goto LABEL_49;
      }
    }

    title = [(LNActionParameterMetadata *)self title];
    title2 = [(LNActionParameterMetadata *)v6 title];
    v14 = title;
    v18 = title2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_46;
      }

      v21 = [v14 isEqual:v18];

      if (!v21)
      {
        LOBYTE(v12) = 0;
LABEL_47:

        goto LABEL_48;
      }
    }

    valueType = [(LNActionParameterMetadata *)self valueType];
    valueType2 = [(LNActionParameterMetadata *)v6 valueType];
    v20 = valueType;
    v24 = valueType2;
    v19 = v24;
    if (v20 == v24)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v46 = v20;
      v25 = v24;
      if (!v20 || !v24)
      {
        goto LABEL_45;
      }

      v12 = [v20 isEqual:v24];

      if (!v12)
      {
        goto LABEL_46;
      }
    }

    isOptional = [(LNActionParameterMetadata *)self isOptional];
    if (isOptional != [(LNActionParameterMetadata *)v6 isOptional])
    {
      LOBYTE(v12) = 0;
LABEL_46:

      goto LABEL_47;
    }

    v46 = v20;
    typeSpecificMetadata = [(LNActionParameterMetadata *)self typeSpecificMetadata];
    typeSpecificMetadata2 = [(LNActionParameterMetadata *)v6 typeSpecificMetadata];
    v20 = typeSpecificMetadata;
    v28 = typeSpecificMetadata2;
    v45 = v28;
    if (v20 == v28)
    {

      v43 = v20;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (!v20)
      {
        v29 = v28;
        v30 = 0;
        goto LABEL_43;
      }

      v29 = v28;
      v30 = v20;
      if (!v28)
      {
LABEL_43:
        v40 = v30;

        goto LABEL_44;
      }

      v31 = v28;
      v42 = [v20 isEqualToDictionary:v28];

      v43 = v20;
      if (!v42)
      {
LABEL_39:
        LOBYTE(v12) = 0;
        v20 = v43;
LABEL_44:
        v25 = v45;
LABEL_45:

        v20 = v46;
        goto LABEL_46;
      }
    }

    dynamicOptionsSupport = [(LNActionParameterMetadata *)self dynamicOptionsSupport];
    if (dynamicOptionsSupport != [(LNActionParameterMetadata *)v6 dynamicOptionsSupport])
    {
      goto LABEL_39;
    }

    inputConnectionBehavior = [(LNActionParameterMetadata *)self inputConnectionBehavior];
    if (inputConnectionBehavior != [(LNActionParameterMetadata *)v6 inputConnectionBehavior])
    {
      goto LABEL_39;
    }

    capabilities = [(LNActionParameterMetadata *)self capabilities];
    if (capabilities != [(LNActionParameterMetadata *)v6 capabilities])
    {
      goto LABEL_39;
    }

    queryIdentifier = [(LNActionParameterMetadata *)self queryIdentifier];
    queryIdentifier2 = [(LNActionParameterMetadata *)v6 queryIdentifier];
    v37 = queryIdentifier;
    v38 = queryIdentifier2;
    v39 = v38;
    if (v37 == v38)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v37 && v38)
      {
        LOBYTE(v12) = [v37 isEqualToString:v38];
      }
    }

    v29 = v39;
    v20 = v43;
    v30 = v37;
    goto LABEL_43;
  }

  LOBYTE(v12) = 1;
LABEL_50:

  return v12;
}

- (unint64_t)hash
{
  isOptional = [(LNActionParameterMetadata *)self isOptional];
  valueType = [(LNActionParameterMetadata *)self valueType];
  v5 = [valueType hash];
  name = [(LNActionParameterMetadata *)self name];
  v7 = v5 ^ [name hash] ^ isOptional;
  title = [(LNActionParameterMetadata *)self title];
  v9 = [title hash];
  typeSpecificMetadata = [(LNActionParameterMetadata *)self typeSpecificMetadata];
  v11 = v9 ^ [typeSpecificMetadata hash];
  v12 = v7 ^ v11 ^ [(LNActionParameterMetadata *)self dynamicOptionsSupport];
  inputConnectionBehavior = [(LNActionParameterMetadata *)self inputConnectionBehavior];
  v14 = inputConnectionBehavior ^ [(LNActionParameterMetadata *)self capabilities];
  queryIdentifier = [(LNActionParameterMetadata *)self queryIdentifier];
  v16 = v14 ^ [queryIdentifier hash];

  return v12 ^ v16;
}

- (id)description
{
  v26 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  name = [(LNActionParameterMetadata *)self name];
  valueType = [(LNActionParameterMetadata *)self valueType];
  title = [(LNActionParameterMetadata *)self title];
  resolvableInputTypes = [(LNActionParameterMetadata *)self resolvableInputTypes];
  v24 = [resolvableInputTypes valueForKeyPath:@"description"];
  v7 = [v24 componentsJoinedByString:{@", "}];
  isOptional = [(LNActionParameterMetadata *)self isOptional];
  typeSpecificMetadata = [(LNActionParameterMetadata *)self typeSpecificMetadata];
  dynamicOptionsSupport = [(LNActionParameterMetadata *)self dynamicOptionsSupport];
  inputConnectionBehavior = [(LNActionParameterMetadata *)self inputConnectionBehavior];
  v10 = @"Default";
  if (inputConnectionBehavior == 1)
  {
    v10 = @"Never";
  }

  if (inputConnectionBehavior == 2)
  {
    v10 = @"ConnectToPreviousIntentResult";
  }

  v11 = v10;
  capabilities = [(LNActionParameterMetadata *)self capabilities];
  queryIdentifier = [(LNActionParameterMetadata *)self queryIdentifier];
  if (capabilities)
  {
    v21 = v4;
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = v14;
    if (capabilities)
    {
      [v14 addObject:@"HasStaticDefault"];
      if ((capabilities & 2) == 0)
      {
LABEL_8:
        if ((capabilities & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_21;
      }
    }

    else if ((capabilities & 2) == 0)
    {
      goto LABEL_8;
    }

    [v15 addObject:@"HasDynamicDefault"];
    if ((capabilities & 4) == 0)
    {
LABEL_9:
      if ((capabilities & 8) == 0)
      {
LABEL_11:
        v16 = [v15 componentsJoinedByString:{@", "}];

        v4 = v21;
        goto LABEL_13;
      }

LABEL_10:
      [v15 addObject:@"HasOptionsProvider"];
      goto LABEL_11;
    }

LABEL_21:
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"HasQuery(%@)", queryIdentifier];
    [v15 addObject:v20];

    if ((capabilities & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v16 = @"N/A";
LABEL_13:
  if (isOptional)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v18 = [v26 stringWithFormat:@"<%@: %p, name: %@, valueType: %@, title: %@, resolvableInputTypes: [%@], isOptional: %@, typeSpecificMetadata: %@, dynamicOptionsSupport: %ld, inputConnectionBehavior: %@, capabilities: %@>", v4, self, name, valueType, title, v7, v17, typeSpecificMetadata, dynamicOptionsSupport, v11, v16];

  return v18;
}

- (LNActionParameterMetadata)initWithCoder:(id)coder
{
  v30[9] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valueType"];
  if (v6)
  {
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterDescription"];
    v7 = [coderCopy decodeBoolForKey:@"optional"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"resolvableInputTypes"];

    if (v11)
    {
      v27 = v7;
      v12 = LNValueTypeObjectClassesForCoding();
      v30[0] = objc_opt_class();
      v30[1] = objc_opt_class();
      v30[2] = objc_opt_class();
      v30[3] = objc_opt_class();
      v30[4] = objc_opt_class();
      v30[5] = objc_opt_class();
      v30[6] = objc_opt_class();
      v30[7] = objc_opt_class();
      v30[8] = objc_opt_class();
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:9];
      v14 = [v12 setByAddingObjectsFromArray:v13];
      v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"typeSpecificMetadata"];

      if (v15)
      {
        v16 = [coderCopy decodeIntegerForKey:@"dynamicOptionsSupport"];
        v17 = [coderCopy decodeIntegerForKey:@"inputConnectionBehavior"];
        v18 = [coderCopy decodeIntegerForKey:@"capabilities"];
        v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queryIdentifier"];
        v26 = v18;
        v25 = v16;
        v21 = v28;
        v20 = v29;
        self = [(LNActionParameterMetadata *)self initWithName:v5 valueType:v6 optional:v27 title:v29 description:v28 resolvableInputTypes:v11 typeSpecificMetadata:v15 dynamicOptionsSupport:v25 inputConnectionBehavior:v17 capabilities:v26 queryIdentifier:v19];

        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
        v21 = v28;
        v20 = v29;
      }
    }

    else
    {
      selfCopy = 0;
      v21 = v28;
      v20 = v29;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(LNActionParameterMetadata *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  valueType = [(LNActionParameterMetadata *)self valueType];
  [coderCopy encodeObject:valueType forKey:@"valueType"];

  title = [(LNActionParameterMetadata *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  parameterDescription = [(LNActionParameterMetadata *)self parameterDescription];
  [coderCopy encodeObject:parameterDescription forKey:@"parameterDescription"];

  [coderCopy encodeBool:-[LNActionParameterMetadata isOptional](self forKey:{"isOptional"), @"optional"}];
  resolvableInputTypes = [(LNActionParameterMetadata *)self resolvableInputTypes];
  [coderCopy encodeObject:resolvableInputTypes forKey:@"resolvableInputTypes"];

  typeSpecificMetadata = [(LNActionParameterMetadata *)self typeSpecificMetadata];
  [coderCopy encodeObject:typeSpecificMetadata forKey:@"typeSpecificMetadata"];

  [coderCopy encodeInteger:-[LNActionParameterMetadata dynamicOptionsSupport](self forKey:{"dynamicOptionsSupport"), @"dynamicOptionsSupport"}];
  [coderCopy encodeInteger:-[LNActionParameterMetadata inputConnectionBehavior](self forKey:{"inputConnectionBehavior"), @"inputConnectionBehavior"}];
  [coderCopy encodeInteger:-[LNActionParameterMetadata capabilities](self forKey:{"capabilities"), @"capabilities"}];
  queryIdentifier = [(LNActionParameterMetadata *)self queryIdentifier];
  [coderCopy encodeObject:queryIdentifier forKey:@"queryIdentifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17 = [LNActionParameterMetadata alloc];
  name = [(LNActionParameterMetadata *)self name];
  valueType = [(LNActionParameterMetadata *)self valueType];
  isOptional = [(LNActionParameterMetadata *)self isOptional];
  title = [(LNActionParameterMetadata *)self title];
  parameterDescription = [(LNActionParameterMetadata *)self parameterDescription];
  resolvableInputTypes = [(LNActionParameterMetadata *)self resolvableInputTypes];
  typeSpecificMetadata = [(LNActionParameterMetadata *)self typeSpecificMetadata];
  dynamicOptionsSupport = [(LNActionParameterMetadata *)self dynamicOptionsSupport];
  inputConnectionBehavior = [(LNActionParameterMetadata *)self inputConnectionBehavior];
  capabilities = [(LNActionParameterMetadata *)self capabilities];
  queryIdentifier = [(LNActionParameterMetadata *)self queryIdentifier];
  v14 = [(LNActionParameterMetadata *)v17 initWithName:name valueType:valueType optional:isOptional title:title description:parameterDescription resolvableInputTypes:resolvableInputTypes typeSpecificMetadata:typeSpecificMetadata dynamicOptionsSupport:dynamicOptionsSupport inputConnectionBehavior:inputConnectionBehavior capabilities:capabilities queryIdentifier:queryIdentifier];

  return v14;
}

- (LNActionParameterMetadata)initWithName:(id)name valueType:(id)type optional:(BOOL)optional title:(id)title description:(id)description resolvableInputTypes:(id)types typeSpecificMetadata:(id)metadata dynamicOptionsSupport:(int64_t)self0 inputConnectionBehavior:(int64_t)self1 capabilities:(unint64_t)self2 queryIdentifier:(id)self3
{
  nameCopy = name;
  typeCopy = type;
  titleCopy = title;
  descriptionCopy = description;
  typesCopy = types;
  metadataCopy = metadata;
  identifierCopy = identifier;
  if (typesCopy)
  {
    if (typeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionParameterMetadata.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"resolvableInputTypes"}];

    if (typeCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNActionParameterMetadata.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"valueType"}];

LABEL_3:
  v46.receiver = self;
  v46.super_class = LNActionParameterMetadata;
  v24 = [(LNActionParameterMetadata *)&v46 init];
  if (v24)
  {
    v25 = [nameCopy copy];
    name = v24->_name;
    v24->_name = v25;

    v27 = titleCopy;
    if (v27)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;

    title = v24->_title;
    v24->_title = v29;

    objc_storeStrong(&v24->_parameterDescription, description);
    v31 = [typeCopy copy];
    valueType = v24->_valueType;
    v24->_valueType = v31;

    v24->_optional = optional;
    v33 = [typesCopy copy];
    resolvableInputTypes = v24->_resolvableInputTypes;
    v24->_resolvableInputTypes = v33;

    v35 = [metadataCopy copy];
    typeSpecificMetadata = v24->_typeSpecificMetadata;
    v24->_typeSpecificMetadata = v35;

    v24->_dynamicOptionsSupport = support;
    v24->_inputConnectionBehavior = behavior;
    v24->_capabilities = capabilities;
    v37 = [identifierCopy copy];
    queryIdentifier = v24->_queryIdentifier;
    v24->_queryIdentifier = v37;

    v39 = v24;
  }

  return v24;
}

@end