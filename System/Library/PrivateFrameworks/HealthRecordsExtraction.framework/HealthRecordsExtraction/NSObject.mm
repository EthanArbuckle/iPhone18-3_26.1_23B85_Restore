@interface NSObject
@end

@implementation NSObject

id __69__NSObject_HealthRecordUtils__hd_valueForKeyPath_rootResource_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 40) + 8);
  v4 = *(v2 + 40);
  v3 = (v2 + 40);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = *(a1 + 32);
    obj = 0;
    v7 = [HDHealthRecordsExtractionUtilities resourceReferencedBy:a2 containedIn:v6 error:&obj];
    objc_storeStrong(v3, obj);
    v5 = [v7 JSONObject];
  }

  return v5;
}

@end