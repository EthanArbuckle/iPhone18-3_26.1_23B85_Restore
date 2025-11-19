@interface CalDAVCalendarUserAddress
+ (BOOL)compareAddressURL:(id)a3 localString:(id)a4;
+ (BOOL)compareAddressURL:(id)a3 localURL:(id)a4;
+ (id)_minPreferredAddress:(id)a3;
+ (id)_preferredAddressNoPreferred:(id)a3;
+ (id)packCalDAVUserAdress:(id)a3;
+ (id)preferredAddress:(id)a3;
+ (id)unpackCalDAVUserAdress:(id)a3;
- (BOOL)isSameAsUserAddressURL:(id)a3;
- (CalDAVCalendarUserAddress)initWithAddress:(id)a3 preferred:(int64_t)a4;
- (int64_t)compare:(id)a3;
@end

@implementation CalDAVCalendarUserAddress

- (CalDAVCalendarUserAddress)initWithAddress:(id)a3 preferred:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CalDAVCalendarUserAddress;
  v7 = [(CalDAVCalendarUserAddress *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CalDAVCalendarUserAddress *)v7 setAddress:v6];
    [(CalDAVCalendarUserAddress *)v8 setPreferred:a4];
  }

  return v8;
}

+ (id)packCalDAVUserAdress:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"packedCalendarUserAddressAddress";
  v3 = a3;
  v4 = [v3 address];
  v5 = [v4 absoluteString];
  v12[1] = @"packedCalendarUserAddressPreferred";
  v13[0] = v5;
  v6 = MEMORY[0x277CCABB0];
  v7 = [v3 preferred];

  v8 = [v6 numberWithInteger:v7];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)unpackCalDAVUserAdress:(id)a3
{
  v3 = a3;
  v4 = [CalDAVCalendarUserAddress alloc];
  v5 = MEMORY[0x277CBEBC0];
  v6 = [v3 objectForKeyedSubscript:@"packedCalendarUserAddressAddress"];
  v7 = [v5 URLWithString:v6];
  v8 = [v3 objectForKeyedSubscript:@"packedCalendarUserAddressPreferred"];

  v9 = -[CalDAVCalendarUserAddress initWithAddress:preferred:](v4, "initWithAddress:preferred:", v7, [v8 integerValue]);

  return v9;
}

+ (id)preferredAddress:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [a1 _minPreferredAddress:v5];
    if (!v6)
    {
      v6 = [a1 _preferredAddressNoPreferred:v5];
    }

    v7 = [v6 address];
    v8 = [v7 absoluteString];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(CalDAVCalendarUserAddress *)self address];
  v6 = [v5 absoluteString];
  v7 = [v4 address];

  v8 = [v7 absoluteString];
  v9 = [v6 compare:v8];

  return v9;
}

