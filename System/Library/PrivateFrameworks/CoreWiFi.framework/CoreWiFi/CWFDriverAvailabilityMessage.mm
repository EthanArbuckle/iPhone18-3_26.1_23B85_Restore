@interface CWFDriverAvailabilityMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDriverAvailabiltyMessage:(id)a3;
- (CWFDriverAvailabilityMessage)initWithCoder:(id)a3;
- (CWFDriverAvailabilityMessage)initWithDriverAvailabiltyData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFDriverAvailabilityMessage

- (CWFDriverAvailabilityMessage)initWithDriverAvailabiltyData:(id)a3
{
  v4 = a3;
  v5 = [v4 bytes];
  v12.receiver = self;
  v12.super_class = CWFDriverAvailabilityMessage;
  v6 = [(CWFDriverAvailabilityMessage *)&v12 init];
  v7 = v6;
  if (v6)
  {
    [(CWFDriverAvailabilityMessage *)v6 setAvailable:v5[2] != 0];
    v8 = [MEMORY[0x1E695DF00] now];
    [(CWFDriverAvailabilityMessage *)v7 setTimestamp:v8];

    [(CWFDriverAvailabilityMessage *)v7 setFlags:v5[1]];
    [(CWFDriverAvailabilityMessage *)v7 setEvent_id:v5[3]];
    [(CWFDriverAvailabilityMessage *)v7 setReason:v5[4]];
    v9 = [MEMORY[0x1E696AEC0] stringWithCString:v5 + 7 encoding:134217984];
    [(CWFDriverAvailabilityMessage *)v7 setReasonString:v9];

    [(CWFDriverAvailabilityMessage *)v7 setSub_reason:v5[5]];
    [(CWFDriverAvailabilityMessage *)v7 setMinor_reason:v5[6]];
    [(CWFDriverAvailabilityMessage *)v7 setTrapInfoSequenceNum:v5[61]];
    v10 = [MEMORY[0x1E695DEF0] dataWithData:v4];
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

- (BOOL)isEqualToDriverAvailabiltyMessage:(id)a3
{
  v7 = a3;
  available = self->_available;
  if (available == [v7 available])
  {
    timestamp = self->_timestamp;
    v10 = [v7 timestamp];
    if (timestamp != v10)
    {
      if (!self->_timestamp || ([v7 timestamp], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v13 = 0;
        goto LABEL_27;
      }

      v3 = v11;
      v12 = self->_timestamp;
      v4 = [v7 timestamp];
      if (![(NSDate *)v12 isEqual:v4])
      {
        v13 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    flags = self->_flags;
    if (flags != [v7 flags])
    {
      goto LABEL_24;
    }

    event_id = self->_event_id;
    if (event_id != [v7 event_id])
    {
      goto LABEL_24;
    }

    reason = self->_reason;
    if (reason != [v7 reason])
    {
      goto LABEL_24;
    }

    reasonString = self->_reasonString;
    v18 = [v7 reasonString];
    if (reasonString != v18)
    {
      if (!self->_reasonString)
      {
        goto LABEL_29;
      }

      v19 = [v7 reasonString];
      if (!v19)
      {
LABEL_23:

LABEL_24:
        v13 = 0;
        goto LABEL_25;
      }

      v5 = v19;
      v20 = self->_reasonString;
      v21 = [v7 reasonString];
      v22 = v20;
      v23 = v21;
      if (![(NSString *)v22 isEqual:v21])
      {
        v13 = 0;
LABEL_31:

        goto LABEL_32;
      }

      v28 = v23;
    }

    sub_reason = self->_sub_reason;
    if (sub_reason == [v7 sub_reason])
    {
      minor_reason = self->_minor_reason;
      if (minor_reason == [v7 minor_reason])
      {
        trapInfoSequenceNum = self->_trapInfoSequenceNum;
        v13 = trapInfoSequenceNum == [v7 trapInfoSequenceNum];
        v23 = v28;
        if (reasonString == v18)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    if (reasonString != v18)
    {

      goto LABEL_23;
    }

LABEL_29:
    v13 = 0;
LABEL_32:

LABEL_25:
    if (timestamp != v10)
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFDriverAvailabilityMessage *)self isEqualToDriverAvailabiltyMessage:v5];
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

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  available = self->_available;
  v5 = a3;
  [v5 encodeBool:available forKey:@"_available"];
  [v5 encodeObject:self->_timestamp forKey:@"_timestamp"];
  [v5 encodeInteger:self->_flags forKey:@"_flags"];
  [v5 encodeInteger:self->_event_id forKey:@"_event_id"];
  [v5 encodeInteger:self->_reason forKey:@"_reason"];
  [v5 encodeObject:self->_reasonString forKey:@"_reasonString"];
  [v5 encodeInteger:self->_sub_reason forKey:@"_sub_reason"];
  [v5 encodeInteger:self->_minor_reason forKey:@"_minor_reason"];
  [v5 encodeInteger:self->_trapInfoSequenceNum forKey:@"_trapInfoSequenceNum"];
}

- (CWFDriverAvailabilityMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CWFDriverAvailabilityMessage;
  v5 = [(CWFDriverAvailabilityMessage *)&v11 init];
  if (v5)
  {
    v5->_available = [v4 decodeBoolForKey:@"_available"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    v5->_flags = [v4 decodeIntegerForKey:@"_flags"];
    v5->_event_id = [v4 decodeIntegerForKey:@"_event_id"];
    v5->_reason = [v4 decodeIntegerForKey:@"_reason"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_reasonString"];
    reasonString = v5->_reasonString;
    v5->_reasonString = v8;

    v5->_sub_reason = [v4 decodeIntegerForKey:@"_sub_reason"];
    v5->_minor_reason = [v4 decodeIntegerForKey:@"_minor_reason"];
    v5->_trapInfoSequenceNum = [v4 decodeIntegerForKey:@"_trapInfoSequenceNum"];
  }

  return v5;
}

@end