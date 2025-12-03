@interface HDSimpleGraphAttribute
- (HDSimpleGraphAttribute)init;
- (HDSimpleGraphAttribute)initWithRowID:(int64_t)d type:(int64_t)type value:(id)value nodeID:(int64_t)iD version:(int64_t)version slots:(unint64_t)slots;
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

- (HDSimpleGraphAttribute)initWithRowID:(int64_t)d type:(int64_t)type value:(id)value nodeID:(int64_t)iD version:(int64_t)version slots:(unint64_t)slots
{
  valueCopy = value;
  v15 = valueCopy;
  if (valueCopy == @"hgNULL")
  {
    v16 = 1;
  }

  else
  {
    v16 = [(__CFString *)valueCopy isEqualToString:@"hgNULL"];
  }

  v22.receiver = self;
  v22.super_class = HDSimpleGraphAttribute;
  v17 = [(HDSimpleGraphObject *)&v22 initWithRowID:d version:version slots:slots deleted:v16];
  v18 = v17;
  if (v17)
  {
    v17->_type = type;
    v19 = [(__CFString *)v15 copy];
    value = v18->_value;
    v18->_value = v19;

    v18->_nodeID = iD;
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