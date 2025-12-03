@interface IDSDestination
+ (NSArray)classesForStrictUnarchiving;
+ (id)defaultPairedDeviceDestination;
+ (id)destinationWithAlias:(id)alias pushToken:(id)token;
+ (id)destinationWithDestinations:(id)destinations;
+ (id)destinationWithDeviceURI:(id)i;
+ (id)destinationWithGroup:(id)group;
+ (id)destinationWithRapportPublicIdentifierURI:(id)i;
+ (id)destinationWithString:(id)string;
+ (id)destinationWithStringURI:(id)i isLightWeight:(BOOL)weight;
+ (id)destinationWithStrings:(id)strings;
+ (id)destinationWithURI:(id)i;
+ (id)sentinelSelfAliasDestination;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDestination:(id)destination;
- (IDSDestination)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)normalizedURIStrings;
- (id)normalizedURIs;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSDestination

+ (id)defaultPairedDeviceDestination
{
  v2 = objc_alloc_init(IDSDestinationDefaultPairedDevice);

  return v2;
}

- (unint64_t)hash
{
  destinationURIs = [(IDSDestination *)self destinationURIs];
  v3 = [destinationURIs hash];

  return v3;
}

+ (NSArray)classesForStrictUnarchiving
{
  v4[9] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v4[8] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:9];

  return v2;
}

- (id)normalizedURIs
{
  destinationURIs = [(IDSDestination *)self destinationURIs];
  v3 = [destinationURIs __imSetByApplyingBlock:&unk_1F1AAA020];

  return v3;
}

- (id)normalizedURIStrings
{
  normalizedURIs = [(IDSDestination *)self normalizedURIs];
  v3 = [normalizedURIs __imSetByApplyingBlock:&unk_1F1AAA040];

  return v3;
}

+ (id)destinationWithAlias:(id)alias pushToken:(id)token
{
  tokenCopy = token;
  aliasCopy = alias;
  v7 = [[IDSDestinationPushToken alloc] initWithAlias:aliasCopy pushToken:tokenCopy];

  return v7;
}

+ (id)destinationWithDestinations:(id)destinations
{
  v26 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = destinationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v9 = *v22;
  v10 = 0x1E77DB000uLL;
  do
  {
    v11 = 0;
    do
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v21 + 1) + 8 * v11);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [self destinationWithString:v12];
        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [self destinationWithGroup:v12];
        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v13 = v12;
LABEL_13:
        v14 = v13;
        if (!v13)
        {
          goto LABEL_15;
        }

LABEL_14:
        [v5 addObject:v14];

        goto LABEL_15;
      }

      if (objc_opt_respondsToSelector())
      {
        [v12 destinationURIs];
        v16 = v15 = v10;
        v14 = [self destinationWithStrings:v16];

        v10 = v15;
        if (v14)
        {
          goto LABEL_14;
        }
      }

LABEL_15:
      ++v11;
    }

    while (v8 != v11);
    v17 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    v8 = v17;
  }

  while (v17);
LABEL_21:

  if ([v5 count] == 1)
  {
    firstObject = [v5 firstObject];
  }

  else
  {
    firstObject = [[IDSDestinationComposite alloc] initWithDestinations:v5];
  }

  v19 = firstObject;

  return v19;
}

+ (id)destinationWithString:(id)string
{
  stringCopy = string;
  if ([IDSDestinationDevice isDeviceURI:stringCopy])
  {
    defaultPairedDeviceDestination = [[IDSDestinationDevice alloc] initWithDeviceURI:stringCopy];
  }

  else if ([stringCopy isEqualToString:@"__IDS_DEFAULT_PAIRED_DEVICE__"])
  {
    defaultPairedDeviceDestination = [self defaultPairedDeviceDestination];
  }

  else if ([stringCopy isEqualToString:@"____--SENTINEL--SELF--ALIAS--V0--____"])
  {
    defaultPairedDeviceDestination = [self sentinelSelfAliasDestination];
  }

  else
  {
    defaultPairedDeviceDestination = [[IDSDestinationURI alloc] initWithURIString:stringCopy];
  }

  v6 = defaultPairedDeviceDestination;

  return v6;
}

+ (id)destinationWithURI:(id)i
{
  iCopy = i;
  if ([iCopy hasPrefix:@"guest-device:"])
  {
    v5 = [self destinationWithRapportPublicIdentifierURI:iCopy];
  }

  else
  {
    v5 = [[IDSDestinationURI alloc] initWithURIString:iCopy];
  }

  v6 = v5;

  return v6;
}

+ (id)destinationWithStrings:(id)strings
{
  v19 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(stringsCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = stringsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self destinationWithString:{*(*(&v14 + 1) + 8 * i), v14}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [self destinationWithDestinations:v5];

  return v12;
}

+ (id)destinationWithGroup:(id)group
{
  groupCopy = group;
  v4 = [[IDSDestinationEngram alloc] initWithENGroup:groupCopy];

  return v4;
}

+ (id)destinationWithStringURI:(id)i isLightWeight:(BOOL)weight
{
  weightCopy = weight;
  iCopy = i;
  v6 = [[IDSDestinationGroupSessionMember alloc] initWithURI:iCopy isLightWeight:weightCopy];

  return v6;
}

+ (id)sentinelSelfAliasDestination
{
  v2 = objc_alloc_init(IDSDestinationSentinelSelfAlias);

  return v2;
}

+ (id)destinationWithRapportPublicIdentifierURI:(id)i
{
  iCopy = i;
  v4 = [[IDSDestinationDevice alloc] initWithRapportPublicIdentifierURI:iCopy];

  return v4;
}

+ (id)destinationWithDeviceURI:(id)i
{
  iCopy = i;
  v4 = [[IDSDestinationDevice alloc] initWithIDSDeviceURI:iCopy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"IDSDestination.m" lineNumber:125 description:@"Abstract Method"];

  return 0;
}

- (BOOL)isEmpty
{
  destinationURIs = [(IDSDestination *)self destinationURIs];
  v3 = [destinationURIs count] == 0;

  return v3;
}

- (IDSDestination)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"IDSDestination.m" lineNumber:148 description:@"Abstract method"];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"IDSDestination.m" lineNumber:153 description:@"Abstract method"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSDestination *)self isEqualToDestination:equalCopy];

  return v5;
}

- (BOOL)isEqualToDestination:(id)destination
{
  if (self == destination)
  {
    return 1;
  }

  destinationCopy = destination;
  destinationURIs = [(IDSDestination *)self destinationURIs];
  destinationURIs2 = [destinationCopy destinationURIs];

  LOBYTE(destinationCopy) = [destinationURIs isEqual:destinationURIs2];
  return destinationCopy;
}

@end