@interface CVNLPTextDecodingResult
- (CVNLPTextDecodingResult)initWithCandidates:(id)a3;
- (int64_t)count;
@end

@implementation CVNLPTextDecodingResult

- (CVNLPTextDecodingResult)initWithCandidates:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CVNLPTextDecodingResult;
  v6 = [(CVNLPTextDecodingResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_candidates, a3);
  }

  return v7;
}

- (int64_t)count
{
  v4 = objc_msgSend_candidates(self, a2, v2, v3);
  v8 = objc_msgSend_count(v4, v5, v6, v7);

  return v8;
}

@end