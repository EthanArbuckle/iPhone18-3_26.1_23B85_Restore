@interface INFSentenceContext
+ (id)sentenceContext;
- (id)combinedWithContext:(id)a3;
@end

@implementation INFSentenceContext

- (id)combinedWithContext:(id)a3
{
  v4 = a3;
  v5 = +[INFSentenceContext sentenceContext];
  [v5 setNumber:self->_number];
  [v5 setGender:self->_gender];
  v6 = [v4 number];

  if (v6)
  {
    v7 = [v4 number];
    [v5 setNumber:v7];
  }

  if ([v4 gender])
  {
    [v5 setGender:{objc_msgSend(v4, "gender")}];
  }

  return v5;
}

+ (id)sentenceContext
{
  v2 = objc_alloc_init(a1);

  return v2;
}

@end