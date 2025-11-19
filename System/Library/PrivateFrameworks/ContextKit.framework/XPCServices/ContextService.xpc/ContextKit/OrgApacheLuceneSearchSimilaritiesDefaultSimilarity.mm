@interface OrgApacheLuceneSearchSimilaritiesDefaultSimilarity
+ (void)initialize;
- (OrgApacheLuceneSearchSimilaritiesDefaultSimilarity)init;
- (float)decodeNormValueWithLong:(int64_t)a3;
- (float)lengthNormWithOrgApacheLuceneIndexFieldInvertState:(id)a3;
@end

@implementation OrgApacheLuceneSearchSimilaritiesDefaultSimilarity

- (OrgApacheLuceneSearchSimilaritiesDefaultSimilarity)init
{
  OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_init(self, a2);
  self->discountOverlaps_ = 1;
  return self;
}

- (float)decodeNormValueWithLong:(int64_t)a3
{
  if (!qword_100554018)
  {
    JreThrowNullPointerException();
  }

  v3 = *(qword_100554018 + 8);
  if (v3 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, a3);
  }

  return *(qword_100554018 + 12 + 4 * a3);
}

- (float)lengthNormWithOrgApacheLuceneIndexFieldInvertState:(id)a3
{
  if (!self->discountOverlaps_)
  {
    if (a3)
    {
      v5 = [a3 getLength];
      goto LABEL_6;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v4 = [a3 getLength];
  v5 = v4 - [a3 getNumOverlap];
LABEL_6:
  [a3 getBoost];
  v7 = v6;
  v8 = 1.0 / JavaLangMath_sqrtWithDouble_(v5);
  return v7 * v8;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&qword_100554018, [IOSFloatArray newArrayWithLength:256]);
    for (i = 0; i != 256; ++i)
    {
      v3 = OrgApacheLuceneUtilSmallFloat_byte315ToFloatWithByte_(i);
      v4 = *(qword_100554018 + 8);
      if (i >= v4)
      {
        IOSArray_throwOutOfBoundsWithMsg(v4, i);
      }

      *(qword_100554018 + 12 + 4 * i) = LODWORD(v3);
    }

    atomic_store(1u, OrgApacheLuceneSearchSimilaritiesDefaultSimilarity__initialized);
  }
}

@end