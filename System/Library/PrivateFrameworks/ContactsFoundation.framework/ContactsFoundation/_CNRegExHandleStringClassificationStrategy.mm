@interface _CNRegExHandleStringClassificationStrategy
- (unint64_t)classificationOfHandleString:(id)string;
@end

@implementation _CNRegExHandleStringClassificationStrategy

- (unint64_t)classificationOfHandleString:(id)string
{
  stringCopy = string;
  if ([objc_opt_class() doesStringLookLikePhoneNumber:stringCopy])
  {
    v4 = 2;
  }

  else
  {
    v4 = [objc_opt_class() doesStringLookLikeEmailAddress:stringCopy];
  }

  return v4;
}

@end