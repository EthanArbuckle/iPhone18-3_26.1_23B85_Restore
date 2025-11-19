@interface IDSServicePseudonymChange
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPseudonymChange:(id)a3;
- (IDSServicePseudonymChange)initWithPseudonym:(id)a3 changeType:(unint64_t)a4 updateFlags:(int64_t)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSServicePseudonymChange

- (IDSServicePseudonymChange)initWithPseudonym:(id)a3 changeType:(unint64_t)a4 updateFlags:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = IDSServicePseudonymChange;
  v10 = [(IDSServicePseudonymChange *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_pseudonym, a3);
    v11->_changeType = a4;
    v11->_updateFlags = a5;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  changeType = self->_changeType;
  if (changeType > 2)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1E74423E0[changeType];
  }

  updateFlags = self->_updateFlags;
  v9 = _IDSBinaryStringForValue();
  v10 = [v3 stringWithFormat:@"<%@: %p change: %@ updateFlags: %@; pseudonym: %@>", v5, self, v7, v9, self->_pseudonym];;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSServicePseudonymChange *)self isEqualToPseudonymChange:v4];

  return v5;
}

- (BOOL)isEqualToPseudonymChange:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    v5 = [(IDSServicePseudonymChange *)self changeType];
    if (v5 == [(IDSServicePseudonymChange *)v4 changeType])
    {
      v6 = [(IDSServicePseudonymChange *)self pseudonym];
      v7 = [(IDSServicePseudonymChange *)v4 pseudonym];
      if ([v6 isEqualToPseudonym:v7])
      {
        v8 = [(IDSServicePseudonymChange *)self updateFlags];
        v9 = v8 == [(IDSServicePseudonymChange *)v4 updateFlags];
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

- (unint64_t)hash
{
  v3 = [(IDSServicePseudonymChange *)self changeType];
  v4 = [(IDSServicePseudonymChange *)self pseudonym];
  v5 = [v4 hash] - v3 + 32 * v3;

  return [(IDSServicePseudonymChange *)self updateFlags]- v5 + 32 * v5 + 29791;
}

@end