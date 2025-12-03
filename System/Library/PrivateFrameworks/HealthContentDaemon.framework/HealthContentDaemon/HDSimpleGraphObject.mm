@interface HDSimpleGraphObject
- (BOOL)isEqual:(id)equal;
- (HDSimpleGraphObject)init;
- (HDSimpleGraphObject)initWithRowID:(int64_t)d version:(int64_t)version slots:(unint64_t)slots deleted:(BOOL)deleted;
- (id)description;
@end

@implementation HDSimpleGraphObject

- (HDSimpleGraphObject)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDSimpleGraphObject)initWithRowID:(int64_t)d version:(int64_t)version slots:(unint64_t)slots deleted:(BOOL)deleted
{
  v11.receiver = self;
  v11.super_class = HDSimpleGraphObject;
  result = [(HDSimpleGraphObject *)&v11 init];
  if (result)
  {
    result->_rowID = d;
    result->_version = version;
    result->_slots = slots;
    result->_deleted = deleted;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  slots = self->_slots;
  if (self->_deleted)
  {
    v6 = @": deleted";
  }

  else
  {
    v6 = &stru_28636E7C8;
  }

  return [v3 stringWithFormat:@"%@:%p:%lld:%lld:%llX%@", v4, self, *&self->_rowID, self->_slots, v6];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      rowID = [(HDSimpleGraphObject *)self rowID];
      rowID2 = [(HDSimpleGraphObject *)v5 rowID];

      v8 = rowID == rowID2;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end