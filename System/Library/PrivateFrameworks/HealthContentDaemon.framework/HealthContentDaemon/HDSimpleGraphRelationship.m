@interface HDSimpleGraphRelationship
- (BOOL)isEqual:(id)a3;
- (HDSimpleGraphRelationship)init;
- (HDSimpleGraphRelationship)initWithRowID:(int64_t)a3 subjectID:(int64_t)a4 type:(int64_t)a5 objectID:(int64_t)a6 version:(int64_t)a7 slots:(unint64_t)a8;
- (HDSimpleGraphRelationship)initWithRowID:(int64_t)a3 version:(int64_t)a4 slots:(unint64_t)a5 deleted:(BOOL)a6;
- (id)description;
- (unint64_t)hash;
@end

@implementation HDSimpleGraphRelationship

- (HDSimpleGraphRelationship)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDSimpleGraphRelationship)initWithRowID:(int64_t)a3 version:(int64_t)a4 slots:(unint64_t)a5 deleted:(BOOL)a6
{
  v7 = MEMORY[0x277CBEAD8];
  v8 = *MEMORY[0x277CBE660];
  v9 = NSStringFromSelector(a2);
  [v7 raise:v8 format:{@"The -%@ method is not available on %@", v9, objc_opt_class()}];

  return 0;
}

- (HDSimpleGraphRelationship)initWithRowID:(int64_t)a3 subjectID:(int64_t)a4 type:(int64_t)a5 objectID:(int64_t)a6 version:(int64_t)a7 slots:(unint64_t)a8
{
  v12.receiver = self;
  v12.super_class = HDSimpleGraphRelationship;
  result = [(HDSimpleGraphObject *)&v12 initWithRowID:a3 version:a7 slots:a8 deleted:a6 == 204];
  if (result)
  {
    result->_subjectID = a4;
    result->_type = a5;
    result->_objectID = a6;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDSimpleGraphRelationship;
  v4 = [(HDSimpleGraphObject *)&v8 description];
  type = self->_type;
  v6 = [v3 stringWithFormat:@"<%@ %lld (%lld) %lld>", v4, self->_subjectID, type, self->_objectID];

  return v6;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() hash];
  v4 = [(HDSimpleGraphRelationship *)self type];
  v5 = v4 ^ [(HDSimpleGraphRelationship *)self subjectID]^ v3;
  return v5 ^ [(HDSimpleGraphRelationship *)self objectID];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_type == v5->_type && self->_subjectID == v5->_subjectID && self->_objectID == v5->_objectID;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end