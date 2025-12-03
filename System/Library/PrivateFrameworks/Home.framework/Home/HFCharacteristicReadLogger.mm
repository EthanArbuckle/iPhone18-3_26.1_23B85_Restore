@interface HFCharacteristicReadLogger
+ (id)nameForTransportType:(unint64_t)type;
+ (id)transportKeyForCharacteristic:(id)characteristic;
- (HFCharacteristicReadLogger)init;
- (unint64_t)numberOfAccessoriesForTransportType:(unint64_t)type;
- (void)addCharacteristic:(id)characteristic withUpdateLogger:(id)logger;
- (void)markCharacteristicAsRead:(id)read withLogger:(id)logger;
@end

@implementation HFCharacteristicReadLogger

- (HFCharacteristicReadLogger)init
{
  v6.receiver = self;
  v6.super_class = HFCharacteristicReadLogger;
  v2 = [(HFCharacteristicReadLogger *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    accessoriesToReadByTransport = v2->_accessoriesToReadByTransport;
    v2->_accessoriesToReadByTransport = v3;
  }

  return v2;
}

+ (id)transportKeyForCharacteristic:(id)characteristic
{
  service = [characteristic service];
  accessory = [service accessory];

  if ([accessory transportTypes])
  {
    v5 = &unk_282524018;
  }

  else if (([accessory transportTypes] & 2) != 0)
  {
    v5 = &unk_282524030;
  }

  else
  {
    v5 = &unk_282524048;
  }

  return v5;
}

- (unint64_t)numberOfAccessoriesForTransportType:(unint64_t)type
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  accessoriesToReadByTransport = [(HFCharacteristicReadLogger *)self accessoriesToReadByTransport];
  v6 = [accessoriesToReadByTransport objectForKeyedSubscript:v4];
  v7 = [v6 count];

  return v7;
}

+ (id)nameForTransportType:(unint64_t)type
{
  v3 = @"'Other' Transport";
  if (type == 1)
  {
    v3 = @"BLE";
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return @"IP";
  }
}

- (void)addCharacteristic:(id)characteristic withUpdateLogger:(id)logger
{
  v32 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  loggerCopy = logger;
  v8 = [HFCharacteristicReadLogger transportKeyForCharacteristic:characteristicCopy];
  if (loggerCopy)
  {
    loggerActivity = [loggerCopy loggerActivity];
    os_activity_scope_enter(loggerActivity, &v27);

    v10 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = +[HFCharacteristicReadLogger nameForTransportType:](HFCharacteristicReadLogger, "nameForTransportType:", [v8 integerValue]);
      service = [characteristicCopy service];
      accessory = [service accessory];
      name = [accessory name];
      *buf = 138412546;
      v29 = v11;
      v30 = 2112;
      v31 = name;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Reads Complete Tracking: %@ Accessory: %@", buf, 0x16u);
    }

    os_activity_scope_leave(&v27);
  }

  else
  {
    v22 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = +[HFCharacteristicReadLogger nameForTransportType:](HFCharacteristicReadLogger, "nameForTransportType:", [v8 integerValue]);
      service2 = [characteristicCopy service];
      accessory2 = [service2 accessory];
      name2 = [accessory2 name];
      *buf = 138412546;
      v29 = v23;
      v30 = 2112;
      v31 = name2;
      _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "Reads Complete Tracking: %@ Accessory: %@", buf, 0x16u);
    }
  }

  accessoriesToReadByTransport = [(HFCharacteristicReadLogger *)self accessoriesToReadByTransport];
  v16 = [accessoriesToReadByTransport objectForKeyedSubscript:v8];

  if (!v16)
  {
    v17 = [[HFAccessoriesToReadSet alloc] initWithTransportType:v8];
    accessoriesToReadByTransport2 = [(HFCharacteristicReadLogger *)self accessoriesToReadByTransport];
    [accessoriesToReadByTransport2 setObject:v17 forKeyedSubscript:v8];
  }

  accessoriesToReadByTransport3 = [(HFCharacteristicReadLogger *)self accessoriesToReadByTransport];
  v20 = [accessoriesToReadByTransport3 objectForKeyedSubscript:v8];
  [v20 addCharacteristic:characteristicCopy];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)markCharacteristicAsRead:(id)read withLogger:(id)logger
{
  v21 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  readCopy = read;
  v8 = [HFCharacteristicReadLogger transportKeyForCharacteristic:readCopy];
  v9 = -[HFCharacteristicReadLogger numberOfAccessoriesForTransportType:](self, "numberOfAccessoriesForTransportType:", [v8 integerValue]);
  accessoriesToReadByTransport = [(HFCharacteristicReadLogger *)self accessoriesToReadByTransport];
  v11 = [accessoriesToReadByTransport objectForKeyedSubscript:v8];
  [v11 markCharacteristicAsRead:readCopy withLogger:loggerCopy];

  if (v9 && !-[HFCharacteristicReadLogger numberOfAccessoriesForTransportType:](self, "numberOfAccessoriesForTransportType:", [v8 integerValue]))
  {
    if (loggerCopy)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      loggerActivity = [loggerCopy loggerActivity];
      os_activity_scope_enter(loggerActivity, &state);

      v13 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = +[HFCharacteristicReadLogger nameForTransportType:](HFCharacteristicReadLogger, "nameForTransportType:", [v8 integerValue]);
        v18 = 138412290;
        v19 = v14;
        _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "Reads Complete Tracking: Completed reads for %@ accessories.", &v18, 0xCu);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v16 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = +[HFCharacteristicReadLogger nameForTransportType:](HFCharacteristicReadLogger, "nameForTransportType:", [v8 integerValue]);
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = v17;
        _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "Reads Complete Tracking: Completed reads for %@ accessories.", &state, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end