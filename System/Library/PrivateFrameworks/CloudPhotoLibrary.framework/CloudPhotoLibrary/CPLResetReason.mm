@interface CPLResetReason
- (CPLResetReason)initWithCoder:(id)coder;
- (CPLResetReason)initWithDate:(id)date reason:(id)reason;
- (CPLResetReason)initWithPlist:(id)plist;
- (id)asPlist;
- (id)reasonDescriptionWithNow:(id)now;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLResetReason

- (void)encodeWithCoder:(id)coder
{
  reason = self->_reason;
  coderCopy = coder;
  [coderCopy encodeObject:reason forKey:@"r"];
  [coderCopy encodeObject:self->_date forKey:@"d"];
  [coderCopy encodeObject:self->_uuid forKey:@"u"];
}

- (CPLResetReason)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"r"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"u"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    selfCopy = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CPLResetReason;
    v11 = [(CPLResetReason *)&v14 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_reason, v5);
      objc_storeStrong(p_isa + 3, v6);
      objc_storeStrong(p_isa + 2, v7);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)reasonDescriptionWithNow:(id)now
{
  v3 = MEMORY[0x1E696AEC0];
  reason = self->_reason;
  v5 = [CPLDateFormatter stringForTimeIntervalAgo:self->_date now:now];
  v6 = [v3 stringWithFormat:@"%@ - %@", reason, v5];

  return v6;
}

- (id)asPlist
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7[0] = @"reason";
  v7[1] = @"date";
  date = self->_date;
  uuid = self->_uuid;
  v8[0] = self->_reason;
  v8[1] = date;
  v7[2] = @"uuid";
  v8[2] = uuid;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (CPLResetReason)initWithPlist:(id)plist
{
  plistCopy = plist;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = plistCopy;
    v6 = [v5 objectForKeyedSubscript:@"reason"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v5 objectForKeyedSubscript:@"uuid"];
      if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v8 = [v5 objectForKeyedSubscript:@"date"];
        if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v13.receiver = self;
          v13.super_class = CPLResetReason;
          v9 = [(CPLResetReason *)&v13 init];
          p_isa = &v9->super.isa;
          if (v9)
          {
            objc_storeStrong(&v9->_reason, v6);
            objc_storeStrong(p_isa + 3, v8);
            objc_storeStrong(p_isa + 2, v7);
          }

          self = p_isa;
          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CPLResetReason)initWithDate:(id)date reason:(id)reason
{
  dateCopy = date;
  reasonCopy = reason;
  v17.receiver = self;
  v17.super_class = CPLResetReason;
  v8 = [(CPLResetReason *)&v17 init];
  if (v8)
  {
    v9 = [reasonCopy copy];
    reason = v8->_reason;
    v8->_reason = v9;

    v11 = [dateCopy copy];
    date = v8->_date;
    v8->_date = v11;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    uuid = v8->_uuid;
    v8->_uuid = uUIDString;
  }

  return v8;
}

@end