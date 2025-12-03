@interface CKMentionAutoCompleteAttribute
- (CKMentionAutoCompleteAttribute)initWithMentionEntityNode:(id)node originalText:(id)text displayText:(id)displayText;
@end

@implementation CKMentionAutoCompleteAttribute

- (CKMentionAutoCompleteAttribute)initWithMentionEntityNode:(id)node originalText:(id)text displayText:(id)displayText
{
  nodeCopy = node;
  textCopy = text;
  displayTextCopy = displayText;
  v19.receiver = self;
  v19.super_class = CKMentionAutoCompleteAttribute;
  v12 = [(CKMentionAutoCompleteAttribute *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mentionEntityNode, node);
    v14 = [textCopy copy];
    originalText = v13->_originalText;
    v13->_originalText = v14;

    v16 = [displayTextCopy copy];
    displayText = v13->_displayText;
    v13->_displayText = v16;
  }

  return v13;
}

@end