@interface LACDTOSensorTrustVerifyService
- (BOOL)shouldVerifySensorTrustWithFeatureState:(id)a3 trustState:(id)a4;
- (id)verifySensorTrustWithFeatureState:(id)a3 trustState:(id)a4 repairState:(id)a5;
@end

@implementation LACDTOSensorTrustVerifyService

- (BOOL)shouldVerifySensorTrustWithFeatureState:(id)a3 trustState:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 isEnabled])
  {
    if ([v6 isDisapproved])
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
      v11 = [v6 installedSensorID];
      v12 = [v11 length];

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

      v13 = [v6 installedSensorID];
      v14 = [v6 trustedSensorID];
      v15 = [v13 isEqual:v14];

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

      v16 = [v5 requirements];
      v17 = [v16 hasBiometricEnrollments];

      if (!v17)
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

- (id)verifySensorTrustWithFeatureState:(id)a3 trustState:(id)a4 repairState:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [[LACDTOMutableSensorTrustState alloc] initWithTrustState:v8];
  v12 = [(LACDTOSensorTrustVerifyService *)self shouldVerifySensorTrustWithFeatureState:v10 trustState:v8];

  v13 = v8;
  if (v12)
  {
    v14 = [v9 repairFlag];
    v15 = LACLogDTOSensor();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14 == 3)
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