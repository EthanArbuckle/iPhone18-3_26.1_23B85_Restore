@interface NSURL(DataDetectorsSupport)
+ (id)dd_URLWithPotentiallyInvalidURLString:()DataDetectorsSupport;
@end

@implementation NSURL(DataDetectorsSupport)

+ (id)dd_URLWithPotentiallyInvalidURLString:()DataDetectorsSupport
{
  v4 = a3;
  v5 = [self URLWithString:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    goto LABEL_15;
  }

  v8 = [v4 rangeOfString:@"://"];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v4 rangeOfString:@":"];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
      v12 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];
    }

    else
    {
      v21 = v10;
      uRLPathAllowedCharacterSet = [v4 substringToIndex:v10];
      v22 = v21 + 1;
      v23 = [v4 length];
      v12 = [v4 substringFromIndex:v21 + 1];
      if (v22 < v23)
      {
        uRLPathAllowedCharacterSet2 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
        v25 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet2];

        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", uRLPathAllowedCharacterSet, v25];
        v7 = [self URLWithString:v26];

        v12 = v25;
LABEL_13:

        goto LABEL_14;
      }
    }

    v7 = [self URLWithString:v12];
    goto LABEL_13;
  }

  v13 = v8 + v9;
  if (v8 + v9 >= [v4 length] || (v14 = objc_msgSend(v4, "rangeOfString:options:range:", @"/", 0, v13, objc_msgSend(v4, "length") - v13), v16 = v14 + v15, v14 + v15 >= objc_msgSend(v4, "length")))
  {
    v7 = 0;
    goto LABEL_15;
  }

  uRLPathAllowedCharacterSet = [v4 substringToIndex:v16];
  v17 = [v4 substringFromIndex:v16];
  uRLFragmentAllowedCharacterSet = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
  v19 = [v17 stringByAddingPercentEncodingWithAllowedCharacters:uRLFragmentAllowedCharacterSet];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", uRLPathAllowedCharacterSet, v19];
  v7 = [self URLWithString:v20];

LABEL_14:
LABEL_15:

  return v7;
}

@end