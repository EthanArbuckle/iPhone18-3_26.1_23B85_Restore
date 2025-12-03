@interface PKRemoteDevice
+ (id)acceptedComparatorWithPaymentSupportedQuery:(id)query;
+ (id)preferenceComparator;
- (BOOL)canMakePayments;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRemoteDevice:(id)device;
- (PKRemoteDevice)initWithCoder:(id)coder;
- (PKRemoteDevice)initWithIDSDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)pk_idsDestination;
- (int64_t)_deviceTypeForModelIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

+ (id)acceptedComparatorWithPaymentSupportedQuery:(id)query
{
  queryCopy = query;
  preferenceComparator = [self preferenceComparator];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __95__PKRemoteDevice_PKPaymentAuthorizationDataModel__acceptedComparatorWithPaymentSupportedQuery___block_invoke;
  v14 = &unk_1E79CC598;
  v15 = queryCopy;
  v16 = preferenceComparator;
  v6 = preferenceComparator;
  v7 = queryCopy;
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

- (PKRemoteDevice)initWithIDSDevice:(id)device
{
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = PKRemoteDevice;
  v5 = [(PKRemoteDevice *)&v19 init];
  if (v5)
  {
    name = [deviceCopy name];
    v7 = [name copy];
    deviceName = v5->_deviceName;
    v5->_deviceName = v7;

    v9 = IDSCopyIDForDevice();
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v9;

    modelIdentifier = [deviceCopy modelIdentifier];
    v5->_type = [(PKRemoteDevice *)v5 _deviceTypeForModelIdentifier:modelIdentifier];

    nsuuid = [deviceCopy nsuuid];
    bluetoothUUID = v5->_bluetoothUUID;
    v5->_bluetoothUUID = nsuuid;

    modelIdentifier2 = [deviceCopy modelIdentifier];
    modelIdentifier = v5->_modelIdentifier;
    v5->_modelIdentifier = modelIdentifier2;

    if (deviceCopy)
    {
      [deviceCopy operatingSystemVersion];
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

- (PKRemoteDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = PKRemoteDevice;
  v5 = [(PKRemoteDevice *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"remotePaymentInstruments"];
    remotePaymentInstruments = v5->_remotePaymentInstruments;
    v5->_remotePaymentInstruments = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultRemotePaymentInstrument"];
    defaultRemotePaymentInstrument = v5->_defaultRemotePaymentInstrument;
    v5->_defaultRemotePaymentInstrument = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothUUID"];
    bluetoothUUID = v5->_bluetoothUUID;
    v5->_bluetoothUUID = v17;

    v5->_isLocked = [coderCopy decodeBoolForKey:@"isLocked"];
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_userDisabled = [coderCopy decodeBoolForKey:@"userDisabled"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastSeen"];
    lastSeen = v5->_lastSeen;
    v5->_lastSeen = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelIdentifier"];
    modelIdentifier = v5->_modelIdentifier;
    v5->_modelIdentifier = v21;

    v5->_deviceDisabled = [coderCopy decodeBoolForKey:@"deviceDisabled"];
    v5->_proximityState = [coderCopy decodeIntegerForKey:@"proximityState"];
    v5->_supportsFaceID = [coderCopy decodeBoolForKey:@"supportsFaceID"];
    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"supportedSetupFeatures"];
    supportedSetupFeatures = v5->_supportedSetupFeatures;
    v5->_supportedSetupFeatures = v26;

    v5->_majorOperatingSystemVersion = [coderCopy decodeIntegerForKey:@"majorOperatingSystemVersion"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  deviceName = self->_deviceName;
  coderCopy = coder;
  [coderCopy encodeObject:deviceName forKey:@"deviceName"];
  [coderCopy encodeObject:self->_remotePaymentInstruments forKey:@"remotePaymentInstruments"];
  [coderCopy encodeObject:self->_defaultRemotePaymentInstrument forKey:@"defaultRemotePaymentInstrument"];
  [coderCopy encodeObject:self->_uniqueID forKey:@"uniqueID"];
  [coderCopy encodeObject:self->_bluetoothUUID forKey:@"bluetoothUUID"];
  [coderCopy encodeBool:self->_isLocked forKey:@"isLocked"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeBool:self->_userDisabled forKey:@"userDisabled"];
  [coderCopy encodeObject:self->_lastSeen forKey:@"lastSeen"];
  [coderCopy encodeObject:self->_modelIdentifier forKey:@"modelIdentifier"];
  [coderCopy encodeBool:self->_deviceDisabled forKey:@"deviceDisabled"];
  [coderCopy encodeInteger:self->_proximityState forKey:@"proximityState"];
  [coderCopy encodeBool:self->_supportsFaceID forKey:@"supportsFaceID"];
  [coderCopy encodeObject:self->_supportedSetupFeatures forKey:@"supportedSetupFeatures"];
  [coderCopy encodeInteger:self->_majorOperatingSystemVersion forKey:@"majorOperatingSystemVersion"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKRemoteDevice *)self isEqualToRemoteDevice:v5];
  }

  return v6;
}

- (BOOL)isEqualToRemoteDevice:(id)device
{
  deviceCopy = device;
  deviceName = self->_deviceName;
  v6 = deviceCopy[2];
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
  v10 = deviceCopy[9];
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
  displayName = [(PKRemotePaymentInstrument *)self->_defaultRemotePaymentInstrument displayName];
  [v3 appendFormat:@"Default: %@\n", displayName];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKRemoteDevice allocWithZone:](PKRemoteDevice init];
  v6 = [(NSString *)self->_deviceName copyWithZone:zone];
  deviceName = v5->_deviceName;
  v5->_deviceName = v6;

  v5->_type = self->_type;
  v8 = [(NSString *)self->_modelIdentifier copyWithZone:zone];
  modelIdentifier = v5->_modelIdentifier;
  v5->_modelIdentifier = v8;

  v10 = [(NSDate *)self->_lastSeen copyWithZone:zone];
  lastSeen = v5->_lastSeen;
  v5->_lastSeen = v10;

  v5->_proximityState = self->_proximityState;
  v5->_isLocked = self->_isLocked;
  v5->_userDisabled = self->_userDisabled;
  v5->_deviceDisabled = self->_deviceDisabled;
  v12 = [(NSArray *)self->_remotePaymentInstruments copyWithZone:zone];
  remotePaymentInstruments = v5->_remotePaymentInstruments;
  v5->_remotePaymentInstruments = v12;

  v14 = [(PKRemotePaymentInstrument *)self->_defaultRemotePaymentInstrument copyWithZone:zone];
  defaultRemotePaymentInstrument = v5->_defaultRemotePaymentInstrument;
  v5->_defaultRemotePaymentInstrument = v14;

  v16 = [(NSString *)self->_uniqueID copyWithZone:zone];
  uniqueID = v5->_uniqueID;
  v5->_uniqueID = v16;

  v18 = [(NSUUID *)self->_bluetoothUUID copyWithZone:zone];
  bluetoothUUID = v5->_bluetoothUUID;
  v5->_bluetoothUUID = v18;

  v5->_supportsFaceID = self->_supportsFaceID;
  v20 = [(NSArray *)self->_supportedSetupFeatures copyWithZone:zone];
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
  paymentApplications = [(PKRemotePaymentInstrument *)self->_defaultRemotePaymentInstrument paymentApplications];
  v4 = [paymentApplications countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(paymentApplications);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 supportsInAppPayment])
        {
          state = [v7 state];
          if (state == 1 || state == 15)
          {
            LOBYTE(v4) = 1;
            goto LABEL_15;
          }
        }
      }

      v4 = [paymentApplications countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (int64_t)_deviceTypeForModelIdentifier:(id)identifier
{
  lowercaseString = [identifier lowercaseString];
  if ([lowercaseString containsString:@"watch"])
  {
    v4 = 0;
  }

  else if ([lowercaseString containsString:@"iphone"])
  {
    v4 = 1;
  }

  else if ([lowercaseString containsString:@"mac"])
  {
    v4 = 3;
  }

  else if ([lowercaseString containsString:@"pad"])
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
  uniqueID = [(PKRemoteDevice *)self uniqueID];
  deviceName = [(PKRemoteDevice *)self deviceName];
  v5 = [PKIDSDestination destinationWithDeviceIdentifier:uniqueID name:deviceName];

  return v5;
}

@end