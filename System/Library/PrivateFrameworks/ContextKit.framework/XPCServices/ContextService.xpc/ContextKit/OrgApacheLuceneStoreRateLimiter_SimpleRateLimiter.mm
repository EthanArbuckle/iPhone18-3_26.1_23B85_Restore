@interface OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter
- (OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter)initWithDouble:(double)double;
- (int64_t)pauseWithLong:(int64_t)long;
- (void)setMBPerSecWithDouble:(double)double;
@end

@implementation OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter

- (OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter)initWithDouble:(double)double
{
  [(OrgApacheLuceneStoreRateLimiter_SimpleRateLimiter *)self setMBPerSecWithDouble:double];
  self->lastNS_ = JavaLangSystem_nanoTime();
  return self;
}

- (void)setMBPerSecWithDouble:(double)double
{
  atomic_store(*&double, &self->mbPerSec_);
  v3 = double * 0.005 * 1024.0;
  v4 = vcvtd_n_s64_f64(v3, 0xAuLL);
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v3 * 1024.0 < 0.0)
  {
    v5 = 0x8000000000000000;
  }

  if (v4 == 0x8000000000000000)
  {
    v4 = v5;
  }

  atomic_store(v4, &self->minPauseCheckBytes_);
}

- (int64_t)pauseWithLong:(int64_t)long
{
  v5 = JavaLangSystem_nanoTime();
  v6 = COERCE_DOUBLE(atomic_load(&self->mbPerSec_));
  v7 = vcvtd_n_f64_s64(long, 0xAuLL) * 0.0009765625 / v6;
  objc_sync_enter(self);
  lastNS = self->lastNS_;
  v9 = (v7 * 1000000000.0);
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 * 1000000000.0 < 0.0)
  {
    v10 = 0x8000000000000000;
  }

  if (v9 == 0x8000000000000000)
  {
    v9 = v10;
  }

  v11 = v9 + lastNS;
  if (v5 <= v9 + lastNS)
  {
    v12 = v9 + lastNS;
  }

  else
  {
    v12 = v5;
  }

  self->lastNS_ = v12;
  objc_sync_exit(self);
  v13 = v11 - v5;
  if (v11 <= v5)
  {
    return 0;
  }

  if (v13 < 1)
  {
    v16 = v5;
  }

  else
  {
    do
    {
      if (v13 <= 0xC34FFFFE7960)
      {
        v15 = v13 / 0xF4240;
        v14 = v13 % 0xF4240;
      }

      else
      {
        v14 = 0;
        v15 = 0x7FFFFFFFLL;
      }

      JavaLangThread_sleepWithLong_withInt_(v15, v14);
      v16 = JavaLangSystem_nanoTime();
      v13 = v11 - v16;
    }

    while ((v11 - v16) > 0);
  }

  return v16 - v5;
}

@end