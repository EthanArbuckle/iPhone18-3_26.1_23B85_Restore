@interface _EDMessageQueryHelperEntry
- (BOOL)isEqual:(id)a3;
- (_EDMessageQueryHelperEntry)initWithMessage:(id)a3 sortDescriptors:(id)a4 sectionPredicates:(id)a5;
- (int64_t)globalMessageID;
@end

@implementation _EDMessageQueryHelperEntry

- (_EDMessageQueryHelperEntry)initWithMessage:(id)a3 sortDescriptors:(id)a4 sectionPredicates:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v34.receiver = self;
  v34.super_class = _EDMessageQueryHelperEntry;
  v11 = [(_EDMessageQueryHelperEntry *)&v34 init];
  if (v11)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = *MEMORY[0x1E699A7F8];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __80___EDMessageQueryHelperEntry_initWithMessage_sortDescriptors_sectionPredicates___block_invoke;
    v27 = &unk_1E8254F98;
    v12 = v8;
    v28 = v12;
    v29 = &v30;
    [v10 enumerateKeysAndObjectsUsingBlock:&v24];
    v11->_sectionIndex = v31[3];
    if ([v9 count])
    {
      v13 = [v9 firstObject];
      v14 = [v13 key];
      v15 = [v12 valueForKeyPath:v14];
      primarySortValue = v11->_primarySortValue;
      v11->_primarySortValue = v15;
    }

    if ([v9 count] >= 2)
    {
      v17 = [v9 objectAtIndexedSubscript:1];
      v18 = [v17 key];
      v19 = [v12 valueForKeyPath:v18];
      secondarySortValue = v11->_secondarySortValue;
      v11->_secondarySortValue = v19;
    }

    v21 = [v12 objectID];
    messageObjectID = v11->_messageObjectID;
    v11->_messageObjectID = v21;

    _Block_object_dispose(&v30, 8);
  }

  return v11;
}

- (int64_t)globalMessageID
{
  v2 = [(_EDMessageQueryHelperEntry *)self messageObjectID];
  v3 = [v2 globalMessageID];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(_EDMessageQueryHelperEntry *)self globalMessageID];
    v6 = v5 == [v4 globalMessageID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end