@interface HDWorkoutEntityEncoder
@end

@implementation HDWorkoutEntityEncoder

void __74___HDWorkoutEntityEncoder_codableRepresentationForPersistentID_row_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v9 = a3;
  v12 = objc_alloc_init(HDCodableWorkoutEvent);
  [(HDCodableWorkoutEvent *)v12 setDate:a4];
  [(HDCodableWorkoutEvent *)v12 setType:a2];
  [(HDCodableWorkoutEvent *)v12 setDuration:a5];
  v10 = [v9 hk_codableMetadata];
  [(HDCodableWorkoutEvent *)v12 setMetadataDictionary:v10];

  v11 = [v9 objectForKey:*MEMORY[0x277CCC518]];

  if (v11)
  {
    -[HDCodableWorkoutEvent setSwimmingStrokeStyle:](v12, "setSwimmingStrokeStyle:", [v11 longLongValue]);
  }

  [*(a1 + 32) addEvents:v12];
}

uint64_t __74___HDWorkoutEntityEncoder_codableRepresentationForPersistentID_row_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 codableRepresentationForSync];
  [v2 addObject:v3];

  return 1;
}

uint64_t __74___HDWorkoutEntityEncoder_applyPropertiesToObject_persistentID_row_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  v8 = [v3 sampleType];
  [v4 setObject:v3 forKeyedSubscript:v8];

  return 1;
}

uint64_t __74___HDWorkoutEntityEncoder_applyPropertiesToObject_persistentID_row_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  v8 = [v3 type];
  v9 = [v4 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = *(*(*(a1 + 32) + 8) + 40);
    v12 = [v3 type];
    [v11 setObject:v10 forKeyedSubscript:v12];
  }

  v13 = *(*(*(a1 + 32) + 8) + 40);
  v14 = [v3 type];
  v15 = [v13 objectForKeyedSubscript:v14];
  [v15 addObject:v3];

  return 1;
}

@end