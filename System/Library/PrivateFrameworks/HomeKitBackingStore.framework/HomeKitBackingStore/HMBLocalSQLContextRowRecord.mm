@interface HMBLocalSQLContextRowRecord
- (HMBLocalSQLContextRowRecord)initWithRecordRow:(unint64_t)a3 externalID:(id)a4 externalData:(id)a5 modelID:(id)a6 modelEncoding:(unint64_t)a7 modelData:(id)a8 modelSchema:(id)a9 modelType:(id)a10 pushEncoding:(unint64_t)a11 pushData:(id)a12 pushBlockRow:(id)a13;
- (HMBLocalSQLContextRowRecord)initWithStatement:(sqlite3_stmt *)a3 returning:(unint64_t)a4;
- (id)attributeDescriptions;
@end

@implementation HMBLocalSQLContextRowRecord

- (id)attributeDescriptions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMBLocalSQLContextRowRecord recordRow](self, "recordRow")}];
  v6 = [v4 initWithName:@"Record Row" value:v5];
  [v3 addObject:v6];

  v7 = [(HMBLocalSQLContextRowRecord *)self externalID];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D0F778]);
    v9 = [(HMBLocalSQLContextRowRecord *)self externalID];
    v10 = [v9 hmbDescription];
    v11 = [v8 initWithName:@"External ID" value:v10];
    [v3 addObject:v11];
  }

  v12 = [(HMBLocalSQLContextRowRecord *)self externalData];

  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277D0F778]);
    v14 = [(HMBLocalSQLContextRowRecord *)self externalData];
    v15 = [v14 hmbDescription];
    v16 = [v13 initWithName:@"External Data" value:v15];
    [v3 addObject:v16];
  }

  v17 = objc_alloc(MEMORY[0x277D0F778]);
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMBLocalSQLContextRowRecord modelEncoding](self, "modelEncoding")}];
  v19 = [v17 initWithName:@"Model Encoding" value:v18];
  [v3 addObject:v19];

  v20 = [(HMBLocalSQLContextRowRecord *)self modelID];

  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x277D0F778]);
    v22 = [(HMBLocalSQLContextRowRecord *)self modelID];
    v23 = [v21 initWithName:@"Model ID" value:v22];
    [v3 addObject:v23];
  }

  v24 = [(HMBLocalSQLContextRowRecord *)self modelData];

  if (v24)
  {
    v25 = objc_alloc(MEMORY[0x277D0F778]);
    v26 = [(HMBLocalSQLContextRowRecord *)self modelData];
    v27 = [v26 hmbDescription];
    v28 = [v25 initWithName:@"Model Data" value:v27];
    [v3 addObject:v28];
  }

  v29 = [(HMBLocalSQLContextRowRecord *)self modelSchema];

  if (v29)
  {
    v30 = objc_alloc(MEMORY[0x277D0F778]);
    v31 = [(HMBLocalSQLContextRowRecord *)self modelSchema];
    v32 = [v31 UUIDString];
    v33 = [v30 initWithName:@"Model Schema" value:v32];
    [v3 addObject:v33];
  }

  v34 = [(HMBLocalSQLContextRowRecord *)self modelType];

  if (v34)
  {
    v35 = objc_alloc(MEMORY[0x277D0F778]);
    v36 = [(HMBLocalSQLContextRowRecord *)self modelType];
    v37 = [v35 initWithName:@"Model Type" value:v36];
    [v3 addObject:v37];
  }

  v38 = objc_alloc(MEMORY[0x277D0F778]);
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMBLocalSQLContextRowRecord pushEncoding](self, "pushEncoding")}];
  v40 = [v38 initWithName:@"Push Encoding" value:v39];
  [v3 addObject:v40];

  v41 = [(HMBLocalSQLContextRowRecord *)self pushData];

  if (v41)
  {
    v42 = objc_alloc(MEMORY[0x277D0F778]);
    v43 = [(HMBLocalSQLContextRowRecord *)self pushData];
    v44 = [v43 hmbDescription];
    v45 = [v42 initWithName:@"Push Data" value:v44];
    [v3 addObject:v45];
  }

  v46 = [(HMBLocalSQLContextRowRecord *)self pushBlockRow];

  if (v46)
  {
    v47 = objc_alloc(MEMORY[0x277D0F778]);
    v48 = [(HMBLocalSQLContextRowRecord *)self pushBlockRow];
    v49 = [v47 initWithName:@"Push Block Row" value:v48];
    [v3 addObject:v49];
  }

  v50 = [v3 copy];

  return v50;
}

- (HMBLocalSQLContextRowRecord)initWithStatement:(sqlite3_stmt *)a3 returning:(unint64_t)a4
{
  v4 = a4;
  v18 = sqlite3_column_int64(a3, 0);
  if (v4)
  {
    v7 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:a3 column:1];
    v6 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:a3 column:2];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if ((v4 & 2) != 0)
  {
    v8 = sqlite3_column_int64(a3, 3);
    v9 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:a3 column:4];
    v10 = [MEMORY[0x277CCAD78] hmbUUIDWithSQLite3Column:a3 column:5];
    v11 = [MEMORY[0x277CCACA8] hmbStringWithSQLite3Column:a3 column:6];
    if ((v4 & 4) != 0)
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
  if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v12 = sqlite3_column_int64(a3, 7);
  v13 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:a3 column:8];
  v14 = [MEMORY[0x277CCABB0] hmbNumberWithSQLite3Column:a3 column:9];
LABEL_9:
  v15 = [MEMORY[0x277CCAD78] hmbUUIDWithSQLite3Column:a3 column:10];
  v16 = [(HMBLocalSQLContextRowRecord *)self initWithRecordRow:v18 externalID:v7 externalData:v6 modelID:v15 modelEncoding:v8 modelData:v9 modelSchema:v10 modelType:v11 pushEncoding:v12 pushData:v13 pushBlockRow:v14];

  return v16;
}

- (HMBLocalSQLContextRowRecord)initWithRecordRow:(unint64_t)a3 externalID:(id)a4 externalData:(id)a5 modelID:(id)a6 modelEncoding:(unint64_t)a7 modelData:(id)a8 modelSchema:(id)a9 modelType:(id)a10 pushEncoding:(unint64_t)a11 pushData:(id)a12 pushBlockRow:(id)a13
{
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v27 = a8;
  v26 = a9;
  v25 = a10;
  v24 = a12;
  v18 = a13;
  v31.receiver = self;
  v31.super_class = HMBLocalSQLContextRowRecord;
  v19 = [(HMBLocalSQLContextRowRecord *)&v31 init];
  v20 = v19;
  if (v19)
  {
    v19->_recordRow = a3;
    objc_storeStrong(&v19->_externalID, a4);
    objc_storeStrong(&v20->_externalData, a5);
    objc_storeStrong(&v20->_modelID, a6);
    v20->_modelEncoding = a7;
    objc_storeStrong(&v20->_modelData, a8);
    objc_storeStrong(&v20->_modelSchema, a9);
    objc_storeStrong(&v20->_modelType, a10);
    v20->_pushEncoding = a11;
    objc_storeStrong(&v20->_pushData, a12);
    objc_storeStrong(&v20->_pushBlockRow, a13);
  }

  return v20;
}

@end