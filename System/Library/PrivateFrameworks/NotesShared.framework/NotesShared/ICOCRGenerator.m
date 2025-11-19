@interface ICOCRGenerator
+ (id)ocrStringFromImage:(CGImage *)a3 title:(id *)a4 languages:(id)a5;
+ (id)ocrStringFromImageRequestHandler:(id)a3 title:(id *)a4 languages:(id)a5 session:(id)a6;
+ (id)ocrStringFromImageURL:(id)a3 title:(id *)a4 languages:(id)a5;
@end

@implementation ICOCRGenerator

+ (id)ocrStringFromImage:(CGImage *)a3 title:(id *)a4 languages:(id)a5
{
  gotLoadHelper_x8__OBJC_CLASS___VNSession(v5);
  v10 = *(v9 + 3608);
  v12 = v11;
  v13 = objc_alloc_init(v10);
  gotLoadHelper_x8__OBJC_CLASS___VNImageRequestHandler(v14);
  v16 = objc_alloc(*(v15 + 3408));
  v17 = [v16 initWithCGImage:a3 options:MEMORY[0x277CBEC10] session:v13];
  v18 = [a1 ocrStringFromImageRequestHandler:v17 title:a4 languages:v12 session:v13];

  return v18;
}

+ (id)ocrStringFromImageURL:(id)a3 title:(id *)a4 languages:(id)a5
{
  gotLoadHelper_x8__OBJC_CLASS___VNSession(v5);
  v10 = *(v9 + 3608);
  v12 = v11;
  v13 = a3;
  v14 = objc_alloc_init(v10);
  gotLoadHelper_x8__OBJC_CLASS___VNImageRequestHandler(v15);
  v17 = objc_alloc(*(v16 + 3408));
  v18 = [v17 initWithURL:v13 options:MEMORY[0x277CBEC10] session:v14];

  v19 = [a1 ocrStringFromImageRequestHandler:v18 title:a4 languages:v12 session:v14];

  return v19;
}

+ (id)ocrStringFromImageRequestHandler:(id)a3 title:(id *)a4 languages:(id)a5 session:(id)a6
{
  v52[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a6;
  gotLoadHelper_x8__OBJC_CLASS___VNRecognizeTextRequest(v11);
  v13 = objc_alloc_init(*(v12 + 3512));
  [v13 setRecognitionLanguages:v9];
  v52[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
  [v8 performRequests:v14 error:0];

  v15 = [v13 results];
  v36 = v15;
  if ([v15 count])
  {
    v32 = v13;
    v33 = v10;
    v34 = v9;
    v35 = v8;
    v16 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v15;
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

                  v26 = [v24 string];
                  [v16 appendString:v26];

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
            if (a4)
            {
              if (v27)
              {
                v28 = [v18 firstObject];
                *a4 = [v28 string];
              }
            }
          }
        }

        v40 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v40);
    }

    v29 = [v16 copy];
    v30 = [v29 ic_trimmedString];

    v9 = v34;
    v8 = v35;
    v13 = v32;
    v10 = v33;
  }

  else
  {
    v30 = 0;
  }

  if (![(__CFString *)v30 length:v32])
  {

    v30 = @" ";
  }

  [v10 releaseCachedResources];

  return v30;
}

@end