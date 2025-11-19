@interface CKMentionAutoCompleteNodeId
- (CKMentionAutoCompleteNodeId)initWithKeys:(id)a3;
- (id)nodeIdByAppendingKey:(id)a3;
@end

@implementation CKMentionAutoCompleteNodeId

- (CKMentionAutoCompleteNodeId)initWithKeys:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKMentionAutoCompleteNodeId;
  v5 = [(CKMentionAutoCompleteNodeId *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    keys = v5->_keys;
    v5->_keys = v6;
  }

  return v5;
}

- (id)nodeIdByAppendingKey:(id)a3
{
  v4 = a3;
  v5 = [(CKMentionAutoCompleteNodeId *)self keys];
  v6 = [v5 arrayByAddingObject:v4];

  v7 = [objc_alloc(objc_opt_class()) initWithKeys:v6];

  return v7;
}

@end