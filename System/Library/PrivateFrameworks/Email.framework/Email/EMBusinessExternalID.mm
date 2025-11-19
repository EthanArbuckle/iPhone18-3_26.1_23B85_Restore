@interface EMBusinessExternalID
+ (id)_componentsForBrandIDURL:(id)a3;
+ (id)_componentsForHighLevelDomainDisplayNameURL:(id)a3;
+ (id)_componentsForHighLevelDomainURL:(id)a3;
+ (id)_componentsForSimpleAddressURL:(id)a3;
+ (id)_groupingForSerializedRepresentation:(id)a3 components:(id *)a4;
+ (id)_queryItemValueForName:(id)a3 fromURLComponents:(id)a4;
+ (id)_serializedRepresentationForGrouping:(int64_t)a3 components:(id)a4;
+ (id)_serializedRepresentationUsingBrandID:(id)a3;
+ (id)_serializedRepresentationUsingHighLevelDomain:(id)a3;
+ (id)_serializedRepresentationUsingScheme:(id)a3 highLevelDomain:(id)a4 andDisplayName:(id)a5;
+ (id)_serializedRepresentationUsingSimpleAddress:(id)a3;
+ (id)externalIDForBrandID:(id)a3;
+ (id)externalIDForHighLevelDomain:(id)a3;
+ (id)externalIDForHighLevelDomain:(id)a3 displayName:(id)a4;
+ (id)externalIDForHighLevelDomain:(id)a3 displayNameCommonPrefix:(id)a4;
+ (id)externalIDForSerializedRepresentation:(id)a3;
+ (id)externalIDForSimpleAddress:(id)a3;
- (BOOL)isEqual:(id)a3;
- (EMBusinessExternalID)initWithGrouping:(int64_t)a3 components:(id)a4 serializedRepresentation:(id)a5;
- (NSString)brandID;
- (NSString)displayName;
- (NSString)ef_publicDescription;
- (NSString)highLevelDomain;
- (NSString)serializedRepresentation;
- (NSString)simpleAddress;
- (id)_loggingDescriptionForSerializedRepresentation:(id)a3;
- (id)_redactComponent:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation EMBusinessExternalID

- (EMBusinessExternalID)initWithGrouping:(int64_t)a3 components:(id)a4 serializedRepresentation:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = EMBusinessExternalID;
  v11 = [(EMBusinessExternalID *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_grouping = a3;
    objc_storeStrong(&v11->_components, a4);
    if (v10)
    {
      v13 = EFAtomicObjectSetIfNil();
    }
  }

  return v12;
}

- (void)dealloc
{
  v3 = EFAtomicObjectRelease();
  v4.receiver = self;
  v4.super_class = EMBusinessExternalID;
  [(EMBusinessExternalID *)&v4 dealloc];
}

+ (id)externalIDForSimpleAddress:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_EMBusinessExternalIDComponents);
  [(_EMBusinessExternalIDComponents *)v5 setSimpleAddress:v4];
  v6 = [[a1 alloc] initWithGrouping:3 components:v5 serializedRepresentation:0];

  return v6;
}

+ (id)externalIDForHighLevelDomain:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_EMBusinessExternalIDComponents);
  [(_EMBusinessExternalIDComponents *)v5 setHighLevelDomain:v4];
  v6 = [[a1 alloc] initWithGrouping:4 components:v5 serializedRepresentation:0];

  return v6;
}

+ (id)externalIDForHighLevelDomain:(id)a3 displayName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(_EMBusinessExternalIDComponents);
  [(_EMBusinessExternalIDComponents *)v8 setHighLevelDomain:v6];
  [(_EMBusinessExternalIDComponents *)v8 setDisplayName:v7];
  v9 = [[a1 alloc] initWithGrouping:2 components:v8 serializedRepresentation:0];

  return v9;
}

+ (id)externalIDForHighLevelDomain:(id)a3 displayNameCommonPrefix:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(_EMBusinessExternalIDComponents);
  [(_EMBusinessExternalIDComponents *)v8 setHighLevelDomain:v6];
  [(_EMBusinessExternalIDComponents *)v8 setDisplayName:v7];
  v9 = [[a1 alloc] initWithGrouping:1 components:v8 serializedRepresentation:0];

  return v9;
}

