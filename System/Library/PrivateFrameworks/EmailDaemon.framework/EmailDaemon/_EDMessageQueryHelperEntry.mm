@interface _EDMessageQueryHelperEntry
- (BOOL)isEqual:(id)equal;
- (_EDMessageQueryHelperEntry)initWithMessage:(id)message sortDescriptors:(id)descriptors sectionPredicates:(id)predicates;
- (int64_t)globalMessageID;
@end

@implementation _EDMessageQueryHelperEntry

- (_EDMessageQueryHelperEntry)initWithMessage:(id)message sortDescriptors:(id)descriptors sectionPredicates:(id)predicates
{
  messageCopy = message;
  descriptorsCopy = descriptors;
  predicatesCopy = predicates;
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
    v12 = messageCopy;
    v28 = v12;
    v29 = &v30;
    [predicatesCopy enumerateKeysAndObjectsUsingBlock:&v24];
    v11->_sectionIndex = v31[3];
    if ([descriptorsCopy count])
    {
      firstObject = [descriptorsCopy firstObject];
      v14 = [firstObject key];
      v15 = [v12 valueForKeyPath:v14];
      primarySortValue = v11->_primarySortValue;
      v11->_primarySortValue = v15;
    }

    if ([descriptorsCopy count] >= 2)
    {
      v17 = [descriptorsCopy objectAtIndexedSubscript:1];
      v18 = [v17 key];
      v19 = [v12 valueForKeyPath:v18];
      secondarySortValue = v11->_secondarySortValue;
      v11->_secondarySortValue = v19;
    }

    objectID = [v12 objectID];
    messageObjectID = v11->_messageObjectID;
    v11->_messageObjectID = objectID;

    _Block_object_dispose(&v30, 8);
  }

  return v11;
}

- (int64_t)globalMessageID
{
  messageObjectID = [(_EDMessageQueryHelperEntry *)self messageObjectID];
  globalMessageID = [messageObjectID globalMessageID];

  return globalMessageID;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    globalMessageID = [(_EDMessageQueryHelperEntry *)self globalMessageID];
    v6 = globalMessageID == [equalCopy globalMessageID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end