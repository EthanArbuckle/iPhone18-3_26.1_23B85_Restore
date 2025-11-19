@interface SGNicknames
+ (id)nicknamesForName:(id)a3;
@end

@implementation SGNicknames

+ (id)nicknamesForName:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"SGNicknames.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SGNicknames_nicknamesForName___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (nicknamesForName__onceToken != -1)
  {
    dispatch_once(&nicknamesForName__onceToken, block);
  }

  if (!nicknamesForName__dataFile)
  {
    goto LABEL_16;
  }

  v6 = [SGWords normalizeWord:v5];
  v7 = [v6 UTF8String];
  v8 = v7;
  v9 = *v7;
  if (*v7)
  {
    v10 = v7 + 1;
    v11 = 5381;
    do
    {
      v11 = 33 * v11 + v9;
      v12 = *v10++;
      v9 = v12;
    }

    while (v12);
  }

  else
  {
    v11 = 5381;
  }

  v13 = v11 % nicknamesForName__nicks_0;
  v14 = nicknamesForName__nicks_1;
  v15 = *(nicknamesForName__nicks_1 + 2 * (v11 % nicknamesForName__nicks_0));
  if (!*(nicknamesForName__nicks_1 + 2 * v13))
  {
LABEL_15:

LABEL_16:
    v20 = [MEMORY[0x277CBEB98] set];
    goto LABEL_17;
  }

  v16 = nicknamesForName__nicks_3;
  v17 = nicknamesForName__nicks_2;
  v18 = nicknamesForName__nicks_0 != 1;
  while (1)
  {
    v19 = (v17 + (v15 & 0xFFFFFFFE));
    if (!strcmp(v8, (v16 + v19[1])))
    {
      break;
    }

    v13 += v18;
    v15 = *(v14 + 2 * v13);
    if (!*(v14 + 2 * v13))
    {
      goto LABEL_15;
    }
  }

  v20 = objc_opt_new();
  v22 = *v19 - 1;
  if (*v19 != 1)
  {
    v23 = 0;
    v24 = v19 + 2;
    do
    {
      v25 = *v24++;
      v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:nicknamesForName__nicks_3 + v25 length:strlen((nicknamesForName__nicks_3 + v25)) encoding:4 freeWhenDone:0];
      [v20 addObject:v26];

      ++v23;
    }

    while (v23 < v22);
  }

LABEL_17:

  return v20;
}

void __32__SGNicknames_nicknamesForName___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"nicknames" ofType:@"dat"];

  if (v3)
  {
    v12 = 0;
    v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3 options:1 error:&v12];
    v5 = v12;
    v6 = nicknamesForName__dataFile;
    nicknamesForName__dataFile = v4;
  }

  else
  {
    v5 = 0;
  }

  if (nicknamesForName__dataFile)
  {
    v7 = [nicknamesForName__dataFile bytes];
    v8 = *v7;
    v9 = v7[1];
    nicknamesForName__nicks_0 = (v8 - 8) >> 1;
    nicknamesForName__nicks_1 = (v7 + 2);
    nicknamesForName__nicks_2 = v7 + v8;
    nicknamesForName__nicks_3 = v7 + v9;
  }

  else
  {
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = v3;
      v15 = 2112;
      v16 = v5;
      _os_log_error_impl(&dword_231E60000, v10, OS_LOG_TYPE_ERROR, "Could not load nicknames from %@: %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end