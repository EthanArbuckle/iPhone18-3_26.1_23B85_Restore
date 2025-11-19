@interface CPLPruneRequestCounter
@end

@implementation CPLPruneRequestCounter

void __43___CPLPruneRequestCounter_statusDictionary__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v6 = [v4 countForObject:v5];

  if (v6)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    v7 = *(a1 + 40);
    v8 = [CPLResource descriptionForResourceType:a2];
    [v7 setObject:v9 forKeyedSubscript:v8];
  }
}

void __33___CPLPruneRequestCounter_status__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v6 = [v4 countForObject:v5];

  v7 = *(*(a1 + 32) + 16);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v9 = [v7 countForObject:v8];

  if (!(v6 | v9))
  {
    return;
  }

  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11 = [CPLResource shortDescriptionForResourceType:a2];
  v12 = v11;
  if (v9)
  {
    v13 = [v10 initWithFormat:@"%lu x %@ (+ %lu rejected)", v6, v11, v9];
  }

  else
  {
    v13 = [v10 initWithFormat:@"%lu x %@", v6, v11, v22];
  }

  v23 = v13;

  v14 = *(*(*(a1 + 48) + 8) + 40);
  if (!v14)
  {
    v19 = [v23 mutableCopy];
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    [*(a1 + 40) addObject:*(*(*(a1 + 48) + 8) + 40)];
    v15 = a1 + 56;
    v18 = 1;
    goto LABEL_10;
  }

  [v14 appendFormat:@", %@", v23];
  v15 = a1 + 56;
  if (++*(*(*(a1 + 56) + 8) + 24) == 3)
  {
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;

    v18 = 0;
LABEL_10:
    *(*(*v15 + 8) + 24) = v18;
  }
}

@end