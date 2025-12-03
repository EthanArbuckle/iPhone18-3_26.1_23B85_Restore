@interface NSException
- (id)cplReason;
@end

@implementation NSException

- (id)cplReason
{
  reason = [(NSException *)self reason];
  if (reason)
  {
    if (qword_1002C5590 != -1)
    {
      sub_1001AA380();
    }

    v4 = [qword_1002C5598 stringByReplacingMatchesInString:reason options:0 range:0 withTemplate:{objc_msgSend(reason, "length"), @"<redacted>"}];
  }

  else
  {
    name = [(NSException *)self name];
    v6 = name;
    v7 = @"unknown exception";
    if (name)
    {
      v7 = name;
    }

    v4 = v7;
  }

  return v4;
}

@end