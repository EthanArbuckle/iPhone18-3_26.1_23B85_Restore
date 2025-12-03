@interface CPLLibraryState
- (BOOL)isEqual:(id)equal;
- (CPLLibraryState)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLLibraryState

- (id)description
{
  if (!self->_disabled)
  {
    v6 = @"[enabled]";
    goto LABEL_9;
  }

  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  disabledDate = self->_disabledDate;
  if (disabledDate)
  {
    v5 = [CPLDateFormatter stringFromDate:self->_disabledDate];
  }

  else
  {
    v5 = @"<no disabled date";
  }

  if (self->_deleteDate)
  {
    v7 = [CPLDateFormatter stringFromDate:?];
    v6 = [v3 initWithFormat:@"[disabled %@ %@]", v5, v7];

    if (!disabledDate)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = [v3 initWithFormat:@"[disabled %@ %@]", v5, @"<no delete date>"];
  if (disabledDate)
  {
LABEL_8:
  }

LABEL_9:

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_disabled != equalCopy->_disabled)
  {
    goto LABEL_7;
  }

  v5 = self->_disabledDate;
  v6 = v5;
  disabledDate = equalCopy->_disabledDate;
  if (v5 && disabledDate)
  {
    v8 = [v5 isEqual:?];

    if ((v8 & 1) == 0)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = v5 | disabledDate;

    if (v11)
    {
      goto LABEL_7;
    }
  }

  v12 = self->_deleteDate;
  v13 = equalCopy->_deleteDate;
  v14 = v13;
  v9 = v12 && v13 && ([v12 isEqual:v13] & 1) != 0 || (v12 | v14) == 0;

LABEL_9:
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CPLLibraryState);
  v4->_disabled = self->_disabled;
  v5 = [(NSDate *)self->_disabledDate copy];
  disabledDate = v4->_disabledDate;
  v4->_disabledDate = v5;

  v7 = [(NSDate *)self->_deleteDate copy];
  deleteDate = v4->_deleteDate;
  v4->_deleteDate = v7;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  disabled = self->_disabled;
  coderCopy = coder;
  [coderCopy encodeBool:disabled forKey:@"dis"];
  [coderCopy encodeObject:self->_disabledDate forKey:@"disDate"];
  [coderCopy encodeObject:self->_deleteDate forKey:@"delDate"];
}

- (CPLLibraryState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CPLLibraryState;
  v5 = [(CPLLibraryState *)&v11 init];
  if (v5)
  {
    v5->_disabled = [coderCopy decodeBoolForKey:@"dis"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disDate"];
    disabledDate = v5->_disabledDate;
    v5->_disabledDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"delDate"];
    deleteDate = v5->_deleteDate;
    v5->_deleteDate = v8;
  }

  return v5;
}

@end