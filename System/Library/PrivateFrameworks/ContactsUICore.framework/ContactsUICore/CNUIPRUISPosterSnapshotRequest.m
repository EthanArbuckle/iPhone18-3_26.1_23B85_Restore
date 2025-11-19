@interface CNUIPRUISPosterSnapshotRequest
+ (id)requestForConfiguration:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5;
+ (id)requestForConfiguration:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5 windowScene:(id)a6 attachments:(id)a7;
- (CNUIPRUISPosterSnapshotRequest)initWithPosterConfiguration:(id)a3 snapshotDescriptor:(id)a4;
- (CNUIPRUISPosterSnapshotRequest)initWithWrappedRequest:(id)a3;
@end

@implementation CNUIPRUISPosterSnapshotRequest

- (CNUIPRUISPosterSnapshotRequest)initWithPosterConfiguration:(id)a3 snapshotDescriptor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc(getPRUISPosterSnapshotRequestClass());
  v9 = [v7 wrappedPosterConfiguration];

  v10 = [v6 wrappedDescriptor];

  v11 = [v8 initWithPoster:v9 snapshotDescriptor:v10];
  v12 = [CNUIPRUISPosterSnapshotRequest alloc];
  v13 = [v11 copy];
  v14 = [(CNUIPRUISPosterSnapshotRequest *)v12 initWithWrappedRequest:v13];

  return v14;
}

+ (id)requestForConfiguration:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  PRUISPosterSnapshotRequestClass = getPRUISPosterSnapshotRequestClass();
  v10 = [v8 wrappedPosterConfiguration];

  v11 = [v7 wrappedDefinition];

  v12 = [PRUISPosterSnapshotRequestClass snapshotRequestForPRSPosterConfiguration:v10 definition:v11 interfaceOrientation:a5];

  v13 = [CNUIPRUISPosterSnapshotRequest alloc];
  v14 = [v12 copy];
  v15 = [(CNUIPRUISPosterSnapshotRequest *)v13 initWithWrappedRequest:v14];

  return v15;
}

+ (id)requestForConfiguration:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5 windowScene:(id)a6 attachments:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [v14 _cn_map:&__block_literal_global_483];
  PRUISPosterSnapshotRequestClass = getPRUISPosterSnapshotRequestClass();
  v17 = [v11 wrappedPosterConfiguration];
  v18 = [v12 wrappedDefinition];
  v19 = [PRUISPosterSnapshotRequestClass snapshotRequestForPRSPosterConfiguration:v17 definition:v18 interfaceOrientation:a5];

  v20 = [v19 mutableCopy];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v21 = getPRUISPosterAttachmentConfigurationClass_softClass;
  v32 = getPRUISPosterAttachmentConfigurationClass_softClass;
  if (!getPRUISPosterAttachmentConfigurationClass_softClass)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __getPRUISPosterAttachmentConfigurationClass_block_invoke;
    v28[3] = &unk_1E76E79E0;
    v28[4] = &v29;
    __getPRUISPosterAttachmentConfigurationClass_block_invoke(v28);
    v21 = v30[3];
  }

  v22 = v21;
  _Block_object_dispose(&v29, 8);
  v23 = [v21 attachmentConfigurationWithHostWindowScene:v13 attachments:v15];
  [v20 setAttachmentConfiguration:v23];
  v24 = [CNUIPRUISPosterSnapshotRequest alloc];
  v25 = [v20 copy];
  v26 = [(CNUIPRUISPosterSnapshotRequest *)v24 initWithWrappedRequest:v25];

  return v26;
}

- (CNUIPRUISPosterSnapshotRequest)initWithWrappedRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNUIPRUISPosterSnapshotRequest;
  v6 = [(CNUIPRUISPosterSnapshotRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedRequest, a3);
  }

  return v7;
}

@end