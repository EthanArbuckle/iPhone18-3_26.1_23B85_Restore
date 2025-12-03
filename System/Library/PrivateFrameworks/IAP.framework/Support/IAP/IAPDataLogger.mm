@interface IAPDataLogger
+ (id)sanitizeString:(id)string;
+ (void)AggAccAttach:(id)attach WithManufacturer:(id)manufacturer;
+ (void)AggAccDetach:(id)detach WithManufacturer:(id)manufacturer AndConnectionTime:(unint64_t)time;
+ (void)PowerlogAccAttach:(id)attach;
+ (void)PowerlogAccDetach:(id)detach AndConnectionTime:(unint64_t)time;
@end

@implementation IAPDataLogger

+ (id)sanitizeString:(id)string
{
  v4 = objc_alloc_init(NSMutableCharacterSet);
  [v4 formUnionWithCharacterSet:{+[NSCharacterSet letterCharacterSet](NSCharacterSet, "letterCharacterSet")}];
  [v4 formUnionWithCharacterSet:{+[NSCharacterSet decimalDigitCharacterSet](NSCharacterSet, "decimalDigitCharacterSet")}];
  [v4 addCharactersInString:@"_-.!"];
  v5 = [[NSString alloc] initWithData:objc_msgSend(string encoding:{"dataUsingEncoding:allowLossyConversion:", 1, 1), 1}];
  v6 = [objc_msgSend(v5 componentsSeparatedByCharactersInSet:{objc_msgSend(v4, "invertedSet")), "componentsJoinedByString:", &stru_100119FF8}];

  return v6;
}

+ (void)AggAccAttach:(id)attach WithManufacturer:(id)manufacturer
{
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"accessory.attach.%@.%@", [self sanitizeString:manufacturer], objc_msgSend(self, "sanitizeString:", attach));

  _ADClientAddValueForScalarKey(v4, 1);
}

+ (void)AggAccDetach:(id)detach WithManufacturer:(id)manufacturer AndConnectionTime:(unint64_t)time
{
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"accessory.usage.%@.%@", [self sanitizeString:manufacturer], objc_msgSend(self, "sanitizeString:", detach));
  v10.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v10.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  v8 = gettimeofday(&v10, 0);
  if (v10.tv_sec < time)
  {
    __break(0x5515u);
  }

  else
  {
    v9.n128_f64[0] = [self sanitizeData:v10.tv_sec - time];
    v8 = v7;
  }

  _ADClientPushValueForDistributionKey(v8, v9);
}

+ (void)PowerlogAccAttach:(id)attach
{
  v16[0] = IAPAppAccessoryNameKey;
  v16[1] = IAPAppAccessoryManufacturerKey;
  v16[2] = IAPAppAccessoryModelNumberKey;
  v16[3] = IAPAppAccessoryFirmwareRevisionKey;
  v16[4] = IAPAppAccessoryHardwareRevisionKey;
  v16[5] = IAPAppAccessoryProtocolsKey;
  v16[6] = IAPAppAccessoryPreferredAppKey;
  v16[7] = IAPAppAccessoryConnectionTimeInSecKey;
  v4 = [NSArray arrayWithObjects:v16 count:8];
  v5 = objc_alloc_init(NSMutableDictionary);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([attach objectForKey:v10])
        {
          [v5 setObject:objc_msgSend(attach forKey:{"objectForKey:", v10), v10}];
        }
      }

      v7 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [v5 setObject:&__kCFBooleanTrue forKey:IAPAppAccessoryConnectedKey];
  PLLogRegisteredEvent();
}

+ (void)PowerlogAccDetach:(id)detach AndConnectionTime:(unint64_t)time
{
  v20[0] = IAPAppAccessoryNameKey;
  v20[1] = IAPAppAccessoryManufacturerKey;
  v20[2] = IAPAppAccessoryModelNumberKey;
  v20[3] = IAPAppAccessoryFirmwareRevisionKey;
  v20[4] = IAPAppAccessoryHardwareRevisionKey;
  v20[5] = IAPAppAccessoryProtocolsKey;
  v20[6] = IAPAppAccessoryPreferredAppKey;
  v20[7] = IAPAppAccessoryConnectionTimeInSecKey;
  v6 = [NSArray arrayWithObjects:v20 count:8];
  v7 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([detach objectForKey:v12])
        {
          [v7 setObject:objc_msgSend(detach forKey:{"objectForKey:", v12), v12}];
        }
      }

      v9 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v14.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v14, 0);
  if (v14.tv_sec < time)
  {
    __break(0x5515u);
  }

  time = [NSNumber numberWithLong:v14.tv_sec - time];
  [v7 setObject:time forKey:IAPAppAccessoryUsageTimeInSecsKey];
  [v7 setObject:&__kCFBooleanFalse forKey:IAPAppAccessoryConnectedKey];
  PLLogRegisteredEvent();
}

@end