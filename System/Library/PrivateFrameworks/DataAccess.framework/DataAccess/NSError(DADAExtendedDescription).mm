@interface NSError(DADAExtendedDescription)
- (id)DAExtendedDescription;
@end

@implementation NSError(DADAExtendedDescription)

- (id)DAExtendedDescription
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [self description];
  userInfo = [self userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [userInfo objectForKeyedSubscript:@"NSDetailedErrors"];
    if (v4)
    {
      v5 = [v2 stringByAppendingString:@"NSDetailedErrors: "];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v22;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(v6);
            }

            dAExtendedDescription = [*(*(&v21 + 1) + 8 * i) DAExtendedDescription];
            if (dAExtendedDescription)
            {
              v12 = [v5 stringByAppendingString:dAExtendedDescription];

              v5 = v12;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v8);
      }
    }

    else
    {
      userInfo2 = [self userInfo];
      v17 = [userInfo2 description];

      if (v17)
      {
        v18 = [v2 stringByAppendingString:v17];

        v2 = v18;
      }

      v5 = v2;
    }
  }

  else
  {
    userInfo3 = [self userInfo];
    v14 = [userInfo3 description];

    if (v14)
    {
      v15 = [v2 stringByAppendingString:v14];

      v2 = v15;
    }

    v5 = v2;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v5;
}

@end