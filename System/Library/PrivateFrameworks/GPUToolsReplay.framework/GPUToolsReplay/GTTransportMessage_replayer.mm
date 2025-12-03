@interface GTTransportMessage_replayer
- (BOOL)BOOLForKey:(id)key;
- (BOOL)BOOLPayload;
- (GTTransportMessage_replayer)init;
- (GTTransportMessage_replayer)initWithKind:(int)kind attributes:(id)attributes payload:(id)payload;
- (double)doubleForKey:(id)key;
- (id)attributeForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)objectPayload;
- (id)plistPayload;
- (id)stringPayload;
- (unint64_t)uint64ForKey:(id)key;
- (unsigned)uint32ForKey:(id)key;
- (void)_setSerial:(unsigned int)serial replySerial:(unsigned int)replySerial transport:(id)transport;
- (void)dealloc;
@end

@implementation GTTransportMessage_replayer

- (id)objectPayload
{
  v8[10] = *MEMORY[0x277D85DE8];
  if (self->_payload && self->_decodedPayloadType <= 1)
  {
    result = self->_decodedPayload;
    if (!result)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:self->_payload error:0];
      [v5 setDecodingFailurePolicy:0];
      v6 = [MEMORY[0x277CBEB58] set];
      v8[0] = objc_opt_class();
      v8[1] = objc_opt_class();
      v8[2] = objc_opt_class();
      v8[3] = objc_opt_class();
      v8[4] = objc_opt_class();
      v8[5] = objc_opt_class();
      v8[6] = objc_opt_class();
      v8[7] = objc_opt_class();
      v8[8] = objc_opt_class();
      v8[9] = objc_opt_class();
      [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v8, 10)}];
      self->_decodedPayload = [v5 decodeObjectOfClasses:v6 forKey:@"root"];
      [v5 finishDecoding];

      objc_autoreleasePoolPop(v4);
      result = self->_decodedPayload;
      if (result)
      {
        self->_decodedPayloadType = 1;
      }
    }
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)stringPayload
{
  payload = self->_payload;
  if (!payload)
  {
    return 0;
  }

  decodedPayloadType = self->_decodedPayloadType;
  if (decodedPayloadType != 3 && decodedPayloadType != 0)
  {
    return 0;
  }

  result = self->_decodedPayload;
  if (!result)
  {
    result = CFStringCreateFromExternalRepresentation(*MEMORY[0x277CBECE8], payload, 0x8000100u);
    self->_decodedPayload = result;
    if (result)
    {
      self->_decodedPayloadType = 3;
    }
  }

  return result;
}

- (id)plistPayload
{
  payload = self->_payload;
  if (!payload)
  {
    return 0;
  }

  if ((self->_decodedPayloadType | 2) != 2)
  {
    return 0;
  }

  result = self->_decodedPayload;
  if (!result)
  {
    result = CFPropertyListCreateWithData(*MEMORY[0x277CBECE8], payload, 0, 0, 0);
    self->_decodedPayload = result;
    if (result)
    {
      self->_decodedPayloadType = 2;
      v5 = objc_opt_respondsToSelector();
      result = self->_decodedPayload;
      if (v5)
      {
        v6 = [objc_msgSend(result objectForKey:{@"$archiver", "isEqual:", @"NSKeyedArchiver"}];
        result = self->_decodedPayload;
        if (v6)
        {
          [result objectForKey:@"$top"];
          v7 = objc_opt_respondsToSelector();
          result = self->_decodedPayload;
          if (v7)
          {
            v8 = [objc_msgSend(result objectForKey:{@"$top", "objectForKey:", @"root"}];
            result = self->_decodedPayload;
            if (v8)
            {
              v9 = [result objectForKey:@"$version"];
              result = self->_decodedPayload;
              if (v9)
              {
                v10 = [result objectForKey:@"$objects"];
                result = self->_decodedPayload;
                if (v10)
                {

                  result = 0;
                  self->_decodedPayload = 0;
                  self->_decodedPayloadType = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (BOOL)BOOLPayload
{
  payload = self->_payload;
  if (!payload)
  {
    return payload;
  }

  decodedPayloadType = self->_decodedPayloadType;
  if (decodedPayloadType != 5)
  {
    if (decodedPayloadType == 4)
    {
LABEL_7:
      v8 = 0;
      [(NSData *)payload getBytes:&v8 length:1];
      self->_decodedPayloadType = 4;
      LOBYTE(payload) = v8 != 0;
      return payload;
    }

    if (decodedPayloadType)
    {
      goto LABEL_14;
    }

    if ([(NSData *)payload length]== 1)
    {
      payload = self->_payload;
      goto LABEL_7;
    }

    v5 = self->_decodedPayloadType;
    if (!v5)
    {
      decodedPayload = [(GTTransportMessage_replayer *)self objectPayload];
      if (decodedPayload)
      {
        self->_decodedPayloadType = 5;
      }

      goto LABEL_11;
    }

    if (v5 != 5)
    {
LABEL_14:
      LOBYTE(payload) = 0;
      return payload;
    }
  }

  decodedPayload = self->_decodedPayload;
LABEL_11:

  LOBYTE(payload) = [decodedPayload BOOLValue];
  return payload;
}

- (BOOL)BOOLForKey:(id)key
{
  v3 = [(NSDictionary *)[(GTTransportMessage_replayer *)self attributes] objectForKey:key];

  return [v3 BOOLValue];
}

- (double)doubleForKey:(id)key
{
  v3 = [(NSDictionary *)[(GTTransportMessage_replayer *)self attributes] objectForKey:key];

  [v3 doubleValue];
  return result;
}

- (unint64_t)uint64ForKey:(id)key
{
  v3 = [(NSDictionary *)[(GTTransportMessage_replayer *)self attributes] objectForKey:key];

  return [v3 unsignedLongLongValue];
}

- (unsigned)uint32ForKey:(id)key
{
  v3 = [(NSDictionary *)[(GTTransportMessage_replayer *)self attributes] objectForKey:key];

  return [v3 unsignedIntValue];
}

- (id)attributeForKey:(id)key
{
  attributes = [(GTTransportMessage_replayer *)self attributes];

  return [(NSDictionary *)attributes objectForKey:key];
}

- (void)_setSerial:(unsigned int)serial replySerial:(unsigned int)replySerial transport:(id)transport
{
  self->_serial = serial;
  self->_replySerial = replySerial;
  self->_transport = transport;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = GTTransportMessage_replayer;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ kind=0x%x serial=%u, reply serial=%u", -[GTTransportMessage_replayer description](&v3, sel_description), self->_kind, self->_serial, self->_replySerial];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GTTransportMessage_replayer;
  [(GTTransportMessage_replayer *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  kind = self->_kind;
  payload = self->_payload;
  attributes = self->_attributes;

  return [v4 initWithKind:kind attributes:attributes payload:payload];
}

- (GTTransportMessage_replayer)initWithKind:(int)kind attributes:(id)attributes payload:(id)payload
{
  v11.receiver = self;
  v11.super_class = GTTransportMessage_replayer;
  v8 = [(GTTransportMessage_replayer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_kind = kind;
    *&v8->_serial = -1;
    v8->_attributes = attributes;
    v9->_payload = payload;
  }

  return v9;
}

- (GTTransportMessage_replayer)init
{
  [(GTTransportMessage_replayer *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end