@interface HMDAccessoryNameComposer
- (BOOL)isEqual:(id)equal;
- (HMDAccessoryNameComposer)initWithRawAccessoryName:(id)name rawRoomName:(id)roomName;
- (NSString)composedString;
- (unint64_t)hash;
@end

@implementation HMDAccessoryNameComposer

- (unint64_t)hash
{
  accessoryName = [(HMDAccessoryNameComposer *)self accessoryName];
  v3 = [accessoryName hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      accessoryName = [(HMDAccessoryNameComposer *)self accessoryName];
      accessoryName2 = [(HMDAccessoryNameComposer *)v6 accessoryName];
      if (accessoryName != accessoryName2)
      {
        accessoryName3 = [(HMDAccessoryNameComposer *)self accessoryName];
        accessoryName4 = [(HMDAccessoryNameComposer *)v6 accessoryName];
        if (![accessoryName3 isEqual:accessoryName4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = accessoryName3;
      }

      roomName = [(HMDAccessoryNameComposer *)self roomName];
      roomName2 = [(HMDAccessoryNameComposer *)v6 roomName];
      if (roomName == roomName2)
      {
        v10 = 1;
      }

      else
      {
        roomName3 = [(HMDAccessoryNameComposer *)self roomName];
        roomName4 = [(HMDAccessoryNameComposer *)v6 roomName];
        v10 = [roomName3 isEqual:roomName4];
      }

      accessoryName3 = v16;
      if (accessoryName == accessoryName2)
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
  accessoryName = [(HMDAccessoryNameComposer *)self accessoryName];
  accessoryName2 = [(HMDAccessoryNameComposer *)self accessoryName];
  if ([accessoryName2 length])
  {
    roomName = [(HMDAccessoryNameComposer *)self roomName];
    v6 = [roomName length];

    if (v6)
    {
      roomNameAtEndSeparatedByWhitespace = [(HMDAccessoryNameComposer *)self roomNameAtEndSeparatedByWhitespace];
      v8 = MEMORY[0x277CCACA8];
      v9 = HMDLocalizedStringForKey(@"ACCESSORY_NAME_COMPOSER_FORMAT");
      if (roomNameAtEndSeparatedByWhitespace)
      {
        v26 = 0;
        accessoryName3 = [(HMDAccessoryNameComposer *)self accessoryName];
        roomName2 = [(HMDAccessoryNameComposer *)self roomName];
        v12 = [v8 localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%1$@ %2$@" error:&v26, accessoryName3, roomName2];
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
        roomName3 = [(HMDAccessoryNameComposer *)self roomName];
        accessoryName4 = [(HMDAccessoryNameComposer *)self accessoryName];
        v12 = [v8 localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%1$@ %2$@" error:&v25, roomName3, accessoryName4];
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

      roomName5 = v14;

      goto LABEL_16;
    }
  }

  else
  {
  }

  roomName4 = [(HMDAccessoryNameComposer *)self roomName];
  v19 = [roomName4 length];

  if (!v19)
  {
    goto LABEL_17;
  }

  roomName5 = [(HMDAccessoryNameComposer *)self roomName];
LABEL_16:

  accessoryName = roomName5;
LABEL_17:
  v23 = *MEMORY[0x277D85DE8];

  return accessoryName;
}

- (HMDAccessoryNameComposer)initWithRawAccessoryName:(id)name rawRoomName:(id)roomName
{
  nameCopy = name;
  roomNameCopy = roomName;
  v42.receiver = self;
  v42.super_class = HMDAccessoryNameComposer;
  v8 = [(HMDAccessoryNameComposer *)&v42 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    [(HMDAccessoryNameComposer *)v8 setRawAccessoryName:v9];

    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v11 = [nameCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    [(HMDAccessoryNameComposer *)v8 setAccessoryName:v11];

    v12 = [roomNameCopy copy];
    [(HMDAccessoryNameComposer *)v8 setRawRoomName:v12];

    whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v14 = [roomNameCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet2];
    [(HMDAccessoryNameComposer *)v8 setRoomName:v14];

    accessoryName = [(HMDAccessoryNameComposer *)v8 accessoryName];
    if (![accessoryName length])
    {
LABEL_18:

      goto LABEL_19;
    }

    roomName = [(HMDAccessoryNameComposer *)v8 roomName];
    if (![roomName length])
    {
LABEL_17:

      goto LABEL_18;
    }

    accessoryName2 = [(HMDAccessoryNameComposer *)v8 accessoryName];
    roomName2 = [(HMDAccessoryNameComposer *)v8 roomName];
    v19 = [accessoryName2 isEqualToString:roomName2];

    if ((v19 & 1) == 0)
    {
      accessoryName3 = [(HMDAccessoryNameComposer *)v8 accessoryName];
      roomName3 = [(HMDAccessoryNameComposer *)v8 roomName];
      v22 = [accessoryName3 rangeOfString:roomName3 options:129];
      v24 = v23;

      if (v24)
      {
        v25 = v22 + v24;
        accessoryName4 = [(HMDAccessoryNameComposer *)v8 accessoryName];
        v27 = [accessoryName4 length];

        if (!v22)
        {
          accessoryName5 = [(HMDAccessoryNameComposer *)v8 accessoryName];
          v29 = [accessoryName5 substringFromIndex:v24];
          whitespaceCharacterSet3 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v40 = [v29 rangeOfCharacterFromSet:whitespaceCharacterSet3 options:0];

          if (v25 != v27)
          {
            [(HMDAccessoryNameComposer *)v8 setRoomNameAtEndSeparatedByWhitespace:0];
            if (!v40)
            {
LABEL_16:
              accessoryName6 = [(HMDAccessoryNameComposer *)v8 accessoryName];
              v37 = [accessoryName6 stringByReplacingCharactersInRange:v22 withString:{v24, &stru_283CF9D50}];
              [(HMDAccessoryNameComposer *)v8 setAccessoryName:v37];

              accessoryName = [(HMDAccessoryNameComposer *)v8 accessoryName];
              roomName = [MEMORY[0x277CCA900] whitespaceCharacterSet];
              v38 = [accessoryName stringByTrimmingCharactersInSet:roomName];
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
          accessoryName7 = [(HMDAccessoryNameComposer *)v8 accessoryName];
          v32 = [accessoryName7 substringToIndex:v22];
          whitespaceCharacterSet4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v34 = [v32 rangeOfCharacterFromSet:whitespaceCharacterSet4 options:0];
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