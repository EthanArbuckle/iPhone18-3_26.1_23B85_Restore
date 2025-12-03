@interface EMBusinessExternalID
+ (id)_componentsForBrandIDURL:(id)l;
+ (id)_componentsForHighLevelDomainDisplayNameURL:(id)l;
+ (id)_componentsForHighLevelDomainURL:(id)l;
+ (id)_componentsForSimpleAddressURL:(id)l;
+ (id)_groupingForSerializedRepresentation:(id)representation components:(id *)components;
+ (id)_queryItemValueForName:(id)name fromURLComponents:(id)components;
+ (id)_serializedRepresentationForGrouping:(int64_t)grouping components:(id)components;
+ (id)_serializedRepresentationUsingBrandID:(id)d;
+ (id)_serializedRepresentationUsingHighLevelDomain:(id)domain;
+ (id)_serializedRepresentationUsingScheme:(id)scheme highLevelDomain:(id)domain andDisplayName:(id)name;
+ (id)_serializedRepresentationUsingSimpleAddress:(id)address;
+ (id)externalIDForBrandID:(id)d;
+ (id)externalIDForHighLevelDomain:(id)domain;
+ (id)externalIDForHighLevelDomain:(id)domain displayName:(id)name;
+ (id)externalIDForHighLevelDomain:(id)domain displayNameCommonPrefix:(id)prefix;
+ (id)externalIDForSerializedRepresentation:(id)representation;
+ (id)externalIDForSimpleAddress:(id)address;
- (BOOL)isEqual:(id)equal;
- (EMBusinessExternalID)initWithGrouping:(int64_t)grouping components:(id)components serializedRepresentation:(id)representation;
- (NSString)brandID;
- (NSString)displayName;
- (NSString)ef_publicDescription;
- (NSString)highLevelDomain;
- (NSString)serializedRepresentation;
- (NSString)simpleAddress;
- (id)_loggingDescriptionForSerializedRepresentation:(id)representation;
- (id)_redactComponent:(id)component;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation EMBusinessExternalID

