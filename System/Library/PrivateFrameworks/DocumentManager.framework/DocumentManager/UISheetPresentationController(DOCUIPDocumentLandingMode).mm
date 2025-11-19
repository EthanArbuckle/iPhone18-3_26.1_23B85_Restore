@interface UISheetPresentationController(DOCUIPDocumentLandingMode)
- (id)doc_detentForDocumentLandingMode:()DOCUIPDocumentLandingMode;
- (uint64_t)doc_documentLandingModeForDetent:()DOCUIPDocumentLandingMode;
@end

@implementation UISheetPresentationController(DOCUIPDocumentLandingMode)

- (id)doc_detentForDocumentLandingMode:()DOCUIPDocumentLandingMode
{
  v4 = [a1 detents];
  v5 = v4;
  if (a3)
  {
    [v4 firstObject];
  }

  else
  {
    [v4 lastObject];
  }
  v6 = ;
  v7 = [v6 identifier];

  return v7;
}

- (uint64_t)doc_documentLandingModeForDetent:()DOCUIPDocumentLandingMode
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [&unk_1F5F53438 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(&unk_1F5F53438);
      }

      v9 = [*(*(&v13 + 1) + 8 * v8) integerValue];
      v10 = [a1 doc_detentForDocumentLandingMode:v9];
      v11 = [v10 isEqual:v4];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [&unk_1F5F53438 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 1;
  }

  return v9;
}

@end