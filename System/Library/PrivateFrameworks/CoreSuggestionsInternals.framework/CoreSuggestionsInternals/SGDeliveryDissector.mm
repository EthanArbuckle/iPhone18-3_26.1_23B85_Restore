@interface SGDeliveryDissector
- (id)_createEnrichmentsForDetections:(id)a3 entity:(id)a4 foundInString:(id)a5;
- (id)createEnrichmentWithMatch:(id)a3 onParentEntity:(id)a4 foundInString:(id)a5;
- (void)_logDeliverySenderForSenderDomain:(id)a3;
- (void)_logUniqueEnrichments:(id)a3;
- (void)dissectMailMessage:(id)a3 entity:(id)a4 context:(id)a5;
- (void)dissectTextMessage:(id)a3 entity:(id)a4 context:(id)a5;
@end

@implementation SGDeliveryDissector

- (void)_logUniqueEnrichments:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v9 = [v3 _pas_leftFoldWithInitialObject:v4 accumulate:&__block_literal_global_3823];

  v5 = [v9 count];
  if (v5 >= 0xA)
  {
    v6 = 10;
  }

  else
  {
    v6 = v5;
  }

  v7 = +[SGRTCLogging defaultLogger];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SGDelivery_ctNumUniq_%lu", v6];
  [v7 logAggregateSummaryForInteraction:v8];
}

id __45__SGDeliveryDissector__logUniqueEnrichments___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 duplicateKey];
  [v6 entityType];
  IsDelivery = SGEntityTypeIsDelivery();

  if (IsDelivery)
  {
    v8 = [v5 duplicateKey];
    v9 = [v8 deliveryKey];

    v10 = [v9 externalIdentifier];
    v11 = [v4 containsObject:v10];

    if ((v11 & 1) == 0)
    {
      v12 = [v9 externalIdentifier];
      v13 = [v4 setByAddingObject:v12];

      v14 = +[SGRTCLogging defaultLogger];
      v15 = objc_alloc(MEMORY[0x277CCACA8]);
      v16 = [MEMORY[0x277D01F80] stringForProvider:{objc_msgSend(v9, "provider")}];
      v17 = [v15 initWithFormat:@"SGDelivery_pr_%@", v16];
      [v14 logAggregateSummaryForInteraction:v17];

      v4 = v13;
    }

    v18 = v4;
  }

  else
  {
    v18 = v4;
  }

  return v18;
}

- (void)_logDeliverySenderForSenderDomain:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [objc_alloc(MEMORY[0x277D05310]) initWithKey:@"com.apple.suggestions.deliveries.domain"];
    v8[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [v5 record:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dissectTextMessage:(id)a3 entity:(id)a4 context:(id)a5
{
  v14 = a3;
  v7 = a4;
  v8 = [v7 message];
  v9 = [v8 textContent];

  if (v9)
  {
    v10 = [v14 plainTextDetectedData];
    v11 = [(SGDeliveryDissector *)self _createEnrichmentsForDetections:v10 entity:v7 foundInString:v9];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  [v7 addEnrichments:v11];
  v12 = +[SGRTCLogging defaultLogger];
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SGDelivery_ctTxtMsg_%lu", objc_msgSend(v11, "count")];
  [v12 logAggregateSummaryForInteraction:v13];

  [(SGDeliveryDissector *)self _logUniqueEnrichments:v11];
}

- (void)dissectMailMessage:(id)a3 entity:(id)a4 context:(id)a5
{
  v28 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = [v28 subject];
  if (v11)
  {
    v12 = [v28 messageSubjectDetectedData];
    v13 = [(SGDeliveryDissector *)self _createEnrichmentsForDetections:v12 entity:v8 foundInString:v11];
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  [v8 addEnrichments:v13];
  v14 = +[SGRTCLogging defaultLogger];
  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SGDelivery_ctEmlSub_%lu", objc_msgSend(v13, "count")];
  [v14 logAggregateSummaryForInteraction:v15];

  objc_autoreleasePoolPop(v10);
  v16 = objc_autoreleasePoolPush();
  v17 = [v28 textContent];
  if (v17)
  {
    v18 = [v28 plainTextDetectedData];
    v19 = [(SGDeliveryDissector *)self _createEnrichmentsForDetections:v18 entity:v8 foundInString:v17];
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  [v8 addEnrichments:v19];
  v20 = +[SGRTCLogging defaultLogger];
  v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SGDelivery_ctEmlBod_%lu", objc_msgSend(v19, "count")];
  [v20 logAggregateSummaryForInteraction:v21];

  objc_autoreleasePoolPop(v16);
  v22 = objc_autoreleasePoolPush();
  v23 = [v13 count];
  if (v23 + [v19 count])
  {
    v24 = [v28 senderDomain];

    if (v24)
    {
      v25 = [v28 senderDomain];
      [(SGDeliveryDissector *)self _logDeliverySenderForSenderDomain:v25];
    }
  }

  objc_autoreleasePoolPop(v22);
  v26 = objc_autoreleasePoolPush();
  v27 = [v13 arrayByAddingObjectsFromArray:v19];
  [(SGDeliveryDissector *)self _logUniqueEnrichments:v27];

  objc_autoreleasePoolPop(v26);
}

- (id)_createEnrichmentsForDetections:(id)a3 entity:(id)a4 foundInString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__SGDeliveryDissector__createEnrichmentsForDetections_entity_foundInString___block_invoke;
    v13[3] = &unk_27894B678;
    v13[4] = self;
    v14 = v9;
    v15 = v10;
    v11 = [v8 _pas_mappedArrayWithTransform:v13];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

id __76__SGDeliveryDissector__createEnrichmentsForDetections_entity_foundInString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 matchType] == 7)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [*(a1 + 32) createEnrichmentWithMatch:v3 onParentEntity:*(a1 + 40) foundInString:*(a1 + 48)];
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)createEnrichmentWithMatch:(id)a3 onParentEntity:(id)a4 foundInString:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 valueString];
  if (v10)
  {
    v11 = v10;
LABEL_3:
    v12 = [v7 labelString];
    v13 = [v8 duplicateKey];
    v14 = [SGDuplicateKey duplicateKeyForDeliveryWithProviderString:v12 trackingNumber:v11 parentKey:v13];

    v15 = [[SGPipelineEnrichment alloc] initWithDuplicateKey:v14 title:@"DTN" parent:v8];
    [v8 creationTimestamp];
    [(SGPipelineEnrichment *)v15 setCreationTimestamp:?];

    goto LABEL_9;
  }

  [v7 valueRange];
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = [v9 length];
  v25.location = [v7 valueRange];
  v25.length = v18;
  v24.location = 0;
  v24.length = v17;
  v19 = NSIntersectionRange(v24, v25);
  v15 = 0;
  if (v19.location == [v7 valueRange] && v19.length == v20)
  {
    v21 = objc_autoreleasePoolPush();
    v11 = [v9 substringWithRange:{v19.location, v19.length}];
    objc_autoreleasePoolPop(v21);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    v15 = 0;
  }

LABEL_9:

  return v15;
}

@end