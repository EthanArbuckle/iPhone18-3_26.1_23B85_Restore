@interface IDSServicePseudonymChange
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPseudonymChange:(id)change;
- (IDSServicePseudonymChange)initWithPseudonym:(id)pseudonym changeType:(unint64_t)type updateFlags:(int64_t)flags;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSServicePseudonymChange

- (IDSServicePseudonymChange)initWithPseudonym:(id)pseudonym changeType:(unint64_t)type updateFlags:(int64_t)flags
{
  pseudonymCopy = pseudonym;
  v13.receiver = self;
  v13.super_class = IDSServicePseudonymChange;
  v10 = [(IDSServicePseudonymChange *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_pseudonym, pseudonym);
    v11->_changeType = type;
    v11->_updateFlags = flags;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSServicePseudonymChange *)self isEqualToPseudonymChange:equalCopy];

  return v5;
}

- (BOOL)isEqualToPseudonymChange:(id)change
{
  changeCopy = change;
  if (self == changeCopy)
  {
    v9 = 1;
  }

  else
  {
    changeType = [(IDSServicePseudonymChange *)self changeType];
    if (changeType == [(IDSServicePseudonymChange *)changeCopy changeType])
    {
      pseudonym = [(IDSServicePseudonymChange *)self pseudonym];
      pseudonym2 = [(IDSServicePseudonymChange *)changeCopy pseudonym];
      if ([pseudonym isEqualToPseudonym:pseudonym2])
      {
        updateFlags = [(IDSServicePseudonymChange *)self updateFlags];
        v9 = updateFlags == [(IDSServicePseudonymChange *)changeCopy updateFlags];
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
  changeType = [(IDSServicePseudonymChange *)self changeType];
  pseudonym = [(IDSServicePseudonymChange *)self pseudonym];
  v5 = [pseudonym hash] - changeType + 32 * changeType;

  return [(IDSServicePseudonymChange *)self updateFlags]- v5 + 32 * v5 + 29791;
}

@end