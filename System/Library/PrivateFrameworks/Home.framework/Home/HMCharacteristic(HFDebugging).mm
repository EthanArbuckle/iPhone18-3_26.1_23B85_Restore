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
  v5 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  v6 = [a1 uniqueIdentifier];
  [v5 appendObject:v6 withName:@"UUID" options:2];

  v7 = [a1 hf_characteristicTypeDescription];
  [v5 setObject:v7 forKeyedSubscript:@"type"];

  if ([v4 includeVolatileObjects])
  {
    v8 = [a1 value];
    [v5 setObject:v8 forKeyedSubscript:@"value"];

    v9 = [a1 hf_formattedValueUpdatedTime];
    [v5 setObject:v9 forKeyedSubscript:@"time"];
  }

  if ([a1 isNotificationEnabled])
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
    v11 = [a1 service];
    v12 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:v11 withName:@"service" context:v12];

    v13 = [a1 metadata];
    v14 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:v13 withName:@"metadata" context:v14];

    v15 = objc_opt_class();
    v16 = [a1 properties];
    v17 = [v15 hf_descriptionForProperties:v16];
    [v5 setObject:v17 forKeyedSubscript:@"properties"];

    v18 = [a1 properties];
    LODWORD(v16) = [v18 containsObject:*MEMORY[0x277CCF730]];

    if (v16)
    {
      [v5 appendBool:objc_msgSend(a1 withName:{"hasAuthorizationData"), @"hasAuthorizationData"}];
    }
  }

  return v5;
}

@end