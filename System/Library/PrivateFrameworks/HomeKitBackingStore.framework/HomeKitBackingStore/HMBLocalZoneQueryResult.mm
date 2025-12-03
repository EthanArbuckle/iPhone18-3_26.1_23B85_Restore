@interface HMBLocalZoneQueryResult
+ (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)statement arguments:(id)arguments zoneBindRowOffset:(int)offset zoneRow:(unint64_t)row error:(id *)error;
- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)statement error:(id *)error;
- (HMBLocalZone)localZone;
- (HMBLocalZoneQueryResult)initWithLocalZone:(id)zone statement:(id)statement initialSequence:(id)sequence arguments:(id)arguments maximumRowsPerSelect:(unint64_t)select;
@end

@implementation HMBLocalZoneQueryResult

- (HMBLocalZone)localZone
{
  WeakRetained = objc_loadWeakRetained(&self->_localZone);

  return WeakRetained;
}

- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)statement error:(id *)error
{
  arguments = [(HMBLocalZoneQueryResult *)self arguments];
  zoneRowBindOffset = [(HMBLocalZoneQueryResult *)self zoneRowBindOffset];
  zoneRow = [(HMBLocalZoneQueryResult *)self zoneRow];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ____bindProperties_block_invoke;
  v11[3] = &__block_descriptor_40_e25_v32__0__NSNumber_8_16_B24l;
  v11[4] = statement;
  [arguments enumerateKeysAndObjectsUsingBlock:v11];
  hmbBindIntSQLite3(statement, zoneRowBindOffset, zoneRow, error);

  return 1;
}

- (HMBLocalZoneQueryResult)initWithLocalZone:(id)zone statement:(id)statement initialSequence:(id)sequence arguments:(id)arguments maximumRowsPerSelect:(unint64_t)select
{
  zoneCopy = zone;
  statementCopy = statement;
  sequenceCopy = sequence;
  argumentsCopy = arguments;
  v28.receiver = self;
  v28.super_class = HMBLocalZoneQueryResult;
  v16 = [(HMBSQLQueryIterator *)&v28 initWithStatement:statementCopy initialSequence:sequenceCopy maximumRowsPerSelect:select error:0];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_4;
  }

  objc_storeWeak(&v16->_localZone, zoneCopy);
  v17->_zoneRow = [zoneCopy zoneRow];
  arguments = [statementCopy arguments];
  v19 = [arguments hmf_numberForKey:@"_store_id"];

  if (v19)
  {
    v17->_zoneRowBindOffset = [v19 intValue];
    objc_storeStrong(&v17->_arguments, arguments);

LABEL_4:
    return v17;
  }

  v21 = _HMFPreconditionFailure();
  return [(HMBLocalZoneQueryResult *)v21 bindPropertiesToStatement:v22 arguments:v23 zoneBindRowOffset:v24 zoneRow:v25 error:v26, v27];
}

+ (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)statement arguments:(id)arguments zoneBindRowOffset:(int)offset zoneRow:(unint64_t)row error:(id *)error
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ____bindProperties_block_invoke;
  v12[3] = &__block_descriptor_40_e25_v32__0__NSNumber_8_16_B24l;
  v12[4] = statement;
  [arguments enumerateKeysAndObjectsUsingBlock:v12];
  hmbBindIntSQLite3(statement, offset, row, error);
  return 1;
}

@end