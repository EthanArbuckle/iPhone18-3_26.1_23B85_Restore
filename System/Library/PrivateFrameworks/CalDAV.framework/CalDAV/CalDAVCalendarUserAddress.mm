@interface CalDAVCalendarUserAddress
+ (BOOL)compareAddressURL:(id)l localString:(id)string;
+ (BOOL)compareAddressURL:(id)l localURL:(id)rL;
+ (id)_minPreferredAddress:(id)address;
+ (id)_preferredAddressNoPreferred:(id)preferred;
+ (id)packCalDAVUserAdress:(id)adress;
+ (id)preferredAddress:(id)address;
+ (id)unpackCalDAVUserAdress:(id)adress;
- (BOOL)isSameAsUserAddressURL:(id)l;
- (CalDAVCalendarUserAddress)initWithAddress:(id)address preferred:(int64_t)preferred;
- (int64_t)compare:(id)compare;
@end

@implementation CalDAVCalendarUserAddress

- (CalDAVCalendarUserAddress)initWithAddress:(id)address preferred:(int64_t)preferred
{
  addressCopy = address;
  v10.receiver = self;
  v10.super_class = CalDAVCalendarUserAddress;
  v7 = [(CalDAVCalendarUserAddress *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CalDAVCalendarUserAddress *)v7 setAddress:addressCopy];
    [(CalDAVCalendarUserAddress *)v8 setPreferred:preferred];
  }

  return v8;
}

+ (id)packCalDAVUserAdress:(id)adress
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"packedCalendarUserAddressAddress";
  adressCopy = adress;
  address = [adressCopy address];
  absoluteString = [address absoluteString];
  v12[1] = @"packedCalendarUserAddressPreferred";
  v13[0] = absoluteString;
  v6 = MEMORY[0x277CCABB0];
  preferred = [adressCopy preferred];

  v8 = [v6 numberWithInteger:preferred];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)unpackCalDAVUserAdress:(id)adress
{
  adressCopy = adress;
  v4 = [CalDAVCalendarUserAddress alloc];
  v5 = MEMORY[0x277CBEBC0];
  v6 = [adressCopy objectForKeyedSubscript:@"packedCalendarUserAddressAddress"];
  v7 = [v5 URLWithString:v6];
  v8 = [adressCopy objectForKeyedSubscript:@"packedCalendarUserAddressPreferred"];

  v9 = -[CalDAVCalendarUserAddress initWithAddress:preferred:](v4, "initWithAddress:preferred:", v7, [v8 integerValue]);

  return v9;
}

+ (id)preferredAddress:(id)address
{
  addressCopy = address;
  v5 = addressCopy;
  if (addressCopy && [addressCopy count])
  {
    v6 = [self _minPreferredAddress:v5];
    if (!v6)
    {
      v6 = [self _preferredAddressNoPreferred:v5];
    }

    address = [v6 address];
    absoluteString = [address absoluteString];
  }

  else
  {
    absoluteString = 0;
  }

  return absoluteString;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  address = [(CalDAVCalendarUserAddress *)self address];
  absoluteString = [address absoluteString];
  address2 = [compareCopy address];

  absoluteString2 = [address2 absoluteString];
  v9 = [absoluteString compare:absoluteString2];

  return v9;
}

+ (id)_minPreferredAddress:(id)address
{
  v20 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [addressCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(addressCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        preferred = [v9 preferred];
        if (preferred != [objc_opt_class() defaultPreferredAttribute])
        {
          if (v6)
          {
            preferred2 = [v6 preferred];
            if (preferred2 > [v9 preferred])
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

      v5 = [addressCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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

+ (id)_preferredAddressNoPreferred:(id)preferred
{
  v39 = *MEMORY[0x277D85DE8];
  preferredCopy = preferred;
  allObjects = [preferredCopy allObjects];
  v5 = [allObjects sortedArrayUsingSelector:sel_compare_];

  if ([v5 count] == 1)
  {
    v6 = v5;
    goto LABEL_3;
  }

  v29 = v5;
  v30 = preferredCopy;
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
        preferredCopy = v30;
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
    address = [v15 address];
    absoluteString = [address absoluteString];
    lowercaseString = [absoluteString lowercaseString];

    if ([lowercaseString hasPrefix:@"https"])
    {
      v19 = v12;
      v20 = v11;
      v12 = v15;
LABEL_17:
      v24 = v15;

      v11 = v20;
      goto LABEL_18;
    }

    address2 = [v15 address];
    absoluteString2 = [address2 absoluteString];
    v23 = [absoluteString2 hasPrefix:@"/"];

    if (v23)
    {
      v19 = v32;
      v20 = v11;
      v32 = v15;
      goto LABEL_17;
    }

    if ([lowercaseString hasPrefix:@"http"])
    {
      v19 = v31;
      v20 = v11;
      v31 = v15;
      goto LABEL_17;
    }

    if ([lowercaseString hasPrefix:@"mailto"])
    {
      break;
    }

    v19 = v11;
    v20 = v15;
    if ([lowercaseString hasPrefix:@"tel"])
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
  preferredCopy = v30;
LABEL_34:

  v27 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isSameAsUserAddressURL:(id)l
{
  lCopy = l;
  v5 = objc_opt_class();
  address = [(CalDAVCalendarUserAddress *)self address];
  LOBYTE(v5) = [v5 compareAddressURL:lCopy localURL:address];

  return v5;
}

+ (BOOL)compareAddressURL:(id)l localString:(id)string
{
  if (!l || !string)
  {
    return 0;
  }

  v6 = MEMORY[0x277CBEBC0];
  lCopy = l;
  v8 = [v6 URLWithString:string];
  LOBYTE(self) = [self compareAddressURL:lCopy localURL:v8];

  return self;
}

+ (BOOL)compareAddressURL:(id)l localURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  absoluteString = [lCopy absoluteString];
  removeSlashIfNeeded = [absoluteString removeSlashIfNeeded];
  absoluteString2 = [rLCopy absoluteString];
  removeSlashIfNeeded2 = [absoluteString2 removeSlashIfNeeded];
  v11 = [removeSlashIfNeeded caseInsensitiveCompare:removeSlashIfNeeded2];

  if (v11)
  {
    relativePath = [lCopy relativePath];
    removeSlashIfNeeded3 = [relativePath removeSlashIfNeeded];

    relativePath2 = [rLCopy relativePath];
    removeSlashIfNeeded4 = [relativePath2 removeSlashIfNeeded];

    if (!removeSlashIfNeeded3 || removeSlashIfNeeded3 == removeSlashIfNeeded4 || [removeSlashIfNeeded3 caseInsensitiveCompare:removeSlashIfNeeded4])
    {
      path = [rLCopy path];
      path2 = [lCopy path];
      v18 = [path isEqualToString:path2];

      if (v18)
      {
        port = [rLCopy port];
        port2 = [lCopy port];
        v21 = port2;
        if (port)
        {
          if (port2 && ([port isEqualToNumber:port2] & 1) != 0)
          {
LABEL_9:
            host = [rLCopy host];
            host2 = [lCopy host];
            if ([host isEqualToString:host2])
            {
LABEL_10:
              v24 = 1;
LABEL_27:

              goto LABEL_28;
            }

            v25 = [host length];
            v26 = [host2 length];
            if (v25 >= v26)
            {
              v27 = host2;
            }

            else
            {
              v27 = host;
            }

            if (v25 >= v26)
            {
              v28 = host;
            }

            else
            {
              v28 = host2;
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

        else if (!port2)
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