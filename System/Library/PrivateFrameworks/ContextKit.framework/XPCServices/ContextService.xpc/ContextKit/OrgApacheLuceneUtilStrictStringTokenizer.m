@interface OrgApacheLuceneUtilStrictStringTokenizer
- (OrgApacheLuceneUtilStrictStringTokenizer)initWithNSString:(id)a3 withChar:(unsigned __int16)a4;
- (id)nextToken;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilStrictStringTokenizer

- (OrgApacheLuceneUtilStrictStringTokenizer)initWithNSString:(id)a3 withChar:(unsigned __int16)a4
{
  JreStrongAssign(&self->s_, a3);
  self->delimiter_ = a4;
  return self;
}

- (id)nextToken
{
  if (self->pos_ < 0)
  {
    v9 = new_JavaLangIllegalStateException_initWithNSString_(@"no more tokens");
    objc_exception_throw(v9);
  }

  s = self->s_;
  if (!s)
  {
    JreThrowNullPointerException();
  }

  v4 = [(NSString *)s indexOf:self->delimiter_ fromIndex:?];
  v5 = self->s_;
  pos = self->pos_;
  if ((v4 & 0x80000000) != 0)
  {
    result = [(NSString *)v5 substring:pos];
    v8 = -1;
  }

  else
  {
    result = [(NSString *)v5 substring:pos endIndex:v4];
    v8 = v4 + 1;
  }

  self->pos_ = v8;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilStrictStringTokenizer;
  [(OrgApacheLuceneUtilStrictStringTokenizer *)&v3 dealloc];
}

@end