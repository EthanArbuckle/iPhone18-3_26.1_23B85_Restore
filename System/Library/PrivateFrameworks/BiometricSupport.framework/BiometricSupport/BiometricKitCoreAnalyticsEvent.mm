@interface BiometricKitCoreAnalyticsEvent
- (BOOL)postEventExtendedBy:(id)by;
- (BiometricKitCoreAnalyticsEvent)initWithName:(id)name;
- (BiometricKitCoreAnalyticsEvent)initWithName:(id)name dictionary:(id)dictionary;
- (BiometricKitCoreAnalyticsEvent)initWithPersistedDataWithName:(id)name;
- (id)dictionaryRepresentationArchiving:(BOOL)archiving;
- (id)dictionaryRepresentationForClass:(Class)class;
- (id)isPasscodeSet;
- (id)valueForUndefinedKey:(id)key;
- (void)incrementCountField:(id)field;
- (void)isPasscodeSet;
- (void)persistData;
- (void)reset;
- (void)resetClass:(Class)class;
- (void)setNilValueForKey:(id)key;
- (void)setTimeSinceLastEnrollment:(id)enrollment;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)updateBoundedFieldValue;
- (void)updateStatus;
@end

@implementation BiometricKitCoreAnalyticsEvent

- (void)reset
{
  v17 = *MEMORY[0x277D85DE8];
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    eventName = self->_eventName;
    v15 = 138412290;
    v16 = eventName;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEBUG, "BiometricKitCoreAnalyticsEvent(%@) reset event\n", &v15, 0xCu);
  }

  v5 = objc_opt_class();
  v6 = self->_previousEventDate;
  v7 = self->_deviceEnclosureColor;
  if ([v5 isSubclassOfClass:objc_opt_class()])
  {
    do
    {
      [(BiometricKitCoreAnalyticsEvent *)self resetClass:v5];
      v5 = [v5 superclass];
    }

    while (([v5 isSubclassOfClass:objc_opt_class()] & 1) != 0);
  }

  eventCanceled = self->_eventCanceled;
  v9 = MEMORY[0x277CBEC28];
  self->_eventCanceled = MEMORY[0x277CBEC28];

  displayOn = self->_displayOn;
  self->_displayOn = v9;

  previousEventDate = self->_previousEventDate;
  self->_previousEventDate = v6;
  v12 = v6;

  deviceEnclosureColor = self->_deviceEnclosureColor;
  self->_deviceEnclosureColor = v7;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateStatus
{
  isPasscodeSet = [(BiometricKitCoreAnalyticsEvent *)self isPasscodeSet];
  passcodeSet = self->_passcodeSet;
  self->_passcodeSet = isPasscodeSet;

  MEMORY[0x2821F96F8]();
}

- (id)isPasscodeSet
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLog)
  {
    v4 = __osLog;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    eventName = self->_eventName;
    *buf = 138412290;
    *&buf[4] = eventName;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "BiometricKitCoreAnalyticsEvent(%@) isPasscodeSet\n", buf, 0xCu);
  }

  v6 = MKBGetDeviceLockStateInfo();
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D28AF0]];
    if (v8)
    {
      v9 = v8;
      if (([v8 unsignedIntValue] & 2) != 0)
      {
        v10 = MEMORY[0x277CBEC28];
      }

      else
      {
        v10 = MEMORY[0x277CBEC38];
      }

      goto LABEL_11;
    }

    [(BiometricKitCoreAnalyticsEvent *)&v15 isPasscodeSet];
  }

  else
  {
    [(BiometricKitCoreAnalyticsEvent *)&v15 isPasscodeSet];
  }

  v9 = v15;
  v10 = *buf;
