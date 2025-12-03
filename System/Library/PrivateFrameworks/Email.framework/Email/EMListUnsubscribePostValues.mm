@interface EMListUnsubscribePostValues
- (BOOL)isEqual:(id)equal;
- (EMListUnsubscribePostValues)initWithCoder:(id)coder;
- (EMListUnsubscribePostValues)initWithURL:(id)l postContent:(id)content;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMListUnsubscribePostValues

- (EMListUnsubscribePostValues)initWithURL:(id)l postContent:(id)content
{
  lCopy = l;
  contentCopy = content;
  v14.receiver = self;
  v14.super_class = EMListUnsubscribePostValues;
  v8 = [(EMListUnsubscribePostValues *)&v14 init];
  if (v8)
  {
    v9 = [lCopy copy];
    oneClickURL = v8->_oneClickURL;
    v8->_oneClickURL = v9;

    v11 = [contentCopy copy];
    postContent = v8->_postContent;
    v8->_postContent = v11;
  }

  return v8;
}

- (EMListUnsubscribePostValues)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = EMListUnsubscribePostValues;
  v5 = [(EMListUnsubscribePostValues *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_oneClickURL"];
    oneClickURL = v5->_oneClickURL;
    v5->_oneClickURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_postContent"];
    postContent = v5->_postContent;
    v5->_postContent = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  oneClickURL = [(EMListUnsubscribePostValues *)self oneClickURL];
  [coderCopy encodeObject:oneClickURL forKey:@"EFPropertyKey_oneClickURL"];

  postContent = [(EMListUnsubscribePostValues *)self postContent];
  [coderCopy encodeObject:postContent forKey:@"EFPropertyKey_postContent"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    oneClickURL = self->_oneClickURL;
    oneClickURL = [v5 oneClickURL];
    if (EFObjectsAreEqual())
    {
      postContent = self->_postContent;
      postContent = [v5 postContent];
      EFObjectsAreEqual();
    }
  }

  return 0;
}

@end