@interface CCDeviceRecord
+ (id)genSQLCreateStatements;
+ (id)recordFromDatabaseValueRow:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToItemRecord:(id)a3;
- (CCDeviceRecord)init;
- (CCDeviceRecord)initWithDatabaseValueRow:(id)a3;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation CCDeviceRecord

- (CCDeviceRecord)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

+ (id)recordFromDatabaseValueRow:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithDatabaseValueRow:v3];

  return v4;
}

+ (id)genSQLCreateStatements
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@ integer PRIMARY KEY, %@ blob NOT NULL, %@ varchar NULLABLE, %@ integer NOT NULL, %@ integer NOT NULL, %@ integer NOT NULL, %@ integer NOT NULL, %@ integer NOT NULL, %@ integer NULLABLE)", @"device", @"device_row_id", @"device_uuid", @"ids_device_id", @"device_platform", @"options", @"resource_generation", @"attestation_generation", @"delta_generation", @"expiration_date"];;
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CCDeviceRecord)initWithDatabaseValueRow:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CCDeviceRecord;
  v5 = [(CCDeviceRecord *)&v27 init];
  if (v5)
  {
    v6 = [v4 numberValueAtColumnIndex:0];
    deviceRowId = v5->_deviceRowId;
    v5->_deviceRowId = v6;

    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    v9 = [v4 dataValueAtColumnIndex:1];
    v10 = [v8 initWithUUIDBytes:{objc_msgSend(v9, "bytes")}];
    deviceUUID = v5->_deviceUUID;
    v5->_deviceUUID = v10;

    v12 = [v4 stringValueAtColumnIndex:2];
    idsDeviceId = v5->_idsDeviceId;
    v5->_idsDeviceId = v12;

    v14 = [v4 numberValueAtColumnIndex:3];
    v5->_platform = [v14 integerValue];

    v15 = [v4 numberValueAtColumnIndex:4];
    v5->_recordOptions = [v15 unsignedCharValue];

    v16 = [v4 numberValueAtColumnIndex:5];
    resourceGeneration = v5->_resourceGeneration;
    v5->_resourceGeneration = v16;

    v18 = [v4 numberValueAtColumnIndex:6];
    attestationGeneration = v5->_attestationGeneration;
    v5->_attestationGeneration = v18;

    v20 = [v4 numberValueAtColumnIndex:7];
    deltaGeneration = v5->_deltaGeneration;
    v5->_deltaGeneration = v20;

    v22 = [v4 numberValueAtColumnIndex:8];
    v23 = v22;
    if (v22)
    {
      v24 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v22, "longLongValue") / 1000000.0}];
      expirationDate = v5->_expirationDate;
      v5->_expirationDate = v24;
    }
  }

  return v5;
}

- (NSString)description
{
  v11.receiver = self;
  v11.super_class = CCDeviceRecord;
  v3 = [(CCDeviceRecord *)&v11 description];
  deviceRowId = self->_deviceRowId;
  v5 = [(NSUUID *)self->_deviceUUID UUIDString];
  idsDeviceId = self->_idsDeviceId;
  platform = self->_platform;
  v8 = BMDevicePlatformToString();
  v9 = [v3 stringByAppendingFormat:@" deviceRowId: %@, deviceId: %@ idsDeviceId: %@ platform: %@ recordOptions %X, resourceGeneration: %@, attestationGeneration: %@, deltaGeneration: %@, expiration: %@", deviceRowId, v5, idsDeviceId, v8, self->_recordOptions, self->_resourceGeneration, self->_attestationGeneration, self->_deltaGeneration, self->_expirationDate];

  return v9;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCDeviceRecord *)self isEqualToItemRecord:v5];
  }

  return v6;
}

- (BOOL)isEqualToItemRecord:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    deviceRowId = self->_deviceRowId;
    v7 = [v4 deviceRowId];
    if (![(NSNumber *)deviceRowId isEqual:v7])
    {
      v25 = 0;
LABEL_21:

      goto LABEL_22;
    }

    deviceUUID = self->_deviceUUID;
    v9 = [v5 deviceUUID];
    if (![(NSUUID *)deviceUUID isEqual:v9])
    {
      v25 = 0;
LABEL_20:

      goto LABEL_21;
    }

    idsDeviceId = self->_idsDeviceId;
    v11 = [v5 idsDeviceId];
    if (!-[NSString isEqual:](idsDeviceId, "isEqual:", v11) || (platform = self->_platform, platform != [v5 platform]) || (recordOptions = self->_recordOptions, recordOptions != objc_msgSend(v5, "recordOptions")))
    {
      v25 = 0;
LABEL_19:

      goto LABEL_20;
    }

    resourceGeneration = self->_resourceGeneration;
    v15 = [v5 resourceGeneration];
    if (![(NSNumber *)resourceGeneration isEqual:v15])
    {
      v25 = 0;
LABEL_30:

      goto LABEL_19;
    }

    attestationGeneration = self->_attestationGeneration;
    v17 = [v5 attestationGeneration];
    if (![(NSNumber *)attestationGeneration isEqual:v17])
    {
      v25 = 0;
LABEL_29:

      goto LABEL_30;
    }

    deltaGeneration = self->_deltaGeneration;
    v19 = [v5 deltaGeneration];
    if ([(NSNumber *)deltaGeneration isEqual:v19])
    {
      expirationDate = self->_expirationDate;
      v21 = expirationDate;
      if (!expirationDate)
      {
        v22 = [v5 expirationDate];
        if (!v22)
        {
          v27 = 0;
          v25 = 1;
LABEL_27:

          goto LABEL_28;
        }

        v27 = v22;
        v21 = self->_expirationDate;
      }

      v23 = v21;
      v24 = [v5 expirationDate];
      v25 = [(NSDate *)v23 isEqual:v24];

      if (!expirationDate)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v25 = 0;
    }

LABEL_28:

    goto LABEL_29;
  }

  v25 = 0;
LABEL_22:

  return v25;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_deviceRowId hash];
  v4 = [(NSUUID *)self->_deviceUUID hash]^ v3;
  v5 = v4 ^ [(NSString *)self->_idsDeviceId hash];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_platform];
  v7 = v5 ^ [v6 hash];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_recordOptions];
  v9 = [v8 hash];
  v10 = v7 ^ v9 ^ [(NSNumber *)self->_resourceGeneration hash];
  v11 = [(NSNumber *)self->_attestationGeneration hash];
  v12 = v11 ^ [(NSNumber *)self->_deltaGeneration hash];
  v13 = v12 ^ [(NSDate *)self->_expirationDate hash];

  return v10 ^ v13;
}

@end