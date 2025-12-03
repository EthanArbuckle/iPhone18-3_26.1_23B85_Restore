@interface HMDAudioAnalysisEventBulletin
- (HMDAudioAnalysisEventBulletin)initWithCoder:(id)coder;
- (HMDAudioAnalysisEventBulletin)initWithDictionary:(id)dictionary;
- (HMDAudioAnalysisEventBulletin)initWithReason:(unint64_t)reason startDate:(id)date endDate:(id)endDate notificationUUID:(id)d state:(unint64_t)state soundIdentifier:(id)identifier name:(id)name threadIdentifier:(id)self0 accessoryUUID:(id)self1 title:(id)self2;
- (id)localizedKeyForBody;
- (id)localizedKeyForEventEndWithDropIn:(BOOL)in homeName:(id)name;
- (id)localizedKeyForEventStartWithDropIn:(BOOL)in homeName:(id)name;
- (id)localizedKeyForTitle;
- (id)serialize;
- (id)stringForAudioAnalysisReasonWithHomeName:(id)name;
- (void)configureAccessoryNameComposer;
- (void)configureWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDAudioAnalysisEventBulletin

- (HMDAudioAnalysisEventBulletin)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCF2F0]];
  unsignedIntegerValue = [v18 unsignedIntegerValue];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDAudioAnalysisEventBulletinDateKey"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDAudioAnalysisEventBulletinNotificationUUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDAudioAnalysisEventBulletinState"];
  unsignedIntValue = [v6 unsignedIntValue];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDAudioAnalysisEventBulletinSoundIdentifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDAudioAnalysisEventBulletinTitleKey"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDAudioAnalysisEventBulletinAccessoryUUIDKey"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDAudioAnalysisEventBulletinNameKey"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDAudioAnalysisEventBulletinThreadIdentifierKey"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDAudioAnalysisEventBulletinStartDateKey"];

  v13 = [(HMDAudioAnalysisEventBulletin *)self initWithReason:unsignedIntegerValue startDate:v12 endDate:v16 notificationUUID:v5 state:unsignedIntValue soundIdentifier:v7 name:v10 threadIdentifier:v11 accessoryUUID:v9 title:v8];
  return v13;
}

