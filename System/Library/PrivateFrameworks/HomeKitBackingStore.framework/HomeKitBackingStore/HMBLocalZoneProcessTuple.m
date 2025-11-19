@interface HMBLocalZoneProcessTuple
- (HMBLocalZoneProcessTuple)initWithPreviousContext:(id)a3 mergedContext:(id)a4 updateModel:(id)a5 outputModel:(id)a6 outputBlockRow:(id)a7 recordRow:(unint64_t)a8 itemRow:(unint64_t)a9 modelSchema:(id)a10 modelType:(id)a11 externalID:(id)a12 queryTable:(id)a13;
@end

@implementation HMBLocalZoneProcessTuple

- (HMBLocalZoneProcessTuple)initWithPreviousContext:(id)a3 mergedContext:(id)a4 updateModel:(id)a5 outputModel:(id)a6 outputBlockRow:(id)a7 recordRow:(unint64_t)a8 itemRow:(unint64_t)a9 modelSchema:(id)a10 modelType:(id)a11 externalID:(id)a12 queryTable:(id)a13
{
  v30 = a3;
  v37 = a4;
  v36 = a5;
  v35 = a6;
  v34 = a7;
  v33 = a10;
  v32 = a11;
  v31 = a12;
  v19 = a13;
  v38.receiver = self;
  v38.super_class = HMBLocalZoneProcessTuple;
  v20 = [(HMBLocalZoneProcessTuple *)&v38 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_previousContext, a3);
    objc_storeStrong(&v21->_mergedContext, a4);
    objc_storeStrong(&v21->_outputBlockRow, a7);
    objc_storeStrong(&v21->_outputModel, a6);
    objc_storeStrong(&v21->_updateModel, a5);
    v21->_recordRow = a8;
    v21->_itemRow = a9;
    objc_storeStrong(&v21->_modelSchema, a10);
    objc_storeStrong(&v21->_modelType, a11);
    objc_storeStrong(&v21->_externalID, a12);
    objc_storeStrong(&v21->_queryTable, a13);
    queryTable = v21->_queryTable;
    if (queryTable)
    {
      mergedContext = v21->_mergedContext;
      if (mergedContext)
      {
        [(HMBLocalZoneProcessModelContext *)mergedContext model];
        v25 = v24 = v19;
        v26 = [(HMBLocalSQLQueryTable *)queryTable buildQueriableFieldsForModel:v25];
        encodedQueryableColumns = v21->_encodedQueryableColumns;
        v21->_encodedQueryableColumns = v26;

        v19 = v24;
      }
    }
  }

  return v21;
}

@end