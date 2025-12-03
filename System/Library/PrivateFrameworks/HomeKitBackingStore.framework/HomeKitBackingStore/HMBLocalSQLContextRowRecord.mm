@interface HMBLocalSQLContextRowRecord
- (HMBLocalSQLContextRowRecord)initWithRecordRow:(unint64_t)row externalID:(id)d externalData:(id)data modelID:(id)iD modelEncoding:(unint64_t)encoding modelData:(id)modelData modelSchema:(id)schema modelType:(id)self0 pushEncoding:(unint64_t)self1 pushData:(id)self2 pushBlockRow:(id)self3;
- (HMBLocalSQLContextRowRecord)initWithStatement:(sqlite3_stmt *)statement returning:(unint64_t)returning;
- (id)attributeDescriptions;
@end

@implementation HMBLocalSQLContextRowRecord

- (id)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMBLocalSQLContextRowRecord recordRow](self, "recordRow")}];
  v6 = [v4 initWithName:@"Record Row" value:v5];
  [array addObject:v6];

  externalID = [(HMBLocalSQLContextRowRecord *)self externalID];

  if (externalID)
  {
    v8 = objc_alloc(MEMORY[0x277D0F778]);
    externalID2 = [(HMBLocalSQLContextRowRecord *)self externalID];
    hmbDescription = [externalID2 hmbDescription];
    v11 = [v8 initWithName:@"External ID" value:hmbDescription];
    [array addObject:v11];
  }

  externalData = [(HMBLocalSQLContextRowRecord *)self externalData];

  if (externalData)
  {
    v13 = objc_alloc(MEMORY[0x277D0F778]);
    externalData2 = [(HMBLocalSQLContextRowRecord *)self externalData];
    hmbDescription2 = [externalData2 hmbDescription];
    v16 = [v13 initWithName:@"External Data" value:hmbDescription2];
    [array addObject:v16];
  }

  v17 = objc_alloc(MEMORY[0x277D0F778]);
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMBLocalSQLContextRowRecord modelEncoding](self, "modelEncoding")}];
  v19 = [v17 initWithName:@"Model Encoding" value:v18];
  [array addObject:v19];

  modelID = [(HMBLocalSQLContextRowRecord *)self modelID];

  if (modelID)
  {
    v21 = objc_alloc(MEMORY[0x277D0F778]);
    modelID2 = [(HMBLocalSQLContextRowRecord *)self modelID];
    v23 = [v21 initWithName:@"Model ID" value:modelID2];
    [array addObject:v23];
  }

  modelData = [(HMBLocalSQLContextRowRecord *)self modelData];

  if (modelData)
  {
    v25 = objc_alloc(MEMORY[0x277D0F778]);
    modelData2 = [(HMBLocalSQLContextRowRecord *)self modelData];
    hmbDescription3 = [modelData2 hmbDescription];
    v28 = [v25 initWithName:@"Model Data" value:hmbDescription3];
    [array addObject:v28];
  }

  modelSchema = [(HMBLocalSQLContextRowRecord *)self modelSchema];

  if (modelSchema)
  {
    v30 = objc_alloc(MEMORY[0x277D0F778]);
    modelSchema2 = [(HMBLocalSQLContextRowRecord *)self modelSchema];
    uUIDString = [modelSchema2 UUIDString];
    v33 = [v30 initWithName:@"Model Schema" value:uUIDString];
    [array addObject:v33];
  }

  modelType = [(HMBLocalSQLContextRowRecord *)self modelType];

  if (modelType)
  {
    v35 = objc_alloc(MEMORY[0x277D0F778]);
    modelType2 = [(HMBLocalSQLContextRowRecord *)self modelType];
    v37 = [v35 initWithName:@"Model Type" value:modelType2];
    [array addObject:v37];
  }

  v38 = objc_alloc(MEMORY[0x277D0F778]);
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMBLocalSQLContextRowRecord pushEncoding](self, "pushEncoding")}];
  v40 = [v38 initWithName:@"Push Encoding" value:v39];
  [array addObject:v40];

  pushData = [(HMBLocalSQLContextRowRecord *)self pushData];

  if (pushData)
  {
    v42 = objc_alloc(MEMORY[0x277D0F778]);
    pushData2 = [(HMBLocalSQLContextRowRecord *)self pushData];
    hmbDescription4 = [pushData2 hmbDescription];
    v45 = [v42 initWithName:@"Push Data" value:hmbDescription4];
    [array addObject:v45];
  }

  pushBlockRow = [(HMBLocalSQLContextRowRecord *)self pushBlockRow];

  if (pushBlockRow)
  {
    v47 = objc_alloc(MEMORY[0x277D0F778]);
    pushBlockRow2 = [(HMBLocalSQLContextRowRecord *)self pushBlockRow];
    v49 = [v47 initWithName:@"Push Block Row" value:pushBlockRow2];
    [array addObject:v49];
  }

  v50 = [array copy];

  return v50;
}

