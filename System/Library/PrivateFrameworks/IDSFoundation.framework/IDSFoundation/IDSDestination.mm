@interface IDSDestination
+ (NSArray)classesForStrictUnarchiving;
+ (id)defaultPairedDeviceDestination;
+ (id)destinationWithAlias:(id)a3 pushToken:(id)a4;
+ (id)destinationWithDestinations:(id)a3;
+ (id)destinationWithDeviceURI:(id)a3;
+ (id)destinationWithGroup:(id)a3;
+ (id)destinationWithRapportPublicIdentifierURI:(id)a3;
+ (id)destinationWithString:(id)a3;
+ (id)destinationWithStringURI:(id)a3 isLightWeight:(BOOL)a4;
+ (id)destinationWithStrings:(id)a3;
+ (id)destinationWithURI:(id)a3;
+ (id)sentinelSelfAliasDestination;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDestination:(id)a3;
- (IDSDestination)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)normalizedURIStrings;
- (id)normalizedURIs;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSDestination

+ (id)defaultPairedDeviceDestination
{
  v2 = objc_alloc_init(IDSDestinationDefaultPairedDevice);

  return v2;
}

- (unint64_t)hash
{
  v2 = [(IDSDestination *)self destinationURIs];
  v3 = [v2 hash];

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
  v2 = [(IDSDestination *)self destinationURIs];
  v3 = [v2 __imSetByApplyingBlock:&unk_1F1AAA020];

  return v3;
}

- (id)normalizedURIStrings
{
  v2 = [(IDSDestination *)self normalizedURIs];
  v3 = [v2 __imSetByApplyingBlock:&unk_1F1AAA040];

  return v3;
}

+ (id)destinationWithAlias:(id)a3 pushToken:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[IDSDestinationPushToken alloc] initWithAlias:v6 pushToken:v5];

  return v7;
}

+ (id)destinationWithDestinations:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
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
        v13 = [a1 destinationWithString:v12];
        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [a1 destinationWithGroup:v12];
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
        v14 = [a1 destinationWithStrings:v16];

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
    v18 = [v5 firstObject];
  }

  else
  {
    v18 = [[IDSDestinationComposite alloc] initWithDestinations:v5];
  }

  v19 = v18;

  return v19;
}

+ (id)destinationWithString:(id)a3
{
  v4 = a3;
  if ([IDSDestinationDevice isDeviceURI:v4])
  {
    v5 = [[IDSDestinationDevice alloc] initWithDeviceURI:v4];
  }

  else if ([v4 isEqualToString:@"__IDS_DEFAULT_PAIRED_DEVICE__"])
  {
    v5 = [a1 defaultPairedDeviceDestination];
  }

  else if ([v4 isEqualToString:@"____--SENTINEL--SELF--ALIAS--V0--____"])
  {
    v5 = [a1 sentinelSelfAliasDestination];
  }

  else
  {
    v5 = [[IDSDestinationURI alloc] initWithURIString:v4];
  }

  v6 = v5;

  return v6;
}

+ (id)destinationWithURI:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"guest-device:"])
  {
    v5 = [a1 destinationWithRapportPublicIdentifierURI:v4];
  }

  else
  {
    v5 = [[IDSDestinationURI alloc] initWithURIString:v4];
  }

  v6 = v5;

  return v6;
}

+ (id)destinationWithStrings:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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

        v11 = [a1 destinationWithString:{*(*(&v14 + 1) + 8 * i), v14}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [a1 destinationWithDestinations:v5];

  return v12;
}

+ (id)destinationWithGroup:(id)a3
{
  v3 = a3;
  v4 = [[IDSDestinationEngram alloc] initWithENGroup:v3];

  return v4;
}

+ (id)destinationWithStringURI:(id)a3 isLightWeight:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[IDSDestinationGroupSessionMember alloc] initWithURI:v5 isLightWeight:v4];

  return v6;
}

+ (id)sentinelSelfAliasDestination
{
  v2 = objc_alloc_init(IDSDestinationSentinelSelfAlias);

  return v2;
}

+ (id)destinationWithRapportPublicIdentifierURI:(id)a3
{
  v3 = a3;
  v4 = [[IDSDestinationDevice alloc] initWithRapportPublicIdentifierURI:v3];

  return v4;
}

+ (id)destinationWithDeviceURI:(id)a3
{
  v3 = a3;
  v4 = [[IDSDestinationDevice alloc] initWithIDSDeviceURI:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"IDSDestination.m" lineNumber:125 description:@"Abstract Method"];

  return 0;
}

- (BOOL)isEmpty
{
  v2 = [(IDSDestination *)self destinationURIs];
  v3 = [v2 count] == 0;

  return v3;
}

- (IDSDestination)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"IDSDestination.m" lineNumber:148 description:@"Abstract method"];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"IDSDestination.m" lineNumber:153 description:@"Abstract method"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSDestination *)self isEqualToDestination:v4];

  return v5;
}

- (BOOL)isEqualToDestination:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(IDSDestination *)self destinationURIs];
  v6 = [v4 destinationURIs];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

@end