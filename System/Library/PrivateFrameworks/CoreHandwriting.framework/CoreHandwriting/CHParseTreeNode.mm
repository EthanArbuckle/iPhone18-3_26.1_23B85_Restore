@interface CHParseTreeNode
- (CHParseTreeNode)initWithName:(id)a3 inputRange:(_NSRange)a4;
- (_NSRange)inputRange;
@end

@implementation CHParseTreeNode

- (CHParseTreeNode)initWithName:(id)a3 inputRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v14 = objc_msgSend_init(self, v9, v10, v11, v12, v13);
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((v14 + 8), a3);
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