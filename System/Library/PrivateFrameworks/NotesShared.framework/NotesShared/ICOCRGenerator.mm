@interface ICOCRGenerator
+ (id)ocrStringFromImage:(CGImage *)image title:(id *)title languages:(id)languages;
+ (id)ocrStringFromImageRequestHandler:(id)handler title:(id *)title languages:(id)languages session:(id)session;
+ (id)ocrStringFromImageURL:(id)l title:(id *)title languages:(id)languages;
@end

@implementation ICOCRGenerator

+ (id)ocrStringFromImage:(CGImage *)image title:(id *)title languages:(id)languages
{
  gotLoadHelper_x8__OBJC_CLASS___VNSession(v5);
  v10 = *(v9 + 3608);
  v12 = v11;
  v13 = objc_alloc_init(v10);
  gotLoadHelper_x8__OBJC_CLASS___VNImageRequestHandler(v14);
  v16 = objc_alloc(*(v15 + 3408));
  v17 = [v16 initWithCGImage:image options:MEMORY[0x277CBEC10] session:v13];
  v18 = [self ocrStringFromImageRequestHandler:v17 title:title languages:v12 session:v13];

  return v18;
}

+ (id)ocrStringFromImageURL:(id)l title:(id *)title languages:(id)languages
{
  gotLoadHelper_x8__OBJC_CLASS___VNSession(v5);
  v10 = *(v9 + 3608);
  v12 = v11;
  lCopy = l;
  v14 = objc_alloc_init(v10);
  gotLoadHelper_x8__OBJC_CLASS___VNImageRequestHandler(v15);
  v17 = objc_alloc(*(v16 + 3408));
  v18 = [v17 initWithURL:lCopy options:MEMORY[0x277CBEC10] session:v14];

  v19 = [self ocrStringFromImageRequestHandler:v18 title:title languages:v12 session:v14];

  return v19;
}

+ (id)ocrStringFromImageRequestHandler:(id)handler title:(id *)title languages:(id)languages session:(id)session
{
  v52[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  languagesCopy = languages;
  sessionCopy = session;
  gotLoadHelper_x8__OBJC_CLASS___VNRecognizeTextRequest(v11);
  v13 = objc_alloc_init(*(v12 + 3512));
  [v13 setRecognitionLanguages:languagesCopy];
  v52[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
  [handlerCopy performRequests:v14 error:0];

  results = [v13 results];
  v36 = results;
  if ([results count])
  {
    v32 = v13;
    v33 = sessionCopy;
    v34 = languagesCopy;
    v35 = handlerCopy;
    v16 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = results;
    v40 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v40)
    {
      v39 = *v47;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v47 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v46 + 1) + 8 * i);
          v18 = [v41 topCandidates:{3, v32, v33, v34, v35, v36}];
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v19 = [v18 countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = 0;
            v22 = *v43;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v43 != v22)
                {
                  objc_enumerationMutation(v18);
                }

                v24 = *(*(&v42 + 1) + 8 * j);
                [v24 confidence];
                if (v25 >= 0.5)
                {
                  [v16 appendString:@"\n"];
                  if (v21)
                  {
                    [v16 appendString:@"\t"];
                  }

                  string = [v24 string];
                  [v16 appendString:string];

                  v21 = 1;
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v42 objects:v50 count:16];
            }

            while (v20);
          }

          if ([v41 isTitle])
          {
            v27 = [v18 count];
            if (title)
            {
              if (v27)
              {
                firstObject = [v18 firstObject];
                *title = [firstObject string];
              }
            }
          }
        }

        v40 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v40);
    }

    v29 = [v16 copy];
    ic_trimmedString = [v29 ic_trimmedString];

    languagesCopy = v34;
    handlerCopy = v35;
    v13 = v32;
    sessionCopy = v33;
  }

  else
  {
    ic_trimmedString = 0;
  }

  if (![(__CFString *)ic_trimmedString length:v32])
  {

    ic_trimmedString = @" ";
  }

  [sessionCopy releaseCachedResources];

  return ic_trimmedString;
}

@end