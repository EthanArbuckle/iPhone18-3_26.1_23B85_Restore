@interface NSURL(HealthRecordServices)
- (id)hrs_URLByExpandingReference:()HealthRecordServices;
@end

@implementation NSURL(HealthRecordServices)

- (id)hrs_URLByExpandingReference:()HealthRecordServices
{
  v4 = a3;
  selfCopy = self;
  absoluteString = [selfCopy absoluteString];
  v7 = [absoluteString hasSuffix:@"/"];

  if ((v7 & 1) == 0)
  {
    v8 = MEMORY[0x277CBEBC0];
    absoluteString2 = [selfCopy absoluteString];
    v10 = [absoluteString2 stringByAppendingString:@"/"];
    v11 = [v8 URLWithString:v10];

    selfCopy = v11;
  }

  v12 = [MEMORY[0x277CBEBC0] URLWithString:v4 relativeToURL:selfCopy];

  return v12;
}

@end