@interface NSException
- (id)cplReason;
@end

@implementation NSException

- (id)cplReason
{
  v3 = [(NSException *)self reason];
  if (v3)
  {
    if (qword_1002C5590 != -1)
    {
      sub_1001AA380();
    }

    v4 = [qword_1002C5598 stringByReplacingMatchesInString:v3 options:0 range:0 withTemplate:{objc_msgSend(v3, "length"), @"<redacted>"}];
  }

  else
  {
    v5 = [(NSException *)self name];
    v6 = v5;
    v7 = @"unknown exception";
    if (v5)
    {
      v7 = v5;
    }

    v4 = v7;
  }

  return v4;
}

@end