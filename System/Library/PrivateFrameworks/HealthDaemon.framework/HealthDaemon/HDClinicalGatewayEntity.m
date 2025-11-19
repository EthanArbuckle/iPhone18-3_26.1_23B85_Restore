@interface HDClinicalGatewayEntity
+ (id)disambiguatedSQLForProperty:(id)a3;
+ (id)uniquedColumns;
@end

@implementation HDClinicalGatewayEntity

+ (id)uniquedColumns
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"external_id";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)disambiguatedSQLForProperty:(id)a3
{
  v4 = a3;
  v5 = @"country";
  if ([v4 isEqualToString:@"country"] || (v5 = @"fhirVersion", objc_msgSend(v4, "isEqualToString:", @"fhirVersion")))
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [a1 disambiguatedDatabaseTable];
    v8 = [v6 stringWithFormat:@"json_extract(%@.raw_content, '$.%@')", v7, v5];
  }

  else
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___HDClinicalGatewayEntity;
    v8 = objc_msgSendSuper2(&v10, sel_disambiguatedSQLForProperty_, v4);
  }

  return v8;
}

@end