- (HMBLocalSQLContextRowRecord)initWithStatement:(sqlite3_stmt *)statement returning:(unint64_t)returning
{
  returningCopy = returning;
  v18 = sqlite3_column_int64(statement, 0);
  if (returningCopy)
  {
    v7 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:statement column:1];
    v6 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:statement column:2];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if ((returningCopy & 2) != 0)
  {
    v8 = sqlite3_column_int64(statement, 3);
    v9 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:statement column:4];
    v10 = [MEMORY[0x277CCAD78] hmbUUIDWithSQLite3Column:statement column:5];
    v11 = [MEMORY[0x277CCACA8] hmbStringWithSQLite3Column:statement column:6];
    if ((returningCopy & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_9;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if ((returningCopy & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v12 = sqlite3_column_int64(statement, 7);
  v13 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:statement column:8];
  v14 = [MEMORY[0x277CCABB0] hmbNumberWithSQLite3Column:statement column:9];
LABEL_9:
  v15 = [MEMORY[0x277CCAD78] hmbUUIDWithSQLite3Column:statement column:10];
  v16 = [(HMBLocalSQLContextRowRecord *)self initWithRecordRow:v18 externalID:v7 externalData:v6 modelID:v15 modelEncoding:v8 modelData:v9 modelSchema:v10 modelType:v11 pushEncoding:v12 pushData:v13 pushBlockRow:v14];

  return v16;
}

- (HMBLocalSQLContextRowRecord)initWithRecordRow:(unint64_t)row externalID:(id)d externalData:(id)data modelID:(id)iD modelEncoding:(unint64_t)encoding modelData:(id)modelData modelSchema:(id)schema modelType:(id)self0 pushEncoding:(unint64_t)self1 pushData:(id)self2 pushBlockRow:(id)self3
{
  dCopy = d;
  dataCopy = data;
  iDCopy = iD;
  modelDataCopy = modelData;
  schemaCopy = schema;
  typeCopy = type;
  pushDataCopy = pushData;
  blockRowCopy = blockRow;
  v31.receiver = self;
  v31.super_class = HMBLocalSQLContextRowRecord;
  v19 = [(HMBLocalSQLContextRowRecord *)&v31 init];
  v20 = v19;
  if (v19)
  {
    v19->_recordRow = row;
    objc_storeStrong(&v19->_externalID, d);
    objc_storeStrong(&v20->_externalData, data);
    objc_storeStrong(&v20->_modelID, iD);
    v20->_modelEncoding = encoding;
    objc_storeStrong(&v20->_modelData, modelData);
    objc_storeStrong(&v20->_modelSchema, schema);
    objc_storeStrong(&v20->_modelType, type);
    v20->_pushEncoding = pushEncoding;
    objc_storeStrong(&v20->_pushData, pushData);
    objc_storeStrong(&v20->_pushBlockRow, blockRow);
  }

  return v20;
}

@end