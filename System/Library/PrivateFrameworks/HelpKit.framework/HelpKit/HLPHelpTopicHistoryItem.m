@interface HLPHelpTopicHistoryItem
- (CGPoint)contentOffset;
- (CGSize)contentSize;
- (HLPHelpTopicHistoryItem)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HLPHelpTopicHistoryItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HLPHelpTopicHistoryItem allocWithZone:a3];
  [(HLPHelpTopicHistoryItem *)v4 setIdentifier:self->_identifier];
  [(HLPHelpTopicHistoryItem *)v4 setName:self->_name];
  [(HLPHelpTopicHistoryItem *)v4 setContentSize:self->_contentSize.width, self->_contentSize.height];
  [(HLPHelpTopicHistoryItem *)v4 setContentOffset:self->_contentOffset.x, self->_contentOffset.y];
  [(HLPHelpTopicHistoryItem *)v4 setAnchor:self->_anchor];
  return v4;
}

- (HLPHelpTopicHistoryItem)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HLPHelpTopicHistoryItem;
  v5 = [(HLPHelpTopicHistoryItem *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"HLPHelpHistoryIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectForKey:@"HLPHelpHistoryName"];
    name = v5->_name;
    v5->_name = v8;

    [v4 decodeCGPointForKey:@"HLPHelpHistoryContentOffset"];
    v5->_contentOffset.x = v10;
    v5->_contentOffset.y = v11;
    [v4 decodeCGSizeForKey:@"HLPHelpHistoryContentSize"];
    v5->_contentSize.width = v12;
    v5->_contentSize.height = v13;
    v14 = [v4 decodeObjectForKey:@"HLPHelpHistoryAnchor"];
    anchor = v5->_anchor;
    v5->_anchor = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"HLPHelpHistoryIdentifier"];
  [v5 encodeObject:self->_name forKey:@"HLPHelpHistoryName"];
  [v5 encodeCGPoint:@"HLPHelpHistoryContentOffset" forKey:{self->_contentOffset.x, self->_contentOffset.y}];
  [v5 encodeCGSize:@"HLPHelpHistoryContentSize" forKey:{self->_contentSize.width, self->_contentSize.height}];
  [v5 encodeObject:self->_anchor forKey:@"HLPHelpHistoryAnchor"];
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