- (EMBusinessExternalID)initWithGrouping:(int64_t)grouping components:(id)components serializedRepresentation:(id)representation
{
  componentsCopy = components;
  representationCopy = representation;
  v15.receiver = self;
  v15.super_class = EMBusinessExternalID;
  v11 = [(EMBusinessExternalID *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_grouping = grouping;
    objc_storeStrong(&v11->_components, components);
    if (representationCopy)
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

+ (id)externalIDForSimpleAddress:(id)address
{
  addressCopy = address;
  v5 = objc_alloc_init(_EMBusinessExternalIDComponents);
  [(_EMBusinessExternalIDComponents *)v5 setSimpleAddress:addressCopy];
  v6 = [[self alloc] initWithGrouping:3 components:v5 serializedRepresentation:0];

  return v6;
}

+ (id)externalIDForHighLevelDomain:(id)domain
{
  domainCopy = domain;
  v5 = objc_alloc_init(_EMBusinessExternalIDComponents);
  [(_EMBusinessExternalIDComponents *)v5 setHighLevelDomain:domainCopy];
  v6 = [[self alloc] initWithGrouping:4 components:v5 serializedRepresentation:0];

  return v6;
}

+ (id)externalIDForHighLevelDomain:(id)domain displayName:(id)name
{
  domainCopy = domain;
  nameCopy = name;
  v8 = objc_alloc_init(_EMBusinessExternalIDComponents);
  [(_EMBusinessExternalIDComponents *)v8 setHighLevelDomain:domainCopy];
  [(_EMBusinessExternalIDComponents *)v8 setDisplayName:nameCopy];
  v9 = [[self alloc] initWithGrouping:2 components:v8 serializedRepresentation:0];

  return v9;
}

+ (id)externalIDForHighLevelDomain:(id)domain displayNameCommonPrefix:(id)prefix
{
  domainCopy = domain;
  prefixCopy = prefix;
  v8 = objc_alloc_init(_EMBusinessExternalIDComponents);
  [(_EMBusinessExternalIDComponents *)v8 setHighLevelDomain:domainCopy];
  [(_EMBusinessExternalIDComponents *)v8 setDisplayName:prefixCopy];
  v9 = [[self alloc] initWithGrouping:1 components:v8 serializedRepresentation:0];

  return v9;
}

+ (id)externalIDForBrandID:(id)d
{
  dCopy = d;
  v5 = objc_alloc_init(_EMBusinessExternalIDComponents);
  [(_EMBusinessExternalIDComponents *)v5 setBrandID:dCopy];
  v6 = [[self alloc] initWithGrouping:0 components:v5 serializedRepresentation:0];

  return v6;
}

+ (id)externalIDForSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  v10 = 0;
  v5 = [self _groupingForSerializedRepresentation:representationCopy components:&v10];
  v6 = v10;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v8 = [[self alloc] initWithGrouping:objc_msgSend(v5 components:"integerValue") serializedRepresentation:{v6, representationCopy}];
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (([(EMBusinessExternalID *)equalCopy isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = equalCopy;
    grouping = [(EMBusinessExternalID *)self grouping];
    if (grouping == [(EMBusinessExternalID *)v5 grouping])
    {
      components = [(EMBusinessExternalID *)self components];
      components2 = [(EMBusinessExternalID *)v5 components];
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
  grouping = [(EMBusinessExternalID *)self grouping];
  components = [(EMBusinessExternalID *)self components];
  v5 = [components hash] + 5859909;

  return 33 * grouping + v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  grouping = [(EMBusinessExternalID *)self grouping];
  components = [(EMBusinessExternalID *)self components];
  v7 = [components copy];
  serializedRepresentation = [(EMBusinessExternalID *)self serializedRepresentation];
  v9 = [v4 initWithGrouping:grouping components:v7 serializedRepresentation:serializedRepresentation];

  return v9;
}

- (NSString)ef_publicDescription
{
  serializedRepresentation = [(EMBusinessExternalID *)self serializedRepresentation];
  v4 = [(EMBusinessExternalID *)self _loggingDescriptionForSerializedRepresentation:serializedRepresentation];

  return v4;
}

- (id)_loggingDescriptionForSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    v7 = [MEMORY[0x1E696AF20] componentsWithString:representationCopy];
    user = [v7 user];
    v9 = [(EMBusinessExternalID *)self _redactComponent:user];
    [v7 setUser:v9];

    host = [v7 host];
    v11 = [(EMBusinessExternalID *)self _redactComponent:host];
    [v7 setHost:v11];

    path = [v7 path];
    v13 = [path length];

    if (v13 >= 3)
    {
      path2 = [v7 path];
      v15 = [path2 substringFromIndex:1];
      v16 = [(EMBusinessExternalID *)self _redactComponent:v15];

      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"/%@", v16];
      [v7 setPath:v17];
    }

    queryItems = [v7 queryItems];
    v19 = [queryItems count];

    if (v19)
    {
      queryItems2 = [v7 queryItems];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __71__EMBusinessExternalID__loggingDescriptionForSerializedRepresentation___block_invoke;
      v25[3] = &unk_1E826C478;
      v25[4] = self;
      v21 = [queryItems2 ef_map:v25];
      [v7 setQueryItems:v21];
    }

    string = [v7 string];
    v23 = [string ef_stringByReplacingPercentEscapesUsingEncoding:4];
  }

  else
  {
    v23 = [MEMORY[0x1E699B858] fullyRedactedStringForString:representationCopy];
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

- (id)_redactComponent:(id)component
{
  componentCopy = component;
  if ([componentCopy length] > 1)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [componentCopy substringToIndex:1];
    v4 = [v5 stringWithFormat:@"%@-%lu", v6, objc_msgSend(componentCopy, "length")];
  }

  else
  {
    v4 = componentCopy;
  }

  return v4;
}

- (NSString)highLevelDomain
{
  components = [(EMBusinessExternalID *)self components];
  highLevelDomain = [components highLevelDomain];

  return highLevelDomain;
}

- (NSString)displayName
{
  components = [(EMBusinessExternalID *)self components];
  displayName = [components displayName];

  return displayName;
}

- (NSString)simpleAddress
{
  components = [(EMBusinessExternalID *)self components];
  simpleAddress = [components simpleAddress];

  return simpleAddress;
}

- (NSString)brandID
{
  components = [(EMBusinessExternalID *)self components];
  brandID = [components brandID];

  return brandID;
}

- (NSString)serializedRepresentation
{
  v3 = EFAtomicObjectLoad();
  if (!v3)
  {
    v4 = objc_opt_class();
    grouping = [(EMBusinessExternalID *)self grouping];
    components = [(EMBusinessExternalID *)self components];
    v7 = [v4 _serializedRepresentationForGrouping:grouping components:components];

    v3 = EFAtomicObjectSetIfNil();
  }

  return v3;
}

+ (id)_serializedRepresentationForGrouping:(int64_t)grouping components:(id)components
{
  componentsCopy = components;
  v7 = componentsCopy;
  v8 = 0;
  if (grouping <= 1)
  {
    if (!grouping)
    {
      brandID = [componentsCopy brandID];
      v10 = [self _serializedRepresentationUsingBrandID:brandID];
LABEL_13:
      v8 = v10;
      goto LABEL_14;
    }

    if (grouping != 1)
    {
      goto LABEL_15;
    }

    brandID = [componentsCopy highLevelDomain];
    displayName = [v7 displayName];
    v12 = [self _serializedRepresentationUsingScheme:@"business-hld-cp" highLevelDomain:brandID andDisplayName:displayName];
  }

  else
  {
    if (grouping != 2)
    {
      if (grouping == 4)
      {
        brandID = [componentsCopy highLevelDomain];
        v10 = [self _serializedRepresentationUsingHighLevelDomain:brandID];
      }

      else
      {
        if (grouping != 3)
        {
          goto LABEL_15;
        }

        brandID = [componentsCopy simpleAddress];
        v10 = [self _serializedRepresentationUsingSimpleAddress:brandID];
      }

      goto LABEL_13;
    }

    brandID = [componentsCopy highLevelDomain];
    displayName = [v7 displayName];
    v12 = [self _serializedRepresentationUsingScheme:@"business-hld-dn" highLevelDomain:brandID andDisplayName:displayName];
  }

  v8 = v12;

LABEL_14:
LABEL_15:

  return v8;
}

+ (id)_serializedRepresentationUsingSimpleAddress:(id)address
{
  v14[1] = *MEMORY[0x1E69E9840];
  addressCopy = address;
  v4 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v4 setScheme:@"business-addr"];
  emailAddressValue = [addressCopy emailAddressValue];
  v6 = emailAddressValue;
  if (!emailAddressValue)
  {
    goto LABEL_3;
  }

  localPart = [emailAddressValue localPart];
  [v4 setUser:localPart];

  domain = [v6 domain];
  [v4 setHost:domain];

  string = [v4 string];
  if (!string)
  {
LABEL_3:
    [v4 setUser:0];
    [v4 setHost:0];
    v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"invalid-addr" value:addressCopy];
    v14[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v4 setQueryItems:v11];

    string = [v4 string];
  }

  v12 = *MEMORY[0x1E69E9840];

  return string;
}

+ (id)_serializedRepresentationUsingHighLevelDomain:(id)domain
{
  v10[1] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v4 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v4 setScheme:@"business-hld"];
  [v4 setHost:domainCopy];
  string = [v4 string];
  if (!string)
  {
    [v4 setHost:0];
    v6 = [MEMORY[0x1E696AF60] queryItemWithName:@"invalid-hld" value:domainCopy];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v4 setQueryItems:v7];

    string = [v4 string];
  }

  v8 = *MEMORY[0x1E69E9840];

  return string;
}

