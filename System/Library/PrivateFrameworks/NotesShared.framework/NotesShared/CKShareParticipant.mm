@interface CKShareParticipant
@end

@implementation CKShareParticipant

void __50__CKShareParticipant_IC__ic_mentionableNamesCache__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277D361B8]);
  v1 = [v0 initWithMaxSize:50 notificationName:*MEMORY[0x277CBD140]];
  v2 = ic_mentionableNamesCache_sMentionableNamesCache;
  ic_mentionableNamesCache_sMentionableNamesCache = v1;
}

void __74__CKShareParticipant_IC__ic_participantNameMatchingString_returnFullName___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v20 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v20 length])
  {
    v12 = [v20 ic_tokenSafeText];
    v13 = [v12 isEqualToString:*(a1 + 32)];

    if (v13)
    {
      if (*(a1 + 48) == 1)
      {
        v14 = *(*(a1 + 40) + 8);
        v15 = v11;
LABEL_8:
        v17 = *(v14 + 40);
        *(v14 + 40) = v15;
LABEL_16:

        goto LABEL_17;
      }

      v16 = [v10 ic_tokenSafeText];
      if ([v16 isEqualToString:*(a1 + 32)])
      {

LABEL_7:
        v14 = *(*(a1 + 40) + 8);
        v15 = v10;
        goto LABEL_8;
      }

      if ([v11 length])
      {
      }

      else
      {
        v18 = [v9 length];

        if (!v18)
        {
          goto LABEL_7;
        }
      }

      v17 = [MEMORY[0x277CCACA8] ic_shortNameFromGivenName:v9 familyName:v10];
      if ([v17 length])
      {
        v19 = v17;
      }

      else
      {
        v19 = v11;
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v19);
      goto LABEL_16;
    }
  }

LABEL_17:
}

void __74__CKShareParticipant_IC__ic_participantNameMatchingString_returnFullName___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v5 = [v3 length];
    v4 = v6;
    if (v5)
    {
      [*(a1 + 32) addObject:v6];
      v4 = v6;
      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }
}

@end