LABEL_11:
  if (__osLog)
  {
    v11 = __osLog;
  }

  else
  {
    v11 = v3;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = self->_eventName;
    *buf = 138412546;
    *&buf[4] = v12;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "BiometricKitCoreAnalyticsEvent(%@) isPasscodeSet: %@\n", buf, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)updateBoundedFieldValue
{
  v29 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->_boundedFieldLimits;
  v4 = [(NSDictionary *)v3 countByEnumeratingWithState:&v16 objects:v28 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v17;
    *&v5 = 138413058;
    v15 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(NSDictionary *)self->_boundedFieldLimits objectForKeyedSubscript:v9, v15, v16];
        v11 = [(BiometricKitCoreAnalyticsEvent *)self valueForKey:v9];
        if ([v11 compare:v10] == 1)
        {
          if (__osLog)
          {
            v12 = __osLog;
          }

          else
          {
            v12 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            eventName = self->_eventName;
            *buf = v15;
            v21 = eventName;
            v22 = 2112;
            v23 = v9;
            v24 = 2112;
            v25 = v11;
            v26 = 2112;
            v27 = v10;
            _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_DEBUG, "BiometricKitCoreAnalyticsEvent(%@) updateBoundedFieldValue bound field:%@ value:%@ to:%@\n", buf, 0x2Au);
          }

          [(BiometricKitCoreAnalyticsEvent *)self setValue:v10 forKey:v9];
        }
      }

      v6 = [(NSDictionary *)v3 countByEnumeratingWithState:&v16 objects:v28 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BiometricKitCoreAnalyticsEvent)initWithName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = BiometricKitCoreAnalyticsEvent;
  v6 = [(BiometricKitCoreAnalyticsEvent *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventName, name);
    [(BiometricKitCoreAnalyticsEvent *)v7 reset];
    v8 = MEMORY[0x277CCABB0];
    v9 = MGCopyAnswer();
    v10 = [v8 numberWithInteger:{objc_msgSend(v9, "integerValue")}];
    deviceEnclosureColor = v7->_deviceEnclosureColor;
    v7->_deviceEnclosureColor = v10;
  }

  return v7;
}

- (BiometricKitCoreAnalyticsEvent)initWithName:(id)name dictionary:(id)dictionary
{
  v32 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dictionaryCopy = dictionary;
  v8 = [(BiometricKitCoreAnalyticsEvent *)self initWithName:nameCopy];
  if (v8)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = dictionaryCopy;
    v9 = dictionaryCopy;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      v13 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = [v9 objectForKey:v15];
          NSSelectorFromString(v15);
          if (objc_opt_respondsToSelector() & 1) != 0 && ((objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) && [(NSString *)v15 isEqualToString:@"previousEventDate"]))
          {
            [(BiometricKitCoreAnalyticsEvent *)v8 setValue:v16 forKey:v15];
          }

          else
          {
            if (__osLog)
            {
              v17 = __osLog;
            }

            else
            {
              v17 = v13;
            }

            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v26 = nameCopy;
              v27 = 2112;
              v28 = v9;
              v29 = 2112;
              v30 = v15;
              _os_log_impl(&dword_223E00000, v17, OS_LOG_TYPE_ERROR, "BiometricKitCoreAnalyticsEvent initWithName: %@ dictionary:%@ - throwing away unsupported key: %@\n", buf, 0x20u);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
      }

      while (v11);
    }

    dictionaryCopy = v20;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BiometricKitCoreAnalyticsEvent)initWithPersistedDataWithName:(id)name
{
  v4 = MEMORY[0x277CF1BF0];
  nameCopy = name;
  sharedInstance = [v4 sharedInstance];
  v7 = [sharedInstance objectOfClass:objc_opt_class() forKey:nameCopy];
  v8 = [(BiometricKitCoreAnalyticsEvent *)self initWithName:nameCopy dictionary:v7];

  return v8;
}

