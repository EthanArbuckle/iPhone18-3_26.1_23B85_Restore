@interface PKRemoteDevice
+ (id)acceptedComparatorWithPaymentSupportedQuery:(id)a3;
+ (id)preferenceComparator;
- (BOOL)canMakePayments;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRemoteDevice:(id)a3;
- (PKRemoteDevice)initWithCoder:(id)a3;
- (PKRemoteDevice)initWithIDSDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)pk_idsDestination;
- (int64_t)_deviceTypeForModelIdentifier:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKRemoteDevice

+ (id)preferenceComparator
{
  v2 = [&__block_literal_global_790 copy];

  return v2;
}

uint64_t __71__PKRemoteDevice_PKPaymentAuthorizationDataModel__preferenceComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 type];
  v7 = [v5 type];
  v8 = [v4 isLocked];
  v9 = [v5 isLocked];
  if (![v4 proximityState] && objc_msgSend(v5, "proximityState"))
  {
    goto LABEL_7;
  }

  if ([v4 proximityState] && !objc_msgSend(v5, "proximityState"))
  {
    goto LABEL_20;
  }

  if (v6 < v7)
  {
    v10 = ((v6 == 0) & v8 & (v7 == 1)) == 0;
    v11 = 1;
    goto LABEL_10;
  }

  if (v6 > v7)
  {
    v10 = ((v7 == 0) & v9 & (v6 == 1)) == 0;
    v11 = -1;
LABEL_10:
    if (v10)
    {
      v12 = -v11;
    }

    else
    {
      v12 = v11;
    }

    goto LABEL_21;
  }

  if (!v6)
  {
    if (v9 & 1 | ((v8 & 1) == 0))
    {
      if (!(v8 & 1 | ((v9 & 1) == 0)))
      {
LABEL_7:
        v12 = -1;
        goto LABEL_21;
      }

      goto LABEL_14;
    }

LABEL_20:
    v12 = 1;
    goto LABEL_21;
  }

LABEL_14:
  v13 = [v5 lastSeen];
  v14 = [v4 lastSeen];
  v12 = [v13 compare:v14];

  if (!v12)
  {
    v15 = [v4 deviceName];
    v16 = [v5 deviceName];
    v12 = [v15 compare:v16];

    if (!v12)
    {
      v17 = [v4 uniqueID];
      v18 = [v5 uniqueID];
      v12 = [v17 compare:v18];
    }
  }

LABEL_21:

  return v12;
}

+ (id)acceptedComparatorWithPaymentSupportedQuery:(id)a3
{
  v4 = a3;
  v5 = [a1 preferenceComparator];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __95__PKRemoteDevice_PKPaymentAuthorizationDataModel__acceptedComparatorWithPaymentSupportedQuery___block_invoke;
  v14 = &unk_1E79CC598;
  v15 = v4;
  v16 = v5;
  v6 = v5;
  v7 = v4;
  v8 = _Block_copy(&v11);
  v9 = [v8 copy];

  return v9;
}

uint64_t __95__PKRemoteDevice_PKPaymentAuthorizationDataModel__acceptedComparatorWithPaymentSupportedQuery___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 remotePaymentInstruments];
  v8 = [v7 firstObject];
  v9 = [v8 primaryPaymentApplication];

  v10 = [v9 canProcessPayment:*(a1 + 32)];
  v11 = [v6 remotePaymentInstruments];
  v12 = [v11 firstObject];
  v13 = [v12 primaryPaymentApplication];

  v14 = [v13 canProcessPayment:*(a1 + 32)];
  if (!v10 || v14)
  {
    if (v10 & 1 | ((v14 & 1) == 0))
    {
      v15 = (*(*(a1 + 40) + 16))();
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = -1;
  }

  return v15;
}

- (PKRemoteDevice)initWithIDSDevice:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKRemoteDevice;
  v5 = [(PKRemoteDevice *)&v19 init];
  if (v5)
  {
    v6 = [v4 name];
    v7 = [v6 copy];
    deviceName = v5->_deviceName;
    v5->_deviceName = v7;

    v9 = IDSCopyIDForDevice();
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v9;

    v11 = [v4 modelIdentifier];
    v5->_type = [(PKRemoteDevice *)v5 _deviceTypeForModelIdentifier:v11];

    v12 = [v4 nsuuid];
    bluetoothUUID = v5->_bluetoothUUID;
    v5->_bluetoothUUID = v12;

    v14 = [v4 modelIdentifier];
    modelIdentifier = v5->_modelIdentifier;
    v5->_modelIdentifier = v14;

    if (v4)
    {
      [v4 operatingSystemVersion];
      v16 = v18;
    }

    else
    {
      v16 = 0;
    }

    v5->_majorOperatingSystemVersion = v16;
  }

  return v5;
}

