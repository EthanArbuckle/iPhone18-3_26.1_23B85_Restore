@interface HDLocationSeriesSampleEntityEncoder
@end

@implementation HDLocationSeriesSampleEntityEncoder

uint64_t __130___HDLocationSeriesSampleEntityEncoder_generateCodableRepresentationsForPersistentID_row_maxBytesPerRepresentation_error_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 48) + 8) + 24) + 124 > *(a1 + 72))
  {
    v4 = *(*(*(a1 + 56) + 8) + 40);
    v5 = *(*(a1 + 64) + 8);
    obj = *(v5 + 40);
    v6 = (*(*(a1 + 40) + 16))();
    objc_storeStrong((v5 + 40), obj);
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    *(*(*(a1 + 48) + 8) + 24) = 0;
    if (v6 == 1)
    {
LABEL_6:
      v12 = 0;
      goto LABEL_10;
    }

    if (v6 == 2)
    {
      if (!*(*(*(a1 + 64) + 8) + 40))
      {
        v9 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Message send for codable representation reported error status without specifying an error."];
        v10 = *(*(a1 + 64) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;
      }

      goto LABEL_6;
    }
  }

  v13 = *(*(*(a1 + 56) + 8) + 40);
  if (!v13)
  {
    v14 = objc_alloc_init(HDCodableLocationSeries);
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    [*(*(*(a1 + 56) + 8) + 40) setSample:*(a1 + 32)];
    [*(*(*(a1 + 56) + 8) + 40) setFrozen:*(a1 + 88)];
    *(*(*(a1 + 48) + 8) + 24) = *(a1 + 80);
    v13 = *(*(*(a1 + 56) + 8) + 40);
  }

  [v13 addLocationData:v3];
  *(*(*(a1 + 48) + 8) + 24) += 124;
  v12 = 1;
LABEL_10:

  return v12;
}

@end