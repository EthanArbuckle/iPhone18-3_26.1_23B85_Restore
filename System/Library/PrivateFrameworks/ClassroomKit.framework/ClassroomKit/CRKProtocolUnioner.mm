@interface CRKProtocolUnioner
+ (id)nameOfProtocol:(id)protocol;
+ (id)nameOfUnionOfProtocols:(id)protocols;
+ (id)protocolByUnioningProtocols:(id)protocols;
+ (id)sortedNamesOfProtocols:(id)protocols;
@end

@implementation CRKProtocolUnioner

+ (id)protocolByUnioningProtocols:(id)protocols
{
  v20 = *MEMORY[0x277D85DE8];
  protocolsCopy = protocols;
  if ([protocolsCopy count])
  {
    v5 = [self nameOfUnionOfProtocols:protocolsCopy];
    v6 = objc_allocateProtocol([v5 UTF8String]);
    if (v6)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = protocolsCopy;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            protocol_addProtocol(v6, *(*(&v15 + 1) + 8 * i));
          }

          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }

      objc_registerProtocol(v6);
      v12 = v6;
    }

    else
    {
      v12 = NSProtocolFromString(v5);
    }

    v13 = v12;
  }

  else
  {
    v13 = &unk_28569D398;
  }

  return v13;
}

+ (id)nameOfUnionOfProtocols:(id)protocols
{
  v4 = MEMORY[0x277CBEB18];
  protocolsCopy = protocols;
  v6 = [[v4 alloc] initWithCapacity:{objc_msgSend(protocolsCopy, "count") + 1}];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 addObject:v8];

  v9 = [self sortedNamesOfProtocols:protocolsCopy];

  [v6 addObjectsFromArray:v9];
  v10 = [v6 componentsJoinedByString:@"_"];

  return v10;
}

+ (id)sortedNamesOfProtocols:(id)protocols
{
  v19 = *MEMORY[0x277D85DE8];
  protocolsCopy = protocols;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(protocolsCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = protocolsCopy;
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

        v11 = [self nameOfProtocol:{*(*(&v14 + 1) + 8 * i), v14}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [v5 sortUsingSelector:sel_compare_];
  v12 = [v5 copy];

  return v12;
}

+ (id)nameOfProtocol:(id)protocol
{
  v3 = MEMORY[0x277CCACA8];
  Name = protocol_getName(protocol);

  return [v3 stringWithUTF8String:Name];
}

@end