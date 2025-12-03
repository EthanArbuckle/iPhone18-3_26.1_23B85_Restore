@interface HDClinicalGatewayEntity
+ (id)disambiguatedSQLForProperty:(id)property;
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

+ (id)disambiguatedSQLForProperty:(id)property
{
  propertyCopy = property;
  v5 = @"country";
  if ([propertyCopy isEqualToString:@"country"] || (v5 = @"fhirVersion", objc_msgSend(propertyCopy, "isEqualToString:", @"fhirVersion")))
  {
    v6 = MEMORY[0x277CCACA8];
    disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
    v8 = [v6 stringWithFormat:@"json_extract(%@.raw_content, '$.%@')", disambiguatedDatabaseTable, v5];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___HDClinicalGatewayEntity;
    v8 = objc_msgSendSuper2(&v10, sel_disambiguatedSQLForProperty_, propertyCopy);
  }

  return v8;
}

@end