@interface CNUIPRUISIncomingCallSnapshotDefinition
+ (id)compositeSnapshotDefinitionWithContext:(id)context attachmentIdentifiers:(id)identifiers;
+ (id)contentsAndObscurableContentSnapshotDefinitionWithContext:(id)context attachmentIdentifiers:(id)identifiers;
+ (id)contentsAndOverlayContentSnapshotDefinitionWithContext:(id)context attachmentIdentifiers:(id)identifiers;
+ (id)contentsOnlySnapshotDefinitionWithContext:(id)context attachmentIdentifiers:(id)identifiers;
- (CNUIPRUISIncomingCallSnapshotDefinition)initWithWrappedDefinition:(id)definition;
- (id)levelSets;
@end

@implementation CNUIPRUISIncomingCallSnapshotDefinition

+ (id)compositeSnapshotDefinitionWithContext:(id)context attachmentIdentifiers:(id)identifiers
{
  contextCopy = context;
  identifiersCopy = identifiers;
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
  wrappedIncomingCallPosterContext = [contextCopy wrappedIncomingCallPosterContext];
  v13 = [v8 initWithBaseIdentifier:v11 context:wrappedIncomingCallPosterContext attachmentUniqueIdentifiers:identifiersCopy];

  v14 = [[self alloc] initWithWrappedDefinition:v13];

  return v14;
}

+ (id)contentsAndObscurableContentSnapshotDefinitionWithContext:(id)context attachmentIdentifiers:(id)identifiers
{
  contextCopy = context;
  identifiersCopy = identifiers;
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
  wrappedIncomingCallPosterContext = [contextCopy wrappedIncomingCallPosterContext];
  v13 = [v8 initWithBaseIdentifier:v11 context:wrappedIncomingCallPosterContext attachmentUniqueIdentifiers:identifiersCopy];

  v14 = [[self alloc] initWithWrappedDefinition:v13];

  return v14;
}

+ (id)contentsAndOverlayContentSnapshotDefinitionWithContext:(id)context attachmentIdentifiers:(id)identifiers
{
  contextCopy = context;
  identifiersCopy = identifiers;
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
  wrappedIncomingCallPosterContext = [contextCopy wrappedIncomingCallPosterContext];
  v13 = [v8 initWithBaseIdentifier:v11 context:wrappedIncomingCallPosterContext attachmentUniqueIdentifiers:identifiersCopy];

  v14 = [[self alloc] initWithWrappedDefinition:v13];

  return v14;
}

+ (id)contentsOnlySnapshotDefinitionWithContext:(id)context attachmentIdentifiers:(id)identifiers
{
  contextCopy = context;
  identifiersCopy = identifiers;
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
  wrappedIncomingCallPosterContext = [contextCopy wrappedIncomingCallPosterContext];
  v13 = [v8 initWithBaseIdentifier:v11 context:wrappedIncomingCallPosterContext attachmentUniqueIdentifiers:identifiersCopy];

  v14 = [[self alloc] initWithWrappedDefinition:v13];

  return v14;
}

- (CNUIPRUISIncomingCallSnapshotDefinition)initWithWrappedDefinition:(id)definition
{
  definitionCopy = definition;
  v9.receiver = self;
  v9.super_class = CNUIPRUISIncomingCallSnapshotDefinition;
  v6 = [(CNUIPRUISIncomingCallSnapshotDefinition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedDefinition, definition);
  }

  return v7;
}

- (id)levelSets
{
  levelSets = [(PRUISIncomingCallSnapshotDefinition *)self->_wrappedDefinition levelSets];
  v3 = [levelSets _cn_map:&__block_literal_global_403];

  return v3;
}

CNUIPRPosterLevelSet *__52__CNUIPRUISIncomingCallSnapshotDefinition_levelSets__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNUIPRPosterLevelSet alloc] initWithWrappedLevelSet:v2];

  return v3;
}

@end