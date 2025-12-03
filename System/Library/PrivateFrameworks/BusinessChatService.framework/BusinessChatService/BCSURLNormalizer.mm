@interface BCSURLNormalizer
+ (id)normalizedURLForURL:(id)l;
@end

@implementation BCSURLNormalizer

+ (id)normalizedURLForURL:(id)l
{
  lCopy = l;
  v4 = lCopy;
  if (!lCopy)
  {
    standardizedURL = ABSLogCommon();
    if (!os_log_type_enabled(standardizedURL, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v80 = 0;
    v18 = "Normalizing URL - Step 1 - input URL is nil";
    v19 = &v80;
LABEL_13:
    _os_log_impl(&dword_242072000, standardizedURL, OS_LOG_TYPE_DEFAULT, v18, v19, 2u);
    goto LABEL_14;
  }

  scheme = [lCopy scheme];
  v6 = [scheme length];

  if (!v6)
  {
    standardizedURL = ABSLogCommon();
    if (!os_log_type_enabled(standardizedURL, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v79 = 0;
    v18 = "Normalizing URL - Step 2 - URL has nil scheme";
    v19 = &v79;
    goto LABEL_13;
  }

  host = [v4 host];
  v8 = [host length];

  if (!v8)
  {
    standardizedURL = ABSLogCommon();
    if (os_log_type_enabled(standardizedURL, OS_LOG_TYPE_DEFAULT))
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

  standardizedURL = [v4 standardizedURL];
  if (standardizedURL)
  {
    v10 = [MEMORY[0x277CCACE0] componentsWithURL:standardizedURL resolvingAgainstBaseURL:0];
    percentEncodedFragment = [v10 percentEncodedFragment];
    encodedHost = [v10 encodedHost];
    lowercaseString = [encodedHost lowercaseString];

    percentEncodedPassword = [v10 percentEncodedPassword];
    percentEncodedPath = [v10 percentEncodedPath];
    port = [v10 port];
    percentEncodedQuery = [v10 percentEncodedQuery];
    v52 = standardizedURL;
    if ([percentEncodedQuery length])
    {
      query = [v10 query];
    }

    else
    {
      query = 0;
    }

    v66 = query;

    scheme2 = [v10 scheme];
    lowercaseString2 = [scheme2 lowercaseString];

    v59 = v10;
    percentEncodedUser = [v10 percentEncodedUser];
    stringByRemovingPercentEncoding = [percentEncodedFragment stringByRemovingPercentEncoding];
    stringByRemovingPercentEncoding2 = [lowercaseString stringByRemovingPercentEncoding];
    [percentEncodedPassword stringByRemovingPercentEncoding];
    v24 = v68 = percentEncodedPassword;
    stringByRemovingPercentEncoding3 = [percentEncodedPath stringByRemovingPercentEncoding];
    stringByRemovingPercentEncoding4 = [query stringByRemovingPercentEncoding];
    stringByRemovingPercentEncoding5 = [percentEncodedUser stringByRemovingPercentEncoding];
    uRLFragmentAllowedCharacterSet = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
    uRLHostAllowedCharacterSet = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
    [MEMORY[0x277CCA900] URLPasswordAllowedCharacterSet];
    v27 = v67 = percentEncodedPath;
    [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    v28 = v70 = percentEncodedFragment;
    uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
    uRLUserAllowedCharacterSet = [MEMORY[0x277CCA900] URLUserAllowedCharacterSet];
    v63 = uRLFragmentAllowedCharacterSet;
    [stringByRemovingPercentEncoding stringByAddingPercentEncodingWithAllowedCharacters:uRLFragmentAllowedCharacterSet];
    v31 = v69 = lowercaseString;
    v65 = stringByRemovingPercentEncoding2;
    v62 = uRLHostAllowedCharacterSet;
    v51 = [stringByRemovingPercentEncoding2 stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];
    v64 = v24;
    v60 = v27;
    v50 = [v24 stringByAddingPercentEncodingWithAllowedCharacters:v27];
    v56 = v28;
    v32 = [stringByRemovingPercentEncoding3 stringByAddingPercentEncodingWithAllowedCharacters:v28];
    v33 = [v32 stringByRemovingOccurancesOfCharacter:@"/" fromPosition:1];

    v58 = uRLQueryAllowedCharacterSet;
    v34 = [stringByRemovingPercentEncoding4 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
    v57 = uRLUserAllowedCharacterSet;
    v35 = [stringByRemovingPercentEncoding5 stringByAddingPercentEncodingWithAllowedCharacters:uRLUserAllowedCharacterSet];
    v55 = v33;
    v36 = [v33 stringByRemovingOccurancesOfCharacter:@"/" fromPosition:1];
    v37 = [v36 stringByRemovingOccurancesOfCharacter:@"?" fromPosition:1];

    v38 = v31;
    v39 = v35;
    v40 = port;
    v41 = v34;
    v42 = v37;
    v43 = v50;
    v44 = v51;
    v45 = lowercaseString2;
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

    v47 = percentEncodedUser;
    if (!v20)
    {
      v48 = ABSLogCommon();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *v76 = 0;
        _os_log_impl(&dword_242072000, v48, OS_LOG_TYPE_DEFAULT, "Normalizing URL - Step 5 - normalizedURL is nil", v76, 2u);
      }

      v47 = percentEncodedUser;
    }

    v21 = v59;
    standardizedURL = v52;
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