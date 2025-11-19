@interface HDSimpleGraphAttribute
- (HDSimpleGraphAttribute)init;
- (HDSimpleGraphAttribute)initWithRowID:(int64_t)a3 type:(int64_t)a4 value:(id)a5 nodeID:(int64_t)a6 version:(int64_t)a7 slots:(unint64_t)a8;
- (id)description;
@end

@implementation HDSimpleGraphAttribute

- (HDSimpleGraphAttribute)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDSimpleGraphAttribute)initWithRowID:(int64_t)a3 type:(int64_t)a4 value:(id)a5 nodeID:(int64_t)a6 version:(int64_t)a7 slots:(unint64_t)a8
{
  v14 = a5;
  v15 = v14;
  if (v14 == @"hgNULL")
  {
    v16 = 1;
  }

  else
  {
    v16 = [(__CFString *)v14 isEqualToString:@"hgNULL"];
  }

  v22.receiver = self;
  v22.super_class = HDSimpleGraphAttribute;
  v17 = [(HDSimpleGraphObject *)&v22 initWithRowID:a3 version:a7 slots:a8 deleted:v16];
  v18 = v17;
  if (v17)
  {
    v17->_type = a4;
    v19 = [(__CFString *)v15 copy];
    value = v18->_value;
    v18->_value = v19;

    v18->_nodeID = a6;
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDSimpleGraphAttribute;
  v4 = [(HDSimpleGraphObject *)&v8 description];
  type = self->_type;
  v6 = [v3 stringWithFormat:@"<%@ %lld->%lld = %@>", v4, self->_nodeID, type, self->_value];

  return v6;
}

@end