+ (id)externalIDForBrandID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_EMBusinessExternalIDComponents);
  [(_EMBusinessExternalIDComponents *)v5 setBrandID:v4];
  v6 = [[a1 alloc] initWithGrouping:0 components:v5 serializedRepresentation:0];

  return v6;
}

+ (id)externalIDForSerializedRepresentation:(id)a3
{
  v4 = a3;
  v10 = 0;
  v5 = [a1 _groupingForSerializedRepresentation:v4 components:&v10];
  v6 = v10;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v8 = [[a1 alloc] initWithGrouping:objc_msgSend(v5 components:"integerValue") serializedRepresentation:{v6, v4}];
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (([(EMBusinessExternalID *)v4 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = v4;
    v6 = [(EMBusinessExternalID *)self grouping];
    if (v6 == [(EMBusinessExternalID *)v5 grouping])
    {
      v7 = [(EMBusinessExternalID *)self components];
      v8 = [(EMBusinessExternalID *)v5 components];
      v9 = EFObjectsAreEqual();
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(EMBusinessExternalID *)self grouping];
  v4 = [(EMBusinessExternalID *)self components];
  v5 = [v4 hash] + 5859909;

  return 33 * v3 + v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(EMBusinessExternalID *)self grouping];
  v6 = [(EMBusinessExternalID *)self components];
  v7 = [v6 copy];
  v8 = [(EMBusinessExternalID *)self serializedRepresentation];
  v9 = [v4 initWithGrouping:v5 components:v7 serializedRepresentation:v8];

  return v9;
}

- (NSString)ef_publicDescription
{
  v3 = [(EMBusinessExternalID *)self serializedRepresentation];
  v4 = [(EMBusinessExternalID *)self _loggingDescriptionForSerializedRepresentation:v3];

  return v4;
}

- (id)_loggingDescriptionForSerializedRepresentation:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E699B7B0] currentDevice];
  v6 = [v5 isInternal];

  if (v6)
  {
    v7 = [MEMORY[0x1E696AF20] componentsWithString:v4];
    v8 = [v7 user];
    v9 = [(EMBusinessExternalID *)self _redactComponent:v8];
    [v7 setUser:v9];

    v10 = [v7 host];
    v11 = [(EMBusinessExternalID *)self _redactComponent:v10];
    [v7 setHost:v11];

    v12 = [v7 path];
    v13 = [v12 length];

    if (v13 >= 3)
    {
      v14 = [v7 path];
      v15 = [v14 substringFromIndex:1];
      v16 = [(EMBusinessExternalID *)self _redactComponent:v15];

      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"/%@", v16];
      [v7 setPath:v17];
    }

    v18 = [v7 queryItems];
    v19 = [v18 count];

    if (v19)
    {
      v20 = [v7 queryItems];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __71__EMBusinessExternalID__loggingDescriptionForSerializedRepresentation___block_invoke;
      v25[3] = &unk_1E826C478;
      v25[4] = self;
      v21 = [v20 ef_map:v25];
      [v7 setQueryItems:v21];
    }

    v22 = [v7 string];
    v23 = [v22 ef_stringByReplacingPercentEscapesUsingEncoding:4];
  }

  else
  {
    v23 = [MEMORY[0x1E699B858] fullyRedactedStringForString:v4];
  }

  return v23;
}

id __71__EMBusinessExternalID__loggingDescriptionForSerializedRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 value];
  v6 = [v4 _redactComponent:v5];

  v7 = MEMORY[0x1E696AF60];
  v8 = [v3 name];
  v9 = [v7 queryItemWithName:v8 value:v6];

  return v9;
}

- (id)_redactComponent:(id)a3
{
  v3 = a3;
  if ([v3 length] > 1)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v3 substringToIndex:1];
    v4 = [v5 stringWithFormat:@"%@-%lu", v6, objc_msgSend(v3, "length")];
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (NSString)highLevelDomain
{
  v2 = [(EMBusinessExternalID *)self components];
  v3 = [v2 highLevelDomain];

  return v3;
}

- (NSString)displayName
{
  v2 = [(EMBusinessExternalID *)self components];
  v3 = [v2 displayName];

  return v3;
}

