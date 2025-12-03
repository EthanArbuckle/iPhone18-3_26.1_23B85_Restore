@interface _DPDediscoUtils
+ (BOOL)isDataCollectionEnabled;
+ (BOOL)shouldAllowOHTTPExemptionForCollectionID:(id)d;
+ (id)toBase64URLEncoded:(id)encoded;
+ (unint64_t)dediscoVersionForDonation:(id)donation;
@end

@implementation _DPDediscoUtils

+ (unint64_t)dediscoVersionForDonation:(id)donation
{
  metadata = [donation metadata];
  v4 = _DPDediscoVersionWithMetadata();

  return v4;
}

+ (id)toBase64URLEncoded:(id)encoded
{
  v3 = [encoded base64EncodedStringWithOptions:0];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
  v6 = [v5 stringByReplacingOccurrencesOfString:@"=" withString:&stru_1000741F0];

  return v6;
}

+ (BOOL)isDataCollectionEnabled
{
  if (qword_10007E768 != -1)
  {
    sub_10004E0B4();
  }

  return byte_10007E760;
}

+ (BOOL)shouldAllowOHTTPExemptionForCollectionID:(id)d
{
  dCopy = d;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [&off_100075AC0 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(&off_100075AC0);
        }

        if ([dCopy hasPrefix:*(*(&v10 + 1) + 8 * i)])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [&off_100075AC0 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

@end