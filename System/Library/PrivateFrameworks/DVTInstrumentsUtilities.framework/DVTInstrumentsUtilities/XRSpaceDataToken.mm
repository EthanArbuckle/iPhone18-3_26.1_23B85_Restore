@interface XRSpaceDataToken
- (BOOL)isEqual:(id)equal;
- (XRSpaceDataToken)initWithSpaceTag:(id)tag sequenceID:(unint64_t)d;
@end

@implementation XRSpaceDataToken

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = 1;
  if (self != equalCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (self->_tag != equalCopy->_tag || self->_seq != equalCopy->_seq))
    {
      v5 = 0;
    }
  }

  return v5;
}

- (XRSpaceDataToken)initWithSpaceTag:(id)tag sequenceID:(unint64_t)d
{
  tagCopy = tag;
  v11.receiver = self;
  v11.super_class = XRSpaceDataToken;
  v8 = [(XRSpaceDataToken *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_tag, tag);
    v9->_seq = d;
  }

  return v9;
}

@end