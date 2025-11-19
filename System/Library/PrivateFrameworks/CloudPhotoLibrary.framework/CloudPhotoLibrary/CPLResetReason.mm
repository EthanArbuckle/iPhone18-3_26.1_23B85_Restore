@interface CPLResetReason
- (CPLResetReason)initWithCoder:(id)a3;
- (CPLResetReason)initWithDate:(id)a3 reason:(id)a4;
- (CPLResetReason)initWithPlist:(id)a3;
- (id)asPlist;
- (id)reasonDescriptionWithNow:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLResetReason

- (void)encodeWithCoder:(id)a3
{
  reason = self->_reason;
  v5 = a3;
  [v5 encodeObject:reason forKey:@"r"];
  [v5 encodeObject:self->_date forKey:@"d"];
  [v5 encodeObject:self->_uuid forKey:@"u"];
}

- (CPLResetReason)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"r"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"d"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"u"];

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
    v10 = 0;
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
    v10 = self;
  }

  return v10;
}

- (id)reasonDescriptionWithNow:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  reason = self->_reason;
  v5 = [CPLDateFormatter stringForTimeIntervalAgo:self->_date now:a3];
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

- (CPLResetReason)initWithPlist:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
          v11 = self;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CPLResetReason)initWithDate:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = CPLResetReason;
  v8 = [(CPLResetReason *)&v17 init];
  if (v8)
  {
    v9 = [v7 copy];
    reason = v8->_reason;
    v8->_reason = v9;

    v11 = [v6 copy];
    date = v8->_date;
    v8->_date = v11;

    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];
    uuid = v8->_uuid;
    v8->_uuid = v14;
  }

  return v8;
}

@end