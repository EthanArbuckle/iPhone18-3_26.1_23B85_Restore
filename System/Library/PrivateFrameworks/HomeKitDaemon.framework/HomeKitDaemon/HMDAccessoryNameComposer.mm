@interface HMDAccessoryNameComposer
- (BOOL)isEqual:(id)a3;
- (HMDAccessoryNameComposer)initWithRawAccessoryName:(id)a3 rawRoomName:(id)a4;
- (NSString)composedString;
- (unint64_t)hash;
@end

@implementation HMDAccessoryNameComposer

- (unint64_t)hash
{
  v2 = [(HMDAccessoryNameComposer *)self accessoryName];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(HMDAccessoryNameComposer *)self accessoryName];
      v8 = [(HMDAccessoryNameComposer *)v6 accessoryName];
      if (v7 != v8)
      {
        v9 = [(HMDAccessoryNameComposer *)self accessoryName];
        v3 = [(HMDAccessoryNameComposer *)v6 accessoryName];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(HMDAccessoryNameComposer *)self roomName];
      v12 = [(HMDAccessoryNameComposer *)v6 roomName];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(HMDAccessoryNameComposer *)self roomName];
        v14 = [(HMDAccessoryNameComposer *)v6 roomName];
        v10 = [v13 isEqual:v14];
      }

      v9 = v16;
      if (v7 == v8)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (NSString)composedString
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryNameComposer *)self accessoryName];
  v4 = [(HMDAccessoryNameComposer *)self accessoryName];
  if ([v4 length])
  {
    v5 = [(HMDAccessoryNameComposer *)self roomName];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [(HMDAccessoryNameComposer *)self roomNameAtEndSeparatedByWhitespace];
      v8 = MEMORY[0x277CCACA8];
      v9 = HMDLocalizedStringForKey(@"ACCESSORY_NAME_COMPOSER_FORMAT");
      if (v7)
      {
        v26 = 0;
        v10 = [(HMDAccessoryNameComposer *)self accessoryName];
        v11 = [(HMDAccessoryNameComposer *)self roomName];
        v12 = [v8 localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%1$@ %2$@" error:&v26, v10, v11];
        v13 = v26;

        v14 = v12;
        if (!v12)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = HMFGetLogIdentifier();
            *buf = 138544130;
            v28 = v17;
            v29 = 2112;
            v30 = @"ACCESSORY_NAME_COMPOSER_FORMAT";
            v31 = 2112;
            v32 = @"%1$@ %2$@";
            v33 = 2112;
            v34 = v13;
LABEL_13:
            _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

            goto LABEL_14;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v25 = 0;
        v21 = [(HMDAccessoryNameComposer *)self roomName];
        v22 = [(HMDAccessoryNameComposer *)self accessoryName];
        v12 = [v8 localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%1$@ %2$@" error:&v25, v21, v22];
        v13 = v25;

        v14 = v12;
        if (!v12)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = HMFGetLogIdentifier();
            *buf = 138544130;
            v28 = v17;
            v29 = 2112;
            v30 = @"ACCESSORY_NAME_COMPOSER_FORMAT";
            v31 = 2112;
            v32 = @"%1$@ %2$@";
            v33 = 2112;
            v34 = v13;
            goto LABEL_13;
          }

LABEL_14:

          objc_autoreleasePoolPop(v15);
          v14 = @"ACCESSORY_NAME_COMPOSER_FORMAT";
        }
      }

      v20 = v14;

      goto LABEL_16;
    }
  }

  else
  {
  }

  v18 = [(HMDAccessoryNameComposer *)self roomName];
  v19 = [v18 length];

  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = [(HMDAccessoryNameComposer *)self roomName];
LABEL_16:

  v3 = v20;
LABEL_17:
  v23 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HMDAccessoryNameComposer)initWithRawAccessoryName:(id)a3 rawRoomName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v42.receiver = self;
  v42.super_class = HMDAccessoryNameComposer;
  v8 = [(HMDAccessoryNameComposer *)&v42 init];
  if (v8)
  {
    v9 = [v6 copy];
    [(HMDAccessoryNameComposer *)v8 setRawAccessoryName:v9];

    v10 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v11 = [v6 stringByTrimmingCharactersInSet:v10];
    [(HMDAccessoryNameComposer *)v8 setAccessoryName:v11];

    v12 = [v7 copy];
    [(HMDAccessoryNameComposer *)v8 setRawRoomName:v12];

    v13 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v14 = [v7 stringByTrimmingCharactersInSet:v13];
    [(HMDAccessoryNameComposer *)v8 setRoomName:v14];

    v15 = [(HMDAccessoryNameComposer *)v8 accessoryName];
    if (![v15 length])
    {
LABEL_18:

      goto LABEL_19;
    }

    v16 = [(HMDAccessoryNameComposer *)v8 roomName];
    if (![v16 length])
    {
LABEL_17:

      goto LABEL_18;
    }

    v17 = [(HMDAccessoryNameComposer *)v8 accessoryName];
    v18 = [(HMDAccessoryNameComposer *)v8 roomName];
    v19 = [v17 isEqualToString:v18];

    if ((v19 & 1) == 0)
    {
      v20 = [(HMDAccessoryNameComposer *)v8 accessoryName];
      v21 = [(HMDAccessoryNameComposer *)v8 roomName];
      v22 = [v20 rangeOfString:v21 options:129];
      v24 = v23;

      if (v24)
      {
        v25 = v22 + v24;
        v26 = [(HMDAccessoryNameComposer *)v8 accessoryName];
        v27 = [v26 length];

        if (!v22)
        {
          v41 = [(HMDAccessoryNameComposer *)v8 accessoryName];
          v29 = [v41 substringFromIndex:v24];
          v30 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v40 = [v29 rangeOfCharacterFromSet:v30 options:0];

          if (v25 != v27)
          {
            [(HMDAccessoryNameComposer *)v8 setRoomNameAtEndSeparatedByWhitespace:0];
            if (!v40)
            {
LABEL_16:
              v36 = [(HMDAccessoryNameComposer *)v8 accessoryName];
              v37 = [v36 stringByReplacingCharactersInRange:v22 withString:{v24, &stru_283CF9D50}];
              [(HMDAccessoryNameComposer *)v8 setAccessoryName:v37];

              v15 = [(HMDAccessoryNameComposer *)v8 accessoryName];
              v16 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
              v38 = [v15 stringByTrimmingCharactersInSet:v16];
              [(HMDAccessoryNameComposer *)v8 setAccessoryName:v38];

              goto LABEL_17;
            }

LABEL_15:
            if (![(HMDAccessoryNameComposer *)v8 roomNameAtEndSeparatedByWhitespace])
            {
              [(HMDAccessoryNameComposer *)v8 setRoomName:0];
              goto LABEL_19;
            }

            goto LABEL_16;
          }

          v28 = v40 == 0;
LABEL_11:
          v31 = [(HMDAccessoryNameComposer *)v8 accessoryName];
          v32 = [v31 substringToIndex:v22];
          v33 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v34 = [v32 rangeOfCharacterFromSet:v33 options:0];
          [(HMDAccessoryNameComposer *)v8 setRoomNameAtEndSeparatedByWhitespace:v34 + v35 == v22];

          if (v28)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        if (v25 == v27)
        {
          v28 = 0;
          goto LABEL_11;
        }

        [(HMDAccessoryNameComposer *)v8 setRoomNameAtEndSeparatedByWhitespace:0];
      }
    }
  }

LABEL_19:

  return v8;
}

@end