@interface LACDTOSensorTrustVerifyService
- (BOOL)shouldVerifySensorTrustWithFeatureState:(id)state trustState:(id)trustState;
- (id)verifySensorTrustWithFeatureState:(id)state trustState:(id)trustState repairState:(id)repairState;
@end

@implementation LACDTOSensorTrustVerifyService

- (BOOL)shouldVerifySensorTrustWithFeatureState:(id)state trustState:(id)trustState
{
  v20 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  trustStateCopy = trustState;
  if ([stateCopy isEnabled])
  {
    if ([trustStateCopy isDisapproved])
    {
      v7 = LACLogDTOSensor();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = &unk_1F26936E8;
LABEL_7:
        _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Sensor trust verification finished with code: %{public}@", &v18, 0xCu);
      }
    }

    else
    {
      installedSensorID = [trustStateCopy installedSensorID];
      v12 = [installedSensorID length];

      if (!v12)
      {
        v7 = LACLogDTOSensor();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        v18 = 138543362;
        v19 = &unk_1F2693700;
        goto LABEL_7;
      }

      installedSensorID2 = [trustStateCopy installedSensorID];
      trustedSensorID = [trustStateCopy trustedSensorID];
      v15 = [installedSensorID2 isEqual:trustedSensorID];

      if (v15)
      {
        v7 = LACLogDTOSensor();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        v18 = 138543362;
        v19 = &unk_1F2693718;
        goto LABEL_7;
      }

      requirements = [stateCopy requirements];
      hasBiometricEnrollments = [requirements hasBiometricEnrollments];

      if (!hasBiometricEnrollments)
      {
        v8 = 1;
        goto LABEL_9;
      }

      v7 = LACLogDTOSensor();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = &unk_1F2693730;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v7 = LACLogDTOSensor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = &unk_1F26936D0;
      goto LABEL_7;
    }
  }

LABEL_8:

  v8 = 0;
LABEL_9:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)verifySensorTrustWithFeatureState:(id)state trustState:(id)trustState repairState:(id)repairState
{
  v22 = *MEMORY[0x1E69E9840];
  trustStateCopy = trustState;
  repairStateCopy = repairState;
  stateCopy = state;
  v11 = [[LACDTOMutableSensorTrustState alloc] initWithTrustState:trustStateCopy];
  v12 = [(LACDTOSensorTrustVerifyService *)self shouldVerifySensorTrustWithFeatureState:stateCopy trustState:trustStateCopy];

  v13 = trustStateCopy;
  if (v12)
  {
    repairFlag = [repairStateCopy repairFlag];
    v15 = LACLogDTOSensor();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (repairFlag == 3)
    {
      if (v16)
      {
        v20 = 138543362;
        v21 = &unk_1F2693748;
        _os_log_impl(&dword_1B0233000, v15, OS_LOG_TYPE_DEFAULT, "Sensor trust verification finished with code: %{public}@", &v20, 0xCu);
      }

      [(LACDTOMutableSensorTrustState *)v11 disapprove];
    }

    else
    {
      if (v16)
      {
        v20 = 138543362;
        v21 = &unk_1F2693760;
        _os_log_impl(&dword_1B0233000, v15, OS_LOG_TYPE_DEFAULT, "Sensor trust verification finished with code: %{public}@", &v20, 0xCu);
      }
    }

    v13 = v11;
  }

  v17 = v13;

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

@end