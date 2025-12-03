@interface HMBLocalSQLContextRowBlock
- (HMBLocalSQLContextRowBlock)initWithBlockRow:(unint64_t)row type:(unint64_t)type options:(id)options;
- (id)attributeDescriptions;
@end

@implementation HMBLocalSQLContextRowBlock

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMBLocalSQLContextRowBlock blockRow](self, "blockRow")}];
  v5 = [v3 initWithName:@"Row" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMBLocalSQLContextRowBlock type](self, "type", v5)}];
  v8 = [v6 initWithName:@"Type" value:v7];
  v16[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  optionsData = [(HMBLocalSQLContextRowBlock *)self optionsData];
  if (optionsData)
  {
    v11 = @"<not nil>";
  }

  else
  {
    v11 = @"<nil>";
  }

  v12 = [v9 initWithName:@"Options Data" value:v11];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (HMBLocalSQLContextRowBlock)initWithBlockRow:(unint64_t)row type:(unint64_t)type options:(id)options
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = HMBLocalSQLContextRowBlock;
  v10 = [(HMBLocalSQLContextRowBlock *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_blockRow = row;
    v10->_type = type;
    objc_storeStrong(&v10->_optionsData, options);
  }

  return v11;
}

@end