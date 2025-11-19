@interface PKDeviceSharingCapabilitiesFetchStatus
- (BOOL)hasDeviceVersionWithOSVersionRequirementRange:(id)a3;
- (NSArray)fetchedCapabilities;
- (PKDeviceSharingCapabilitiesFetchStatus)initWithAppleID:(id)a3 fetchStartDate:(id)a4;
- (id)description;
- (int64_t)secondsPassedSinceFetchStart;
@end

@implementation PKDeviceSharingCapabilitiesFetchStatus

- (PKDeviceSharingCapabilitiesFetchStatus)initWithAppleID:(id)a3 fetchStartDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PKDeviceSharingCapabilitiesFetchStatus;
  v9 = [(PKDeviceSharingCapabilitiesFetchStatus *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appleID, a3);
    objc_storeStrong(&v10->_fetchStartDate, a4);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    fetchedCapabilities = v10->_fetchedCapabilities;
    v10->_fetchedCapabilities = v11;
  }

  return v10;
}

- (BOOL)hasDeviceVersionWithOSVersionRequirementRange:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = self->_fetchedCapabilities;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (!v6)
  {
    goto LABEL_32;
  }

  v8 = v6;
  v9 = *v33;
  *&v7 = 138412546;
  v31 = v7;
  do
  {
    v10 = 0;
    do
    {
      if (*v33 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = [*(*(&v32 + 1) + 8 * v10) fromDeviceVersion];
      v12 = [v11 watch];

      if (v12)
      {
        v13 = [v4 versionMeetsRequirements:v11 deviceClass:@"Watch"];
        v14 = PKLogFacilityTypeGetObject(7uLL);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        appleID = self->_appleID;
        v16 = @"NO";
        if (v13)
        {
          v16 = @"YES";
        }

        *buf = v31;
        v37 = v16;
        v38 = 2112;
        v39 = appleID;
        v17 = v14;
        v18 = "Compared version requirements for watch. Meets requirements %@. For appleID: %@";
        goto LABEL_26;
      }

      v19 = [v11 ipad];

      if (v19)
      {
        v13 = [v4 versionMeetsRequirements:v11 deviceClass:@"iPad"];
        v14 = PKLogFacilityTypeGetObject(7uLL);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        v20 = self->_appleID;
        v21 = @"NO";
        if (v13)
        {
          v21 = @"YES";
        }

        *buf = v31;
        v37 = v21;
        v38 = 2112;
        v39 = v20;
        v17 = v14;
        v18 = "Compared version requirements for ipad. Meets requirements %@. For appleID: %@";
        goto LABEL_26;
      }

      v22 = [v11 iphone];

      if (v22)
      {
        v13 = [v4 versionMeetsRequirements:v11 deviceClass:@"iPhone"];
        v14 = PKLogFacilityTypeGetObject(7uLL);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        v23 = self->_appleID;
        v24 = @"NO";
        if (v13)
        {
          v24 = @"YES";
        }

        *buf = v31;
        v37 = v24;
        v38 = 2112;
        v39 = v23;
        v17 = v14;
        v18 = "Compared version requirements for iphone. Meets requirements %@. For appleID: %@";
        goto LABEL_26;
      }

      v25 = [v11 vision];

      if (!v25)
      {

        goto LABEL_28;
      }

      v13 = [v4 versionMeetsRequirements:v11 deviceClass:@"RealityDevice"];
      v14 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v26 = self->_appleID;
        v27 = @"NO";
        if (v13)
        {
          v27 = @"YES";
        }

        *buf = v31;
        v37 = v27;
        v38 = 2112;
        v39 = v26;
        v17 = v14;
        v18 = "Compared version requirements for vision. Meets requirements %@. For appleID: %@";
LABEL_26:
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0x16u);
      }

LABEL_27:

      if (v13)
      {
        v29 = 1;
        goto LABEL_34;
      }

LABEL_28:
      ++v10;
    }

    while (v8 != v10);
    v28 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
    v8 = v28;
  }

  while (v28);
LABEL_32:
  v29 = 0;
LABEL_34:

  return v29;
}

- (NSArray)fetchedCapabilities
{
  v2 = [(NSMutableArray *)self->_fetchedCapabilities copy];

  return v2;
}

- (int64_t)secondsPassedSinceFetchStart
{
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSinceDate:self->_fetchStartDate];
  v5 = v4;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"maximumPossibleDevices: %ld; ", self->_maximumPossibleDevices];
  [v3 appendFormat:@"fetchStartDate: '%@'; ", self->_fetchStartDate];
  [v3 appendFormat:@"fetchError: '%@'; ", self->_fetchError];
  [v3 appendFormat:@"appleID: '%@'; ", self->_appleID];
  [v3 appendFormat:@"fetchedCapabilities: '%@'; ", self->_fetchedCapabilities];
  v4 = [v3 copy];

  return v4;
}

@end