- (id)valueForUndefinedKey:(id)key
{
  v13 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (__osLog)
  {
    v5 = __osLog;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    eventName = self->_eventName;
    v9 = 138412546;
    v10 = eventName;
    v11 = 2112;
    v12 = keyCopy;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_ERROR, "BiometricKitCoreAnalyticsEvent(%@) valueForUndefinedKey: %@\n", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)setNilValueForKey:(id)key
{
  v12 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (__osLog)
  {
    v5 = __osLog;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    eventName = self->_eventName;
    v8 = 138412546;
    v9 = eventName;
    v10 = 2112;
    v11 = keyCopy;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_ERROR, "BiometricKitCoreAnalyticsEvent(%@) setNilValueForKey: %@\n", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  v17 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  if (__osLog)
  {
    v8 = __osLog;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    eventName = self->_eventName;
    v11 = 138412802;
    v12 = eventName;
    v13 = 2112;
    v14 = valueCopy;
    v15 = 2112;
    v16 = keyCopy;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_ERROR, "BiometricKitCoreAnalyticsEvent(%@) setValue: %@ forUndefinedKey: %@\n", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)postEventExtendedBy:(id)by
{
  v31 = *MEMORY[0x277D85DE8];
  byCopy = by;
  v5 = MEMORY[0x277D86220];
  if (__osLog)
  {
    v6 = __osLog;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    eventName = self->_eventName;
    *buf = 138412546;
    v28 = eventName;
    v29 = 2112;
    v30 = byCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "BiometricKitCoreAnalyticsEvent(%@) postEventExtendedBy: %@\n", buf, 0x16u);
  }

  previousEventDate = self->_previousEventDate;
  if (previousEventDate)
  {
    v9 = MEMORY[0x277CCABB0];
    [(NSDate *)previousEventDate timeIntervalSinceNow];
    v11 = [v9 numberWithUnsignedInteger:(v10 * -1000.0)];
    timeSinceLastEvent = self->_timeSinceLastEvent;
    self->_timeSinceLastEvent = v11;

    v13 = self->_previousEventDate;
    self->_previousEventDate = 0;
  }

  [(BiometricKitCoreAnalyticsEvent *)self updateBoundedFieldValue];
  v14 = MEMORY[0x277CBEB38];
  getEventDictionary = [(BiometricKitCoreAnalyticsEvent *)self getEventDictionary];
  v16 = [v14 dictionaryWithDictionary:getEventDictionary];

  if (byCopy)
  {
    [v16 addEntriesFromDictionary:byCopy];
  }

  v17 = self->_eventName;
  v26 = MEMORY[0x277D85DD0];
  v18 = v16;
  v19 = AnalyticsSendEventLazy();
  if (__osLog)
  {
    v20 = __osLog;
  }

  else
  {
    v20 = v5;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = self->_eventName;
    *buf = 138412546;
    v28 = v21;
    v29 = 1024;
    LODWORD(v30) = v19;
    _os_log_impl(&dword_223E00000, v20, OS_LOG_TYPE_DEBUG, "BiometricKitCoreAnalyticsEvent(%@) postEvent - AnalyticsSendEventLazy result: %d\n", buf, 0x12u);
  }

  v22 = [MEMORY[0x277CBEAA8] now];
  v23 = self->_previousEventDate;
  self->_previousEventDate = v22;

  [(BiometricKitCoreAnalyticsEvent *)self reset];
  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

id __54__BiometricKitCoreAnalyticsEvent_postEventExtendedBy___block_invoke(uint64_t a1)
{
  [*(a1 + 32) logAnalyticsDictionary:*(a1 + 40)];
  v2 = *(a1 + 40);

  return v2;
}

- (id)dictionaryRepresentationArchiving:(BOOL)archiving
{
  archivingCopy = archiving;
  v22 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLog)
  {
    v6 = __osLog;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    eventName = self->_eventName;
    v16 = 138412546;
    v17 = eventName;
    v18 = 1024;
    v19 = archivingCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "BiometricKitCoreAnalyticsEvent(%@) dictionaryRepresentation: %d\n", &v16, 0x12u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = objc_opt_class();
  [(BiometricKitCoreAnalyticsEvent *)self updateStatus];
  if ([v9 isSubclassOfClass:objc_opt_class()])
  {
    do
    {
      v10 = [(BiometricKitCoreAnalyticsEvent *)self dictionaryRepresentationForClass:v9];
      [dictionary addEntriesFromDictionary:v10];

      v9 = [v9 superclass];
    }

    while (([v9 isSubclassOfClass:objc_opt_class()] & 1) != 0);
  }

  if (!archivingCopy)
  {
    if (__osLog)
    {
      v11 = __osLog;
    }

    else
    {
      v11 = v5;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = self->_eventName;
      privateProperties = self->_privateProperties;
      v16 = 138412802;
      v17 = v12;
      v18 = 1024;
      v19 = 0;
      v20 = 2112;
      v21 = privateProperties;
      _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "BiometricKitCoreAnalyticsEvent(%@) dictionaryRepresentation: %d _privateProperties: %@\n", &v16, 0x1Cu);
    }

    [dictionary removeObjectsForKeys:self->_privateProperties];
  }

  v14 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)resetClass:(Class)class
{
  outCount = 0;
  v4 = class_copyPropertyList(class, &outCount);
  v5 = v4;
  if (v4 && outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:property_getName(v5[i])];
      [(BiometricKitCoreAnalyticsEvent *)self setValue:0 forKey:v7];
    }

    goto LABEL_5;
  }

  if (v4)
  {
LABEL_5:
    free(v5);
  }
}

