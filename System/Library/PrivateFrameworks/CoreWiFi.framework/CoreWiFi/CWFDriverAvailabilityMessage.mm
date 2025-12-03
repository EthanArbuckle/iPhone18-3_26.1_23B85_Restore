@interface CWFDriverAvailabilityMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDriverAvailabiltyMessage:(id)message;
- (CWFDriverAvailabilityMessage)initWithCoder:(id)coder;
- (CWFDriverAvailabilityMessage)initWithDriverAvailabiltyData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFDriverAvailabilityMessage

- (CWFDriverAvailabilityMessage)initWithDriverAvailabiltyData:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v12.receiver = self;
  v12.super_class = CWFDriverAvailabilityMessage;
  v6 = [(CWFDriverAvailabilityMessage *)&v12 init];
  v7 = v6;
  if (v6)
  {
    [(CWFDriverAvailabilityMessage *)v6 setAvailable:bytes[2] != 0];
    v8 = [MEMORY[0x1E695DF00] now];
    [(CWFDriverAvailabilityMessage *)v7 setTimestamp:v8];

    [(CWFDriverAvailabilityMessage *)v7 setFlags:bytes[1]];
    [(CWFDriverAvailabilityMessage *)v7 setEvent_id:bytes[3]];
    [(CWFDriverAvailabilityMessage *)v7 setReason:bytes[4]];
    v9 = [MEMORY[0x1E696AEC0] stringWithCString:bytes + 7 encoding:134217984];
    [(CWFDriverAvailabilityMessage *)v7 setReasonString:v9];

    [(CWFDriverAvailabilityMessage *)v7 setSub_reason:bytes[5]];
    [(CWFDriverAvailabilityMessage *)v7 setMinor_reason:bytes[6]];
    [(CWFDriverAvailabilityMessage *)v7 setTrapInfoSequenceNum:bytes[61]];
    v10 = [MEMORY[0x1E695DEF0] dataWithData:dataCopy];
    [(CWFDriverAvailabilityMessage *)v7 setRawEventData:v10];
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = sub_1E0BCC248(self->_timestamp);
  v5 = v4;
  if (self->_available)
  {
    v6 = "up";
  }

  else
  {
    v6 = "down";
  }

  minor_reason = self->_minor_reason;
  v8 = [v3 stringWithFormat:@"timestamp=%@ available %s reasonString %@ reason=0x%lX sub_reason=0x%lX minor_reason=0x%lX event_id=0x%lX", v4, v6, self->_reasonString, self->_reason, self->_sub_reason, minor_reason, self->_event_id];

  return v8;
}

