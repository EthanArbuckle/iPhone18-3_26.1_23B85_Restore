@interface MKCallHistory
+ (BOOL)read:(id)a3;
+ (double)duration:(id)a3;
+ (id)calls:(id)a3 label:(id)a4;
+ (id)convertCallHistoryToCall:(id)a3;
+ (unsigned)status:(id)a3;
- (MKCallHistory)initWithSerializedData:(id)a3;
@end

@implementation MKCallHistory

- (MKCallHistory)initWithSerializedData:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MKCallHistory;
  v5 = [(MKCallHistory *)&v19 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = [v4 mk_numberForKey:@"is_read"];
  -[MKCallHistory setIsRead:](v5, "setIsRead:", [v6 BOOLValue]);

  v7 = [v4 mk_numberForKey:@"type"];
  -[MKCallHistory setType:](v5, "setType:", [v7 unsignedIntegerValue]);

  v8 = MEMORY[0x277CBEAA8];
  v9 = [v4 mk_numberForKey:@"date"];
  [v9 doubleValue];
  v11 = [v8 dateWithTimeIntervalSince1970:v10 / 1000.0];
  [(MKCallHistory *)v5 setDate:v11];

  v12 = [v4 mk_numberForKey:@"duration"];
  [v12 doubleValue];
  [(MKCallHistory *)v5 setDuration:?];

  v13 = [v4 mk_stringForKey:@"country_code"];
  v14 = [v13 lowercaseString];
  [(MKCallHistory *)v5 setCountryCode:v14];

  v15 = [v4 mk_stringForKey:@"number"];
  [(MKCallHistory *)v5 setNumber:v15];

  v16 = [v4 mk_arrayForKey:@"other_numbers"];
  [(MKCallHistory *)v5 setOtherNumbers:v16];

  if ([(NSArray *)v5->_otherNumbers count])
  {
LABEL_4:
    v17 = v5;
  }

  else
  {
LABEL_5:
    v17 = 0;
  }

  return v17;
}

+ (BOOL)read:(id)a3
{
  v3 = a3;
  if ([v3 type] == 4)
  {
    v4 = [v3 isRead];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (unsigned)status:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  if (v4 > 2)
  {
    if ((v4 - 4) < 2)
    {
      v5 = MEMORY[0x277CF7DA0];
      goto LABEL_14;
    }

    if (v4 == 3)
    {
      v5 = MEMORY[0x277CF7D78];
      goto LABEL_14;
    }

LABEL_12:
    v5 = MEMORY[0x277CF7DB0];
    goto LABEL_14;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  if (v4 == 1)
  {
    v5 = MEMORY[0x277CF7D88];
    goto LABEL_14;
  }

  if (v4 != 2)
  {
    goto LABEL_12;
  }

  [v3 duration];
  v5 = MEMORY[0x277CF7D80];
  if (v6 != 0.0)
  {
    v5 = MEMORY[0x277CF7D90];
  }

LABEL_14:
  v7 = *v5;

  return v7;
}

+ (double)duration:(id)a3
{
  v3 = a3;
  if ([v3 type] == 1 || (v4 = 0.0, objc_msgSend(v3, "type") == 2))
  {
    [v3 duration];
    v4 = v5;
  }

  return v4;
}

+ (id)calls:(id)a3 label:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v20 = a4;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [[MKCallHistory alloc] initWithSerializedData:*(*(&v23 + 1) + 8 * i)];
        v13 = v12;
        if (!v12)
        {
          v17 = +[MKLog log];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [(MKCallHistory *)&buf calls:v22 label:v17];
          }

          goto LABEL_15;
        }

        if ([(MKCallHistory *)v12 type]&& [(MKCallHistory *)v13 type]<= 5)
        {
          v14 = [(MKCallHistory *)v13 number];

          if (v14)
          {
            v15 = [(MKCallHistory *)v13 number];
            v16 = [v20 label:v15];
            [(MKCallHistory *)v13 setLabel:v16];
          }

          v17 = [MKCallHistory convertCallHistoryToCall:v13];
          if (v17)
          {
            [v6 addObject:v17];
          }

LABEL_15:
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)convertCallHistoryToCall:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CBEB58]);
  v5 = [v3 otherNumbers];
  v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v3 otherNumbers];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  v10 = *v24;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v23 + 1) + 8 * i);
      v13 = MEMORY[0x277CF7D30];
      v14 = [v3 countryCode];
      v15 = [v13 normalizedPhoneNumberHandleForValue:v12 isoCountryCode:v14];

      if (v15)
      {
        goto LABEL_10;
      }

      v16 = [MEMORY[0x277CF7D30] normalizedEmailAddressHandleForValue:v12];
      if (!v16)
      {
        v16 = [MEMORY[0x277CF7D30] normalizedGenericHandleForValue:v12];
        if (!v16)
        {
          continue;
        }
      }

      v15 = v16;
LABEL_10:
      [v6 addObject:v15];

      continue;
    }

    v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v9);
LABEL_13:

  if ([v6 count])
  {
    v17 = objc_alloc_init(MEMORY[0x277CF7D48]);
    [v17 setHandleType:2];
    [v17 setMediaType:1];
    [v17 setTtyType:0];
    [v17 setServiceProvider:*MEMORY[0x277CF7E08]];
    [v17 setRead:{+[MKCallHistory read:](MKCallHistory, "read:", v3)}];
    [v17 setRemoteParticipantHandles:v6];
    [v17 setCallStatus:{+[MKCallHistory status:](MKCallHistory, "status:", v3)}];
    [MKCallHistory duration:v3];
    [v17 setDuration:?];
    v18 = [v3 date];
    [v17 setDate:v18];

    v19 = [v3 countryCode];
    [v17 setIsoCountryCode:v19];

    v20 = [v3 label];
    [v17 setLocalParticipantUUID:v20];
  }

  else
  {
    v17 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

@end