- (PKRemoteDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PKRemoteDevice;
  v5 = [(PKRemoteDevice *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"remotePaymentInstruments"];
    remotePaymentInstruments = v5->_remotePaymentInstruments;
    v5->_remotePaymentInstruments = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultRemotePaymentInstrument"];
    defaultRemotePaymentInstrument = v5->_defaultRemotePaymentInstrument;
    v5->_defaultRemotePaymentInstrument = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothUUID"];
    bluetoothUUID = v5->_bluetoothUUID;
    v5->_bluetoothUUID = v17;

    v5->_isLocked = [v4 decodeBoolForKey:@"isLocked"];
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v5->_userDisabled = [v4 decodeBoolForKey:@"userDisabled"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastSeen"];
    lastSeen = v5->_lastSeen;
    v5->_lastSeen = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelIdentifier"];
    modelIdentifier = v5->_modelIdentifier;
    v5->_modelIdentifier = v21;

    v5->_deviceDisabled = [v4 decodeBoolForKey:@"deviceDisabled"];
    v5->_proximityState = [v4 decodeIntegerForKey:@"proximityState"];
    v5->_supportsFaceID = [v4 decodeBoolForKey:@"supportsFaceID"];
    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"supportedSetupFeatures"];
    supportedSetupFeatures = v5->_supportedSetupFeatures;
    v5->_supportedSetupFeatures = v26;

    v5->_majorOperatingSystemVersion = [v4 decodeIntegerForKey:@"majorOperatingSystemVersion"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  deviceName = self->_deviceName;
  v5 = a3;
  [v5 encodeObject:deviceName forKey:@"deviceName"];
  [v5 encodeObject:self->_remotePaymentInstruments forKey:@"remotePaymentInstruments"];
  [v5 encodeObject:self->_defaultRemotePaymentInstrument forKey:@"defaultRemotePaymentInstrument"];
  [v5 encodeObject:self->_uniqueID forKey:@"uniqueID"];
  [v5 encodeObject:self->_bluetoothUUID forKey:@"bluetoothUUID"];
  [v5 encodeBool:self->_isLocked forKey:@"isLocked"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeBool:self->_userDisabled forKey:@"userDisabled"];
  [v5 encodeObject:self->_lastSeen forKey:@"lastSeen"];
  [v5 encodeObject:self->_modelIdentifier forKey:@"modelIdentifier"];
  [v5 encodeBool:self->_deviceDisabled forKey:@"deviceDisabled"];
  [v5 encodeInteger:self->_proximityState forKey:@"proximityState"];
  [v5 encodeBool:self->_supportsFaceID forKey:@"supportsFaceID"];
  [v5 encodeObject:self->_supportedSetupFeatures forKey:@"supportedSetupFeatures"];
  [v5 encodeInteger:self->_majorOperatingSystemVersion forKey:@"majorOperatingSystemVersion"];
}

- (unint64_t)hash
{
  v7[2] = *MEMORY[0x1E69E9840];
  deviceName = self->_deviceName;
  v7[0] = self->_uniqueID;
  v7[1] = deviceName;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = PKCombinedHash(17, v4);

  return self->_type - v5 + 32 * v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKRemoteDevice *)self isEqualToRemoteDevice:v5];
  }

  return v6;
}

- (BOOL)isEqualToRemoteDevice:(id)a3
{
  v4 = a3;
  deviceName = self->_deviceName;
  v6 = v4[2];
  if (deviceName)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (([(NSString *)deviceName isEqual:?]& 1) != 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_13;
  }

  if (deviceName != v6)
  {
    goto LABEL_7;
  }

LABEL_9:
  uniqueID = self->_uniqueID;
  v10 = v4[9];
  if (uniqueID && v10)
  {
    v8 = [(NSString *)uniqueID isEqual:?];
  }

  else
  {
    v8 = uniqueID == v10;
  }

LABEL_13:

  return v8;
}

