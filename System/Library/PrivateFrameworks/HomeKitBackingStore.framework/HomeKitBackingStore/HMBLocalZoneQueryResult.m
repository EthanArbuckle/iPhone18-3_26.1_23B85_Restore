@interface HMBLocalZoneQueryResult
+ (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)a3 arguments:(id)a4 zoneBindRowOffset:(int)a5 zoneRow:(unint64_t)a6 error:(id *)a7;
- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)a3 error:(id *)a4;
- (HMBLocalZone)localZone;
- (HMBLocalZoneQueryResult)initWithLocalZone:(id)a3 statement:(id)a4 initialSequence:(id)a5 arguments:(id)a6 maximumRowsPerSelect:(unint64_t)a7;
@end

@implementation HMBLocalZoneQueryResult

- (HMBLocalZone)localZone
{
  WeakRetained = objc_loadWeakRetained(&self->_localZone);

  return WeakRetained;
}

- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)a3 error:(id *)a4
{
  v7 = [(HMBLocalZoneQueryResult *)self arguments];
  v8 = [(HMBLocalZoneQueryResult *)self zoneRowBindOffset];
  v9 = [(HMBLocalZoneQueryResult *)self zoneRow];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ____bindProperties_block_invoke;
  v11[3] = &__block_descriptor_40_e25_v32__0__NSNumber_8_16_B24l;
  v11[4] = a3;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];
  hmbBindIntSQLite3(a3, v8, v9, a4);

  return 1;
}

- (HMBLocalZoneQueryResult)initWithLocalZone:(id)a3 statement:(id)a4 initialSequence:(id)a5 arguments:(id)a6 maximumRowsPerSelect:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v28.receiver = self;
  v28.super_class = HMBLocalZoneQueryResult;
  v16 = [(HMBSQLQueryIterator *)&v28 initWithStatement:v13 initialSequence:v14 maximumRowsPerSelect:a7 error:0];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_4;
  }

  objc_storeWeak(&v16->_localZone, v12);
  v17->_zoneRow = [v12 zoneRow];
  v18 = [v13 arguments];
  v19 = [v18 hmf_numberForKey:@"_store_id"];

  if (v19)
  {
    v17->_zoneRowBindOffset = [v19 intValue];
    objc_storeStrong(&v17->_arguments, a6);

LABEL_4:
    return v17;
  }

  v21 = _HMFPreconditionFailure();
  return [(HMBLocalZoneQueryResult *)v21 bindPropertiesToStatement:v22 arguments:v23 zoneBindRowOffset:v24 zoneRow:v25 error:v26, v27];
}

+ (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)a3 arguments:(id)a4 zoneBindRowOffset:(int)a5 zoneRow:(unint64_t)a6 error:(id *)a7
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ____bindProperties_block_invoke;
  v12[3] = &__block_descriptor_40_e25_v32__0__NSNumber_8_16_B24l;
  v12[4] = a3;
  [a4 enumerateKeysAndObjectsUsingBlock:v12];
  hmbBindIntSQLite3(a3, a5, a6, a7);
  return 1;
}

@end