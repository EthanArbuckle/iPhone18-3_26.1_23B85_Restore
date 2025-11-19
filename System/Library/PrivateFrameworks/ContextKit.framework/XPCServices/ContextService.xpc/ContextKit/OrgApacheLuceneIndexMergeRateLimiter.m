@interface OrgApacheLuceneIndexMergeRateLimiter
- (BOOL)getAbort;
- (OrgApacheLuceneIndexMergeRateLimiter)initWithOrgApacheLuceneIndexMergePolicy_OneMerge:(id)a3;
- (double)getMBPerSec;
- (int64_t)getTotalPausedNS;
- (int64_t)getTotalStoppedNS;
- (int64_t)pauseWithLong:(int64_t)a3;
- (void)checkAbort;
- (void)dealloc;
- (void)setAbort;
- (void)setMBPerSecWithDouble:(double)a3;
@end

@implementation OrgApacheLuceneIndexMergeRateLimiter

- (OrgApacheLuceneIndexMergeRateLimiter)initWithOrgApacheLuceneIndexMergePolicy_OneMerge:(id)a3
{
  OrgApacheLuceneStoreRateLimiter_init(self, a2);
  JreStrongAssign(&self->merge_, a3);
  [(OrgApacheLuceneIndexMergeRateLimiter *)self setMBPerSecWithDouble:INFINITY];
  return self;
}

- (void)setMBPerSecWithDouble:(double)a3
{
  objc_sync_enter(self);
  if (a3 < 0.0)
  {
    v16 = JreStrcat("$D", v5, v6, v7, v8, v9, v10, v11, @"mbPerSec must be positive; got: ");
    v17 = new_JavaLangIllegalArgumentException_initWithNSString_(v16);
    objc_exception_throw(v17);
  }

  self->mbPerSec_ = a3;
  v12 = a3 * 0.025 * 1024.0;
  v13 = vcvtd_n_s64_f64(v12, 0xAuLL);
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  if (v12 * 1024.0 < 0.0)
  {
    v14 = 0x8000000000000000;
  }

  if (v13 == 0x8000000000000000)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  self->minPauseCheckBytes_ = JavaLangMath_minWithLong_withLong_(0x100000, v15);
  [(OrgApacheLuceneIndexMergeRateLimiter *)self notify];

  objc_sync_exit(self);
}

- (double)getMBPerSec
{
  objc_sync_enter(self);
  mbPerSec = self->mbPerSec_;
  objc_sync_exit(self);
  return mbPerSec;
}

- (int64_t)pauseWithLong:(int64_t)a3
{
  v5 = atomic_load(&self->totalBytesWritten_);
  atomic_store(v5 + a3, &self->totalBytesWritten_);
  v6 = JavaLangSystem_nanoTime();
  v7 = 0;
  while (1)
  {
    v8 = sub_1000CB7AC(self, a3, v6);
    if ((atomic_load_explicit(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000CBE40();
    }

    if (v8 == OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_values_)
    {
      break;
    }

    v9 = JavaLangSystem_nanoTime();
    if ((atomic_load_explicit(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000CBE40();
    }

    if (v8 == qword_100557988)
    {
      v10 = &OBJC_IVAR___OrgApacheLuceneIndexMergeRateLimiter_totalStoppedNS_;
    }

    else
    {
      v10 = &OBJC_IVAR___OrgApacheLuceneIndexMergeRateLimiter_totalPausedNS_;
    }

    *(&self->super.super.isa + *v10) = (*(&self->super.super.isa + *v10) + v9 - v6);
    v7 += v9 - v6;
    v6 = v9;
  }

  self->lastNS_ = v6;
  return v7;
}

- (int64_t)getTotalStoppedNS
{
  objc_sync_enter(self);
  totalStoppedNS = self->totalStoppedNS_;
  objc_sync_exit(self);
  return totalStoppedNS;
}

- (int64_t)getTotalPausedNS
{
  objc_sync_enter(self);
  totalPausedNS = self->totalPausedNS_;
  objc_sync_exit(self);
  return totalPausedNS;
}

- (void)checkAbort
{
  objc_sync_enter(self);
  if (self->abort_)
  {
    merge = self->merge_;
    if (merge)
    {
      [(OrgApacheLuceneIndexMergePolicy_OneMerge *)merge segString];
      v11 = JreStrcat("$$", v4, v5, v6, v7, v8, v9, v10, @"merge is aborted: ");
      v12 = new_OrgApacheLuceneIndexMergePolicy_MergeAbortedException_initWithNSString_(v11);
      objc_exception_throw(v12);
    }

    JreThrowNullPointerException();
  }

  objc_sync_exit(self);
}

- (void)setAbort
{
  objc_sync_enter(self);
  self->abort_ = 1;
  [(OrgApacheLuceneIndexMergeRateLimiter *)self notify];

  objc_sync_exit(self);
}

- (BOOL)getAbort
{
  objc_sync_enter(self);
  abort = self->abort_;
  objc_sync_exit(self);
  return abort;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMergeRateLimiter;
  [(OrgApacheLuceneIndexMergeRateLimiter *)&v3 dealloc];
}

@end