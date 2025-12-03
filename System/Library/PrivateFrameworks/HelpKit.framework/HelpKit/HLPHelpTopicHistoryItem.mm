@interface HLPHelpTopicHistoryItem
- (CGPoint)contentOffset;
- (CGSize)contentSize;
- (HLPHelpTopicHistoryItem)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HLPHelpTopicHistoryItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HLPHelpTopicHistoryItem allocWithZone:zone];
  [(HLPHelpTopicHistoryItem *)v4 setIdentifier:self->_identifier];
  [(HLPHelpTopicHistoryItem *)v4 setName:self->_name];
  [(HLPHelpTopicHistoryItem *)v4 setContentSize:self->_contentSize.width, self->_contentSize.height];
  [(HLPHelpTopicHistoryItem *)v4 setContentOffset:self->_contentOffset.x, self->_contentOffset.y];
  [(HLPHelpTopicHistoryItem *)v4 setAnchor:self->_anchor];
  return v4;
}

- (HLPHelpTopicHistoryItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = HLPHelpTopicHistoryItem;
  v5 = [(HLPHelpTopicHistoryItem *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"HLPHelpHistoryIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectForKey:@"HLPHelpHistoryName"];
    name = v5->_name;
    v5->_name = v8;

    [coderCopy decodeCGPointForKey:@"HLPHelpHistoryContentOffset"];
    v5->_contentOffset.x = v10;
    v5->_contentOffset.y = v11;
    [coderCopy decodeCGSizeForKey:@"HLPHelpHistoryContentSize"];
    v5->_contentSize.width = v12;
    v5->_contentSize.height = v13;
    v14 = [coderCopy decodeObjectForKey:@"HLPHelpHistoryAnchor"];
    anchor = v5->_anchor;
    v5->_anchor = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"HLPHelpHistoryIdentifier"];
  [coderCopy encodeObject:self->_name forKey:@"HLPHelpHistoryName"];
  [coderCopy encodeCGPoint:@"HLPHelpHistoryContentOffset" forKey:{self->_contentOffset.x, self->_contentOffset.y}];
  [coderCopy encodeCGSize:@"HLPHelpHistoryContentSize" forKey:{self->_contentSize.width, self->_contentSize.height}];
  [coderCopy encodeObject:self->_anchor forKey:@"HLPHelpHistoryAnchor"];
}

- (CGPoint)contentOffset
{
  x = self->_contentOffset.x;
  y = self->_contentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end