@interface HMDAudioAnalysisEventBulletin
- (HMDAudioAnalysisEventBulletin)initWithCoder:(id)a3;
- (HMDAudioAnalysisEventBulletin)initWithDictionary:(id)a3;
- (HMDAudioAnalysisEventBulletin)initWithReason:(unint64_t)a3 startDate:(id)a4 endDate:(id)a5 notificationUUID:(id)a6 state:(unint64_t)a7 soundIdentifier:(id)a8 name:(id)a9 threadIdentifier:(id)a10 accessoryUUID:(id)a11 title:(id)a12;
- (id)localizedKeyForBody;
- (id)localizedKeyForEventEndWithDropIn:(BOOL)a3 homeName:(id)a4;
- (id)localizedKeyForEventStartWithDropIn:(BOOL)a3 homeName:(id)a4;
- (id)localizedKeyForTitle;
- (id)serialize;
- (id)stringForAudioAnalysisReasonWithHomeName:(id)a3;
- (void)configureAccessoryNameComposer;
- (void)configureWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDAudioAnalysisEventBulletin

- (HMDAudioAnalysisEventBulletin)initWithCoder:(id)a3
{
  v4 = a3;
  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCF2F0]];
  v17 = [v18 unsignedIntegerValue];
  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDAudioAnalysisEventBulletinDateKey"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDAudioAnalysisEventBulletinNotificationUUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDAudioAnalysisEventBulletinState"];
  v15 = [v6 unsignedIntValue];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDAudioAnalysisEventBulletinSoundIdentifier"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDAudioAnalysisEventBulletinTitleKey"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDAudioAnalysisEventBulletinAccessoryUUIDKey"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDAudioAnalysisEventBulletinNameKey"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDAudioAnalysisEventBulletinThreadIdentifierKey"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDAudioAnalysisEventBulletinStartDateKey"];

  v13 = [(HMDAudioAnalysisEventBulletin *)self initWithReason:v17 startDate:v12 endDate:v16 notificationUUID:v5 state:v15 soundIdentifier:v7 name:v10 threadIdentifier:v11 accessoryUUID:v9 title:v8];
  return v13;
}

- (HMDAudioAnalysisEventBulletin)initWithDictionary:(id)a3
{
  v3 = *MEMORY[0x277CCF2F0];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:v3];
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

  v34 = [v7 unsignedIntValue];
  v8 = [v4 objectForKeyedSubscript:@"HMDAudioAnalysisEventBulletinState"];
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

  v33 = [v10 unsignedIntValue];
  v11 = [v4 hmf_UUIDForKey:@"HMDAudioAnalysisEventBulletinAccessoryUUIDKey"];
  v12 = MEMORY[0x277CBEAA8];
  v13 = [v4 objectForKeyedSubscript:@"HMDAudioAnalysisEventBulletinDateKey"];
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
  v19 = [v4 objectForKeyedSubscript:@"HMDAudioAnalysisEventBulletinNameKey"];
  v20 = [v4 hmf_UUIDForKey:@"HMDAudioAnalysisEventBulletinNotificationUUID"];
  v21 = [v4 objectForKeyedSubscript:@"HMDAudioAnalysisEventBulletinSoundIdentifier"];
  v22 = [v4 objectForKeyedSubscript:@"HMDAudioAnalysisEventBulletinTitleKey"];
  v23 = [v4 objectForKeyedSubscript:@"HMDAudioAnalysisEventBulletinThreadIdentifierKey"];
  v24 = MEMORY[0x277CBEAA8];
  v25 = [v4 objectForKeyedSubscript:@"HMDAudioAnalysisEventBulletinStartDateKey"];

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

  v31 = [(HMDAudioAnalysisEventBulletin *)self initWithReason:v34 startDate:v30 endDate:v18 notificationUUID:v20 state:v33 soundIdentifier:v21 name:v19 threadIdentifier:v23 accessoryUUID:v11 title:v22];

  return v31;
}

