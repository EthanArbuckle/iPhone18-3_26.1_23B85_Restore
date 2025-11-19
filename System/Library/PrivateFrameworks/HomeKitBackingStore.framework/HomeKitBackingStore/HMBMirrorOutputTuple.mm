@interface HMBMirrorOutputTuple
- (HMBMirrorOutputTuple)initWithOutputBlockRow:(unint64_t)a3 recordRow:(unint64_t)a4 model:(id)a5 queryTable:(id)a6 externalID:(id)a7 externalData:(id)a8;
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
  v21 = [(HMBMirrorOutputTuple *)self model];
  v6 = [v5 initWithName:@"Model" value:v21];
  v26[2] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMBMirrorOutputTuple *)self queryTable];
  v9 = [v7 initWithName:@"Query Table" value:v8];
  v26[3] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMBMirrorOutputTuple *)self externalID];
  v12 = [v11 hmbDescription];
  v13 = [v10 initWithName:@"External ID" value:v12];
  v26[4] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = [(HMBMirrorOutputTuple *)self externalData];
  v16 = [v15 hmbDescription];
  v17 = [v14 initWithName:@"External Data" value:v16];
  v26[5] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (HMBMirrorOutputTuple)initWithOutputBlockRow:(unint64_t)a3 recordRow:(unint64_t)a4 model:(id)a5 queryTable:(id)a6 externalID:(id)a7 externalData:(id)a8
{
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v22.receiver = self;
  v22.super_class = HMBMirrorOutputTuple;
  v18 = [(HMBMirrorOutputTuple *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_outputBlockRow = a3;
    v18->_recordRow = a4;
    objc_storeStrong(&v18->_model, a5);
    objc_storeStrong(&v19->_queryTable, a6);
    objc_storeStrong(&v19->_externalID, a7);
    objc_storeStrong(&v19->_externalData, a8);
  }

  return v19;
}

@end