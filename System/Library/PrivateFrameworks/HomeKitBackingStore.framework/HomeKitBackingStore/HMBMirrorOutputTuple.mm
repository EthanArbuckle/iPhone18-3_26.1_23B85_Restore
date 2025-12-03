@interface HMBMirrorOutputTuple
- (HMBMirrorOutputTuple)initWithOutputBlockRow:(unint64_t)row recordRow:(unint64_t)recordRow model:(id)model queryTable:(id)table externalID:(id)d externalData:(id)data;
- (id)attributeDescriptions;
@end

@implementation HMBMirrorOutputTuple

- (id)attributeDescriptions
{
  v26[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMBMirrorOutputTuple outputBlockRow](self, "outputBlockRow")}];
  v24 = [v3 initWithName:@"Output Block Row" value:v25];
  v26[0] = v24;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMBMirrorOutputTuple recordRow](self, "recordRow")}];
  v22 = [v4 initWithName:@"Record Row" value:v23];
  v26[1] = v22;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  model = [(HMBMirrorOutputTuple *)self model];
  v6 = [v5 initWithName:@"Model" value:model];
  v26[2] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  queryTable = [(HMBMirrorOutputTuple *)self queryTable];
  v9 = [v7 initWithName:@"Query Table" value:queryTable];
  v26[3] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  externalID = [(HMBMirrorOutputTuple *)self externalID];
  hmbDescription = [externalID hmbDescription];
  v13 = [v10 initWithName:@"External ID" value:hmbDescription];
  v26[4] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  externalData = [(HMBMirrorOutputTuple *)self externalData];
  hmbDescription2 = [externalData hmbDescription];
  v17 = [v14 initWithName:@"External Data" value:hmbDescription2];
  v26[5] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (HMBMirrorOutputTuple)initWithOutputBlockRow:(unint64_t)row recordRow:(unint64_t)recordRow model:(id)model queryTable:(id)table externalID:(id)d externalData:(id)data
{
  modelCopy = model;
  tableCopy = table;
  dCopy = d;
  dataCopy = data;
  v22.receiver = self;
  v22.super_class = HMBMirrorOutputTuple;
  v18 = [(HMBMirrorOutputTuple *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_outputBlockRow = row;
    v18->_recordRow = recordRow;
    objc_storeStrong(&v18->_model, model);
    objc_storeStrong(&v19->_queryTable, table);
    objc_storeStrong(&v19->_externalID, d);
    objc_storeStrong(&v19->_externalData, data);
  }

  return v19;
}

@end