- (id)serialize
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAudioAnalysisEventBulletin reason](self, "reason")}];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277CCF2F0]];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAudioAnalysisEventBulletin state](self, "state")}];
  [v3 setObject:v5 forKeyedSubscript:@"HMDAudioAnalysisEventBulletinState"];

  v6 = [(HMDAudioAnalysisEventBulletin *)self accessoryUUID];
  v7 = [v6 UUIDString];
  [v3 setObject:v7 forKeyedSubscript:@"HMDAudioAnalysisEventBulletinAccessoryUUIDKey"];

  v8 = MEMORY[0x277CCABB0];
  v9 = [(HMDAudioAnalysisEventBulletin *)self startDate];
  [v9 timeIntervalSince1970];
  v10 = [v8 numberWithDouble:?];
  [v3 setObject:v10 forKeyedSubscript:@"HMDAudioAnalysisEventBulletinStartDateKey"];

  v11 = MEMORY[0x277CCABB0];
  v12 = [(HMDAudioAnalysisEventBulletin *)self dateOfOccurrence];
  [v12 timeIntervalSince1970];
  v13 = [v11 numberWithDouble:?];
  [v3 setObject:v13 forKeyedSubscript:@"HMDAudioAnalysisEventBulletinDateKey"];

  v14 = [(HMDAudioAnalysisEventBulletin *)self name];
  [v3 setObject:v14 forKeyedSubscript:@"HMDAudioAnalysisEventBulletinNameKey"];

  v15 = [(HMDAudioAnalysisEventBulletin *)self notificationUUID];
  v16 = [v15 UUIDString];
  [v3 setObject:v16 forKeyedSubscript:@"HMDAudioAnalysisEventBulletinNotificationUUID"];

  v17 = [(HMDAudioAnalysisEventBulletin *)self soundIdentifier];
  [v3 setObject:v17 forKeyedSubscript:@"HMDAudioAnalysisEventBulletinSoundIdentifier"];

  v18 = [(HMDAudioAnalysisEventBulletin *)self title];
  [v3 setObject:v18 forKeyedSubscript:@"HMDAudioAnalysisEventBulletinTitleKey"];

  v19 = [(HMDAudioAnalysisEventBulletin *)self threadIdentifier];
  [v3 setObject:v19 forKeyedSubscript:@"HMDAudioAnalysisEventBulletinThreadIdentifierKey"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[HMDAudioAnalysisEventBulletin reason](self, "reason")}];
  [v5 encodeObject:v6 forKey:*MEMORY[0x277CCF2F0]];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAudioAnalysisEventBulletin state](self, "state")}];
  [v5 encodeObject:v7 forKey:@"HMDAudioAnalysisEventBulletinState"];

  v8 = [(HMDAudioAnalysisEventBulletin *)self accessoryUUID];
  [v5 encodeObject:v8 forKey:@"HMDAudioAnalysisEventBulletinAccessoryUUIDKey"];

  v9 = [(HMDAudioAnalysisEventBulletin *)self dateOfOccurrence];
  [v5 encodeObject:v9 forKey:@"HMDAudioAnalysisEventBulletinDateKey"];

  v10 = [(HMDAudioAnalysisEventBulletin *)self startDate];
  [v5 encodeObject:v10 forKey:@"HMDAudioAnalysisEventBulletinStartDateKey"];

  v11 = [(HMDAudioAnalysisEventBulletin *)self name];
  [v5 encodeObject:v11 forKey:@"HMDAudioAnalysisEventBulletinNameKey"];

  v12 = [(HMDAudioAnalysisEventBulletin *)self notificationUUID];
  [v5 encodeObject:v12 forKey:@"HMDAudioAnalysisEventBulletinNotificationUUID"];

  v13 = [(HMDAudioAnalysisEventBulletin *)self soundIdentifier];
  [v5 encodeObject:v13 forKey:@"HMDAudioAnalysisEventBulletinSoundIdentifier"];

  v14 = [(HMDAudioAnalysisEventBulletin *)self title];
  [v5 encodeObject:v14 forKey:@"HMDAudioAnalysisEventBulletinTitleKey"];

  v15 = [(HMDAudioAnalysisEventBulletin *)self threadIdentifier];
  [v5 encodeObject:v15 forKey:@"HMDAudioAnalysisEventBulletinThreadIdentifierKey"];
}

- (id)localizedKeyForBody
{
  v3 = [(HMDAudioAnalysisEventBulletin *)self title];
  v4 = [(HMDAudioAnalysisEventBulletin *)self stringForAudioAnalysisReasonWithHomeName:v3];

  return v4;
}

- (void)configureAccessoryNameComposer
{
  v3 = [(HMDAudioAnalysisEventBulletin *)self context];
  v14 = [v3 accessory];

  v4 = [v14 room];
  v5 = [v4 name];

  v6 = [v14 category];
  v7 = [v6 name];

  v8 = [v14 configuredName];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;

  v12 = [[HMDAccessoryNameComposer alloc] initWithRawAccessoryName:v11 rawRoomName:v5];
  accessoryNameComposer = self->_accessoryNameComposer;
  self->_accessoryNameComposer = v12;
}

- (void)configureWithContext:(id)a3
{
  objc_storeStrong(&self->_context, a3);

  [(HMDAudioAnalysisEventBulletin *)self configureAccessoryNameComposer];
}

