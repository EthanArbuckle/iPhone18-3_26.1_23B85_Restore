@interface WFDateDetector
+ (id)datesInString:(id)a3 error:(id *)a4;
+ (id)detectedDatesInString:(id)a3 error:(id *)a4;
@end

@implementation WFDateDetector

+ (id)detectedDatesInString:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v4 = [WFDataDetector resultsForString:a3 ofTypes:8 error:0];
    v5 = [v4 textCheckingResults];
    v6 = [v5 if_compactMap:&__block_literal_global_26874];
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

+ (id)datesInString:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v4 = [WFDataDetector resultsForString:a3 ofTypes:8 error:a4];
    v5 = [v4 dates];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

@end