- (HMDAudioAnalysisEventBulletin)initWithDictionary:(id)dictionary
{
  v3 = *MEMORY[0x277CCF2F0];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:v3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  unsignedIntValue = [v7 unsignedIntValue];
  v8 = [dictionaryCopy objectForKeyedSubscript:@"HMDAudioAnalysisEventBulletinState"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  unsignedIntValue2 = [v10 unsignedIntValue];
  v11 = [dictionaryCopy hmf_UUIDForKey:@"HMDAudioAnalysisEventBulletinAccessoryUUIDKey"];
  v12 = MEMORY[0x277CBEAA8];
  v13 = [dictionaryCopy objectForKeyedSubscript:@"HMDAudioAnalysisEventBulletinDateKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  [v15 doubleValue];
  v17 = v16;

  v18 = [v12 dateWithTimeIntervalSince1970:v17];
  v19 = [dictionaryCopy objectForKeyedSubscript:@"HMDAudioAnalysisEventBulletinNameKey"];
  v20 = [dictionaryCopy hmf_UUIDForKey:@"HMDAudioAnalysisEventBulletinNotificationUUID"];
  v21 = [dictionaryCopy objectForKeyedSubscript:@"HMDAudioAnalysisEventBulletinSoundIdentifier"];
  v22 = [dictionaryCopy objectForKeyedSubscript:@"HMDAudioAnalysisEventBulletinTitleKey"];
  v23 = [dictionaryCopy objectForKeyedSubscript:@"HMDAudioAnalysisEventBulletinThreadIdentifierKey"];
  v24 = MEMORY[0x277CBEAA8];
  v25 = [dictionaryCopy objectForKeyedSubscript:@"HMDAudioAnalysisEventBulletinStartDateKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  [v27 doubleValue];
  v29 = v28;

  v30 = [v24 dateWithTimeIntervalSince1970:v29];
  if (!v30)
  {
    v30 = [MEMORY[0x277CBEAA8] now];
  }

  v31 = [(HMDAudioAnalysisEventBulletin *)self initWithReason:unsignedIntValue startDate:v30 endDate:v18 notificationUUID:v20 state:unsignedIntValue2 soundIdentifier:v21 name:v19 threadIdentifier:v23 accessoryUUID:v11 title:v22];

  return v31;
}

- (id)serialize
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAudioAnalysisEventBulletin reason](self, "reason")}];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277CCF2F0]];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAudioAnalysisEventBulletin state](self, "state")}];
  [v3 setObject:v5 forKeyedSubscript:@"HMDAudioAnalysisEventBulletinState"];

  accessoryUUID = [(HMDAudioAnalysisEventBulletin *)self accessoryUUID];
  uUIDString = [accessoryUUID UUIDString];
  [v3 setObject:uUIDString forKeyedSubscript:@"HMDAudioAnalysisEventBulletinAccessoryUUIDKey"];

  v8 = MEMORY[0x277CCABB0];
  startDate = [(HMDAudioAnalysisEventBulletin *)self startDate];
  [startDate timeIntervalSince1970];
  v10 = [v8 numberWithDouble:?];
  [v3 setObject:v10 forKeyedSubscript:@"HMDAudioAnalysisEventBulletinStartDateKey"];

  v11 = MEMORY[0x277CCABB0];
  dateOfOccurrence = [(HMDAudioAnalysisEventBulletin *)self dateOfOccurrence];
  [dateOfOccurrence timeIntervalSince1970];
  v13 = [v11 numberWithDouble:?];
  [v3 setObject:v13 forKeyedSubscript:@"HMDAudioAnalysisEventBulletinDateKey"];

  name = [(HMDAudioAnalysisEventBulletin *)self name];
  [v3 setObject:name forKeyedSubscript:@"HMDAudioAnalysisEventBulletinNameKey"];

  notificationUUID = [(HMDAudioAnalysisEventBulletin *)self notificationUUID];
  uUIDString2 = [notificationUUID UUIDString];
  [v3 setObject:uUIDString2 forKeyedSubscript:@"HMDAudioAnalysisEventBulletinNotificationUUID"];

  soundIdentifier = [(HMDAudioAnalysisEventBulletin *)self soundIdentifier];
  [v3 setObject:soundIdentifier forKeyedSubscript:@"HMDAudioAnalysisEventBulletinSoundIdentifier"];

  title = [(HMDAudioAnalysisEventBulletin *)self title];
  [v3 setObject:title forKeyedSubscript:@"HMDAudioAnalysisEventBulletinTitleKey"];

  threadIdentifier = [(HMDAudioAnalysisEventBulletin *)self threadIdentifier];
  [v3 setObject:threadIdentifier forKeyedSubscript:@"HMDAudioAnalysisEventBulletinThreadIdentifierKey"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[HMDAudioAnalysisEventBulletin reason](self, "reason")}];
  [coderCopy encodeObject:v6 forKey:*MEMORY[0x277CCF2F0]];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAudioAnalysisEventBulletin state](self, "state")}];
  [coderCopy encodeObject:v7 forKey:@"HMDAudioAnalysisEventBulletinState"];

  accessoryUUID = [(HMDAudioAnalysisEventBulletin *)self accessoryUUID];
  [coderCopy encodeObject:accessoryUUID forKey:@"HMDAudioAnalysisEventBulletinAccessoryUUIDKey"];

  dateOfOccurrence = [(HMDAudioAnalysisEventBulletin *)self dateOfOccurrence];
  [coderCopy encodeObject:dateOfOccurrence forKey:@"HMDAudioAnalysisEventBulletinDateKey"];

  startDate = [(HMDAudioAnalysisEventBulletin *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"HMDAudioAnalysisEventBulletinStartDateKey"];

  name = [(HMDAudioAnalysisEventBulletin *)self name];
  [coderCopy encodeObject:name forKey:@"HMDAudioAnalysisEventBulletinNameKey"];

  notificationUUID = [(HMDAudioAnalysisEventBulletin *)self notificationUUID];
  [coderCopy encodeObject:notificationUUID forKey:@"HMDAudioAnalysisEventBulletinNotificationUUID"];

  soundIdentifier = [(HMDAudioAnalysisEventBulletin *)self soundIdentifier];
  [coderCopy encodeObject:soundIdentifier forKey:@"HMDAudioAnalysisEventBulletinSoundIdentifier"];

  title = [(HMDAudioAnalysisEventBulletin *)self title];
  [coderCopy encodeObject:title forKey:@"HMDAudioAnalysisEventBulletinTitleKey"];

  threadIdentifier = [(HMDAudioAnalysisEventBulletin *)self threadIdentifier];
  [coderCopy encodeObject:threadIdentifier forKey:@"HMDAudioAnalysisEventBulletinThreadIdentifierKey"];
}

- (id)localizedKeyForBody
{
  title = [(HMDAudioAnalysisEventBulletin *)self title];
  v4 = [(HMDAudioAnalysisEventBulletin *)self stringForAudioAnalysisReasonWithHomeName:title];

  return v4;
}

