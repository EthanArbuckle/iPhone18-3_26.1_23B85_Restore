@interface OrgApacheLuceneStoreMergeInfo
- (BOOL)isEqual:(id)a3;
- (OrgApacheLuceneStoreMergeInfo)initWithInt:(int)a3 withLong:(int64_t)a4 withBoolean:(BOOL)a5 withInt:(int)a6;
- (id)description;
- (unint64_t)hash;
@end

@implementation OrgApacheLuceneStoreMergeInfo

- (OrgApacheLuceneStoreMergeInfo)initWithInt:(int)a3 withLong:(int64_t)a4 withBoolean:(BOOL)a5 withInt:(int)a6
{
  self->totalMaxDoc_ = a3;
  self->estimatedMergeBytes_ = a4;
  self->isExternal_ = a5;
  self->mergeMaxNumSegments_ = a6;
  return self;
}

- (unint64_t)hash
{
  if (self->isExternal_)
  {
    v3 = 2192;
  }

  else
  {
    v3 = 2198;
  }

  v2 = HIDWORD(self->estimatedMergeBytes_) ^ LODWORD(self->estimatedMergeBytes_);
  v4 = self->mergeMaxNumSegments_ - (v3 - v2 + 32 * v2) + 32 * (v3 - v2 + 32 * v2);
  return self->totalMaxDoc_ - v4 + 32 * v4;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  if (a3)
  {
    v5 = [(OrgApacheLuceneStoreMergeInfo *)self getClass];
    if (v5 == [a3 getClass])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      if (self->estimatedMergeBytes_ == *(a3 + 2) && self->isExternal_ == *(a3 + 24) && self->mergeMaxNumSegments_ == *(a3 + 7))
      {
        return self->totalMaxDoc_ == *(a3 + 2);
      }
    }
  }

  return 0;
}

- (id)description
{
  mergeMaxNumSegments = self->mergeMaxNumSegments_;
  isExternal = self->isExternal_;
  estimatedMergeBytes = self->estimatedMergeBytes_;
  totalMaxDoc = self->totalMaxDoc_;
  return JreStrcat("$I$J$Z$IC", a2, v2, v3, v4, v5, v6, v7, @"MergeInfo [totalMaxDoc=");
}

@end