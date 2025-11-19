@interface CKEvent
- (BOOL)isEqual:(id)a3;
- (CKEvent)initWithIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 metadata:(id)a6;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation CKEvent

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CKEvent *)self identifier];
  v5 = [(CKEvent *)self startDate];
  v6 = [(CKEvent *)self endDate];
  v7 = [(CKEvent *)self metadata];
  v8 = [v3 stringWithFormat:@"%@[start=%@, end=%@, metadata=%@]", v4, v5, v6, v7];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CKEvent *)self identifier];
  v5 = [(CKEvent *)self startDate];
  v6 = [(CKEvent *)self endDate];
  v7 = [v3 stringWithFormat:@"%@[start=%@, end=%@]", v4, v5, v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSDate *)self->_startDate hash]^ v3;
  return v4 ^ [(NSDate *)self->_endDate hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CKEvent *)self identifier];
      v6 = [(CKEvent *)v4 identifier];
      if ([v5 isEqualToString:v6])
      {
        v7 = [(CKEvent *)self startDate];
        v8 = [(CKEvent *)v4 startDate];
        if ([v7 compare:v8])
        {
          v9 = 0;
        }

        else
        {
          v10 = [(CKEvent *)self endDate];
          v11 = [(CKEvent *)v4 endDate];
          v9 = [v10 compare:v11] == 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (CKEvent)initWithIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 metadata:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = CKEvent;
  v15 = [(CKEvent *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    objc_storeStrong(&v16->_startDate, a4);
    objc_storeStrong(&v16->_endDate, a5);
    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = MEMORY[0x1E695E0F8];
    }

    metadata = v16->_metadata;
    v16->_metadata = v17;
  }

  return v16;
}

@end