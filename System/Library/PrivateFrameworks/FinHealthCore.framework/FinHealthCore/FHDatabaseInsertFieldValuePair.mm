@interface FHDatabaseInsertFieldValuePair
- (FHDatabaseInsertFieldValuePair)initWithQuoteWrapOption:(id)a3 fieldValue:(id)a4 quoteWrap:(BOOL)a5;
- (id)description;
@end

@implementation FHDatabaseInsertFieldValuePair

- (FHDatabaseInsertFieldValuePair)initWithQuoteWrapOption:(id)a3 fieldValue:(id)a4 quoteWrap:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = FHDatabaseInsertFieldValuePair;
  v10 = [(FHDatabaseInsertFieldValuePair *)&v20 init];
  if (v10)
  {
    v11 = [v8 copy];
    v12 = [v11 lowercaseString];
    fieldName = v10->_fieldName;
    v10->_fieldName = v12;

    if (a5)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [v9 copy];
      v16 = [v14 stringWithFormat:@"'%@'", v15];
      fieldValue = v10->_fieldValue;
      v10->_fieldValue = v16;
    }

    else
    {
      v18 = [v9 copy];
      v15 = v10->_fieldValue;
      v10->_fieldValue = v18;
    }
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"fieldName: '%@'; ", self->_fieldName];
  [v3 appendFormat:@"fieldValue: '%@'; ", self->_fieldValue];
  [v3 appendFormat:@">"];

  return v3;
}

@end