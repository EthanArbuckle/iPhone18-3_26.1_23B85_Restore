@interface WFURLDetector
+ (BOOL)stringMatchesExactly:(id)exactly;
+ (id)URLsInString:(id)string error:(id *)error;
@end

@implementation WFURLDetector

+ (BOOL)stringMatchesExactly:(id)exactly
{
  exactlyCopy = exactly;
  if (exactlyCopy)
  {
    v4 = [MEMORY[0x277CCA948] dataDetectorWithTypes:32 error:0];
    v5 = [v4 firstMatchInString:exactlyCopy options:0 range:{0, objc_msgSend(exactlyCopy, "length")}];
    v7 = ![v5 range] && v6 == objc_msgSend(exactlyCopy, "length");
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)URLsInString:(id)string error:(id *)error
{
  v4 = [WFDataDetector resultsForString:string ofTypes:32 error:error];
  uRLs = [v4 URLs];

  return uRLs;
}

@end