@interface FHDatabaseInsertOrUpdateBuilder
- (FHDatabaseInsertOrUpdateBuilder)init;
- (void)addDateValueForField:(id)a3 fieldValue:(id)a4;
- (void)addDecimalNumberValueForField:(id)a3 fieldValue:(id)a4;
- (void)addDoubleValueForField:(id)a3 fieldValue:(double)a4;
- (void)addIntegerValueForField:(id)a3 fieldValue:(int64_t)a4;
- (void)addNumberValueForField:(id)a3 fieldValue:(id)a4;
- (void)addStringValueForField:(id)a3 fieldValue:(id)a4;
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

- (void)addStringValueForField:(id)a3 fieldValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[FHDatabaseInsertFieldValuePair alloc] initWithQuoteWrapOption:v7 fieldValue:v6 quoteWrap:0];

  [(NSMutableArray *)self->_dynamicFieldValuePairList addObject:v8];
}

- (void)addDoubleValueForField:(id)a3 fieldValue:(double)a4
{
  v6 = a3;
  v7 = [FHDatabaseInsertFieldValuePair alloc];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", *&a4];
  v9 = [(FHDatabaseInsertFieldValuePair *)v7 initWithQuoteWrapOption:v6 fieldValue:v8 quoteWrap:0];

  [(NSMutableArray *)self->_dynamicFieldValuePairList addObject:v9];
}

- (void)addDecimalNumberValueForField:(id)a3 fieldValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [FHDatabaseInsertFieldValuePair alloc];
  v9 = [v6 stringValue];

  v10 = [(FHDatabaseInsertFieldValuePair *)v8 initWithQuoteWrapOption:v7 fieldValue:v9 quoteWrap:0];
  [(NSMutableArray *)self->_dynamicFieldValuePairList addObject:v10];
}

- (void)addNumberValueForField:(id)a3 fieldValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [FHDatabaseInsertFieldValuePair alloc];
  v9 = [v6 stringValue];

  v10 = [(FHDatabaseInsertFieldValuePair *)v8 initWithQuoteWrapOption:v7 fieldValue:v9 quoteWrap:0];
  [(NSMutableArray *)self->_dynamicFieldValuePairList addObject:v10];
}

- (void)addIntegerValueForField:(id)a3 fieldValue:(int64_t)a4
{
  v6 = a3;
  v7 = [FHDatabaseInsertFieldValuePair alloc];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a4];
  v9 = [(FHDatabaseInsertFieldValuePair *)v7 initWithQuoteWrapOption:v6 fieldValue:v8 quoteWrap:0];

  [(NSMutableArray *)self->_dynamicFieldValuePairList addObject:v9];
}

- (void)addDateValueForField:(id)a3 fieldValue:(id)a4
{
  v6 = a3;
  [a4 timeIntervalSinceReferenceDate];
  [(FHDatabaseInsertOrUpdateBuilder *)self addDoubleValueForField:v6 fieldValue:?];
}

@end