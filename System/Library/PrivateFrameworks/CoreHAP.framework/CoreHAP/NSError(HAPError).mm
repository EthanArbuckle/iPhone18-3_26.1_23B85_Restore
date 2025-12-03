@interface NSError(HAPError)
+ (id)_userInfoWithDescription:()HAPError reason:suggestion:underlyingError:marker:;
+ (id)errorWithHMErrorCode:()HAPError reason:underlyingError:;
+ (id)errorWithOSStatus:()HAPError;
+ (id)hapErrorWithCode:()HAPError description:reason:suggestion:underlyingError:;
+ (id)hapErrorWithCode:()HAPError description:reason:suggestion:underlyingError:marker:;
+ (id)hapHMErrorWithCode:()HAPError description:reason:suggestion:underlyingError:marker:;
+ (id)hapIPErrorWithCode:()HAPError marker:;
+ (uint64_t)hapErrorWithCode:()HAPError;
+ (uint64_t)hapErrorWithCode:()HAPError marker:;
- (uint64_t)isHAPError;
- (uint64_t)isHAPOperationDelayed;
@end

@implementation NSError(HAPError)

- (uint64_t)isHAPOperationDelayed
{
  result = [self isHAPError];
  if (result)
  {
    return [self code] == 40;
  }

  return result;
}

- (uint64_t)isHAPError
{
  domain = [self domain];
  v2 = [domain isEqualToString:@"HAPErrorDomain"];

  return v2;
}

+ (id)errorWithHMErrorCode:()HAPError reason:underlyingError:
{
  v6 = 0;
  if (a3 > 1000)
  {
    v7 = @"Accessory is calibrating";
    v8 = @"Unknown error code 3202";
    if (a3 != 3202)
    {
      v8 = 0;
    }

    if (a3 != 2405)
    {
      v7 = v8;
    }

    v9 = @"Error parsing HAP metadata";
    v10 = @"Metadata schema version incompatible";
    if (a3 != 1004)
    {
      v10 = 0;
    }

    if (a3 != 1001)
    {
      v9 = v10;
    }

    if (a3 <= 2404)
    {
      v6 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        v6 = @"Object not found";
        break;
      case 3:
        v6 = @"Invalid parameter";
        break;
      case 4:
        v6 = @"Accessory not reachable";
        break;
      case 5:
        v6 = @"Read only characteristic";
        break;
      case 6:
        v6 = @"Write only characteristic";
        break;
      case 7:
        v6 = @"Notification not supported";
        break;
      case 8:
        v6 = @"Operation timed out";
        break;
      case 10:
        v6 = @"Access denied";
        break;
      case 11:
        v6 = @"Object associated with another home";
        break;
      case 14:
        v6 = @"Accessory busy";
        break;
      case 15:
        v6 = @"Operation in progress";
        break;
      case 16:
        v6 = @"Accessory out of resources";
        break;
      case 17:
        v6 = @"Insufficient privileges";
        break;
      case 18:
        v6 = @"Accessory pairing failed";
        break;
      case 20:
        v6 = @"Nil parameter";
        break;
      case 23:
        v6 = @"Operation cancelled";
        break;
      case 27:
        v6 = @"Missing parameter";
        break;
      case 43:
        v6 = @"Invalid value type";
        break;
      case 44:
        v6 = @"Value lower than minimum";
        break;
      case 45:
        v6 = @"Value higher than maximum";
        break;
      case 46:
        v6 = @"String longer than maximum length";
        break;
      case 48:
        v6 = @"Operation is not supported";
        break;
      case 49:
        v6 = @"Maximum number of objects of requested type already exist";
        break;
      case 50:
        v6 = @"Accessory sent an invalid response";
        break;
      case 51:
        v6 = @"String shorter than the minimum length";
        break;
      case 52:
        v6 = @"An unknown error occurred";
        break;
      case 53:
        v6 = @"Security check failed or action not allowed";
        break;
      case 54:
        v6 = @"Network or other communication failure occurred";
        break;
      case 55:
        v6 = @"Authentication failed";
        break;
      case 56:
        v6 = @"Invalid message size";
        break;
      case 57:
        v6 = @"Accessory discovery failed";
        break;
      case 58:
        v6 = @"Client request error when communicating with accessory";
        break;
      case 59:
        v6 = @"Accessory response error when communicating with accessory";
        break;
      case 66:
        v6 = @"Accessory out of compliance";
        break;
      case 79:
        v6 = @"Add accessory failed";
        break;
      case 87:
        v6 = @"Missing or invalid authorization data";
        break;
      case 88:
        v6 = @"Bridged Accessory not reachable";
        break;
      case 96:
        v6 = @"Ownership code did not match.";
        break;
      default:
        break;
    }
  }

  v11 = [MEMORY[0x277CCA9B8] _userInfoWithDescription:v6 reason:a4 suggestion:0 underlyingError:a5 marker:0];
  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMErrorDomain" code:a3 userInfo:v11];

  return v12;
}