- (NSString)simpleAddress
{
  v2 = [(EMBusinessExternalID *)self components];
  v3 = [v2 simpleAddress];

  return v3;
}

- (NSString)brandID
{
  v2 = [(EMBusinessExternalID *)self components];
  v3 = [v2 brandID];

  return v3;
}

- (NSString)serializedRepresentation
{
  v3 = EFAtomicObjectLoad();
  if (!v3)
  {
    v4 = objc_opt_class();
    v5 = [(EMBusinessExternalID *)self grouping];
    v6 = [(EMBusinessExternalID *)self components];
    v7 = [v4 _serializedRepresentationForGrouping:v5 components:v6];

    v3 = EFAtomicObjectSetIfNil();
  }

  return v3;
}

+ (id)_serializedRepresentationForGrouping:(int64_t)a3 components:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v9 = [v6 brandID];
      v10 = [a1 _serializedRepresentationUsingBrandID:v9];
LABEL_13:
      v8 = v10;
      goto LABEL_14;
    }

    if (a3 != 1)
    {
      goto LABEL_15;
    }

    v9 = [v6 highLevelDomain];
    v11 = [v7 displayName];
    v12 = [a1 _serializedRepresentationUsingScheme:@"business-hld-cp" highLevelDomain:v9 andDisplayName:v11];
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 == 4)
      {
        v9 = [v6 highLevelDomain];
        v10 = [a1 _serializedRepresentationUsingHighLevelDomain:v9];
      }

      else
      {
        if (a3 != 3)
        {
          goto LABEL_15;
        }

        v9 = [v6 simpleAddress];
        v10 = [a1 _serializedRepresentationUsingSimpleAddress:v9];
      }

      goto LABEL_13;
    }

    v9 = [v6 highLevelDomain];
    v11 = [v7 displayName];
    v12 = [a1 _serializedRepresentationUsingScheme:@"business-hld-dn" highLevelDomain:v9 andDisplayName:v11];
  }

  v8 = v12;

LABEL_14:
LABEL_15:

  return v8;
}

+ (id)_serializedRepresentationUsingSimpleAddress:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v4 setScheme:@"business-addr"];
  v5 = [v3 emailAddressValue];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_3;
  }

  v7 = [v5 localPart];
  [v4 setUser:v7];

  v8 = [v6 domain];
  [v4 setHost:v8];

  v9 = [v4 string];
  if (!v9)
  {
LABEL_3:
    [v4 setUser:0];
    [v4 setHost:0];
    v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"invalid-addr" value:v3];
    v14[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v4 setQueryItems:v11];

    v9 = [v4 string];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_serializedRepresentationUsingHighLevelDomain:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v4 setScheme:@"business-hld"];
  [v4 setHost:v3];
  v5 = [v4 string];
  if (!v5)
  {
    [v4 setHost:0];
    v6 = [MEMORY[0x1E696AF60] queryItemWithName:@"invalid-hld" value:v3];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v4 setQueryItems:v7];

    v5 = [v4 string];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_serializedRepresentationUsingBrandID:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v6 setScheme:@"business-bi"];
  [v6 setHost:v5];
  v7 = [v6 string];
  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"EMBusinessExternalID.m" lineNumber:284 description:{@"Failed to generate a valid URL for brandID %@", v5}];
  }

  return v7;
}

