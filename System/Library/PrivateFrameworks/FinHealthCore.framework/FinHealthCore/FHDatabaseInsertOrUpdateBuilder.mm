@interface FHDatabaseInsertOrUpdateBuilder
- (FHDatabaseInsertOrUpdateBuilder)init;
- (void)addDateValueForField:(id)field fieldValue:(id)value;
- (void)addDecimalNumberValueForField:(id)field fieldValue:(id)value;
- (void)addDoubleValueForField:(id)field fieldValue:(double)value;
- (void)addIntegerValueForField:(id)field fieldValue:(int64_t)value;
- (void)addNumberValueForField:(id)field fieldValue:(id)value;
- (void)addStringValueForField:(id)field fieldValue:(id)value;
@end

@implementation FHDatabaseInsertOrUpdateBuilder

- (FHDatabaseInsertOrUpdateBuilder)init
{
  v6.receiver = self;
  v6.super_class = FHDatabaseInsertOrUpdateBuilder;
  v2 = [(FHDatabaseInsertOrUpdateBuilder *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dynamicFieldValuePairList = v2->_dynamicFieldValuePairList;
    v2->_dynamicFieldValuePairList = v3;
  }

  return v2;
}

- (void)addStringValueForField:(id)field fieldValue:(id)value
{
  valueCopy = value;
  fieldCopy = field;
  v8 = [[FHDatabaseInsertFieldValuePair alloc] initWithQuoteWrapOption:fieldCopy fieldValue:valueCopy quoteWrap:0];

  [(NSMutableArray *)self->_dynamicFieldValuePairList addObject:v8];
}

- (void)addDoubleValueForField:(id)field fieldValue:(double)value
{
  fieldCopy = field;
  v7 = [FHDatabaseInsertFieldValuePair alloc];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", *&value];
  v9 = [(FHDatabaseInsertFieldValuePair *)v7 initWithQuoteWrapOption:fieldCopy fieldValue:v8 quoteWrap:0];

  [(NSMutableArray *)self->_dynamicFieldValuePairList addObject:v9];
}

- (void)addDecimalNumberValueForField:(id)field fieldValue:(id)value
{
  valueCopy = value;
  fieldCopy = field;
  v8 = [FHDatabaseInsertFieldValuePair alloc];
  stringValue = [valueCopy stringValue];

  v10 = [(FHDatabaseInsertFieldValuePair *)v8 initWithQuoteWrapOption:fieldCopy fieldValue:stringValue quoteWrap:0];
  [(NSMutableArray *)self->_dynamicFieldValuePairList addObject:v10];
}

- (void)addNumberValueForField:(id)field fieldValue:(id)value
{
  valueCopy = value;
  fieldCopy = field;
  v8 = [FHDatabaseInsertFieldValuePair alloc];
  stringValue = [valueCopy stringValue];

  v10 = [(FHDatabaseInsertFieldValuePair *)v8 initWithQuoteWrapOption:fieldCopy fieldValue:stringValue quoteWrap:0];
  [(NSMutableArray *)self->_dynamicFieldValuePairList addObject:v10];
}

- (void)addIntegerValueForField:(id)field fieldValue:(int64_t)value
{
  fieldCopy = field;
  v7 = [FHDatabaseInsertFieldValuePair alloc];
  value = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", value];
  v9 = [(FHDatabaseInsertFieldValuePair *)v7 initWithQuoteWrapOption:fieldCopy fieldValue:value quoteWrap:0];

  [(NSMutableArray *)self->_dynamicFieldValuePairList addObject:v9];
}

- (void)addDateValueForField:(id)field fieldValue:(id)value
{
  fieldCopy = field;
  [value timeIntervalSinceReferenceDate];
  [(FHDatabaseInsertOrUpdateBuilder *)self addDoubleValueForField:fieldCopy fieldValue:?];
}

@end