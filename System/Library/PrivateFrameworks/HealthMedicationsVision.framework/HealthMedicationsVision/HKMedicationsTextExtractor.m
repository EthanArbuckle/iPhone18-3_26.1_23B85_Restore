@interface HKMedicationsTextExtractor
+ (id)extractedDocumentsFromRequestHandler:(id)a3 ocrDocRequest:(id)a4 error:(id *)a5;
@end

@implementation HKMedicationsTextExtractor

+ (id)extractedDocumentsFromRequestHandler:(id)a3 ocrDocRequest:(id)a4 error:(id *)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CE2DB0]);
  }

  v11 = v10;
  [v10 setMaximumCandidateCount:5];
  [v11 setUsesLanguageCorrection:1];
  [v11 setRecognitionLanguages:&unk_2863C5838];
  v19[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v18 = 0;
  [v7 performRequests:v12 error:&v18];
  v13 = v18;

  if (v13)
  {
    if (a5)
    {
      v14 = v13;
      v15 = 0;
      *a5 = v13;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = [v11 results];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end