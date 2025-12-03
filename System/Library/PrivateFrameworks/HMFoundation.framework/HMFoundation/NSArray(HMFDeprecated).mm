@interface NSArray(HMFDeprecated)
- (id)describeElements:()HMFDeprecated;
- (id)secureDescriptionWithIndent:()HMFDeprecated newLine:blacklistedKeys:;
@end

@implementation NSArray(HMFDeprecated)

- (id)secureDescriptionWithIndent:()HMFDeprecated newLine:blacklistedKeys:
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  string = [MEMORY[0x277CCAB68] string];
  v11 = @"\n";
  if (!a4)
  {
    v11 = &stru_283EBDA30;
  }

  v12 = v11;
  v26 = v12;
  if (v8)
  {
    objc_msgSend(string, "appendFormat:", @"%@%@(\n"), v12, v8, v12;
    [(__CFString *)v8 indentationByLevels:1];
  }

  else
  {
    objc_msgSend(string, "appendFormat:", @"%@(\n"), v12;
    +[HMFStringIndentation indentation];
  }
  v13 = ;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  v15 = [selfCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      v18 = 0;
      do
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(selfCopy);
        }

        v19 = *(*(&v27 + 1) + 8 * v18);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          shortDescription = [v19 secureDescriptionWithIndent:v13 newLine:0 blacklistedKeys:v9];
LABEL_14:
          v21 = shortDescription;
          [string appendString:shortDescription];
          goto LABEL_15;
        }

        if ([v19 conformsToProtocol:&unk_283ED27D0] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          shortDescription = [v19 shortDescription];
          goto LABEL_14;
        }

        v21 = [v19 description];
        [string appendFormat:@"%@%@", v13, v21];
LABEL_15:

        [string appendString:{@", \n"}];
        ++v18;
      }

      while (v16 != v18);
      v22 = [selfCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
      v16 = v22;
    }

    while (v22);
  }

  v23 = &stru_283EBDA30;
  if (v8)
  {
    v23 = v8;
  }

  [string appendFormat:@"%@"], v23);

  v24 = *MEMORY[0x277D85DE8];

  return string;
}

- (id)describeElements:()HMFDeprecated
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  string = [MEMORY[0x277CCAB68] string];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        [string appendString:{@"\r", v15}];
        v12 = v4[2](v4, v11);
        [string appendString:v12];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return string;
}

@end