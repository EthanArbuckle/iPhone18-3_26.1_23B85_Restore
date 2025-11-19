@interface CARInputDeviceTouchpad
+ (CGSize)physicalSizeForTouchpadWithDigitizerProperties:(id)a3;
- (BOOL)_characterRecognitionSupportedForServiceClient:(__IOHIDServiceClient *)a3;
- (CARInputDeviceTouchpad)initWithServiceClient:(__IOHIDServiceClient *)a3 UUID:(id)a4 settings:(id)a5 delegate:(id)a6;
- (CARInputDeviceTouchpadDelegate)delegate;
- (CGSize)_physicalSizeForTouchpadServiceClient:(__IOHIDServiceClient *)a3;
- (CGSize)physicalSize;
- (id)_initWithSupportedHapticTypes:(unint64_t)a3 physicalSize:(CGSize)a4 characterRecognitionSupported:(BOOL)a5 senderID:(unint64_t)a6 UUID:(id)a7;
- (id)description;
- (void)_setDelegate:(id)a3;
- (void)performFeedbackOfType:(unint64_t)a3;
- (void)updateSettingsWithSettings:(id)a3;
@end

@implementation CARInputDeviceTouchpad

- (CARInputDeviceTouchpad)initWithServiceClient:(__IOHIDServiceClient *)a3 UUID:(id)a4 settings:(id)a5 delegate:(id)a6
{
  v10 = a5;
  v11 = a6;
  v22.receiver = self;
  v22.super_class = CARInputDeviceTouchpad;
  v12 = [(CARInputDevice *)&v22 initWithServiceClient:a3 UUID:a4];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, v11);
    v14 = [v10 objectForKey:@"touchpadSensitivity"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v16 = 0.5;
    if (isKindOfClass)
    {
      [v14 floatValue];
      v16 = v17;
    }

    v13->_sensitivity = v16;
    [(CARInputDeviceTouchpad *)v13 _physicalSizeForTouchpadServiceClient:a3];
    v13->_physicalSize.width = v18;
    v13->_physicalSize.height = v19;
    v13->_characterRecognitionSupported = [(CARInputDeviceTouchpad *)v13 _characterRecognitionSupportedForServiceClient:a3];
    v20 = [v10 objectForKey:@"supportedHapticFeedbackTypes"];
    v13->_supportedFeedbackTypes = [v20 unsignedIntegerValue];
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CARInputDevice *)self senderID];
  v6 = [(CARInputDevice *)self UUID];
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
  v13 = [v3 stringWithFormat:@"<%@: %p, senderID: %llu, UUID: %@, width: %.2f cm, height: %.2f cm, characterRecognition: %@, sensitivity: %.2f", v4, self, v5, v6, v8, v10, v11, v12];

  return v13;
}

- (void)updateSettingsWithSettings:(id)a3
{
  v4 = [a3 objectForKey:@"touchpadSensitivity"];
  if (v4)
  {
    v6 = v4;
    [v4 floatValue];
    [(CARInputDeviceTouchpad *)self setSensitivity:v5];
    v4 = v6;
  }
}

- (void)performFeedbackOfType:(unint64_t)a3
{
  if (([(CARInputDeviceTouchpad *)self supportedFeedbackTypes]& a3) != 0)
  {
    v6 = [(CARInputDeviceTouchpad *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [(CARInputDevice *)self UUID];
      [v6 performHapticType:a3 deviceUUID:v5];
    }
  }
}

- (CGSize)_physicalSizeForTouchpadServiceClient:(__IOHIDServiceClient *)a3
{
  v3 = IOHIDServiceClientCopyProperty(a3, @"Digitizer");
  [CARInputDeviceTouchpad physicalSizeForTouchpadWithDigitizerProperties:v3];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (CGSize)physicalSizeForTouchpadWithDigitizerProperties:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v41 = [a3 objectForKey:@"Transducers"];
  v40 = [v41 firstObject];
  v3 = [v40 objectForKey:@"Elements"];
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
        v14 = [v13 integerValue];

        if ((v14 & 0xFFFFFFFFFFFFFFFELL) == 0x30)
        {
          v15 = [v12 objectForKey:v8];
          v16 = [v15 unsignedIntegerValue];

          if ((v16 & 0xFFF0) == 0x10)
          {
            v17 = v6;
            v18 = v7;
            v19 = v3;
            v20 = v8;
            v21 = v16 & 0xF;
            v22 = [v12 objectForKey:@"UnitExponent"];
            v23 = [v22 integerValue];

            v24 = v23 | 0xF0;
            if ((v23 & 8) == 0)
            {
              v24 = v23;
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

            if (v14 == 48)
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

- (BOOL)_characterRecognitionSupportedForServiceClient:(__IOHIDServiceClient *)a3
{
  v3 = IOHIDServiceClientCopyProperty(a3, @"Unicode");
  v4 = v3 != 0;

  return v4;
}

- (id)_initWithSupportedHapticTypes:(unint64_t)a3 physicalSize:(CGSize)a4 characterRecognitionSupported:(BOOL)a5 senderID:(unint64_t)a6 UUID:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a7;
  v17.receiver = self;
  v17.super_class = CARInputDeviceTouchpad;
  v14 = [(CARInputDeviceTouchpad *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(CARInputDevice *)v14 _setUUID:v13];
    [(CARInputDevice *)v15 _setSenderID:a6];
    v15->_physicalSize.width = width;
    v15->_physicalSize.height = height;
    v15->_characterRecognitionSupported = a5;
    v15->_supportedFeedbackTypes = a3;
  }

  return v15;
}

- (void)_setDelegate:(id)a3
{
  obj = a3;
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