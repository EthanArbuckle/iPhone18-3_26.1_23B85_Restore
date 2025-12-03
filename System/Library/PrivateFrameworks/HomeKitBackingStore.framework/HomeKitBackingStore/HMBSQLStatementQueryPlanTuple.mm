@interface HMBSQLStatementQueryPlanTuple
- (HMBSQLStatementQueryPlanTuple)initWithRow:(id)row;
- (id)attributeDescriptions;
@end

@implementation HMBSQLStatementQueryPlanTuple

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMBSQLStatementQueryPlanTuple row](self, "row")}];
  v5 = [v3 initWithName:@"Row" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMBSQLStatementQueryPlanTuple parent](self, "parent", v5)}];
  v8 = [v6 initWithName:@"Parent" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  detail = [(HMBSQLStatementQueryPlanTuple *)self detail];
  v11 = [v9 initWithName:@"Detail" value:detail];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (HMBSQLStatementQueryPlanTuple)initWithRow:(id)row
{
  rowCopy = row;
  v11.receiver = self;
  v11.super_class = HMBSQLStatementQueryPlanTuple;
  v5 = [(HMBSQLStatementQueryPlanTuple *)&v11 init];
  if (v5)
  {
    v6 = [rowCopy objectAtIndex:0];
    v5->_row = [v6 intValue];

    v7 = [rowCopy objectAtIndex:1];
    v5->_parent = [v7 intValue];

    v8 = [rowCopy objectAtIndex:3];
    detail = v5->_detail;
    v5->_detail = v8;
  }

  return v5;
}

@end