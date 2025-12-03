@interface NSString(TSULogAdditions)
- (uint64_t)tsu_initRedactedWithFormat:()TSULogAdditions arguments:;
- (uint64_t)tsu_initUnRedactedWithFormat:()TSULogAdditions arguments:;
@end

@implementation NSString(TSULogAdditions)

- (uint64_t)tsu_initRedactedWithFormat:()TSULogAdditions arguments:
{
  v5 = [a3 mutableCopy];
  [v5 replaceOccurrencesOfString:@"%s" withString:@"<REDACT %s REDACT>" options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"%@" withString:@"<REDACT %@ REDACT>" options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"%{public}s" withString:@"%s" options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"%{public}@" withString:@"%@" options:0 range:{0, objc_msgSend(v5, "length")}];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v5 arguments:a4];
  if (tsu_initRedactedWithFormat_arguments__onceToken != -1)
  {
    [NSString(TSULogAdditions) tsu_initRedactedWithFormat:arguments:];
  }

  v7 = [tsu_initRedactedWithFormat_arguments__redactRegex stringByReplacingMatchesInString:v6 options:0 range:0 withTemplate:{objc_msgSend(v6, "length"), @"<redacted>"}];

  return v7;
}

- (uint64_t)tsu_initUnRedactedWithFormat:()TSULogAdditions arguments:
{
  v5 = [a3 mutableCopy];
  [v5 replaceOccurrencesOfString:@"%{public}" withString:@"%" options:0 range:{0, objc_msgSend(v5, "length")}];
  v6 = [self initWithFormat:v5 arguments:a4];

  return v6;
}

@end