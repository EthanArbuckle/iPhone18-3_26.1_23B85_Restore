@interface HMCharacteristic(HFDebugging)
+ (id)hf_descriptionForProperties:()HFDebugging;
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMCharacteristic(HFDebugging)

+ (id)hf_descriptionForProperties:()HFDebugging
{
  v3 = a3;
  if (_MergedGlobals_232 != -1)
  {
    dispatch_once(&_MergedGlobals_232, &__block_literal_global_268);
  }

  v4 = qword_280E02D68;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HMCharacteristic_HFDebugging__hf_descriptionForProperties___block_invoke_4;
  v10[3] = &unk_277DF5170;
  v11 = v4;
  v5 = v4;
  v6 = [v3 na_map:v10];

  v7 = [v6 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v8 = [v7 componentsJoinedByString:{@", "}];

  return v8;
}

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [a3 copyWithOutputStyle:1];
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  uniqueIdentifier = [self uniqueIdentifier];
  [v5 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  hf_characteristicTypeDescription = [self hf_characteristicTypeDescription];
  [v5 setObject:hf_characteristicTypeDescription forKeyedSubscript:@"type"];

  if ([v4 includeVolatileObjects])
  {
    value = [self value];
    [v5 setObject:value forKeyedSubscript:@"value"];

    hf_formattedValueUpdatedTime = [self hf_formattedValueUpdatedTime];
    [v5 setObject:hf_formattedValueUpdatedTime forKeyedSubscript:@"time"];
  }

  if ([self isNotificationEnabled])
  {
    v10 = @"on";
  }

  else
  {
    v10 = @"off";
  }

  [v5 setObject:v10 forKeyedSubscript:@"notifications"];
  if ([v4 detailLevel] == 2)
  {
    service = [self service];
    v12 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:service withName:@"service" context:v12];

    metadata = [self metadata];
    v14 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:metadata withName:@"metadata" context:v14];

    v15 = objc_opt_class();
    properties = [self properties];
    v17 = [v15 hf_descriptionForProperties:properties];
    [v5 setObject:v17 forKeyedSubscript:@"properties"];

    properties2 = [self properties];
    LODWORD(properties) = [properties2 containsObject:*MEMORY[0x277CCF730]];

    if (properties)
    {
      [v5 appendBool:objc_msgSend(self withName:{"hasAuthorizationData"), @"hasAuthorizationData"}];
    }
  }

  return v5;
}

@end