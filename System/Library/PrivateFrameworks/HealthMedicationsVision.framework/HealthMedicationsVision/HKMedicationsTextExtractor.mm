@interface HKMedicationsTextExtractor
+ (id)extractedDocumentsFromRequestHandler:(id)handler ocrDocRequest:(id)request error:(id *)error;
@end

@implementation HKMedicationsTextExtractor

+ (id)extractedDocumentsFromRequestHandler:(id)handler ocrDocRequest:(id)request error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  requestCopy = request;
  v9 = requestCopy;
  if (requestCopy)
  {
    v10 = requestCopy;
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
  [handlerCopy performRequests:v12 error:&v18];
  v13 = v18;

  if (v13)
  {
    if (error)
    {
      v14 = v13;
      results = 0;
      *error = v13;
    }

    else
    {
      results = 0;
    }
  }

  else
  {
    results = [v11 results];
  }

  v16 = *MEMORY[0x277D85DE8];

  return results;
}

@end