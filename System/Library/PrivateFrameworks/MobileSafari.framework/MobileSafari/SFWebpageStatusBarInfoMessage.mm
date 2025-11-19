@interface SFWebpageStatusBarInfoMessage
- (BOOL)isEqual:(id)a3;
- (NSAttributedString)attributedMessageString;
- (id)initWithString:(id *)a1;
@end

@implementation SFWebpageStatusBarInfoMessage

- (NSAttributedString)attributedMessageString
{
  v2 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_message];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = WBSIsEqual();
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)initWithString:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = SFWebpageStatusBarInfoMessage;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

@end