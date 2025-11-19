@interface IDSService(HMUValidation)
- (uint64_t)hmu_validateDestination:()HMUValidation forHome:currentAccessory:options:error:;
- (uint64_t)hmu_validateFromID:()HMUValidation context:currentAccessory:home:options:error:;
@end

@implementation IDSService(HMUValidation)

- (uint64_t)hmu_validateFromID:()HMUValidation context:currentAccessory:home:options:error:
{
  v14 = a3;
  v15 = a6;
  v16 = [a4 senderCorrelationIdentifier];
  if (!v16)
  {
    if (a8)
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = @"Context does not contain Sender Correlation Identifier";
      v20 = 2;
      goto LABEL_8;
    }

    goto LABEL_21;
  }

  v17 = +[HMUDevice isAccessory];
  if (a5 || !v17)
  {
    if (a5 || (a7 & 1) == 0 || ([v15 hmu_isRemoteAccessAllowedForCurrentUser] & 1) != 0)
    {
      v22 = [a1 deviceForFromID:v14];
      if (v22)
      {
        if ([v15 hmu_isCurrentUserOwner])
        {
          v23 = [v15 owner];
LABEL_16:
          if (a5)
          {
            goto LABEL_18;
          }

          v24 = [v23 uniqueIdentifier];
          v25 = [v15 owner];
          v26 = [v25 uniqueIdentifier];
          v27 = [v24 isEqual:v26];

          if (v27)
          {
LABEL_18:
            v21 = 1;
LABEL_30:

            goto LABEL_31;
          }

          if (a8)
          {
            v31 = [MEMORY[0x277CCA9B8] hmu_IDSValidationErrorWithCode:5 description:@"Sender is not owner"];
            goto LABEL_27;
          }

LABEL_29:
          v21 = 0;
          goto LABEL_30;
        }

        if (a8)
        {
          v28 = MEMORY[0x277CCA9B8];
          v29 = @"Received message from a known device but current user is not owner.";
          v30 = 5;
LABEL_26:
          v31 = [v28 hmu_IDSValidationErrorWithCode:v30 description:v29];
          v23 = 0;
LABEL_27:
          v21 = 0;
          *a8 = v31;
          goto LABEL_30;
        }
      }

      else
      {
        v23 = [v15 hmu_userWithSenderCorrelationIdentifier:v16];
        if (v23)
        {
          goto LABEL_16;
        }

        if (a8)
        {
          v28 = MEMORY[0x277CCA9B8];
          v29 = @"User with matching Sender Correlation Identifier Not Found";
          v30 = 6;
          goto LABEL_26;
        }
      }

      v23 = 0;
      goto LABEL_29;
    }

    if (a8)
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = @"Remote Access Not Allowed for Current User";
      v20 = 4;
      goto LABEL_8;
    }

LABEL_21:
    v21 = 0;
    goto LABEL_31;
  }

  if (!a8)
  {
    goto LABEL_21;
  }

  v18 = MEMORY[0x277CCA9B8];
  v19 = @"Device is Accessory but currentAccessory is nil";
  v20 = 3;
LABEL_8:
  [v18 hmu_IDSValidationErrorWithCode:v20 description:v19];
  *a8 = v21 = 0;
LABEL_31:

  return v21;
}

- (uint64_t)hmu_validateDestination:()HMUValidation forHome:currentAccessory:options:error:
{
  v12 = a4;
  v13 = a5;
  v14 = a3;
  v15 = [v12 hmu_userWithDestination:v14];
  v16 = [v12 hmu_accessoryWithDestination:v14 service:a1];

  if (v15 && v16)
  {
    if (a7)
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = @"Destination is not a single recipient";
LABEL_5:
      v19 = 7;
LABEL_29:
      [v17 hmu_IDSValidationErrorWithCode:v19 description:v18];
      *a7 = v25 = 0;
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v20 = +[HMUDevice isAccessory];
  if (!v13 && v20)
  {
    if (a7)
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = @"Device is Accessory but currentAccessory is nil";
      v19 = 3;
      goto LABEL_29;
    }

    goto LABEL_32;
  }

  if (v13)
  {
    v21 = [v12 uniqueIdentifier];
    v22 = [v13 home];
    v23 = [v22 uniqueIdentifier];
    v24 = [v21 isEqual:v23];

    if ((v24 & 1) == 0)
    {
      if (a7)
      {
        v17 = MEMORY[0x277CCA9B8];
        v18 = @"Home does not contain Current Accessory";
        v19 = 8;
        goto LABEL_29;
      }

      goto LABEL_32;
    }

    if (v15)
    {
      if ((a6 & 1) != 0 && ([v12 hmu_isRemoteAccessAllowedForUser:v15] & 1) == 0)
      {
        if (!a7)
        {
          goto LABEL_32;
        }

        v17 = MEMORY[0x277CCA9B8];
        v18 = @"Remote Access Not Allowed for Recipient User";
LABEL_28:
        v19 = 4;
        goto LABEL_29;
      }
    }

    else if (!v16)
    {
      if (a7)
      {
        v17 = MEMORY[0x277CCA9B8];
        v18 = @"No Recipient found for Destination";
        goto LABEL_5;
      }

      goto LABEL_32;
    }
  }

  else
  {
    if ((a6 & 1) != 0 && ([v12 hmu_isRemoteAccessAllowedForCurrentUser] & 1) == 0)
    {
      if (!a7)
      {
        goto LABEL_32;
      }

      v17 = MEMORY[0x277CCA9B8];
      v18 = @"Remote Access Not Allowed for Current User";
      goto LABEL_28;
    }

    if (!v16)
    {
      if (a7)
      {
        v17 = MEMORY[0x277CCA9B8];
        v18 = @"Destination is not an accessory";
        goto LABEL_5;
      }

LABEL_32:
      v25 = 0;
      goto LABEL_33;
    }
  }

  v25 = 1;
LABEL_33:

  return v25;
}

@end