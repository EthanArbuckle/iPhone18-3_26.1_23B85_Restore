@interface CNUIPRUISIncomingCallSnapshotDefinition
+ (id)compositeSnapshotDefinitionWithContext:(id)a3 attachmentIdentifiers:(id)a4;
+ (id)contentsAndObscurableContentSnapshotDefinitionWithContext:(id)a3 attachmentIdentifiers:(id)a4;
+ (id)contentsAndOverlayContentSnapshotDefinitionWithContext:(id)a3 attachmentIdentifiers:(id)a4;
+ (id)contentsOnlySnapshotDefinitionWithContext:(id)a3 attachmentIdentifiers:(id)a4;
- (CNUIPRUISIncomingCallSnapshotDefinition)initWithWrappedDefinition:(id)a3;
- (id)levelSets;
@end

@implementation CNUIPRUISIncomingCallSnapshotDefinition

+ (id)compositeSnapshotDefinitionWithContext:(id)a3 attachmentIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(getPRUISIncomingCallSnapshotDefinitionClass());
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v9 = getPRPosterSnapshotDefinitionIdentifierIncomingCallCompositeSymbolLoc_ptr;
  v20 = getPRPosterSnapshotDefinitionIdentifierIncomingCallCompositeSymbolLoc_ptr;
  if (!getPRPosterSnapshotDefinitionIdentifierIncomingCallCompositeSymbolLoc_ptr)
  {
    v10 = PosterBoardUIServicesLibrary();
    v18[3] = dlsym(v10, "PRPosterSnapshotDefinitionIdentifierIncomingCallComposite");
    getPRPosterSnapshotDefinitionIdentifierIncomingCallCompositeSymbolLoc_ptr = v18[3];
    v9 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v9)
  {
    v16 = +[CNUIIDSRequest IDSServiceForService:];
    _Block_object_dispose(&v17, 8);
    _Unwind_Resume(v16);
  }

  v11 = *v9;
  v12 = [v6 wrappedIncomingCallPosterContext];
  v13 = [v8 initWithBaseIdentifier:v11 context:v12 attachmentUniqueIdentifiers:v7];

  v14 = [[a1 alloc] initWithWrappedDefinition:v13];

  return v14;
}

+ (id)contentsAndObscurableContentSnapshotDefinitionWithContext:(id)a3 attachmentIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(getPRUISIncomingCallSnapshotDefinitionClass());
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v9 = getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentViewSymbolLoc_ptr;
  v20 = getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentViewSymbolLoc_ptr;
  if (!getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentViewSymbolLoc_ptr)
  {
    v10 = PosterBoardUIServicesLibrary();
    v18[3] = dlsym(v10, "PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentView");
    getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentViewSymbolLoc_ptr = v18[3];
    v9 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v9)
  {
    v16 = +[CNUIIDSRequest IDSServiceForService:];
    _Block_object_dispose(&v17, 8);
    _Unwind_Resume(v16);
  }

  v11 = *v9;
  v12 = [v6 wrappedIncomingCallPosterContext];
  v13 = [v8 initWithBaseIdentifier:v11 context:v12 attachmentUniqueIdentifiers:v7];

  v14 = [[a1 alloc] initWithWrappedDefinition:v13];

  return v14;
}

+ (id)contentsAndOverlayContentSnapshotDefinitionWithContext:(id)a3 attachmentIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(getPRUISIncomingCallSnapshotDefinitionClass());
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v9 = getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithOverlaySymbolLoc_ptr;
  v20 = getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithOverlaySymbolLoc_ptr;
  if (!getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithOverlaySymbolLoc_ptr)
  {
    v10 = PosterBoardUIServicesLibrary();
    v18[3] = dlsym(v10, "PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithOverlay");
    getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithOverlaySymbolLoc_ptr = v18[3];
    v9 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v9)
  {
    v16 = +[CNUIIDSRequest IDSServiceForService:];
    _Block_object_dispose(&v17, 8);
    _Unwind_Resume(v16);
  }

  v11 = *v9;
  v12 = [v6 wrappedIncomingCallPosterContext];
  v13 = [v8 initWithBaseIdentifier:v11 context:v12 attachmentUniqueIdentifiers:v7];

  v14 = [[a1 alloc] initWithWrappedDefinition:v13];

  return v14;
}

+ (id)contentsOnlySnapshotDefinitionWithContext:(id)a3 attachmentIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(getPRUISIncomingCallSnapshotDefinitionClass());
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v9 = getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnlySymbolLoc_ptr;
  v20 = getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnlySymbolLoc_ptr;
  if (!getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnlySymbolLoc_ptr)
  {
    v10 = PosterBoardUIServicesLibrary();
    v18[3] = dlsym(v10, "PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnly");
    getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnlySymbolLoc_ptr = v18[3];
    v9 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v9)
  {
    v16 = +[CNUIIDSRequest IDSServiceForService:];
    _Block_object_dispose(&v17, 8);
    _Unwind_Resume(v16);
  }

  v11 = *v9;
  v12 = [v6 wrappedIncomingCallPosterContext];
  v13 = [v8 initWithBaseIdentifier:v11 context:v12 attachmentUniqueIdentifiers:v7];

  v14 = [[a1 alloc] initWithWrappedDefinition:v13];

  return v14;
}

- (CNUIPRUISIncomingCallSnapshotDefinition)initWithWrappedDefinition:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNUIPRUISIncomingCallSnapshotDefinition;
  v6 = [(CNUIPRUISIncomingCallSnapshotDefinition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedDefinition, a3);
  }

  return v7;
}

- (id)levelSets
{
  v2 = [(PRUISIncomingCallSnapshotDefinition *)self->_wrappedDefinition levelSets];
  v3 = [v2 _cn_map:&__block_literal_global_403];

  return v3;
}

CNUIPRPosterLevelSet *__52__CNUIPRUISIncomingCallSnapshotDefinition_levelSets__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNUIPRPosterLevelSet alloc] initWithWrappedLevelSet:v2];

  return v3;
}

@end