@interface HAP2AccessoryServerEncodingThreadBTLERequest
+ (id)attributeDatabaseRequest;
+ (id)executeWriteRequestForCharacteristic:(id)characteristic value:(id)value options:(int64_t)options error:(id *)error;
+ (id)prepareWriteRequestForCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data contextData:(id)contextData options:(int64_t)options error:(id *)error;
+ (id)readRequestForCharacteristic:(id)characteristic;
+ (id)writeRequestForCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data contextData:(id)contextData options:(int64_t)options error:(id *)error;
- (BOOL)expectsResponseBody;
@end

@implementation HAP2AccessoryServerEncodingThreadBTLERequest

- (BOOL)expectsResponseBody
{
  if (![(HAP2AccessoryServerEncodingThreadBTLERequest *)self threadRequestType]|| (v3 = [(HAP2AccessoryServerEncodingThreadBTLERequest *)self threadRequestType]- 9, v3 >= 6))
  {
    type = [(HAPBTLERequest *)self type];
    if (type <= 8)
    {
      LOBYTE(v4) = 1;
      if (((1 << type) & 0x1CA) != 0)
      {
        return v4 & 1;
      }

      if (((1 << type) & 0x24) != 0)
      {
        v4 = ([(HAP2AccessoryServerEncodingThreadBTLERequest *)self writeOptions]>> 1) & 1;
        return v4 & 1;
      }
    }

    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  LODWORD(v4) = 0x33u >> v3;
  return v4 & 1;
}

+ (id)executeWriteRequestForCharacteristic:(id)characteristic value:(id)value options:(int64_t)options error:(id *)error
{
  valueCopy = value;
  v11 = [_HAPAccessoryServerBTLE200 executeWriteRequestForCharacteristic:characteristic options:options error:error];
  if (v11)
  {
    v12 = [HAP2AccessoryServerEncodingThreadBTLERequest alloc];
    characteristic = [v11 characteristic];
    type = [v11 type];
    body = [v11 body];
    isEncrypted = [v11 isEncrypted];
    [v11 timeoutInterval];
    v17 = [(HAPBTLERequest *)v12 initWithCharacteristic:characteristic requestType:type bodyData:body shouldEncrypt:isEncrypted timeoutInterval:?];

    if (v17)
    {
      *(v17 + 88) = options;
      objc_storeStrong((v17 + 96), value);
      v18 = v17;
    }

    else if (error)
    {
      *error = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)prepareWriteRequestForCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data contextData:(id)contextData options:(int64_t)options error:(id *)error
{
  valueCopy = value;
  v15 = [_HAPAccessoryServerBTLE200 prepareWriteRequestForCharacteristic:characteristic value:valueCopy authorizationData:data contextData:contextData options:options error:error];
  if (v15)
  {
    v16 = [HAP2AccessoryServerEncodingThreadBTLERequest alloc];
    characteristic = [v15 characteristic];
    type = [v15 type];
    body = [v15 body];
    isEncrypted = [v15 isEncrypted];
    [v15 timeoutInterval];
    v21 = [(HAPBTLERequest *)v16 initWithCharacteristic:characteristic requestType:type bodyData:body shouldEncrypt:isEncrypted timeoutInterval:?];

    if (v21)
    {
      *(v21 + 88) = options;
      objc_storeStrong((v21 + 96), value);
      v22 = v21;
    }

    else if (error)
    {
      *error = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)writeRequestForCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data contextData:(id)contextData options:(int64_t)options error:(id *)error
{
  valueCopy = value;
  v15 = [_HAPAccessoryServerBTLE200 writeRequestForCharacteristic:characteristic value:valueCopy authorizationData:data contextData:contextData options:options error:error];
  if (v15)
  {
    v16 = [HAP2AccessoryServerEncodingThreadBTLERequest alloc];
    characteristic = [v15 characteristic];
    type = [v15 type];
    body = [v15 body];
    isEncrypted = [v15 isEncrypted];
    [v15 timeoutInterval];
    v21 = [(HAPBTLERequest *)v16 initWithCharacteristic:characteristic requestType:type bodyData:body shouldEncrypt:isEncrypted timeoutInterval:?];

    if (v21)
    {
      *(v21 + 88) = options;
      objc_storeStrong((v21 + 96), value);
      v22 = v21;
    }

    else if (error)
    {
      *error = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)attributeDatabaseRequest
{
  v2 = [(HAPBTLERequest *)[HAP2AccessoryServerEncodingThreadBTLERequest alloc] initWithRequestType:9 bodyData:0 shouldEncrypt:1 timeoutInterval:900.0];
  v2->_threadRequestType = 9;

  return v2;
}

+ (id)readRequestForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v4 = [(HAPBTLERequest *)[HAP2AccessoryServerEncodingThreadBTLERequest alloc] initWithCharacteristic:characteristicCopy requestType:3 bodyData:0 shouldEncrypt:1 timeoutInterval:900.0];

  return v4;
}

@end