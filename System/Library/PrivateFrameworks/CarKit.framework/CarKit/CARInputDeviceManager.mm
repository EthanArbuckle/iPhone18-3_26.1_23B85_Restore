@interface CARInputDeviceManager
- (BOOL)touchpadCharacterRecognitionSupported;
- (CARInputDeviceManager)initWithEndpointInputDevices:(id)devices screenIDs:(id)ds vehicleInformation:(id)information session:(id)session;
- (CARSession)session;
- (NSString)description;
- (id)_generateInputDevicesWithEndpointInputDevices:(id)devices screenIDs:(id)ds vehicleInformation:(id)information;
- (id)_initWithInputDevices:(id)devices session:(id)session;
- (id)_inputDeviceWithSenderID:(unint64_t)d;
- (id)_touchpadSettingsFromVehicleInformation:(id)information;
- (id)touchpadWithSenderID:(unint64_t)d;
- (void)_enumerateTouchpadsUsingBlock:(id)block;
- (void)_updateTouchpadSettings:(id)settings;
- (void)performHapticType:(unint64_t)type deviceUUID:(id)d;
- (void)vehicleInformationChanged:(id)changed;
@end

@implementation CARInputDeviceManager

- (CARInputDeviceManager)initWithEndpointInputDevices:(id)devices screenIDs:(id)ds vehicleInformation:(id)information session:(id)session
{
  devicesCopy = devices;
  dsCopy = ds;
  informationCopy = information;
  sessionCopy = session;
  v19.receiver = self;
  v19.super_class = CARInputDeviceManager;
  v14 = [(CARInputDeviceManager *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_session, sessionCopy);
    v16 = [(CARInputDeviceManager *)v15 _generateInputDevicesWithEndpointInputDevices:devicesCopy screenIDs:dsCopy vehicleInformation:informationCopy];
    inputDevices = v15->_inputDevices;
    v15->_inputDevices = v16;
  }

  return v15;
}

- (id)_generateInputDevicesWithEndpointInputDevices:(id)devices screenIDs:(id)ds vehicleInformation:(id)information
{
  v60 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  dsCopy = ds;
  informationCopy = information;
  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cf = IOHIDEventSystemClientCreateWithType();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = dsCopy;
  v8 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v53;
    v11 = *MEMORY[0x1E695E4C0];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v52 + 1) + 8 * i);
        v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v47 setObject:v14 forKey:v13];
        v57[0] = @"Built-In";
        v57[1] = @"displayUUID";
        v58[0] = v11;
        v58[1] = v13;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];
        IOHIDEventSystemClientSetMatching();
        v15 = IOHIDEventSystemClientCopyServices(cf);
        if ([(__CFArray *)v15 count])
        {
          v16 = 0;
          do
          {
            v17 = [(__CFArray *)v15 objectAtIndex:v16];
            v18 = IOHIDServiceClientCopyProperty(v17, @"SerialNumber");
            if (v18)
            {
              [v14 setObject:v17 forKey:v18];
            }

            ++v16;
          }

          while (v16 < [(__CFArray *)v15 count]);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v9);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v19 = devicesCopy;
  v20 = [v19 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v49;
    v23 = *MEMORY[0x1E6961840];
    v39 = *v49;
    v41 = v19;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v49 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v48 + 1) + 8 * j);
        v26 = [v25 objectForKey:{v23, v39}];
        v27 = [v25 objectForKey:@"displayUUID"];
        v28 = [v47 objectForKey:v27];

        v29 = [v28 objectForKey:v26];
        if (v29)
        {
          v30 = v29;
          v31 = IOHIDServiceClientCopyProperty(v29, @"PrimaryUsagePage");
          v32 = IOHIDServiceClientCopyProperty(v30, @"PrimaryUsage");
          if ([v31 integerValue] == 13 && objc_msgSend(v32, "integerValue") == 5)
          {
            if (informationCopy)
            {
              v33 = [(CARInputDeviceManager *)self _touchpadSettingsFromVehicleInformation:?];
              v34 = v33;
              if (v33)
              {
                v35 = [v33 objectForKey:v26];
              }

              else
              {
                v35 = 0;
              }
            }

            else
            {
              v35 = 0;
            }

            v36 = [[CARInputDeviceTouchpad alloc] initWithServiceClient:v30 UUID:v26 settings:v35 delegate:self];
            [v42 addObject:v36];

            v22 = v39;
            v19 = v41;
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v21);
  }

  CFRelease(cf);
  v37 = [v42 copy];

  return v37;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  inputDevices = [(CARInputDeviceManager *)self inputDevices];
  v6 = [v3 stringWithFormat:@"<%@: %p, input devices: %@>", v4, self, inputDevices];

  return v6;
}