+ (id)_serializedRepresentationUsingScheme:(id)a3 highLevelDomain:(id)a4 andDisplayName:(id)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v10 setScheme:v7];
  [v10 setHost:v8];
  if (v9)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"/%@", v9];
    [v10 setPath:v11];
  }

  v12 = [v10 string];
  if (!v12)
  {
    [v10 setHost:0];
    v13 = [MEMORY[0x1E696AF60] queryItemWithName:@"invalid-hld" value:v8];
    v17[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v10 setQueryItems:v14];

    v12 = [v10 string];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)_groupingForSerializedRepresentation:(id)a3 components:(id *)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 scheme];
      if ([v9 isEqualToString:@"business-addr"])
      {
        if (a4)
        {
          v10 = [a1 _componentsForSimpleAddressURL:v8];
          v11 = &unk_1F461CAE0;
LABEL_20:
          *a4 = v10;
          goto LABEL_21;
        }

        v11 = &unk_1F461CAE0;
        goto LABEL_21;
      }

      if ([v9 isEqualToString:@"business-hld"])
      {
        if (a4)
        {
          v10 = [a1 _componentsForHighLevelDomainURL:v8];
          v11 = &unk_1F461CAF8;
          goto LABEL_20;
        }

        v11 = &unk_1F461CAF8;
LABEL_21:

        goto LABEL_26;
      }

      if ([v9 isEqualToString:@"business-hld-dn"])
      {
        if (!a4)
        {
          v11 = &unk_1F461CB10;
          goto LABEL_21;
        }

        v10 = [a1 _componentsForHighLevelDomainDisplayNameURL:v8];
        v11 = &unk_1F461CB10;
        goto LABEL_20;
      }

      if ([v9 isEqualToString:@"business-hld-cp"])
      {
        if (!a4)
        {
          v11 = &unk_1F461CB28;
          goto LABEL_21;
        }

        v10 = [a1 _componentsForHighLevelDomainDisplayNameURL:v8];
        v11 = &unk_1F461CB28;
        goto LABEL_20;
      }

      if ([v9 isEqualToString:@"business-bi"])
      {
        if (!a4)
        {
          v11 = &unk_1F461CB40;
          goto LABEL_21;
        }

        v10 = [a1 _componentsForBrandIDURL:v8];
        v11 = &unk_1F461CB40;
        goto LABEL_20;
      }
    }
  }

  v11 = 0;
  if (a4)
  {
    *a4 = 0;
  }

LABEL_26:

  return v11;
}

+ (id)_componentsForSimpleAddressURL:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v4 resolvingAgainstBaseURL:0];
  v6 = [a1 _queryItemValueForName:@"invalid-addr" fromURLComponents:v5];
  if (v6)
  {
    goto LABEL_3;
  }

  v7 = objc_alloc_init(MEMORY[0x1E699B248]);
  v8 = [v5 user];
  [v7 setLocalPart:v8];

  v9 = [v5 host];
  [v7 setDomain:v9];

  v6 = [v7 stringValue];

  if (v6)
  {
LABEL_3:
    v10 = objc_alloc_init(_EMBusinessExternalIDComponents);
    [(_EMBusinessExternalIDComponents *)v10 setSimpleAddress:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_componentsForHighLevelDomainURL:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v4 resolvingAgainstBaseURL:0];
  v6 = [a1 _queryItemValueForName:@"invalid-hld" fromURLComponents:v5];
  if (v6 || ([v5 host], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = objc_alloc_init(_EMBusinessExternalIDComponents);
    [(_EMBusinessExternalIDComponents *)v7 setHighLevelDomain:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_componentsForHighLevelDomainDisplayNameURL:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v4 resolvingAgainstBaseURL:0];
  v6 = [a1 _queryItemValueForName:@"invalid-hld" fromURLComponents:v5];
  if (!v6)
  {
    v6 = [v5 host];
  }

  v7 = [v5 path];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [v5 path];
    v10 = [v9 substringFromIndex:1];

    v8 = 0;
    if (v6 && v10)
    {
      v8 = objc_alloc_init(_EMBusinessExternalIDComponents);
      [(_EMBusinessExternalIDComponents *)v8 setHighLevelDomain:v6];
      [(_EMBusinessExternalIDComponents *)v8 setDisplayName:v10];
    }
  }

  else
  {
    v10 = 0;
  }

  return v8;
}

+ (id)_componentsForBrandIDURL:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v3 resolvingAgainstBaseURL:0];
  v5 = [v4 host];
  if (v5)
  {
    v6 = objc_alloc_init(_EMBusinessExternalIDComponents);
    [(_EMBusinessExternalIDComponents *)v6 setBrandID:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_queryItemValueForName:(id)a3 fromURLComponents:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 queryItems];
  v8 = [v7 count];

  if (v8)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v6 queryItems];
    v8 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 name];
          v14 = [v13 isEqualToString:v5];

          if (v14)
          {
            v8 = [v12 value];
            goto LABEL_12;
          }
        }

        v8 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

@end