+ (id)hapHMErrorWithCode:()HAPError description:reason:suggestion:underlyingError:marker:
{
  v9 = [MEMORY[0x277CCA9B8] _userInfoWithDescription:a4 reason:a5 suggestion:a6 underlyingError:a7 marker:a8];
  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMErrorDomain" code:a3 userInfo:v9];

  return v10;
}

+ (id)hapErrorWithCode:()HAPError description:reason:suggestion:underlyingError:marker:
{
  v9 = [MEMORY[0x277CCA9B8] _userInfoWithDescription:a4 reason:a5 suggestion:a6 underlyingError:a7 marker:a8];
  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:a3 userInfo:v9];

  return v10;
}

+ (id)hapIPErrorWithCode:()HAPError marker:
{
  v5 = [MEMORY[0x277CCA9B8] _userInfoWithDescription:0 reason:0 suggestion:0 underlyingError:0 marker:a4];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:a3 userInfo:v5];

  return v6;
}

+ (uint64_t)hapErrorWithCode:()HAPError marker:
{
  v6 = objc_opt_class();

  return [v6 hapErrorWithCode:a3 description:0 reason:0 suggestion:0 underlyingError:0 marker:a4];
}

+ (uint64_t)hapErrorWithCode:()HAPError
{
  v4 = objc_opt_class();

  return [v4 hapErrorWithCode:a3 description:0 reason:0 suggestion:0 underlyingError:0];
}

+ (id)errorWithOSStatus:()HAPError
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = objc_alloc(MEMORY[0x277CCA9B8]);
    v5 = *MEMORY[0x277CCA590];
    v13 = *MEMORY[0x277CCA450];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v7 = v6;
    v8 = @"?";
    if (v6)
    {
      v8 = v6;
    }

    v14[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v10 = [v4 initWithDomain:v5 code:a3 userInfo:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)hapErrorWithCode:()HAPError description:reason:suggestion:underlyingError:
{
  v8 = [MEMORY[0x277CCA9B8] _userInfoWithDescription:a4 reason:a5 suggestion:a6 underlyingError:a7 marker:0];
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:a3 userInfo:v8];

  return v9;
}

+ (id)_userInfoWithDescription:()HAPError reason:suggestion:underlyingError:marker:
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (v11 || v12 || v13 || v14)
  {
    v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
    if (v11)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v19 = [mainBundle localizedStringForKey:v11 value:&stru_283E79C60 table:0];
      [v17 setObject:v19 forKeyedSubscript:*MEMORY[0x277CCA450]];
    }

    if (v12)
    {
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v21 = [mainBundle2 localizedStringForKey:v12 value:&stru_283E79C60 table:0];
      [v17 setObject:v21 forKeyedSubscript:*MEMORY[0x277CCA470]];
    }

    if (v13)
    {
      mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
      v23 = [mainBundle3 localizedStringForKey:v13 value:&stru_283E79C60 table:0];
      [v17 setObject:v23 forKeyedSubscript:*MEMORY[0x277CCA498]];
    }

    if (v15)
    {
      [v17 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    }

    if (a7)
    {
      v24 = [MEMORY[0x277CCABB0] numberWithInteger:a7];
      [v17 setObject:v24 forKeyedSubscript:*MEMORY[0x277D17D68]];
    }

    v16 = [v17 copy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end