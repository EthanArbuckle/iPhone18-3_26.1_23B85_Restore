@interface PKPaymentAvailableDevicesResponse
- (PKPaymentAvailableDevicesResponse)initWithData:(id)data;
@end

@implementation PKPaymentAvailableDevicesResponse

- (PKPaymentAvailableDevicesResponse)initWithData:(id)data
{
  v35 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = PKPaymentAvailableDevicesResponse;
  v3 = [(PKWebServiceResponse *)&v32 initWithData:data];
  if (v3)
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = v3;
    [(PKWebServiceResponse *)v3 JSONObject];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = v31 = 0u;
    obj = [v19 objectForKeyedSubscript:@"paymentDevices"];
    v4 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v4)
    {
      v5 = v4;
      v22 = *v29;
      do
      {
        v6 = 0;
        do
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v28 + 1) + 8 * v6);
          v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v9 = [v7 objectForKeyedSubscript:@"cards"];
          v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v25;
            do
            {
              v13 = 0;
              do
              {
                if (*v25 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = [[PKPaymentAvailableDevicesResponseCardItem alloc] initWithDictionary:*(*(&v24 + 1) + 8 * v13)];
                [v8 safelyAddObject:v14];

                ++v13;
              }

              while (v11 != v13);
              v11 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
            }

            while (v11);
          }

          v15 = [v7 objectForKeyedSubscript:@"deviceSerialNumber"];
          [v23 setObject:v8 forKey:v15];

          ++v6;
        }

        while (v6 != v5);
        v5 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v5);
    }

    v16 = [v23 copy];
    v3 = v20;
    devices = v20->_devices;
    v20->_devices = v16;
  }

  return v3;
}

@end