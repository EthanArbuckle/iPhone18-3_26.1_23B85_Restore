@interface PKExpressPassInformation
@end

@implementation PKExpressPassInformation

void __84__PKExpressPassInformation_NanoPassKit__npk_hasImmediateAutomaticSelectionCriterion__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) type];
        v12 = [v11 isEqualToString:@"generic_immediate.type_a"];

        if (v12)
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  *a4 = *(*(*(a1 + 32) + 8) + 24);
  v13 = *MEMORY[0x277D85DE8];
}

void __69__PKExpressPassInformation_NanoPassKit__npk_expressAppletIdentifiers__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  [MEMORY[0x277D37E90] extractApplicationIdentifier:&v3 subcredentialIdentifier:0 fromIdentifiers:a2];
  [*(a1 + 32) pk_safelyAddObject:v3];
}

@end