- (BOOL)isEqualToDriverAvailabiltyMessage:(id)message
{
  messageCopy = message;
  available = self->_available;
  if (available == [messageCopy available])
  {
    timestamp = self->_timestamp;
    timestamp = [messageCopy timestamp];
    if (timestamp != timestamp)
    {
      if (!self->_timestamp || ([messageCopy timestamp], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v13 = 0;
        goto LABEL_27;
      }

      v3 = v11;
      v12 = self->_timestamp;
      timestamp2 = [messageCopy timestamp];
      if (![(NSDate *)v12 isEqual:timestamp2])
      {
        v13 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    flags = self->_flags;
    if (flags != [messageCopy flags])
    {
      goto LABEL_24;
    }

    event_id = self->_event_id;
    if (event_id != [messageCopy event_id])
    {
      goto LABEL_24;
    }

    reason = self->_reason;
    if (reason != [messageCopy reason])
    {
      goto LABEL_24;
    }

    reasonString = self->_reasonString;
    reasonString = [messageCopy reasonString];
    if (reasonString != reasonString)
    {
      if (!self->_reasonString)
      {
        goto LABEL_29;
      }

      reasonString2 = [messageCopy reasonString];
      if (!reasonString2)
      {
LABEL_23:

LABEL_24:
        v13 = 0;
        goto LABEL_25;
      }

      v5 = reasonString2;
      v20 = self->_reasonString;
      reasonString3 = [messageCopy reasonString];
      v22 = v20;
      v23 = reasonString3;
      if (![(NSString *)v22 isEqual:reasonString3])
      {
        v13 = 0;
LABEL_31:

        goto LABEL_32;
      }

      v28 = v23;
    }

    sub_reason = self->_sub_reason;
    if (sub_reason == [messageCopy sub_reason])
    {
      minor_reason = self->_minor_reason;
      if (minor_reason == [messageCopy minor_reason])
      {
        trapInfoSequenceNum = self->_trapInfoSequenceNum;
        v13 = trapInfoSequenceNum == [messageCopy trapInfoSequenceNum];
        v23 = v28;
        if (reasonString == reasonString)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    if (reasonString != reasonString)
    {

      goto LABEL_23;
    }

LABEL_29:
    v13 = 0;
LABEL_32:

LABEL_25:
    if (timestamp != timestamp)
    {
      goto LABEL_26;
    }

LABEL_27:

    goto LABEL_28;
  }

  v13 = 0;
LABEL_28:

  return v13;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFDriverAvailabilityMessage *)self isEqualToDriverAvailabiltyMessage:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  available = self->_available;
  v4 = [(NSDate *)self->_timestamp hash];
  flags = self->_flags;
  v9 = *&self->_event_id;
  v6 = [(NSString *)self->_reasonString hash];
  v7 = veorq_s8(v9, *&self->_sub_reason);
  return *&veor_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) ^ flags ^ self->_trapInfoSequenceNum ^ v6 ^ v4 ^ available;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFDriverAvailabilityMessage allocWithZone:?]];
  [(CWFDriverAvailabilityMessage *)v4 setAvailable:self->_available];
  [(CWFDriverAvailabilityMessage *)v4 setTimestamp:self->_timestamp];
  [(CWFDriverAvailabilityMessage *)v4 setFlags:self->_flags];
  [(CWFDriverAvailabilityMessage *)v4 setEvent_id:self->_event_id];
  [(CWFDriverAvailabilityMessage *)v4 setReason:self->_reason];
  [(CWFDriverAvailabilityMessage *)v4 setReasonString:self->_reasonString];
  [(CWFDriverAvailabilityMessage *)v4 setSub_reason:self->_sub_reason];
  [(CWFDriverAvailabilityMessage *)v4 setMinor_reason:self->_minor_reason];
  [(CWFDriverAvailabilityMessage *)v4 setTrapInfoSequenceNum:self->_trapInfoSequenceNum];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  available = self->_available;
  coderCopy = coder;
  [coderCopy encodeBool:available forKey:@"_available"];
  [coderCopy encodeObject:self->_timestamp forKey:@"_timestamp"];
  [coderCopy encodeInteger:self->_flags forKey:@"_flags"];
  [coderCopy encodeInteger:self->_event_id forKey:@"_event_id"];
  [coderCopy encodeInteger:self->_reason forKey:@"_reason"];
  [coderCopy encodeObject:self->_reasonString forKey:@"_reasonString"];
  [coderCopy encodeInteger:self->_sub_reason forKey:@"_sub_reason"];
  [coderCopy encodeInteger:self->_minor_reason forKey:@"_minor_reason"];
  [coderCopy encodeInteger:self->_trapInfoSequenceNum forKey:@"_trapInfoSequenceNum"];
}

- (CWFDriverAvailabilityMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CWFDriverAvailabilityMessage;
  v5 = [(CWFDriverAvailabilityMessage *)&v11 init];
  if (v5)
  {
    v5->_available = [coderCopy decodeBoolForKey:@"_available"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    v5->_flags = [coderCopy decodeIntegerForKey:@"_flags"];
    v5->_event_id = [coderCopy decodeIntegerForKey:@"_event_id"];
    v5->_reason = [coderCopy decodeIntegerForKey:@"_reason"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_reasonString"];
    reasonString = v5->_reasonString;
    v5->_reasonString = v8;

    v5->_sub_reason = [coderCopy decodeIntegerForKey:@"_sub_reason"];
    v5->_minor_reason = [coderCopy decodeIntegerForKey:@"_minor_reason"];
    v5->_trapInfoSequenceNum = [coderCopy decodeIntegerForKey:@"_trapInfoSequenceNum"];
  }

  return v5;
}

@end