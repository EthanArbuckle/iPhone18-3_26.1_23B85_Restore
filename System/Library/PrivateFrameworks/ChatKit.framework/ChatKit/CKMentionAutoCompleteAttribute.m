@interface CKMentionAutoCompleteAttribute
- (CKMentionAutoCompleteAttribute)initWithMentionEntityNode:(id)a3 originalText:(id)a4 displayText:(id)a5;
@end

@implementation CKMentionAutoCompleteAttribute

- (CKMentionAutoCompleteAttribute)initWithMentionEntityNode:(id)a3 originalText:(id)a4 displayText:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = CKMentionAutoCompleteAttribute;
  v12 = [(CKMentionAutoCompleteAttribute *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mentionEntityNode, a3);
    v14 = [v10 copy];
    originalText = v13->_originalText;
    v13->_originalText = v14;

    v16 = [v11 copy];
    displayText = v13->_displayText;
    v13->_displayText = v16;
  }

  return v13;
}

@end