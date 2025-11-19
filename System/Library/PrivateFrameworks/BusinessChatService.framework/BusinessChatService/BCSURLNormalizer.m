@interface BCSURLNormalizer
+ (id)normalizedURLForURL:(id)a3;
@end

@implementation BCSURLNormalizer

+ (id)normalizedURLForURL:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v9 = ABSLogCommon();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v80 = 0;
    v18 = "Normalizing URL - Step 1 - input URL is nil";
    v19 = &v80;
LABEL_13:
    _os_log_impl(&dword_242072000, v9, OS_LOG_TYPE_DEFAULT, v18, v19, 2u);
    goto LABEL_14;
  }

  v5 = [v3 scheme];
  v6 = [v5 length];

  if (!v6)
  {
    v9 = ABSLogCommon();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v79 = 0;
    v18 = "Normalizing URL - Step 2 - URL has nil scheme";
    v19 = &v79;
    goto LABEL_13;
  }

  v7 = [v4 host];
  v8 = [v7 length];

  if (!v8)
  {
    v9 = ABSLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "Normalizing URL - Step 2 - URL has nil host";
      v19 = buf;
      goto LABEL_13;
    }

LABEL_14:
    v20 = 0;
    goto LABEL_25;
  }

  v9 = [v4 standardizedURL];
  if (v9)
  {
    v10 = [MEMORY[0x277CCACE0] componentsWithURL:v9 resolvingAgainstBaseURL:0];
    v11 = [v10 percentEncodedFragment];
    v12 = [v10 encodedHost];
    v13 = [v12 lowercaseString];

    v14 = [v10 percentEncodedPassword];
    v15 = [v10 percentEncodedPath];
    v54 = [v10 port];
    v16 = [v10 percentEncodedQuery];
    v52 = v9;
    if ([v16 length])
    {
      v17 = [v10 query];
    }

    else
    {
      v17 = 0;
    }

    v66 = v17;

    v22 = [v10 scheme];
    v53 = [v22 lowercaseString];

    v59 = v10;
    v71 = [v10 percentEncodedUser];
    v75 = [v11 stringByRemovingPercentEncoding];
    v23 = [v13 stringByRemovingPercentEncoding];
    [v14 stringByRemovingPercentEncoding];
    v24 = v68 = v14;
    v74 = [v15 stringByRemovingPercentEncoding];
    v73 = [v17 stringByRemovingPercentEncoding];
    v72 = [v71 stringByRemovingPercentEncoding];
    v25 = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
    v26 = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
    [MEMORY[0x277CCA900] URLPasswordAllowedCharacterSet];
    v27 = v67 = v15;
    [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    v28 = v70 = v11;
    v29 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
    v30 = [MEMORY[0x277CCA900] URLUserAllowedCharacterSet];
    v63 = v25;
    [v75 stringByAddingPercentEncodingWithAllowedCharacters:v25];
    v31 = v69 = v13;
    v65 = v23;
    v62 = v26;
    v51 = [v23 stringByAddingPercentEncodingWithAllowedCharacters:v26];
    v64 = v24;
    v60 = v27;
    v50 = [v24 stringByAddingPercentEncodingWithAllowedCharacters:v27];
    v56 = v28;
    v32 = [v74 stringByAddingPercentEncodingWithAllowedCharacters:v28];
    v33 = [v32 stringByRemovingOccurancesOfCharacter:@"/" fromPosition:1];

    v58 = v29;
    v34 = [v73 stringByAddingPercentEncodingWithAllowedCharacters:v29];
    v57 = v30;
    v35 = [v72 stringByAddingPercentEncodingWithAllowedCharacters:v30];
    v55 = v33;
    v36 = [v33 stringByRemovingOccurancesOfCharacter:@"/" fromPosition:1];
    v37 = [v36 stringByRemovingOccurancesOfCharacter:@"?" fromPosition:1];

    v38 = v31;
    v39 = v35;
    v40 = v54;
    v41 = v34;
    v42 = v37;
    v43 = v50;
    v44 = v51;
    v45 = v53;
    objc_opt_self();
    v46 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v46 setPercentEncodedFragment:v38];

    [v46 setEncodedHost:v44];
    [v46 setPercentEncodedPassword:v43];

    [v46 setPercentEncodedPath:v42];
    [v46 setPercentEncodedQuery:v41];

    [v46 setPercentEncodedUser:v39];
    [v46 setScheme:v45];

    [v46 setPort:v40];
    v61 = v40;

    v20 = [v46 URL];

    v47 = v71;
    if (!v20)
    {
      v48 = ABSLogCommon();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *v76 = 0;
        _os_log_impl(&dword_242072000, v48, OS_LOG_TYPE_DEFAULT, "Normalizing URL - Step 5 - normalizedURL is nil", v76, 2u);
      }

      v47 = v71;
    }

    v21 = v59;
    v9 = v52;
  }

  else
  {
    v21 = ABSLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v77 = 0;
      _os_log_impl(&dword_242072000, v21, OS_LOG_TYPE_DEFAULT, "Normalizing URL - Step 2 - standardizedURLString is nil", v77, 2u);
    }

    v20 = 0;
  }

LABEL_25:

  return v20;
}

@end