- (void)configureAccessoryNameComposer
{
  context = [(HMDAudioAnalysisEventBulletin *)self context];
  accessory = [context accessory];

  room = [accessory room];
  name = [room name];

  category = [accessory category];
  name2 = [category name];

  configuredName = [accessory configuredName];
  v9 = configuredName;
  if (configuredName)
  {
    v10 = configuredName;
  }

  else
  {
    v10 = name2;
  }

  v11 = v10;

  v12 = [[HMDAccessoryNameComposer alloc] initWithRawAccessoryName:v11 rawRoomName:name];
  accessoryNameComposer = self->_accessoryNameComposer;
  self->_accessoryNameComposer = v12;
}

- (void)configureWithContext:(id)context
{
  objc_storeStrong(&self->_context, context);

  [(HMDAudioAnalysisEventBulletin *)self configureAccessoryNameComposer];
}

- (HMDAudioAnalysisEventBulletin)initWithReason:(unint64_t)reason startDate:(id)date endDate:(id)endDate notificationUUID:(id)d state:(unint64_t)state soundIdentifier:(id)identifier name:(id)name threadIdentifier:(id)self0 accessoryUUID:(id)self1 title:(id)self2
{
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  identifierCopy = identifier;
  nameCopy = name;
  threadIdentifierCopy = threadIdentifier;
  iDCopy = iD;
  titleCopy = title;
  v45.receiver = self;
  v45.super_class = HMDAudioAnalysisEventBulletin;
  v25 = [(HMDAudioAnalysisEventBulletin *)&v45 init];
  v26 = v25;
  if (v25)
  {
    v25->_reason = reason;
    v27 = [endDateCopy copy];
    dateOfOccurrence = v26->_dateOfOccurrence;
    v26->_dateOfOccurrence = v27;

    v29 = [dateCopy copy];
    startDate = v26->_startDate;
    v26->_startDate = v29;

    v31 = [dCopy copy];
    notificationUUID = v26->_notificationUUID;
    v26->_notificationUUID = v31;

    v26->_state = state;
    v33 = [identifierCopy copy];
    soundIdentifier = v26->_soundIdentifier;
    v26->_soundIdentifier = v33;

    v35 = [iDCopy copy];
    accessoryUUID = v26->_accessoryUUID;
    v26->_accessoryUUID = v35;

    v37 = [titleCopy copy];
    title = v26->_title;
    v26->_title = v37;

    v39 = [nameCopy copy];
    name = v26->_name;
    v26->_name = v39;

    v41 = [threadIdentifierCopy copy];
    threadIdentifier = v26->_threadIdentifier;
    v26->_threadIdentifier = v41;
  }

  return v26;
}

- (id)stringForAudioAnalysisReasonWithHomeName:(id)name
{
  nameCopy = name;
  state = [(HMDAudioAnalysisEventBulletin *)self state];
  if (state != 1)
  {
    if (state)
    {
      goto LABEL_9;
    }

    reason = [(HMDAudioAnalysisEventBulletin *)self reason];
    if (reason == 4)
    {
      goto LABEL_9;
    }

    if (reason == 1)
    {
      context = [(HMDAudioAnalysisEventBulletin *)self context];
      v8 = -[HMDAudioAnalysisEventBulletin localizedKeyForEventStartWithDropIn:homeName:](self, "localizedKeyForEventStartWithDropIn:homeName:", [context dropInEnabled], nameCopy);
LABEL_8:
      v9 = v8;

      goto LABEL_10;
    }
  }

  if ([(HMDAudioAnalysisEventBulletin *)self reason]== 1)
  {
    context = [(HMDAudioAnalysisEventBulletin *)self context];
    v8 = -[HMDAudioAnalysisEventBulletin localizedKeyForEventEndWithDropIn:homeName:](self, "localizedKeyForEventEndWithDropIn:homeName:", [context dropInEnabled], nameCopy);
    goto LABEL_8;
  }

LABEL_9:
  v9 = &stru_283CF9D50;
LABEL_10:

  return v9;
}

- (id)localizedKeyForTitle
{
  context = [(HMDAudioAnalysisEventBulletin *)self context];
  if (context && (v4 = context, -[HMDAudioAnalysisEventBulletin context](self, "context"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 dropInEnabled], v5, v4, v6))
  {
    title = HMDLocalizedStringForKey(@"AUDIOANALYSIS_ALARM_NOTIFICATION_TITLE");
  }

  else
  {
    title = [(HMDAudioAnalysisEventBulletin *)self title];
  }

  return title;
}

