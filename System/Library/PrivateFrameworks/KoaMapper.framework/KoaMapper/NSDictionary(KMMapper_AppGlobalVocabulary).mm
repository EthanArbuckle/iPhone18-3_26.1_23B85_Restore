@interface NSDictionary(KMMapper_AppGlobalVocabulary)
- (id)_collectionValueForKey:()KMMapper_AppGlobalVocabulary collectonType:expectedObjectsType:keyRequired:error:;
- (id)arrayValueForKey:()KMMapper_AppGlobalVocabulary expectedObjectsType:keyRequired:error:;
- (id)setValueForKey:()KMMapper_AppGlobalVocabulary expectedObjectsType:keyRequired:error:;
- (id)stringValueForKey:()KMMapper_AppGlobalVocabulary error:;
@end

@implementation NSDictionary(KMMapper_AppGlobalVocabulary)

- (id)stringValueForKey:()KMMapper_AppGlobalVocabulary error:
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 objectForKey:v4];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      goto LABEL_7;
    }

    v7 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Value for key %@ is not a string", v4, *MEMORY[0x277CCA068]];
    v17 = v8;
    v9 = MEMORY[0x277CBEAC0];
    v10 = &v17;
    v11 = &v16;
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA068];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"No value associated with key: %@", v4];
    v19[0] = v8;
    v9 = MEMORY[0x277CBEAC0];
    v10 = v19;
    v11 = &v18;
  }

  v12 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
  v13 = [v7 errorWithDomain:@"com.apple.siri.koa.mapper" code:9 userInfo:v12];
  KVSetError();

  v6 = 0;
LABEL_7:

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_collectionValueForKey:()KMMapper_AppGlobalVocabulary collectonType:expectedObjectsType:keyRequired:error:
{
  v46[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = [a1 objectForKey:v10];
  if (!v11)
  {
    if (a6)
    {
      v19 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA068];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"No value associated with key: %@", v10];
      v46[0] = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      v22 = [v19 errorWithDomain:@"com.apple.siri.koa.mapper" code:9 userInfo:v21];
      KVSetError();
    }

LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277CCA068];
    v24 = MEMORY[0x277CCACA8];
    v12 = NSStringFromClass(a4);
    v25 = [v24 stringWithFormat:@"Value for key %@ is not of expected class %@", v10, v12];
    v44 = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v27 = [v23 errorWithDomain:@"com.apple.siri.koa.mapper" code:9 userInfo:v26];
    KVSetError();

LABEL_16:
    goto LABEL_17;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v37;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v36 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v28 = MEMORY[0x277CCA9B8];
          v40 = *MEMORY[0x277CCA068];
          v29 = MEMORY[0x277CCACA8];
          v30 = NSStringFromClass(a5);
          v31 = [v29 stringWithFormat:@"Object in collection for key %@ is not of expected class %@", v10, v30, v36];
          v41 = v31;
          v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          v33 = [v28 errorWithDomain:@"com.apple.siri.koa.mapper" code:9 userInfo:v32];
          KVSetError();

          goto LABEL_16;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = v12;
LABEL_18:

  v34 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)setValueForKey:()KMMapper_AppGlobalVocabulary expectedObjectsType:keyRequired:error:
{
  v10 = a3;
  v11 = [a1 _collectionValueForKey:v10 collectonType:objc_opt_class() expectedObjectsType:a4 keyRequired:a5 error:a6];

  return v11;
}

- (id)arrayValueForKey:()KMMapper_AppGlobalVocabulary expectedObjectsType:keyRequired:error:
{
  v10 = a3;
  v11 = [a1 _collectionValueForKey:v10 collectonType:objc_opt_class() expectedObjectsType:a4 keyRequired:a5 error:a6];

  return v11;
}

@end