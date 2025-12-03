@interface INFSentenceContext
+ (id)sentenceContext;
- (id)combinedWithContext:(id)context;
@end

@implementation INFSentenceContext

- (id)combinedWithContext:(id)context
{
  contextCopy = context;
  v5 = +[INFSentenceContext sentenceContext];
  [v5 setNumber:self->_number];
  [v5 setGender:self->_gender];
  number = [contextCopy number];

  if (number)
  {
    number2 = [contextCopy number];
    [v5 setNumber:number2];
  }

  if ([contextCopy gender])
  {
    [v5 setGender:{objc_msgSend(contextCopy, "gender")}];
  }

  return v5;
}

+ (id)sentenceContext
{
  v2 = objc_alloc_init(self);

  return v2;
}

@end