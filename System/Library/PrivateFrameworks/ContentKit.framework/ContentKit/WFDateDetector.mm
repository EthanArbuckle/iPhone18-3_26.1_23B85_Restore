@interface WFDateDetector
+ (id)datesInString:(id)string error:(id *)error;
+ (id)detectedDatesInString:(id)string error:(id *)error;
@end

@implementation WFDateDetector

+ (id)detectedDatesInString:(id)string error:(id *)error
{
  if (string)
  {
    v4 = [WFDataDetector resultsForString:string ofTypes:8 error:0];
    textCheckingResults = [v4 textCheckingResults];
    v6 = [textCheckingResults if_compactMap:&__block_literal_global_26874];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

WFDetectedDate *__46__WFDateDetector_detectedDatesInString_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [[WFDetectedDate alloc] initWithDateCheckingResult:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)datesInString:(id)string error:(id *)error
{
  if (string)
  {
    v4 = [WFDataDetector resultsForString:string ofTypes:8 error:error];
    dates = [v4 dates];
  }

  else
  {
    dates = MEMORY[0x277CBEBF8];
  }

  return dates;
}

@end