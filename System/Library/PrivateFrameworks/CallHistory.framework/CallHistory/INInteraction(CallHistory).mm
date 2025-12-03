@interface INInteraction(CallHistory)
+ (id)ch_interactionForIdentifier:()CallHistory error:;
@end

@implementation INInteraction(CallHistory)

+ (id)ch_interactionForIdentifier:()CallHistory error:
{
  v31[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"source.itemID == %@", v5];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v7 = get_DKEventQueryClass_softClass;
  v30 = get_DKEventQueryClass_softClass;
  if (!get_DKEventQueryClass_softClass)
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __get_DKEventQueryClass_block_invoke;
    v25 = &unk_1E81DC190;
    v26 = &v27;
    __get_DKEventQueryClass_block_invoke(&v22);
    v7 = v28[3];
  }

  v8 = v7;
  _Block_object_dispose(&v27, 8);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v9 = get_DKSystemEventStreamsClass_softClass_0;
  v30 = get_DKSystemEventStreamsClass_softClass_0;
  if (!get_DKSystemEventStreamsClass_softClass_0)
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __get_DKSystemEventStreamsClass_block_invoke_0;
    v25 = &unk_1E81DC190;
    v26 = &v27;
    __get_DKSystemEventStreamsClass_block_invoke_0(&v22);
    v9 = v28[3];
  }

  v10 = v9;
  _Block_object_dispose(&v27, 8);
  appIntentsStream = [v9 appIntentsStream];
  v31[0] = appIntentsStream;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v13 = [v7 eventQueryWithPredicate:v6 eventStreams:v12 offset:0 limit:1 sortDescriptors:0];

  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v14 = get_DKKnowledgeStoreClass_softClass;
  v30 = get_DKKnowledgeStoreClass_softClass;
  if (!get_DKKnowledgeStoreClass_softClass)
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __get_DKKnowledgeStoreClass_block_invoke;
    v25 = &unk_1E81DC190;
    v26 = &v27;
    __get_DKKnowledgeStoreClass_block_invoke(&v22);
    v14 = v28[3];
  }

  v15 = v14;
  _Block_object_dispose(&v27, 8);
  knowledgeStore = [v14 knowledgeStore];
  v17 = [knowledgeStore executeQuery:v13 error:a4];

  firstObject = [v17 firstObject];
  interaction = [firstObject interaction];

  v20 = *MEMORY[0x1E69E9840];

  return interaction;
}

@end