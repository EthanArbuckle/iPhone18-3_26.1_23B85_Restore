@interface SFWebpageStatusBarInfoMessage
- (BOOL)isEqual:(id)equal;
- (NSAttributedString)attributedMessageString;
- (id)initWithString:(id *)string;
@end

@implementation SFWebpageStatusBarInfoMessage

- (NSAttributedString)attributedMessageString
{
  v2 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_message];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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

- (id)initWithString:(id *)string
{
  v4 = a2;
  if (string)
  {
    v7.receiver = string;
    v7.super_class = SFWebpageStatusBarInfoMessage;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    string = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return string;
}

@end