+ (id)_minPreferredAddress:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 preferred];
        if (v10 != [objc_opt_class() defaultPreferredAttribute])
        {
          if (v6)
          {
            v11 = [v6 preferred];
            if (v11 > [v9 preferred])
            {
              v12 = v9;

              v6 = v12;
            }
          }

          else
          {
            v6 = v9;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_preferredAddressNoPreferred:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 allObjects];
  v5 = [v4 sortedArrayUsingSelector:sel_compare_];

  if ([v5 count] == 1)
  {
    v6 = v5;
    goto LABEL_3;
  }

  v29 = v5;
  v30 = v3;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (!v9)
  {
    v11 = 0;
    v31 = 0;
    v32 = 0;
    v12 = 0;
LABEL_24:

LABEL_25:
    if (v11)
    {
      v7 = v11;

      goto LABEL_27;
    }

    if (v12)
    {
      v7 = v12;

      v26 = v32;
    }

    else
    {
      if (!v32)
      {
        v5 = v29;
        v3 = v30;
        v7 = v31;
        if (v31)
        {
          goto LABEL_34;
        }

        if (![v8 count])
        {
          v7 = 0;
          goto LABEL_34;
        }

        v6 = v8;
LABEL_3:
        v7 = [v6 objectAtIndex:0];
        goto LABEL_34;
      }

      v7 = v32;
      v26 = v31;
    }

    goto LABEL_33;
  }

  v10 = v9;
  v11 = 0;
  v31 = 0;
  v32 = 0;
  v12 = 0;
  v13 = *v35;
  obj = v8;
LABEL_6:
  v14 = 0;
  while (1)
  {
    if (*v35 != v13)
    {
      objc_enumerationMutation(obj);
    }

    v15 = *(*(&v34 + 1) + 8 * v14);
    v16 = [v15 address];
    v17 = [v16 absoluteString];
    v18 = [v17 lowercaseString];

    if ([v18 hasPrefix:@"https"])
    {
      v19 = v12;
      v20 = v11;
      v12 = v15;
LABEL_17:
      v24 = v15;

      v11 = v20;
      goto LABEL_18;
    }

    v21 = [v15 address];
    v22 = [v21 absoluteString];
    v23 = [v22 hasPrefix:@"/"];

    if (v23)
    {
      v19 = v32;
      v20 = v11;
      v32 = v15;
      goto LABEL_17;
    }

    if ([v18 hasPrefix:@"http"])
    {
      v19 = v31;
      v20 = v11;
      v31 = v15;
      goto LABEL_17;
    }

    if ([v18 hasPrefix:@"mailto"])
    {
      break;
    }

    v19 = v11;
    v20 = v15;
    if ([v18 hasPrefix:@"tel"])
    {
      goto LABEL_17;
    }

LABEL_18:

    if (v10 == ++v14)
    {
      v8 = obj;
      v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v10)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }
  }

  v25 = v15;

  v8 = obj;
  if (!v25)
  {
    goto LABEL_25;
  }

  v7 = v25;

LABEL_27:
LABEL_33:
  v5 = v29;
  v3 = v30;
LABEL_34:

  v27 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isSameAsUserAddressURL:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CalDAVCalendarUserAddress *)self address];
  LOBYTE(v5) = [v5 compareAddressURL:v4 localURL:v6];

  return v5;
}

+ (BOOL)compareAddressURL:(id)a3 localString:(id)a4
{
  if (!a3 || !a4)
  {
    return 0;
  }

  v6 = MEMORY[0x277CBEBC0];
  v7 = a3;
  v8 = [v6 URLWithString:a4];
  LOBYTE(a1) = [a1 compareAddressURL:v7 localURL:v8];

  return a1;
}

+ (BOOL)compareAddressURL:(id)a3 localURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 absoluteString];
  v8 = [v7 removeSlashIfNeeded];
  v9 = [v6 absoluteString];
  v10 = [v9 removeSlashIfNeeded];
  v11 = [v8 caseInsensitiveCompare:v10];

  if (v11)
  {
    v12 = [v5 relativePath];
    v13 = [v12 removeSlashIfNeeded];

    v14 = [v6 relativePath];
    v15 = [v14 removeSlashIfNeeded];

    if (!v13 || v13 == v15 || [v13 caseInsensitiveCompare:v15])
    {
      v16 = [v6 path];
      v17 = [v5 path];
      v18 = [v16 isEqualToString:v17];

      if (v18)
      {
        v19 = [v6 port];
        v20 = [v5 port];
        v21 = v20;
        if (v19)
        {
          if (v20 && ([v19 isEqualToNumber:v20] & 1) != 0)
          {
LABEL_9:
            v22 = [v6 host];
            v23 = [v5 host];
            if ([v22 isEqualToString:v23])
            {
LABEL_10:
              v24 = 1;
LABEL_27:

              goto LABEL_28;
            }

            v25 = [v22 length];
            v26 = [v23 length];
            if (v25 >= v26)
            {
              v27 = v23;
            }

            else
            {
              v27 = v22;
            }

            if (v25 >= v26)
            {
              v28 = v22;
            }

            else
            {
              v28 = v23;
            }

            v29 = v27;
            v30 = v28;
            if ([v29 rangeOfString:@"."] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v32 = [v30 hasPrefix:v29];

              if (v32)
              {
                goto LABEL_10;
              }
            }

            else
            {
            }

            v24 = 0;
            goto LABEL_27;
          }
        }

        else if (!v20)
        {
          goto LABEL_9;
        }

        v24 = 0;
LABEL_28:

        goto LABEL_29;
      }

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

LABEL_29:

    goto LABEL_30;
  }

  v24 = 1;
LABEL_30:

  return v24;
}

@end