- (void)vehicleInformationChanged:(id)changed
{
  v4 = [(CARInputDeviceManager *)self _touchpadSettingsFromVehicleInformation:changed];
  if (v4)
  {
    [(CARInputDeviceManager *)self _updateTouchpadSettings:v4];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)touchpadCharacterRecognitionSupported
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__CARInputDeviceManager_touchpadCharacterRecognitionSupported__block_invoke;
  v4[3] = &unk_1E82FDB10;
  v4[4] = &v5;
  [(CARInputDeviceManager *)self _enumerateTouchpadsUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __62__CARInputDeviceManager_touchpadCharacterRecognitionSupported__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 characterRecognitionSupported];
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

- (id)touchpadWithSenderID:(unint64_t)d
{
  v3 = [(CARInputDeviceManager *)self _inputDeviceWithSenderID:d];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)performHapticType:(unint64_t)type deviceUUID:(id)d
{
  v11[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  session = [(CARInputDeviceManager *)self session];
  v10[0] = @"hapticFeedbackType";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v10[1] = @"uuid";
  v11[0] = v8;
  v11[1] = dCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  [session sendCommand:@"performHapticFeedback" withParameters:v9];
}

- (void)_enumerateTouchpadsUsingBlock:(id)block
{
  blockCopy = block;
  inputDevices = [(CARInputDeviceManager *)self inputDevices];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__CARInputDeviceManager__enumerateTouchpadsUsingBlock___block_invoke;
  v7[3] = &unk_1E82FDB38;
  v8 = blockCopy;
  v6 = blockCopy;
  [inputDevices enumerateObjectsUsingBlock:v7];
}

void __55__CARInputDeviceManager__enumerateTouchpadsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)_inputDeviceWithSenderID:(unint64_t)d
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__11;
  v12 = __Block_byref_object_dispose__11;
  v13 = 0;
  inputDevices = [(CARInputDeviceManager *)self inputDevices];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CARInputDeviceManager__inputDeviceWithSenderID___block_invoke;
  v7[3] = &unk_1E82FDB60;
  v7[4] = &v8;
  v7[5] = d;
  [inputDevices enumerateObjectsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __50__CARInputDeviceManager__inputDeviceWithSenderID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 senderID] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_updateTouchpadSettings:(id)settings
{
  settingsCopy = settings;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__CARInputDeviceManager__updateTouchpadSettings___block_invoke;
  v6[3] = &unk_1E82FDB88;
  v7 = settingsCopy;
  v5 = settingsCopy;
  [(CARInputDeviceManager *)self _enumerateTouchpadsUsingBlock:v6];
}

void __49__CARInputDeviceManager__updateTouchpadSettings___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 UUID];
  v5 = [v2 objectForKey:v4];

  [v3 updateSettingsWithSettings:v5];
}

- (id)_touchpadSettingsFromVehicleInformation:(id)information
{
  v3 = [information objectForKey:@"userPreferences"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKey:@"touchpadSettings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v4 = 0;
LABEL_5:

  return v4;
}

- (id)_initWithInputDevices:(id)devices session:(id)session
{
  devicesCopy = devices;
  sessionCopy = session;
  v12.receiver = self;
  v12.super_class = CARInputDeviceManager;
  v9 = [(CARInputDeviceManager *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeWeak(&v9->_session, sessionCopy);
    objc_storeStrong(p_isa + 1, devices);
  }

  return p_isa;
}

- (CARSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end