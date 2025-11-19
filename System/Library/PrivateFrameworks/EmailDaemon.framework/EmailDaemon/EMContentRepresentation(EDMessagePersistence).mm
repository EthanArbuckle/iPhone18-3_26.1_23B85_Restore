@interface EMContentRepresentation(EDMessagePersistence)
- (id)requestRepresentationForItemWithObjectID:()EDMessagePersistence options:delegate:completionHandler:;
- (id)requestUpdatedRepresentationWithCompletion:()EDMessagePersistence;
@end

@implementation EMContentRepresentation(EDMessagePersistence)

- (id)requestRepresentationForItemWithObjectID:()EDMessagePersistence options:delegate:completionHandler:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [a1 contentMessage];
  v15 = [v14 objectID];
  v16 = [v10 isEqual:v15];

  if (v16)
  {
    v17 = [a1 contentMessage];
    if (v17)
    {
      goto LABEL_4;
    }
  }

  v18 = [a1 relatedContentItems];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __125__EMContentRepresentation_EDMessagePersistence__requestRepresentationForItemWithObjectID_options_delegate_completionHandler___block_invoke;
  v25[3] = &unk_1E8252200;
  v19 = v10;
  v26 = v19;
  v17 = [v18 ef_firstObjectPassingTest:v25];

  if (v17)
  {
LABEL_4:
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __125__EMContentRepresentation_EDMessagePersistence__requestRepresentationForItemWithObjectID_options_delegate_completionHandler___block_invoke_1;
    v23[3] = &unk_1E8252228;
    v24 = v13;
    v20 = [v17 requestRepresentationWithOptions:v11 delegate:v12 completionHandler:v23];
  }

  else
  {
    v21 = [MEMORY[0x1E696ABC0] em_itemNotFoundErrorWithItemID:v19];
    (*(v13 + 2))(v13, 0, 0, v21);

    v17 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [EMContentRepresentation(EDMessagePersistence) requestRepresentationForItemWithObjectID:v19 options:v17 delegate:? completionHandler:?];
    }

    v20 = 0;
  }

  return v20;
}

- (id)requestUpdatedRepresentationWithCompletion:()EDMessagePersistence
{
  v4 = a3;
  v5 = [a1 requestMoreContentBlock];
  v6 = (v5)[2](v5, v4);

  return v6;
}

- (void)requestRepresentationForItemWithObjectID:()EDMessagePersistence options:delegate:completionHandler:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Failed to find contentItem for objectID: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end