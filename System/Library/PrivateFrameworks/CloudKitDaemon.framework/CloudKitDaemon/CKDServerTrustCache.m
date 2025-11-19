@interface CKDServerTrustCache
+ (BOOL)shouldRefetchTrusts;
+ (void)setFetchAttempt;
@end

@implementation CKDServerTrustCache

+ (BOOL)shouldRefetchTrusts
{
  if (!qword_280D58410)
  {
    return 1;
  }

  objc_msgSend_timeIntervalSinceNow(qword_280D58410, a2, v2);
  if (v5 < -1800.0)
  {
    return 1;
  }

  if (qword_280D58408)
  {
    return 0;
  }

  objc_msgSend_timeIntervalSinceNow(qword_280D58410, v3, v4);
  return v7 < -1.0;
}

+ (void)setFetchAttempt
{
  qword_280D58410 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, v2);

  MEMORY[0x2821F96F8]();
}

@end