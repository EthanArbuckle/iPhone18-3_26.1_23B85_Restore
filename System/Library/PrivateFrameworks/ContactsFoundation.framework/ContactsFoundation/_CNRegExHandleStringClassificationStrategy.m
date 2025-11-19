@interface _CNRegExHandleStringClassificationStrategy
- (unint64_t)classificationOfHandleString:(id)a3;
@end

@implementation _CNRegExHandleStringClassificationStrategy

- (unint64_t)classificationOfHandleString:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() doesStringLookLikePhoneNumber:v3])
  {
    v4 = 2;
  }

  else
  {
    v4 = [objc_opt_class() doesStringLookLikeEmailAddress:v3];
  }

  return v4;
}

@end