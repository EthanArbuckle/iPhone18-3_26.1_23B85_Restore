@interface WFURLDetector
+ (BOOL)stringMatchesExactly:(id)a3;
+ (id)URLsInString:(id)a3 error:(id *)a4;
@end

@implementation WFURLDetector

+ (BOOL)stringMatchesExactly:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCA948] dataDetectorWithTypes:32 error:0];
    v5 = [v4 firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
    v7 = ![v5 range] && v6 == objc_msgSend(v3, "length");
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)URLsInString:(id)a3 error:(id *)a4
{
  v4 = [WFDataDetector resultsForString:a3 ofTypes:32 error:a4];
  v5 = [v4 URLs];

  return v5;
}

@end