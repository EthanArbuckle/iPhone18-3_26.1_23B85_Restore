@interface AULegacyCommand
- (AULegacyCommand)initWithCommand:(int)a3 forFilter:(id)a4 options:(id)a5;
@end

@implementation AULegacyCommand

- (AULegacyCommand)initWithCommand:(int)a3 forFilter:(id)a4 options:(id)a5
{
  v8 = a4;
  v9 = a5;
  v27.receiver = self;
  v27.super_class = AULegacyCommand;
  v10 = [(AULegacyCommand *)&v27 init];
  v11 = v10;
  if (v10)
  {
    v10->_commandType = a3;
    v12 = [v8 copy];
    filter = v11->_filter;
    v11->_filter = v12;

    v11->_isConnectionEvent = 0;
    if (v9)
    {
      v14 = xpc_copy(v9);
      eventOptions = v11->_eventOptions;
      v11->_eventOptions = v14;

      v16 = objc_opt_new();
      uint64 = xpc_dictionary_get_uint64(v11->_eventOptions, "IOMatchLaunchServiceID");
      if (uint64)
      {
        v18 = [NSNumber numberWithUnsignedLongLong:uint64];
        [v16 setObject:v18 forKey:@"IOMatchLaunchServiceID"];
      }

      v19 = v11->_eventOptions;
      v20 = objectFromXpcDictionary();
      if (v20)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v16 addEntriesFromDictionary:v20];
        }
      }

      v21 = xpc_dictionary_get_value(v11->_eventOptions, "EAMatchingSerialNumber");
      v22 = v21;
      if (v21 && xpc_get_type(v21) == &_xpc_type_string)
      {
        v23 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v22)];
        [v16 setObject:v23 forKey:@"SerialNumber"];
      }

      if (xpc_dictionary_get_BOOL(v11->_eventOptions, "DeviceIdleLaunch"))
      {
        [v16 setObject:&__kCFBooleanTrue forKey:@"DeviceIdleLaunch"];
      }

      v24 = [NSDictionary dictionaryWithDictionary:v16];
      commandOptions = v11->_commandOptions;
      v11->_commandOptions = v24;
    }
  }

  return v11;
}

@end