- (id)localizedKeyForEventEndWithDropIn:(BOOL)in homeName:(id)name
{
  inCopy = in;
  v39 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = objc_opt_new();
  [v7 setUnitsStyle:3];
  [v7 setAllowedUnits:64];
  [v7 setFormattingContext:2];
  [v7 setMaximumUnitCount:2];
  dateOfOccurrence = [(HMDAudioAnalysisEventBulletin *)self dateOfOccurrence];
  startDate = [(HMDAudioAnalysisEventBulletin *)self startDate];
  [dateOfOccurrence timeIntervalSinceDate:startDate];
  v11 = v10;

  if (v11 >= 60.0 && v11 < 120.0)
  {
    v12 = @"AUDIOANALYSIS_ALARM_MORE_THAN_ONE_MINUTE_LESS_THAN_TWO_MINUTE";
LABEL_6:
    v13 = HMDLocalizedStringForKey(v12);
    goto LABEL_8;
  }

  if (v11 < 60.0)
  {
    v12 = @"AUDIOANALYSIS_ALARM_LESS_THAN_ONE_MINUTE";
    goto LABEL_6;
  }

  v13 = [v7 stringFromTimeInterval:v11];
LABEL_8:
  v14 = v13;
  accessoryNameComposer = [(HMDAudioAnalysisEventBulletin *)self accessoryNameComposer];
  composedString = [accessoryNameComposer composedString];

  v17 = MEMORY[0x277CCACA8];
  if (inCopy)
  {
    v18 = HMDLocalizedStringForKey(@"AUDIOANALYSIS_ALARM_END_CHECK_IN");
    v30 = 0;
    v19 = [v17 localizedStringWithValidatedFormat:v18 validFormatSpecifiers:@"%@ %@ %@" error:&v30, nameCopy, v14, composedString];
    v20 = v30;

    if (!v19)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = HMFGetOSLogHandle();
      v19 = @"AUDIOANALYSIS_ALARM_END_CHECK_IN";
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138544130;
        v32 = v23;
        v33 = 2112;
        v34 = @"AUDIOANALYSIS_ALARM_END_CHECK_IN";
        v35 = 2112;
        v36 = @"%@ %@ %@";
        v37 = 2112;
        v38 = v20;
LABEL_16:
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v24 = HMDLocalizedStringForKey(@"AUDIOANALYSIS_ALARM_END_NO_CHECK_IN");
    v29 = 0;
    v19 = [v17 localizedStringWithValidatedFormat:v24 validFormatSpecifiers:@"%@ %@" error:&v29, composedString, v14];
    v20 = v29;

    if (!v19)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = HMFGetOSLogHandle();
      v19 = @"AUDIOANALYSIS_ALARM_END_NO_CHECK_IN";
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138544130;
        v32 = v23;
        v33 = 2112;
        v34 = @"AUDIOANALYSIS_ALARM_END_NO_CHECK_IN";
        v35 = 2112;
        v36 = @"%@ %@";
        v37 = 2112;
        v38 = v20;
        goto LABEL_16;
      }

LABEL_17:

      objc_autoreleasePoolPop(v21);
      v25 = 0;
      goto LABEL_18;
    }
  }

  v25 = v19;
LABEL_18:
  v26 = v19;

  v27 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)localizedKeyForEventStartWithDropIn:(BOOL)in homeName:(id)name
{
  inCopy = in;
  v31 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  accessoryNameComposer = [(HMDAudioAnalysisEventBulletin *)self accessoryNameComposer];
  composedString = [accessoryNameComposer composedString];

  v9 = MEMORY[0x277CCACA8];
  if (inCopy)
  {
    v10 = HMDLocalizedStringForKey(@"AUDIOANALYSIS_ALARM_START_CHECK_IN");
    v22 = 0;
    v11 = [v9 localizedStringWithValidatedFormat:v10 validFormatSpecifiers:@"%@ %@" error:&v22, nameCopy, composedString];
    v12 = v22;

    if (!v11)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = HMFGetOSLogHandle();
      v11 = @"AUDIOANALYSIS_ALARM_START_CHECK_IN";
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138544130;
        v24 = v15;
        v25 = 2112;
        v26 = @"AUDIOANALYSIS_ALARM_START_CHECK_IN";
        v27 = 2112;
        v28 = @"%@ %@";
        v29 = 2112;
        v30 = v12;
LABEL_9:
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v16 = HMDLocalizedStringForKey(@"AUDIOANALYSIS_ALARM_START_NO_CHECK_IN");
    v21 = 0;
    v11 = [v9 localizedStringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:&v21, composedString];
    v12 = v21;

    if (!v11)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = HMFGetOSLogHandle();
      v11 = @"AUDIOANALYSIS_ALARM_START_NO_CHECK_IN";
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138544130;
        v24 = v15;
        v25 = 2112;
        v26 = @"AUDIOANALYSIS_ALARM_START_NO_CHECK_IN";
        v27 = 2112;
        v28 = @"%@";
        v29 = 2112;
        v30 = v12;
        goto LABEL_9;
      }

LABEL_10:

      objc_autoreleasePoolPop(v13);
      v17 = 0;
      goto LABEL_11;
    }
  }

  v17 = v11;
LABEL_11:
  v18 = v11;

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

@end