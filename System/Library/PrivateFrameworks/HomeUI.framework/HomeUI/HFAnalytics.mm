@interface HFAnalytics
@end

@implementation HFAnalytics

void __113__HFAnalytics_HUAdditions__logAndSendTileInteractionEventOfType_withPresentationContext_presentationCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    v7 = @"NotEmpty";
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v21 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v9 = [*(*(&v20 + 1) + 8 * v8) accessories];
      v10 = [v9 count];

      if (v10)
      {
        break;
      }

      if (v5 == ++v8)
      {
        v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        v7 = @"Empty";
        break;
      }
    }
  }

  else
  {
    v7 = @"Empty";
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 stringWithFormat:@"%@-%@", v13, v7, v20];
  v15 = *(*(a1 + 64) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  [*(a1 + 40) na_safeSetObject:*(*(*(a1 + 64) + 8) + 40) forKey:*MEMORY[0x277D13540]];
  v17 = MEMORY[0x277D143E0];
  v18 = *(a1 + 40);
  v19 = [*(a1 + 48) home];
  [v17 createAndSendWithData:v18 inHome:v19 presentationContext:*(a1 + 56)];
}

@end