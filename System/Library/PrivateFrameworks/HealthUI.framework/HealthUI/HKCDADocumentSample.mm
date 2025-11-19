@interface HKCDADocumentSample
@end

@implementation HKCDADocumentSample

void __106__HKCDADocumentSample_HKDataMetadataSampleExtensions__fetchDetailedReportWithHealthStore_reportDataBlock___block_invoke(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v22 = a2;
  v9 = a3;
  v10 = a5;
  if (v9)
  {
    if (a4)
    {
      v11 = *(*(*(a1 + 40) + 8) + 40);
      if (v11 && ([v11 document], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "document"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "documentData"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v13, v15))
      {
        v16 = [*(*(*(a1 + 40) + 8) + 40) document];
        v17 = [v16 documentData];

        (*(*(a1 + 32) + 16))();
      }

      else
      {
        v21 = [MEMORY[0x1E696ABC0] hk_error:100 description:@"CDA sample missing document"];
        (*(*(a1 + 32) + 16))();
      }
    }

    else if ([v9 count] == 1)
    {
      v18 = [v9 objectAtIndex:0];
      v19 = *(*(a1 + 40) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end