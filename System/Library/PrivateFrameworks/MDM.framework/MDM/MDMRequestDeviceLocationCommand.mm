@interface MDMRequestDeviceLocationCommand
+ (id)request;
+ (unint64_t)requiredAccessRights;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)processRequest:(id)request completionHandler:(id)handler;
@end

@implementation MDMRequestDeviceLocationCommand

+ (unint64_t)requiredAccessRights
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___MDMRequestDeviceLocationCommand;
  return objc_msgSendSuper2(&v3, sel_requiredAccessRights);
}

+ (id)request
{
  v2 = objc_opt_new();

  return v2;
}

- (id)serializeWithType:(signed __int16)type
{
  v3 = objc_opt_new();
  v4 = [v3 copy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = MDMRequestDeviceLocationCommand;
  return [(RMModelPayloadBase *)&v4 copyWithZone:zone];
}

- (void)processRequest:(id)request completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  mEMORY[0x277D08F78] = [MEMORY[0x277D08F78] sharedInstance];
  isManagedLostModeActive = [mEMORY[0x277D08F78] isManagedLostModeActive];

  if (isManagedLostModeActive)
  {
    v8 = objc_alloc_init(MDMLostDeviceLocationManager);
    delegate = [(MDMRequestBase *)self delegate];
    originator = [delegate originator];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__MDMRequestDeviceLocationCommand_Handler__processRequest_completionHandler___block_invoke;
    v19[3] = &unk_27982CAF0;
    v20 = handlerCopy;
    [(MDMLostDeviceLocationManager *)v8 getCurrentLocationForOriginator:originator completion:v19];

    v11 = v20;
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D03480];
    v14 = DMCErrorArray();
    v8 = [v12 DMCErrorWithDomain:v13 code:12067 descriptionArray:v14 errorType:{*MEMORY[0x277D032F8], 0}];

    v15 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = v15;
      dMCVerboseDescription = [(MDMLostDeviceLocationManager *)v8 DMCVerboseDescription];
      *buf = 138543362;
      v22 = dMCVerboseDescription;
      _os_log_impl(&dword_2561F5000, v16, OS_LOG_TYPE_ERROR, "Could not determine device current location: %{public}@", buf, 0xCu);
    }

    v11 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v8];
    (*(handlerCopy + 2))(handlerCopy, v11);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __77__MDMRequestDeviceLocationCommand_Handler__processRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D03480];
    v8 = DMCErrorArray();
    v9 = [v6 DMCErrorWithDomain:v7 code:12068 descriptionArray:v8 underlyingError:v5 errorType:{*MEMORY[0x277D032F8], 0}];

    v10 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v9];
  }

  else
  {
    v11 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    v12 = MEMORY[0x277CCABB0];
    [v29 coordinate];
    v13 = [v12 numberWithDouble:?];
    [v11 setObject:v13 forKeyedSubscript:@"Latitude"];

    v14 = MEMORY[0x277CCABB0];
    [v29 coordinate];
    v16 = [v14 numberWithDouble:v15];
    [v11 setObject:v16 forKeyedSubscript:@"Longitude"];

    v17 = MEMORY[0x277CCABB0];
    [v29 horizontalAccuracy];
    v18 = [v17 numberWithDouble:?];
    [v11 setObject:v18 forKeyedSubscript:@"HorizontalAccuracy"];

    v19 = MEMORY[0x277CCABB0];
    [v29 verticalAccuracy];
    v20 = [v19 numberWithDouble:?];
    [v11 setObject:v20 forKeyedSubscript:@"VerticalAccuracy"];

    v21 = MEMORY[0x277CCABB0];
    [v29 altitude];
    v22 = [v21 numberWithDouble:?];
    [v11 setObject:v22 forKeyedSubscript:@"Altitude"];

    v23 = MEMORY[0x277CCABB0];
    [v29 course];
    v24 = [v23 numberWithDouble:?];
    [v11 setObject:v24 forKeyedSubscript:@"Course"];

    v25 = MEMORY[0x277CCABB0];
    [v29 speed];
    v26 = [v25 numberWithDouble:?];
    [v11 setObject:v26 forKeyedSubscript:@"Speed"];

    v10 = [v29 timestamp];
    if (v10)
    {
      v27 = [MEMORY[0x277D034E0] isoDateFormatter];
      v28 = [v27 stringFromDate:v10];
      [v11 setObject:v28 forKeyedSubscript:@"Timestamp"];
    }

    v9 = v11;
  }

  (*(*(a1 + 32) + 16))();
}

@end