- (id)description
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"\n\n*****************\nDevice Name: %@\n Device ID: %@\n", self->_deviceName, self->_uniqueID];
  [v3 appendFormat:@"Last seen: %@\n", self->_lastSeen];
  proximityState = self->_proximityState;
  v5 = @"Unknown";
  if (proximityState == 1)
  {
    v5 = @"Distant";
  }

  if (proximityState)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"Nearby";
  }

  [v3 appendFormat:@"Proximity: %@\n", v6];
  if (self->_isLocked)
  {
    v7 = @"Yes";
  }

  else
  {
    v7 = @"No";
  }

  [v3 appendFormat:@"Locked: %@\n", v7];
  if (self->_deviceDisabled)
  {
    v8 = @"Yes";
  }

  else
  {
    v8 = @"No";
  }

  [v3 appendFormat:@"Disabled: %@\n", v8];
  if (self->_userDisabled)
  {
    v9 = @"Yes";
  }

  else
  {
    v9 = @"No";
  }

  [v3 appendFormat:@"User disabled: %@\n", v9];
  if (self->_supportsFaceID)
  {
    v10 = @"Yes";
  }

  else
  {
    v10 = @"No";
  }

  [v3 appendFormat:@"Face ID available: %@\n", v10];
  v11 = [(PKRemotePaymentInstrument *)self->_defaultRemotePaymentInstrument displayName];
  [v3 appendFormat:@"Default: %@\n", v11];

  [v3 appendFormat:@"OS Version: %ld\n", self->_majorOperatingSystemVersion];
  [v3 appendString:@"Payment Instruments: \n"];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = self->_remotePaymentInstruments;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v30 + 1) + 8 * i) description];
        [v3 appendFormat:@"%@", v17];
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v14);
  }

  [v3 appendString:@"Setup Features: \n"];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = self->_supportedSetupFeatures;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v26 + 1) + 8 * j) description];
        [v3 appendFormat:@"%@", v23];
      }

      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  v24 = [v3 copy];

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKRemoteDevice allocWithZone:](PKRemoteDevice init];
  v6 = [(NSString *)self->_deviceName copyWithZone:a3];
  deviceName = v5->_deviceName;
  v5->_deviceName = v6;

  v5->_type = self->_type;
  v8 = [(NSString *)self->_modelIdentifier copyWithZone:a3];
  modelIdentifier = v5->_modelIdentifier;
  v5->_modelIdentifier = v8;

  v10 = [(NSDate *)self->_lastSeen copyWithZone:a3];
  lastSeen = v5->_lastSeen;
  v5->_lastSeen = v10;

  v5->_proximityState = self->_proximityState;
  v5->_isLocked = self->_isLocked;
  v5->_userDisabled = self->_userDisabled;
  v5->_deviceDisabled = self->_deviceDisabled;
  v12 = [(NSArray *)self->_remotePaymentInstruments copyWithZone:a3];
  remotePaymentInstruments = v5->_remotePaymentInstruments;
  v5->_remotePaymentInstruments = v12;

  v14 = [(PKRemotePaymentInstrument *)self->_defaultRemotePaymentInstrument copyWithZone:a3];
  defaultRemotePaymentInstrument = v5->_defaultRemotePaymentInstrument;
  v5->_defaultRemotePaymentInstrument = v14;

  v16 = [(NSString *)self->_uniqueID copyWithZone:a3];
  uniqueID = v5->_uniqueID;
  v5->_uniqueID = v16;

  v18 = [(NSUUID *)self->_bluetoothUUID copyWithZone:a3];
  bluetoothUUID = v5->_bluetoothUUID;
  v5->_bluetoothUUID = v18;

  v5->_supportsFaceID = self->_supportsFaceID;
  v20 = [(NSArray *)self->_supportedSetupFeatures copyWithZone:a3];
  supportedSetupFeatures = v5->_supportedSetupFeatures;
  v5->_supportedSetupFeatures = v20;

  v5->_majorOperatingSystemVersion = self->_majorOperatingSystemVersion;
  return v5;
}

- (BOOL)canMakePayments
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(PKRemotePaymentInstrument *)self->_defaultRemotePaymentInstrument paymentApplications];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 supportsInAppPayment])
        {
          v8 = [v7 state];
          if (v8 == 1 || v8 == 15)
          {
            LOBYTE(v4) = 1;
            goto LABEL_15;
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  if (self->_deviceDisabled)
  {
    return 0;
  }

  else
  {
    return v4 & !self->_userDisabled;
  }
}

- (int64_t)_deviceTypeForModelIdentifier:(id)a3
{
  v3 = [a3 lowercaseString];
  if ([v3 containsString:@"watch"])
  {
    v4 = 0;
  }

  else if ([v3 containsString:@"iphone"])
  {
    v4 = 1;
  }

  else if ([v3 containsString:@"mac"])
  {
    v4 = 3;
  }

  else if ([v3 containsString:@"pad"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (id)pk_idsDestination
{
  v3 = [(PKRemoteDevice *)self uniqueID];
  v4 = [(PKRemoteDevice *)self deviceName];
  v5 = [PKIDSDestination destinationWithDeviceIdentifier:v3 name:v4];

  return v5;
}

@end