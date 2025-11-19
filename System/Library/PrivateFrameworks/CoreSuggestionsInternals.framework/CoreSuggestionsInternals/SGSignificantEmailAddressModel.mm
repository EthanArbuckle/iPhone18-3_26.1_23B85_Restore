@interface SGSignificantEmailAddressModel
+ (id)newTransformerInstanceForLanguage:(id)a3;
@end

@implementation SGSignificantEmailAddressModel

+ (id)newTransformerInstanceForLanguage:(id)a3
{
  v42[16] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[SGTransformerInstance defaultWindowAndNgrams];
  v41 = [SGTransformerInstance defaultSessionDescriptorForModelId:@"SignificantEmailAddress" featureVersion:@"1.4" language:v3 windowAndNgrams:?];
  v33 = MEMORY[0x277D02570];
  v40 = [SGEntityMatchingTransformer withTargetMapping:@"SG_TARGET_EMAIL" phoneMapping:@"SG_FEATURE_PHONENUMBER" emailMapping:@"SG_FEATURE_EMAIL" addressMapping:@"SG_FEATURE_ADDRESS" andDateMapping:@"SG_FEATURE_DATE"];
  v42[0] = v40;
  v39 = [SGEntityMappingTransformer withEmailMapping:@"SG_FEATURE_EMAIL" linkMapping:@"SG_FEATURE_LINK"];
  v42[1] = v39;
  v38 = [SGTokenizerMappingTransformer forLocale:v3 withPersonalNameMapping:@"SG_FEATURE_FULLNAME"];
  v42[2] = v38;
  v37 = [SGNameMappingTransformer withFullNameMapping:@"SG_FEATURE_FULLNAME" firstNameMapping:@"SG_FEATURE_FIRSTNAME" lastNameMapping:@"SG_FEATURE_LASTNAME" andPossessive:@"SG_POSSESSIVE"];
  v42[3] = v37;
  v36 = [SGSymbolicMappingTransformer withNumericMapping:@"SG_FEATURE_NUMBER" andSymbolicMapping:@"SG_FEATURE_SYMBOL"];
  v42[4] = v36;
  v35 = [SGModelMappingHelper mappingsForType:@"SG_FEATURE_RECENCY" andLanguage:v3];
  v34 = [SGStringMappingTransformer withMappings:v35];
  v42[5] = v34;
  v32 = [SGModelMappingHelper mappingsForType:@"SG_FEATURE_ENTITYTYPE" andLanguage:v3];
  v31 = [SGStringMappingTransformer withMappings:v32];
  v42[6] = v31;
  v30 = [SGModelMappingHelper mappingsForType:@"SG_FEATURE_ADDRESSTYPE" andLanguage:v3];
  v29 = [SGStringMappingTransformer withMappings:v30];
  v42[7] = v29;
  v28 = [SGModelMappingHelper mappingsForType:@"SG_FEATURE_OTHER" andLanguage:v3];
  v27 = [SGStringMappingTransformer withMappings:v28];
  v42[8] = v27;
  v26 = [SGModelMappingHelper mappingsForType:@"SG_FEATURE_EMAILTYPE" andLanguage:v3];
  v25 = [SGStringMappingTransformer withMappings:v26];
  v42[9] = v25;
  v23 = [SGModelMappingHelper mappingsForType:@"SG_FEATURE_CALLTYPE" andLanguage:v3];
  v22 = [SGStringMappingTransformer withMappings:v23];
  v42[10] = v22;
  v21 = [SGModelMappingHelper mappingsForType:@"SG_FEATURE_PHONETYPE" andLanguage:v3];
  v20 = [SGStringMappingTransformer withMappings:v21];
  v42[11] = v20;
  v5 = [SGModelMappingHelper mappingsForType:@"SG_FEATURE_BELONGINGTO" andLanguage:v3];
  v6 = [SGStringMappingTransformer withMappings:v5];
  v42[12] = v6;
  v7 = [SGModelMappingHelper mappingsForType:@"SG_FEATURE_BELONGING" andLanguage:v3];

  v8 = [SGStringMappingTransformer withMappings:v7];
  v42[13] = v8;
  v9 = v4;
  v24 = v4;
  v10 = [v4 first];
  v11 = +[SGTokenDistanceMappingTransformer withTarget:maxDistance:](SGTokenDistanceMappingTransformer, "withTarget:maxDistance:", @"SG_TARGET_EMAIL", [v10 unsignedIntegerValue]);
  v42[14] = v11;
  v12 = MEMORY[0x277D41F28];
  v13 = [v9 second];
  v14 = [v12 withBucketSize:10000 andNgrams:{objc_msgSend(v13, "intValue")}];
  v42[15] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:16];
  v16 = [v33 withTransformers:v15];

  v17 = [[SGTransformerInstance alloc] initWithTransformer:v16 sessionDescriptor:v41 modelClass:objc_opt_class()];
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

@end