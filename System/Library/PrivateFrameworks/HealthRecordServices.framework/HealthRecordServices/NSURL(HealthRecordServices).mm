@interface NSURL(HealthRecordServices)
- (id)hrs_URLByExpandingReference:()HealthRecordServices;
@end

@implementation NSURL(HealthRecordServices)

- (id)hrs_URLByExpandingReference:()HealthRecordServices
{
  v4 = a3;
  v5 = a1;
  v6 = [v5 absoluteString];
  v7 = [v6 hasSuffix:@"/"];

  if ((v7 & 1) == 0)
  {
    v8 = MEMORY[0x277CBEBC0];
    v9 = [v5 absoluteString];
    v10 = [v9 stringByAppendingString:@"/"];
    v11 = [v8 URLWithString:v10];

    v5 = v11;
  }

  v12 = [MEMORY[0x277CBEBC0] URLWithString:v4 relativeToURL:v5];

  return v12;
}

@end