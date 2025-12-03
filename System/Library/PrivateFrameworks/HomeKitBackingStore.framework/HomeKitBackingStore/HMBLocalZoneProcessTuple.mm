@interface HMBLocalZoneProcessTuple
- (HMBLocalZoneProcessTuple)initWithPreviousContext:(id)context mergedContext:(id)mergedContext updateModel:(id)model outputModel:(id)outputModel outputBlockRow:(id)row recordRow:(unint64_t)recordRow itemRow:(unint64_t)itemRow modelSchema:(id)self0 modelType:(id)self1 externalID:(id)self2 queryTable:(id)self3;
@end

@implementation HMBLocalZoneProcessTuple

- (HMBLocalZoneProcessTuple)initWithPreviousContext:(id)context mergedContext:(id)mergedContext updateModel:(id)model outputModel:(id)outputModel outputBlockRow:(id)row recordRow:(unint64_t)recordRow itemRow:(unint64_t)itemRow modelSchema:(id)self0 modelType:(id)self1 externalID:(id)self2 queryTable:(id)self3
{
  contextCopy = context;
  mergedContextCopy = mergedContext;
  modelCopy = model;
  outputModelCopy = outputModel;
  rowCopy = row;
  schemaCopy = schema;
  typeCopy = type;
  dCopy = d;
  tableCopy = table;
  v38.receiver = self;
  v38.super_class = HMBLocalZoneProcessTuple;
  v20 = [(HMBLocalZoneProcessTuple *)&v38 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_previousContext, context);
    objc_storeStrong(&v21->_mergedContext, mergedContext);
    objc_storeStrong(&v21->_outputBlockRow, row);
    objc_storeStrong(&v21->_outputModel, outputModel);
    objc_storeStrong(&v21->_updateModel, model);
    v21->_recordRow = recordRow;
    v21->_itemRow = itemRow;
    objc_storeStrong(&v21->_modelSchema, schema);
    objc_storeStrong(&v21->_modelType, type);
    objc_storeStrong(&v21->_externalID, d);
    objc_storeStrong(&v21->_queryTable, table);
    queryTable = v21->_queryTable;
    if (queryTable)
    {
      mergedContext = v21->_mergedContext;
      if (mergedContext)
      {
        [(HMBLocalZoneProcessModelContext *)mergedContext model];
        v25 = v24 = tableCopy;
        v26 = [(HMBLocalSQLQueryTable *)queryTable buildQueriableFieldsForModel:v25];
        encodedQueryableColumns = v21->_encodedQueryableColumns;
        v21->_encodedQueryableColumns = v26;

        tableCopy = v24;
      }
    }
  }

  return v21;
}

@end