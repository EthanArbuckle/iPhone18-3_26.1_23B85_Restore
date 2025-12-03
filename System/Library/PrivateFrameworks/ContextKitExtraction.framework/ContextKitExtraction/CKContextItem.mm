@interface CKContextItem
- (CKContextItem)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKContextItem

- (CKContextItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CKContextItem;
  v5 = [(CKContextItem *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    if (!v6)
    {
      v11 = 0;
      goto LABEL_6;
    }

    title = v5->_title;
    v5->_title = v6;
    v8 = v6;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topicId"];
    topicId = v5->_topicId;
    v5->_topicId = v9;
  }

  v11 = v5;
LABEL_6:

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_topicId forKey:@"topicId"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [v4 setTitle:self->_title];
  [v4 setTopicId:self->_topicId];
  return v4;
}

- (unint64_t)hash
{
  title = [(CKContextItem *)self title];
  v3 = 31 * [title hash];

  return v3;
}

@end