+ (id)_serializedRepresentationUsingBrandID:(id)d
{
  dCopy = d;
  v6 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v6 setScheme:@"business-bi"];
  [v6 setHost:dCopy];
  string = [v6 string];
  if (!string)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMBusinessExternalID.m" lineNumber:284 description:{@"Failed to generate a valid URL for brandID %@", dCopy}];
  }

  return string;
}

+ (id)_serializedRepresentationUsingScheme:(id)scheme highLevelDomain:(id)domain andDisplayName:(id)name
{
  v17[1] = *MEMORY[0x1E69E9840];
  schemeCopy = scheme;
  domainCopy = domain;
  nameCopy = name;
  v10 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v10 setScheme:schemeCopy];
  [v10 setHost:domainCopy];
  if (nameCopy)
  {
    nameCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"/%@", nameCopy];
    [v10 setPath:nameCopy];
  }

  string = [v10 string];
  if (!string)
  {
    [v10 setHost:0];
    v13 = [MEMORY[0x1E696AF60] queryItemWithName:@"invalid-hld" value:domainCopy];
    v17[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v10 setQueryItems:v14];

    string = [v10 string];
  }

  v15 = *MEMORY[0x1E69E9840];

  return string;
}

+ (id)_groupingForSerializedRepresentation:(id)representation components:(id *)components
{
  representationCopy = representation;
  if ([representationCopy length])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:representationCopy];
    v8 = v7;
    if (v7)
    {
      scheme = [v7 scheme];
      if ([scheme isEqualToString:@"business-addr"])
      {
        if (components)
        {
          v10 = [self _componentsForSimpleAddressURL:v8];
          v11 = &unk_1F461CAE0;
LABEL_20:
          *components = v10;
          goto LABEL_21;
        }

        v11 = &unk_1F461CAE0;
        goto LABEL_21;
      }

      if ([scheme isEqualToString:@"business-hld"])
      {
        if (components)
        {
          v10 = [self _componentsForHighLevelDomainURL:v8];
          v11 = &unk_1F461CAF8;
          goto LABEL_20;
        }

        v11 = &unk_1F461CAF8;
LABEL_21:

        goto LABEL_26;
      }

      if ([scheme isEqualToString:@"business-hld-dn"])
      {
        if (!components)
        {
          v11 = &unk_1F461CB10;
          goto LABEL_21;
        }

        v10 = [self _componentsForHighLevelDomainDisplayNameURL:v8];
        v11 = &unk_1F461CB10;
        goto LABEL_20;
      }

      if ([scheme isEqualToString:@"business-hld-cp"])
      {
        if (!components)
        {
          v11 = &unk_1F461CB28;
          goto LABEL_21;
        }

        v10 = [self _componentsForHighLevelDomainDisplayNameURL:v8];
        v11 = &unk_1F461CB28;
        goto LABEL_20;
      }

      if ([scheme isEqualToString:@"business-bi"])
      {
        if (!components)
        {
          v11 = &unk_1F461CB40;
          goto LABEL_21;
        }

        v10 = [self _componentsForBrandIDURL:v8];
        v11 = &unk_1F461CB40;
        goto LABEL_20;
      }
    }
  }

  v11 = 0;
  if (components)
  {
    *components = 0;
  }

