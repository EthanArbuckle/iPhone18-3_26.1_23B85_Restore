@interface CKMentionAutoCompleteNodeId
- (CKMentionAutoCompleteNodeId)initWithKeys:(id)keys;
- (id)nodeIdByAppendingKey:(id)key;
@end

@implementation CKMentionAutoCompleteNodeId

- (CKMentionAutoCompleteNodeId)initWithKeys:(id)keys
{
  keysCopy = keys;
  v9.receiver = self;
  v9.super_class = CKMentionAutoCompleteNodeId;
  v5 = [(CKMentionAutoCompleteNodeId *)&v9 init];
  if (v5)
  {
    v6 = [keysCopy copy];
    keys = v5->_keys;
    v5->_keys = v6;
  }

  return v5;
}

- (id)nodeIdByAppendingKey:(id)key
{
  keyCopy = key;
  keys = [(CKMentionAutoCompleteNodeId *)self keys];
  v6 = [keys arrayByAddingObject:keyCopy];

  v7 = [objc_alloc(objc_opt_class()) initWithKeys:v6];

  return v7;
}

@end