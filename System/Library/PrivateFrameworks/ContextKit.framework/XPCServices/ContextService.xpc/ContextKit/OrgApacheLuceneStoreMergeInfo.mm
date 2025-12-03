@interface OrgApacheLuceneStoreMergeInfo
- (BOOL)isEqual:(id)equal;
- (OrgApacheLuceneStoreMergeInfo)initWithInt:(int)int withLong:(int64_t)long withBoolean:(BOOL)boolean withInt:(int)withInt;
- (id)description;
- (unint64_t)hash;
@end

@implementation OrgApacheLuceneStoreMergeInfo

- (OrgApacheLuceneStoreMergeInfo)initWithInt:(int)int withLong:(int64_t)long withBoolean:(BOOL)boolean withInt:(int)withInt
{
  self->totalMaxDoc_ = int;
  self->estimatedMergeBytes_ = long;
  self->isExternal_ = boolean;
  self->mergeMaxNumSegments_ = withInt;
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

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  if (equal)
  {
    getClass = [(OrgApacheLuceneStoreMergeInfo *)self getClass];
    if (getClass == [equal getClass])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      if (self->estimatedMergeBytes_ == *(equal + 2) && self->isExternal_ == *(equal + 24) && self->mergeMaxNumSegments_ == *(equal + 7))
      {
        return self->totalMaxDoc_ == *(equal + 2);
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