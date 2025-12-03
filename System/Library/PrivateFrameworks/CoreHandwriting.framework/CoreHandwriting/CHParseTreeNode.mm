@interface CHParseTreeNode
- (CHParseTreeNode)initWithName:(id)name inputRange:(_NSRange)range;
- (_NSRange)inputRange;
@end

@implementation CHParseTreeNode

- (CHParseTreeNode)initWithName:(id)name inputRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  nameCopy = name;
  v14 = objc_msgSend_init(self, v9, v10, v11, v12, v13);
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((v14 + 8), name);
    v15->_inputRange.location = location;
    v15->_inputRange.length = length;
  }

  return v15;
}

- (_NSRange)inputRange
{
  length = self->_inputRange.length;
  location = self->_inputRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end