- (void)incrementCountField:(id)field
{
  fieldCopy = field;
  v5 = [(BiometricKitCoreAnalyticsEvent *)self valueForKey:fieldCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "intValue") + 1}];
    [(BiometricKitCoreAnalyticsEvent *)self setValue:v6 forKey:fieldCopy];
  }

  else
  {
    [BiometricKitCoreAnalyticsEvent incrementCountField:];
  }
}

- (void)setTimeSinceLastEnrollment:(id)enrollment
{
  enrollmentCopy = enrollment;
  objc_storeStrong(&self->_timeSinceLastEnrollment, enrollment);
  unsignedIntegerValue = [(NSNumber *)self->_timeSinceLastEnrollment unsignedIntegerValue];
  timeSinceLastEnrollment = self->_timeSinceLastEnrollment;
  if (unsignedIntegerValue < 0x80)
  {
    v9 = timeSinceLastEnrollment;
  }

  else
  {
    unsignedIntegerValue2 = [(NSNumber *)timeSinceLastEnrollment unsignedIntegerValue];
    v8 = ((unsignedIntegerValue2 - 128) * 0x2492492492492493uLL) >> 64;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:((v8 + ((unsignedIntegerValue2 - 128 - v8) >> 1)) >> 2) + 128];
  }

  timeSinceLastEnrollmentBinned = self->_timeSinceLastEnrollmentBinned;
  self->_timeSinceLastEnrollmentBinned = v9;
}

- (void)persistData
{
  mEMORY[0x277CF1BF0] = [MEMORY[0x277CF1BF0] sharedInstance];
  v3 = [(BiometricKitCoreAnalyticsEvent *)self dictionaryRepresentationArchiving:1];
  [mEMORY[0x277CF1BF0] setObject:v3 forKey:self->_eventName];
}

- (id)dictionaryRepresentationForClass:(Class)class
{
  v26 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  outCount = 0;
  v6 = class_copyPropertyList(class, &outCount);
  if (v6)
  {
    v7 = v6;
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:property_getName(v7[i])];
        v10 = [(BiometricKitCoreAnalyticsEvent *)self valueForKey:v9];
        if (v10)
        {
          [dictionary setObject:v10 forKey:v9];
        }
      }
    }

    else if (OUTLINED_FUNCTION_5(__osLog))
    {
      v16 = 136316162;
      v17 = "propertyCount";
      v18 = 2048;
      v19 = 0;
      v20 = 2080;
      v21 = &unk_223E5FC53;
      v22 = 2080;
      v23 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/Analytics/BiometricKitCoreAnalyticsEvent.m";
      v24 = 1024;
      v25 = 156;
      OUTLINED_FUNCTION_3_1(&dword_223E00000, v13, v14, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v16);
    }

    free(v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)incrementCountField:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  if (__osLog)
  {
    v0 = __osLog;
  }

  else
  {
    v0 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    v3 = &unk_223E5FC53;
    OUTLINED_FUNCTION_1();
    v4 = 259;
    _os_log_impl(&dword_223E00000, v0, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, 0x30u);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)isPasscodeSet
{
  v10 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    v8 = &unk_223E5FC53;
    OUTLINED_FUNCTION_1();
    v9 = 318;
    OUTLINED_FUNCTION_3_1(&dword_223E00000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v7);
  }

  *a2 = 0;
  *self = 0;
  v6 = *MEMORY[0x277D85DE8];
}

@end