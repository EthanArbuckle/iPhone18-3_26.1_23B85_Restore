@interface CARInputDeviceTouchpad
+ (CGSize)physicalSizeForTouchpadWithDigitizerProperties:(id)properties;
- (BOOL)_characterRecognitionSupportedForServiceClient:(__IOHIDServiceClient *)client;
- (CARInputDeviceTouchpad)initWithServiceClient:(__IOHIDServiceClient *)client UUID:(id)d settings:(id)settings delegate:(id)delegate;
- (CARInputDeviceTouchpadDelegate)delegate;
- (CGSize)_physicalSizeForTouchpadServiceClient:(__IOHIDServiceClient *)client;
- (CGSize)physicalSize;
- (id)_initWithSupportedHapticTypes:(unint64_t)types physicalSize:(CGSize)size characterRecognitionSupported:(BOOL)supported senderID:(unint64_t)d UUID:(id)iD;
- (id)description;
- (void)_setDelegate:(id)delegate;
- (void)performFeedbackOfType:(unint64_t)type;
- (void)updateSettingsWithSettings:(id)settings;
@end

@implementation CARInputDeviceTouchpad

- (CARInputDeviceTouchpad)initWithServiceClient:(__IOHIDServiceClient *)client UUID:(id)d settings:(id)settings delegate:(id)delegate
{
  settingsCopy = settings;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = CARInputDeviceTouchpad;
  v12 = [(CARInputDevice *)&v22 initWithServiceClient:client UUID:d];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v14 = [settingsCopy objectForKey:@"touchpadSensitivity"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v16 = 0.5;
    if (isKindOfClass)
    {
      [v14 floatValue];
      v16 = v17;
    }

    v13->_sensitivity = v16;
    [(CARInputDeviceTouchpad *)v13 _physicalSizeForTouchpadServiceClient:client];
    v13->_physicalSize.width = v18;
    v13->_physicalSize.height = v19;
    v13->_characterRecognitionSupported = [(CARInputDeviceTouchpad *)v13 _characterRecognitionSupportedForServiceClient:client];
    v20 = [settingsCopy objectForKey:@"supportedHapticFeedbackTypes"];
    v13->_supportedFeedbackTypes = [v20 unsignedIntegerValue];
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  senderID = [(CARInputDevice *)self senderID];
  uUID = [(CARInputDevice *)self UUID];
  [(CARInputDeviceTouchpad *)self physicalSize];
  v8 = v7;
  [(CARInputDeviceTouchpad *)self physicalSize];
  v10 = v9;
  if ([(CARInputDeviceTouchpad *)self characterRecognitionSupported])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [(CARInputDeviceTouchpad *)self sensitivity];
  v13 = [v3 stringWithFormat:@"<%@: %p, senderID: %llu, UUID: %@, width: %.2f cm, height: %.2f cm, characterRecognition: %@, sensitivity: %.2f", v4, self, senderID, uUID, v8, v10, v11, v12];

  return v13;
}

- (void)updateSettingsWithSettings:(id)settings
{
  v4 = [settings objectForKey:@"touchpadSensitivity"];
  if (v4)
  {
    v6 = v4;
    [v4 floatValue];
    [(CARInputDeviceTouchpad *)self setSensitivity:v5];
    v4 = v6;
  }
}

- (void)performFeedbackOfType:(unint64_t)type
{
  if (([(CARInputDeviceTouchpad *)self supportedFeedbackTypes]& type) != 0)
  {
    delegate = [(CARInputDeviceTouchpad *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      uUID = [(CARInputDevice *)self UUID];
      [delegate performHapticType:type deviceUUID:uUID];
    }
  }
}

- (CGSize)_physicalSizeForTouchpadServiceClient:(__IOHIDServiceClient *)client
{
  v3 = IOHIDServiceClientCopyProperty(client, @"Digitizer");
  [CARInputDeviceTouchpad physicalSizeForTouchpadWithDigitizerProperties:v3];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (CGSize)physicalSizeForTouchpadWithDigitizerProperties:(id)properties
{
  v48 = *MEMORY[0x1E69E9840];
  v41 = [properties objectForKey:@"Transducers"];
  firstObject = [v41 firstObject];
  v3 = [firstObject objectForKey:@"Elements"];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v44;
    v7 = @"Usage";
    v8 = @"Unit";
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = 0;
      v42 = v5;
      do
      {
        if (*v44 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v43 + 1) + 8 * v11);
        v13 = [v12 objectForKey:v7];
        integerValue = [v13 integerValue];

        if ((integerValue & 0xFFFFFFFFFFFFFFFELL) == 0x30)
        {
          v15 = [v12 objectForKey:v8];
          unsignedIntegerValue = [v15 unsignedIntegerValue];

          if ((unsignedIntegerValue & 0xFFF0) == 0x10)
          {
            v17 = v6;
            v18 = v7;
            v19 = v3;
            v20 = v8;
            v21 = unsignedIntegerValue & 0xF;
            v22 = [v12 objectForKey:@"UnitExponent"];
            integerValue2 = [v22 integerValue];

            v24 = integerValue2 | 0xF0;
            if ((integerValue2 & 8) == 0)
            {
              v24 = integerValue2;
            }

            v25 = v24;
            v26 = [v12 objectForKey:@"ScaledMax"];
            [v26 floatValue];
            v28 = v27;
            v29 = [v12 objectForKey:@"ScaledMin"];
            [v29 floatValue];
            v31 = (v28 - v30);

            v32 = __exp10f(v25) * v31;
            v33 = v21 == 3;
            v8 = v20;
            v3 = v19;
            v7 = v18;
            v6 = v17;
            v5 = v42;
            if (v33)
            {
              v32 = v32 * 2.54;
            }

            if (integerValue == 48)
            {
              v10 = v32;
            }

            else
            {
              v9 = v32;
            }
          }
        }

        ++v11;
      }

      while (v5 != v11);
      v5 = [v3 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v5);
  }

  else
  {
    v9 = 0.0;
    v10 = 0.0;
  }

  v34 = v9 != 0.0;
  v35 = v10 != 0.0;
  if (v34 && v35)
  {
    v36 = v9;
  }

  else
  {
    v36 = 4.0;
  }

  if (v34 && v35)
  {
    v37 = v10;
  }

  else
  {
    v37 = 4.0;
  }

  v38 = v37;
  v39 = v36;
  result.height = v39;
  result.width = v38;
  return result;
}

- (BOOL)_characterRecognitionSupportedForServiceClient:(__IOHIDServiceClient *)client
{
  v3 = IOHIDServiceClientCopyProperty(client, @"Unicode");
  v4 = v3 != 0;

  return v4;
}

- (id)_initWithSupportedHapticTypes:(unint64_t)types physicalSize:(CGSize)size characterRecognitionSupported:(BOOL)supported senderID:(unint64_t)d UUID:(id)iD
{
  height = size.height;
  width = size.width;
  iDCopy = iD;
  v17.receiver = self;
  v17.super_class = CARInputDeviceTouchpad;
  v14 = [(CARInputDeviceTouchpad *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(CARInputDevice *)v14 _setUUID:iDCopy];
    [(CARInputDevice *)v15 _setSenderID:d];
    v15->_physicalSize.width = width;
    v15->_physicalSize.height = height;
    v15->_characterRecognitionSupported = supported;
    v15->_supportedFeedbackTypes = types;
  }

  return v15;
}

- (void)_setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (CGSize)physicalSize
{
  width = self->_physicalSize.width;
  height = self->_physicalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CARInputDeviceTouchpadDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end