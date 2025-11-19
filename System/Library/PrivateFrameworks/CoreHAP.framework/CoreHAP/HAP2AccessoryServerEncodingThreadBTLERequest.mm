@interface HAP2AccessoryServerEncodingThreadBTLERequest
+ (id)attributeDatabaseRequest;
+ (id)executeWriteRequestForCharacteristic:(id)a3 value:(id)a4 options:(int64_t)a5 error:(id *)a6;
+ (id)prepareWriteRequestForCharacteristic:(id)a3 value:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 error:(id *)a8;
+ (id)readRequestForCharacteristic:(id)a3;
+ (id)writeRequestForCharacteristic:(id)a3 value:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 error:(id *)a8;
- (BOOL)expectsResponseBody;
@end

@implementation HAP2AccessoryServerEncodingThreadBTLERequest

- (BOOL)expectsResponseBody
{
  if (![(HAP2AccessoryServerEncodingThreadBTLERequest *)self threadRequestType]|| (v3 = [(HAP2AccessoryServerEncodingThreadBTLERequest *)self threadRequestType]- 9, v3 >= 6))
  {
    v5 = [(HAPBTLERequest *)self type];
    if (v5 <= 8)
    {
      LOBYTE(v4) = 1;
      if (((1 << v5) & 0x1CA) != 0)
      {
        return v4 & 1;
      }

      if (((1 << v5) & 0x24) != 0)
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

+ (id)executeWriteRequestForCharacteristic:(id)a3 value:(id)a4 options:(int64_t)a5 error:(id *)a6
{
  v10 = a4;
  v11 = [_HAPAccessoryServerBTLE200 executeWriteRequestForCharacteristic:a3 options:a5 error:a6];
  if (v11)
  {
    v12 = [HAP2AccessoryServerEncodingThreadBTLERequest alloc];
    v13 = [v11 characteristic];
    v14 = [v11 type];
    v15 = [v11 body];
    v16 = [v11 isEncrypted];
    [v11 timeoutInterval];
    v17 = [(HAPBTLERequest *)v12 initWithCharacteristic:v13 requestType:v14 bodyData:v15 shouldEncrypt:v16 timeoutInterval:?];

    if (v17)
    {
      *(v17 + 88) = a5;
      objc_storeStrong((v17 + 96), a4);
      v18 = v17;
    }

    else if (a6)
    {
      *a6 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)prepareWriteRequestForCharacteristic:(id)a3 value:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 error:(id *)a8
{
  v14 = a4;
  v15 = [_HAPAccessoryServerBTLE200 prepareWriteRequestForCharacteristic:a3 value:v14 authorizationData:a5 contextData:a6 options:a7 error:a8];
  if (v15)
  {
    v16 = [HAP2AccessoryServerEncodingThreadBTLERequest alloc];
    v17 = [v15 characteristic];
    v18 = [v15 type];
    v19 = [v15 body];
    v20 = [v15 isEncrypted];
    [v15 timeoutInterval];
    v21 = [(HAPBTLERequest *)v16 initWithCharacteristic:v17 requestType:v18 bodyData:v19 shouldEncrypt:v20 timeoutInterval:?];

    if (v21)
    {
      *(v21 + 88) = a7;
      objc_storeStrong((v21 + 96), a4);
      v22 = v21;
    }

    else if (a8)
    {
      *a8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)writeRequestForCharacteristic:(id)a3 value:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 error:(id *)a8
{
  v14 = a4;
  v15 = [_HAPAccessoryServerBTLE200 writeRequestForCharacteristic:a3 value:v14 authorizationData:a5 contextData:a6 options:a7 error:a8];
  if (v15)
  {
    v16 = [HAP2AccessoryServerEncodingThreadBTLERequest alloc];
    v17 = [v15 characteristic];
    v18 = [v15 type];
    v19 = [v15 body];
    v20 = [v15 isEncrypted];
    [v15 timeoutInterval];
    v21 = [(HAPBTLERequest *)v16 initWithCharacteristic:v17 requestType:v18 bodyData:v19 shouldEncrypt:v20 timeoutInterval:?];

    if (v21)
    {
      *(v21 + 88) = a7;
      objc_storeStrong((v21 + 96), a4);
      v22 = v21;
    }

    else if (a8)
    {
      *a8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
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

+ (id)readRequestForCharacteristic:(id)a3
{
  v3 = a3;
  v4 = [(HAPBTLERequest *)[HAP2AccessoryServerEncodingThreadBTLERequest alloc] initWithCharacteristic:v3 requestType:3 bodyData:0 shouldEncrypt:1 timeoutInterval:900.0];

  return v4;
}

@end