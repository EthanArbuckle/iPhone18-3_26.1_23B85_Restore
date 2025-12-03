@interface TKCloudKitWSRecord
+ (id)downloadURLFromCloudKitRecordResponse:(id)response;
@end

@implementation TKCloudKitWSRecord

+ (id)downloadURLFromCloudKitRecordResponse:(id)response
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v13 = [location[0] objectForKeyedSubscript:@"records"];
  if (!v13 || ![v13 count])
  {
    goto LABEL_16;
  }

  v12 = [v13 objectAtIndexedSubscript:0];
  v11 = [v12 objectForKeyedSubscript:@"fields"];
  v10 = [v11 objectForKeyedSubscript:@"message"];
  if (!v10)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v9 = [v10 objectForKeyedSubscript:@"value"];
  if (!v9)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = [v9 objectForKeyedSubscript:@"downloadURL"];
  if (v8 && [v8 length])
  {
    uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
    v7 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:?];
    MEMORY[0x277D82BD8](uRLQueryAllowedCharacterSet);
    v15 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    v6 = 1;
    objc_storeStrong(&v7, 0);
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&v8, 0);
  if (!v6)
  {
LABEL_12:
    v6 = 0;
  }

  objc_storeStrong(&v9, 0);
  if (!v6)
  {
LABEL_14:
    v6 = 0;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  if (!v6)
  {
LABEL_16:
    v15 = 0;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  v3 = v15;

  return v3;
}

@end