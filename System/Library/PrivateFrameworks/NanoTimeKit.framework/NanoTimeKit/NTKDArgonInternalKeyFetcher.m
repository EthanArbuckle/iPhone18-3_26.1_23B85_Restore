@interface NTKDArgonInternalKeyFetcher
- (void)fetchNewRecordsSinceChangeToken:(id)a3 forReason:(int64_t)a4 completion:(id)a5;
@end

@implementation NTKDArgonInternalKeyFetcher

- (void)fetchNewRecordsSinceChangeToken:(id)a3 forReason:(int64_t)a4 completion:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a5;
  v7 = NTKFaceSupportInternalDirectory(v5, v6);
  if (v7)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v28 = 0;
    v9 = [v8 contentsOfDirectoryAtPath:v7 error:&v28];
    v10 = v28;

    if (v9)
    {
      v22 = v10;
      v23 = [MEMORY[0x277CBEB58] set];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v25;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = v7;
            v17 = [v7 stringByAppendingPathComponent:*(*(&v24 + 1) + 8 * i)];
            v18 = [MEMORY[0x277CCA8D8] bundleWithPath:v17];
            v19 = [NTKArgonKeyDescriptor unfilteredKeyDescriptorFromBundle:v18];
            if (v19)
            {
              [v23 addObject:v19];
            }

            v7 = v16;
          }

          v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v13);
      }

      v20 = [v23 copy];
      (*(v5 + 2))(v5, v20, 0, 0);

      v10 = v22;
    }

    else
    {
      (*(v5 + 2))(v5, 0, 0, v10);
    }
  }

  else
  {
    v21 = [MEMORY[0x277CBEB98] set];
    (*(v5 + 2))(v5, v21, 0, 0);
  }
}

@end