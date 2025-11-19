@interface MSUDataAccessorRestore
- (id)copyMountPointForVolumeType:(int)a3 error:(id *)a4;
- (id)findVolumesWithRole:(int)a3;
- (id)getVolumeWithUUID:(id)a3;
- (id)specialCaseAPTicketForRamdiskWithError:(id *)a3;
@end

@implementation MSUDataAccessorRestore

- (id)copyMountPointForVolumeType:(int)a3 error:(id *)a4
{
  if (a3)
  {
    if (a3 != 1)
    {
      [MSUDataAccessor buildErrorForRef:a4 code:6000 description:@"Unknown volume type"];
      return 0;
    }

    v5 = 13;
  }

  else
  {
    v5 = 6;
  }

  v6 = [(MSUDataAccessorRestore *)self findVolumesWithRole:v5];
  if ([v6 count] == 1)
  {
    v7 = [v6 objectAtIndex:0];
    v8 = [v7 mountPoint];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      [MSUDataAccessor buildErrorForRef:a4 code:6003 description:@"Volume not mounted"];
    }
  }

  else
  {
    if ([v6 count] < 2)
    {
      v11 = @"Missing volume";
    }

    else
    {
      v11 = @"Too many volumes";
    }

    [MSUDataAccessor buildErrorForRef:a4 code:6003 description:v11];
    v9 = 0;
  }

  return v9;
}

- (id)specialCaseAPTicketForRamdiskWithError:(id *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:@"/private/var/Keychains/apticket.der"];

  if (v5)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:@"/private/var/Keychains/apticket.der" options:0 error:a3];
    if (v6)
    {
      v7 = MGCopyAnswer();
      if (v7)
      {
        v8 = v7;
        v9 = CFGetTypeID(v7);
        if (v9 == CFDataGetTypeID())
        {
          v10 = MGCopyAnswer();
          if (v10)
          {
            v11 = v10;
            v12 = CFGetTypeID(v10);
            if (v12 != CFStringGetTypeID())
            {
              CFRelease(v11);
              [MSUDataAccessor buildErrorForRef:a3 code:6005 description:@"Bad type in response to crypto hash method query"];
              v13 = 0;
LABEL_27:

              goto LABEL_15;
            }
          }

          else
          {
            v11 = @"sha1";
          }

          v22 = 0u;
          v23 = 0u;
          *md = 0u;
          if ([(__CFString *)v11 isEqualToString:@"sha1"])
          {
            CC_SHA1([v6 bytes], objc_msgSend(v6, "length"), md);
            v17 = 20;
          }

          else
          {
            if (![(__CFString *)v11 isEqualToString:@"sha2-384"])
            {
              v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported crypto hash method %@", v11];
              [MSUDataAccessor buildErrorForRef:a3 code:6005 description:v20];

              v13 = 0;
LABEL_26:

              goto LABEL_27;
            }

            CC_SHA384([v6 bytes], objc_msgSend(v6, "length"), md);
            v17 = 48;
          }

          v18 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:md length:v17 freeWhenDone:0];
          v13 = @"/private/var/Keychains/apticket.der";
          if (([v18 isEqualToData:v8] & 1) == 0)
          {
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Found apticket at %@ but it does not match the boot manifest hash", @"/private/var/Keychains/apticket.der"];
            [MSUDataAccessor buildErrorForRef:a3 code:6006 description:v19];

            v13 = 0;
          }

          goto LABEL_26;
        }

        CFRelease(v8);
        v14 = @"Bad type in response to boot manifest hash query";
      }

      else
      {
        v14 = @"Failed to boot manifest hash";
      }

      [MSUDataAccessor buildErrorForRef:a3 code:6005 description:v14];
    }

    v13 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v13 = 0;
LABEL_16:
  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)getVolumeWithUUID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [MEMORY[0x277D82BF8] allMedia];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [v10 mediaUUID];
          v12 = [v11 isEqualToString:v3];

          if (v12)
          {
            goto LABEL_12;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v10 = 0;
LABEL_12:

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)findVolumesWithRole:(int)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [MEMORY[0x277D82BF8] allMedia];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          if ([v11 role] == a3)
          {
            [v4 addObject:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

@end