LABEL_26:

  return v11;
}

+ (id)_componentsForSimpleAddressURL:(id)l
{
  lCopy = l;
  v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:lCopy resolvingAgainstBaseURL:0];
  stringValue = [self _queryItemValueForName:@"invalid-addr" fromURLComponents:v5];
  if (stringValue)
  {
    goto LABEL_3;
  }

  v7 = objc_alloc_init(MEMORY[0x1E699B248]);
  user = [v5 user];
  [v7 setLocalPart:user];

  host = [v5 host];
  [v7 setDomain:host];

  stringValue = [v7 stringValue];

  if (stringValue)
  {
LABEL_3:
    v10 = objc_alloc_init(_EMBusinessExternalIDComponents);
    [(_EMBusinessExternalIDComponents *)v10 setSimpleAddress:stringValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_componentsForHighLevelDomainURL:(id)l
{
  lCopy = l;
  v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:lCopy resolvingAgainstBaseURL:0];
  v6 = [self _queryItemValueForName:@"invalid-hld" fromURLComponents:v5];
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

+ (id)_componentsForHighLevelDomainDisplayNameURL:(id)l
{
  lCopy = l;
  v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:lCopy resolvingAgainstBaseURL:0];
  host = [self _queryItemValueForName:@"invalid-hld" fromURLComponents:v5];
  if (!host)
  {
    host = [v5 host];
  }

  path = [v5 path];
  v8 = [path length];

  if (v8)
  {
    path2 = [v5 path];
    v10 = [path2 substringFromIndex:1];

    v8 = 0;
    if (host && v10)
    {
      v8 = objc_alloc_init(_EMBusinessExternalIDComponents);
      [(_EMBusinessExternalIDComponents *)v8 setHighLevelDomain:host];
      [(_EMBusinessExternalIDComponents *)v8 setDisplayName:v10];
    }
  }

  else
  {
    v10 = 0;
  }

  return v8;
}

+ (id)_componentsForBrandIDURL:(id)l
{
  lCopy = l;
  v4 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:lCopy resolvingAgainstBaseURL:0];
  host = [v4 host];
  if (host)
  {
    v6 = objc_alloc_init(_EMBusinessExternalIDComponents);
    [(_EMBusinessExternalIDComponents *)v6 setBrandID:host];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_queryItemValueForName:(id)name fromURLComponents:(id)components
{
  v22 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  componentsCopy = components;
  queryItems = [componentsCopy queryItems];
  value = [queryItems count];

  if (value)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    queryItems2 = [componentsCopy queryItems];
    value = [queryItems2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (value)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != value; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(queryItems2);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          name = [v12 name];
          v14 = [name isEqualToString:nameCopy];

          if (v14)
          {
            value = [v12 value];
            goto LABEL_12;
          }
        }

        value = [queryItems2 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (value)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v15 = *MEMORY[0x1E69E9840];

  return value;
}

@end