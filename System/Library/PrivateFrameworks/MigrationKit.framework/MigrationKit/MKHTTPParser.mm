@interface MKHTTPParser
- (id)chunk:(id)a3 offset:(unint64_t *)a4 done:(BOOL *)a5;
- (id)parse:(id)a3 hostname:(id)a4;
- (id)parts:(id)a3 boundary:(id)a4 container:(id)a5;
@end

@implementation MKHTTPParser

- (id)parse:(id)a3 hostname:(id)a4
{
  v5 = a3;
  v25 = a4;
  v6 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  v26 = v5;
  v27 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithData:v5];
  [v27 open];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v9 = 0;
  v10 = 0;
  while (2)
  {
    v11 = [v27 read:v6 maxLength:1024];
    if (!v11)
    {
      break;
    }

    v12 = v11;
    v13 = 0;
    v14 = v10 + 1;
    while (1)
    {
      v15 = v6[v13];
      if (v15 == 10 && v9 == 13)
      {
        break;
      }

      [v8 appendFormat:@"%c", v6[v13]];
LABEL_11:
      v9 = v15;
      ++v13;
      ++v14;
      if (v12 == v13)
      {
        goto LABEL_15;
      }
    }

    if ([v8 length] != 1)
    {
      [v8 deleteCharactersInRange:{objc_msgSend(v8, "length") - 1, 1}];
      [v7 addObject:v8];
      v17 = objc_alloc_init(MEMORY[0x277CCAB68]);

      v8 = v17;
      goto LABEL_11;
    }

    if (v13)
    {
      v18 = 0;
      v10 = v14;
      goto LABEL_17;
    }

    v9 = 13;
LABEL_15:
    v10 += v12;
    if (v12 == 1024)
    {
      continue;
    }

    break;
  }

  v18 = 1;
LABEL_17:
  [v27 close];
  free(v6);
  if (v18)
  {
    v19 = 0;
    v20 = v25;
  }

  else
  {
    v21 = [v26 subdataWithRange:{v10, objc_msgSend(v26, "length") - v10}];
    v22 = [MKHTTPRequest alloc];
    v23 = [[MKHTTPHeaders alloc] initWithArray:v7];
    v20 = v25;
    v19 = [(MKHTTPRequest *)v22 initWithHeaders:v23 body:v21 hostname:v25];
  }

  return v19;
}

- (id)chunk:(id)a3 offset:(unint64_t *)a4 done:(BOOL *)a5
{
  v6 = a3;
  if (v6)
  {
    v25 = a5;
    v7 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
    v24 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithData:v6];
    [v24 open];
    v27 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v28 = 0;
    while (1)
    {
      v12 = [v24 read:v7 maxLength:1024];
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = v12;
      for (i = 0; i != v13; ++i)
      {
        v15 = v8;
        v8 = v7[i];
        if (v8 != 10 || v15 != 13)
        {
          ++v10;
          continue;
        }

        v17 = v10 - 1;
        if ((v9 & 1) == 0)
        {
          v19 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v6 length:"bytes") + v11 freeWhenDone:{v10 - 1, 0}];
          v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v19 encoding:4];
          v21 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v20];
          [v21 scanHexInt:&v28];
          v11 += v10 + 1;

          v10 = 0;
LABEL_19:
          v9 = 1;
          continue;
        }

        if (v17 != v28)
        {
          ++v10;
          goto LABEL_19;
        }

        v18 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v6 length:"bytes") + v11 freeWhenDone:{v10 - 1, 0}];
        [v27 appendData:v18];
        if (a4)
        {
          *a4 = v11 + v17 + 2;
        }

        if (v25)
        {
          *v25 = [v18 length] == 0;
        }

        v11 += v10 + 1;
        v28 = 0;

        v10 = 0;
        v9 = 0;
      }

      if (v13 != 1024)
      {
LABEL_22:
        [v24 close];
        free(v7);

        v22 = v27;
        goto LABEL_24;
      }
    }
  }

  v22 = 0;
LABEL_24:

  return v22;
}

- (id)parts:(id)a3 boundary:(id)a4 container:(id)a5
{
  v7 = a3;
  v8 = a4;
  v37 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v9 appendString:@"--"];
  v35 = v8;
  [v9 appendString:v8];
  v34 = v9;
  v43 = [v9 dataUsingEncoding:4];
  v10 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  v45 = v7;
  v38 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithData:v7];
  [v38 open];
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v15 = 1;
  do
  {
    v16 = [v38 read:v10 maxLength:1024];
    if (!v16)
    {
      break;
    }

    v17 = v16;
    for (i = 0; i != v17; ++i)
    {
      v19 = v11;
      v11 = v10[i];
      if (v11 != 10 || v19 != 13)
      {
        ++v13;
        continue;
      }

      v21 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v45 length:"bytes") + v12 freeWhenDone:{v13 - 1, 0}];
      v22 = v21;
      if (v15)
      {
        if ([v21 isEqualToData:v43])
        {
          v23 = objc_alloc_init(MEMORY[0x277CBEB18]);

          v41 = 0;
          v15 = 0;
          v12 += v13 + 1;
          v14 = 1;
          v44 = v23;
LABEL_22:
          v13 = 0;
          goto LABEL_23;
        }

        ++v13;
      }

      else
      {
        if (![v21 length])
        {
          v14 = 0;
          v15 = 0;
          v12 += v13 + 1;
          v42 = 1;
          goto LABEL_22;
        }

        if (v14)
        {
          v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v22 encoding:4];
          [v44 addObject:v24];
          v25 = [v24 lowercaseString];
          v26 = [v25 hasPrefix:@"content-length"];

          if (v26)
          {
            v27 = [v24 componentsSeparatedByString:@": "];
            if ([v27 count] == 2)
            {
              v40 = objc_alloc_init(MEMORY[0x277CCABB8]);
              [v40 setNumberStyle:1];
              v39 = [v27 objectAtIndexedSubscript:1];
              v28 = [v40 numberFromString:v39];
              v41 = [v28 unsignedLongLongValue];
            }
          }

          v12 += v13 + 1;

          v15 = 0;
          v13 = 0;
          v14 = 1;
          goto LABEL_23;
        }

        if ((v42 & 1) == 0)
        {
          v42 = 0;
          v14 = 0;
          v15 = 0;
          ++v13;
          goto LABEL_23;
        }

        if (v41 && [v22 length] != v41)
        {
          v14 = 0;
          v15 = 0;
          ++v13;
          v42 = 1;
          goto LABEL_23;
        }

        v29 = [MKHTTPRequest alloc];
        v30 = [[MKHTTPHeaders alloc] initWithMultipartHeaderArray:v44];
        v31 = [v37 hostname];
        v32 = [(MKHTTPRequest *)v29 initWithHeaders:v30 body:v22 hostname:v31];

        [v36 addObject:v32];
        v12 += v13 + 1;

        v42 = 0;
        v14 = 0;
        v13 = 0;
      }

      v15 = 1;
LABEL_23:
    }
  }

  while (v17 == 1024);
  [v38 close];
  free(v10);

  return v36;
}

@end