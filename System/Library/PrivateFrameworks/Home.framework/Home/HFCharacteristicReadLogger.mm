@interface HFCharacteristicReadLogger
+ (id)nameForTransportType:(unint64_t)a3;
+ (id)transportKeyForCharacteristic:(id)a3;
- (HFCharacteristicReadLogger)init;
- (unint64_t)numberOfAccessoriesForTransportType:(unint64_t)a3;
- (void)addCharacteristic:(id)a3 withUpdateLogger:(id)a4;
- (void)markCharacteristicAsRead:(id)a3 withLogger:(id)a4;
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

+ (id)transportKeyForCharacteristic:(id)a3
{
  v3 = [a3 service];
  v4 = [v3 accessory];

  if ([v4 transportTypes])
  {
    v5 = &unk_282524018;
  }

  else if (([v4 transportTypes] & 2) != 0)
  {
    v5 = &unk_282524030;
  }

  else
  {
    v5 = &unk_282524048;
  }

  return v5;
}

- (unint64_t)numberOfAccessoriesForTransportType:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v5 = [(HFCharacteristicReadLogger *)self accessoriesToReadByTransport];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v6 count];

  return v7;
}

+ (id)nameForTransportType:(unint64_t)a3
{
  v3 = @"'Other' Transport";
  if (a3 == 1)
  {
    v3 = @"BLE";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"IP";
  }
}

- (void)addCharacteristic:(id)a3 withUpdateLogger:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [HFCharacteristicReadLogger transportKeyForCharacteristic:v6];
  if (v7)
  {
    v9 = [v7 loggerActivity];
    os_activity_scope_enter(v9, &v27);

    v10 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = +[HFCharacteristicReadLogger nameForTransportType:](HFCharacteristicReadLogger, "nameForTransportType:", [v8 integerValue]);
      v12 = [v6 service];
      v13 = [v12 accessory];
      v14 = [v13 name];
      *buf = 138412546;
      v29 = v11;
      v30 = 2112;
      v31 = v14;
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
      v24 = [v6 service];
      v25 = [v24 accessory];
      v26 = [v25 name];
      *buf = 138412546;
      v29 = v23;
      v30 = 2112;
      v31 = v26;
      _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "Reads Complete Tracking: %@ Accessory: %@", buf, 0x16u);
    }
  }

  v15 = [(HFCharacteristicReadLogger *)self accessoriesToReadByTransport];
  v16 = [v15 objectForKeyedSubscript:v8];

  if (!v16)
  {
    v17 = [[HFAccessoriesToReadSet alloc] initWithTransportType:v8];
    v18 = [(HFCharacteristicReadLogger *)self accessoriesToReadByTransport];
    [v18 setObject:v17 forKeyedSubscript:v8];
  }

  v19 = [(HFCharacteristicReadLogger *)self accessoriesToReadByTransport];
  v20 = [v19 objectForKeyedSubscript:v8];
  [v20 addCharacteristic:v6];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)markCharacteristicAsRead:(id)a3 withLogger:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [HFCharacteristicReadLogger transportKeyForCharacteristic:v7];
  v9 = -[HFCharacteristicReadLogger numberOfAccessoriesForTransportType:](self, "numberOfAccessoriesForTransportType:", [v8 integerValue]);
  v10 = [(HFCharacteristicReadLogger *)self accessoriesToReadByTransport];
  v11 = [v10 objectForKeyedSubscript:v8];
  [v11 markCharacteristicAsRead:v7 withLogger:v6];

  if (v9 && !-[HFCharacteristicReadLogger numberOfAccessoriesForTransportType:](self, "numberOfAccessoriesForTransportType:", [v8 integerValue]))
  {
    if (v6)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v12 = [v6 loggerActivity];
      os_activity_scope_enter(v12, &state);

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