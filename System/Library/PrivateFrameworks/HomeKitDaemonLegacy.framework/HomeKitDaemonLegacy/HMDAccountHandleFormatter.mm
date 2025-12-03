@interface HMDAccountHandleFormatter
+ (id)defaultFormatter;
- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description;
- (id)accountHandleFromString:(id)string;
- (id)privateStringForObjectValue:(id)value;
- (id)stringForObjectValue:(id)value;
@end

@implementation HMDAccountHandleFormatter

+ (id)defaultFormatter
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)privateStringForObjectValue:(id)value
{
  v69 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = valueCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = valueCopy;
  if (!v6)
  {
    v8 = valueCopy;
    objc_opt_class();
    v9 = (objc_opt_isKindOfClass() & 1) != 0 ? v8 : 0;
    v10 = v9;

    v7 = [(HMDAccountHandleFormatter *)self accountHandleFromString:v10];

    if (!v7)
    {
      goto LABEL_14;
    }
  }

  type = [v7 type];
  if (type == 2)
  {
    v12 = [v7 URI];
    unprefixedURI = [v12 unprefixedURI];
    selfCopy2 = self;
    v15 = unprefixedURI;
    v24 = objc_autoreleasePoolPush();
    v25 = [v15 length];
    v26 = [v15 characterAtIndex:0] == 43;
    v27 = (v25 - v26) >= 4;
    v28 = v25 - v26 - 4;
    if (v28 != 0 && v27)
    {
      v61 = selfCopy2;
      v37 = v24;
      v38 = v12;
      string = [MEMORY[0x277CCAB68] string];
      if (v28 >= 1)
      {
        v40 = v28;
        do
        {
          [string appendString:@"."];
          --v40;
        }

        while (v40);
      }

      v33 = [v15 stringByReplacingCharactersInRange:v26 withString:{v28, string}];

      v12 = v38;
      v24 = v37;
      selfCopy2 = v61;
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy2;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v68 = v32;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEBUG, "%{public}@Phone number is too short to partially redact", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      v33 = 0;
    }

    v36 = v24;
    goto LABEL_31;
  }

  if (type != 1)
  {
LABEL_14:
    v22 = 0;
    goto LABEL_34;
  }

  v12 = [v7 URI];
  unprefixedURI2 = [v12 unprefixedURI];
  selfCopy2 = self;
  v15 = unprefixedURI2;
  v16 = objc_autoreleasePoolPush();
  if ([v15 length] > 4)
  {
    v34 = [v15 rangeOfString:@"@"];
    if (v34 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v35 = v34;
      if (v34)
      {
        v59 = v16;
        v60 = selfCopy2;
        v62 = v12;
        v44 = [v15 substringToIndex:v34];
        v58 = [v44 stringByReplacingCharactersInRange:1 withString:{v35 - 1, @"***"}];

        v45 = [v15 substringFromIndex:v35 + 1];
        v46 = [v45 componentsSeparatedByString:@"."];

        v47 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v46, "count")}];
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v48 = v46;
        v49 = [v48 countByEnumeratingWithState:&v63 objects:buf count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v64;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v64 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = *(*(&v63 + 1) + 8 * i);
              if ([v53 length])
              {
                v54 = [v53 stringByReplacingCharactersInRange:1 withString:{objc_msgSend(v53, "length") - 1, @"***"}];
                [v47 addObject:v54];
              }
            }

            v50 = [v48 countByEnumeratingWithState:&v63 objects:buf count:16];
          }

          while (v50);
        }

        v55 = [v47 componentsJoinedByString:@"."];

        v56 = MEMORY[0x277CCACA8];
        lowercaseString = [v55 lowercaseString];
        v33 = [v56 stringWithFormat:@"%@@%@", v58, lowercaseString];

        selfCopy2 = v60;
        v12 = v62;
        v16 = v59;
        goto LABEL_25;
      }
    }

    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy2;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v68 = v20;
      v21 = "%{public}@Failed to determine '@' range";
      goto LABEL_23;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy2;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v68 = v20;
      v21 = "%{public}@Invalid email address length";
LABEL_23:
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, v21, buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v17);
  v33 = 0;
LABEL_25:
  v36 = v16;
LABEL_31:
  objc_autoreleasePoolPop(v36);
  v41 = @"<redacted>";
  if (v33)
  {
    v41 = v33;
  }

  v22 = v41;

LABEL_34:
  v42 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)accountHandleFromString:(id)string
{
  v8 = 0;
  v3 = [(HMDAccountHandleFormatter *)self getObjectValue:&v8 forString:string errorDescription:0];
  v4 = v8;
  v5 = v4;
  v6 = 0;
  if (v3)
  {
    v6 = v4;
  }

  return v6;
}

- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description
{
  v7 = IDSCopyAddressDestinationForDestination();
  if (([v7 _appearsToBeEmail] & 1) != 0 || objc_msgSend(v7, "hasPrefix:", @"mailto:"))
  {
    v8 = objc_alloc(MEMORY[0x277D18A48]);
    v9 = MEMORY[0x259C01FB0](v7);
LABEL_4:
    v10 = v9;
    v11 = [v8 initWithPrefixedURI:v9];

    if (value)
    {
      *value = [[HMDAccountHandle alloc] initWithURI:v11];
    }

    v12 = 1;
    goto LABEL_7;
  }

  if (([v7 _appearsToBePhoneNumber] & 1) != 0 || objc_msgSend(v7, "hasPrefix:", @"tel:"))
  {
    v8 = objc_alloc(MEMORY[0x277D18A48]);
    v9 = IDSCopyIDForPhoneNumber();
    goto LABEL_4;
  }

  v12 = 0;
  v11 = 0;
  if (description)
  {
    *description = @"String does not appear to be valid handle type";
  }

LABEL_7:

  return v12;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = valueCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = valueCopy;
  if (v5)
  {
    goto LABEL_9;
  }

  v7 = valueCopy;
  objc_opt_class();
  v8 = (objc_opt_isKindOfClass() & 1) != 0 ? v7 : 0;
  v9 = v8;

  v6 = [(HMDAccountHandleFormatter *)self accountHandleFromString:v9];

  if (v6)
  {
LABEL_9:
    v10 = [v6 URI];
    unprefixedURI = [v10 unprefixedURI];
  }

  else
  {
    unprefixedURI = 0;
  }

  return unprefixedURI;
}

@end