- (HMDAudioAnalysisEventBulletin)initWithReason:(unint64_t)a3 startDate:(id)a4 endDate:(id)a5 notificationUUID:(id)a6 state:(unint64_t)a7 soundIdentifier:(id)a8 name:(id)a9 threadIdentifier:(id)a10 accessoryUUID:(id)a11 title:(id)a12
{
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v45.receiver = self;
  v45.super_class = HMDAudioAnalysisEventBulletin;
  v25 = [(HMDAudioAnalysisEventBulletin *)&v45 init];
  v26 = v25;
  if (v25)
  {
    v25->_reason = a3;
    v27 = [v18 copy];
    dateOfOccurrence = v26->_dateOfOccurrence;
    v26->_dateOfOccurrence = v27;

    v29 = [v17 copy];
    startDate = v26->_startDate;
    v26->_startDate = v29;

    v31 = [v19 copy];
    notificationUUID = v26->_notificationUUID;
    v26->_notificationUUID = v31;

    v26->_state = a7;
    v33 = [v20 copy];
    soundIdentifier = v26->_soundIdentifier;
    v26->_soundIdentifier = v33;

    v35 = [v23 copy];
    accessoryUUID = v26->_accessoryUUID;
    v26->_accessoryUUID = v35;

    v37 = [v24 copy];
    title = v26->_title;
    v26->_title = v37;

    v39 = [v21 copy];
    name = v26->_name;
    v26->_name = v39;

    v41 = [v22 copy];
    threadIdentifier = v26->_threadIdentifier;
    v26->_threadIdentifier = v41;
  }

  return v26;
}

- (id)stringForAudioAnalysisReasonWithHomeName:(id)a3
{
  v4 = a3;
  v5 = [(HMDAudioAnalysisEventBulletin *)self state];
  if (v5 != 1)
  {
    if (v5)
    {
      goto LABEL_9;
    }

    v6 = [(HMDAudioAnalysisEventBulletin *)self reason];
    if (v6 == 4)
    {
      goto LABEL_9;
    }

    if (v6 == 1)
    {
      v7 = [(HMDAudioAnalysisEventBulletin *)self context];
      v8 = -[HMDAudioAnalysisEventBulletin localizedKeyForEventStartWithDropIn:homeName:](self, "localizedKeyForEventStartWithDropIn:homeName:", [v7 dropInEnabled], v4);
LABEL_8:
      v9 = v8;

      goto LABEL_10;
    }
  }

  if ([(HMDAudioAnalysisEventBulletin *)self reason]== 1)
  {
    v7 = [(HMDAudioAnalysisEventBulletin *)self context];
    v8 = -[HMDAudioAnalysisEventBulletin localizedKeyForEventEndWithDropIn:homeName:](self, "localizedKeyForEventEndWithDropIn:homeName:", [v7 dropInEnabled], v4);
    goto LABEL_8;
  }

LABEL_9:
  v9 = &stru_283CF9D50;
LABEL_10:

  return v9;
}

- (id)localizedKeyForTitle
{
  v3 = [(HMDAudioAnalysisEventBulletin *)self context];
  if (v3 && (v4 = v3, -[HMDAudioAnalysisEventBulletin context](self, "context"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 dropInEnabled], v5, v4, v6))
  {
    v7 = HMDLocalizedStringForKey(@"AUDIOANALYSIS_ALARM_NOTIFICATION_TITLE");
  }

  else
  {
    v7 = [(HMDAudioAnalysisEventBulletin *)self title];
  }

  return v7;
}

- (id)localizedKeyForEventEndWithDropIn:(BOOL)a3 homeName:(id)a4
{
  v4 = a3;
  v39 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setUnitsStyle:3];
  [v7 setAllowedUnits:64];
  [v7 setFormattingContext:2];
  [v7 setMaximumUnitCount:2];
  v8 = [(HMDAudioAnalysisEventBulletin *)self dateOfOccurrence];
  v9 = [(HMDAudioAnalysisEventBulletin *)self startDate];
  [v8 timeIntervalSinceDate:v9];
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
  v15 = [(HMDAudioAnalysisEventBulletin *)self accessoryNameComposer];
  v16 = [v15 composedString];

  v17 = MEMORY[0x277CCACA8];
  if (v4)
  {
    v18 = HMDLocalizedStringForKey(@"AUDIOANALYSIS_ALARM_END_CHECK_IN");
    v30 = 0;
    v19 = [v17 localizedStringWithValidatedFormat:v18 validFormatSpecifiers:@"%@ %@ %@" error:&v30, v6, v14, v16];
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
    v19 = [v17 localizedStringWithValidatedFormat:v24 validFormatSpecifiers:@"%@ %@" error:&v29, v16, v14];
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

- (id)localizedKeyForEventStartWithDropIn:(BOOL)a3 homeName:(id)a4
{
  v4 = a3;
  v31 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HMDAudioAnalysisEventBulletin *)self accessoryNameComposer];
  v8 = [v7 composedString];

  v9 = MEMORY[0x277CCACA8];
  if (v4)
  {
    v10 = HMDLocalizedStringForKey(@"AUDIOANALYSIS_ALARM_START_CHECK_IN");
    v22 = 0;
    v11 = [v9 localizedStringWithValidatedFormat:v10 validFormatSpecifiers:@"%@ %@" error:&v22, v6, v8];
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
    v11 = [v9 localizedStringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:&v21, v8];
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