@interface _SFDropSession
+ (BOOL)dropSession:(id)session containsItemsMatching:(void *)matching allowedTypeIdentifiers:(id)identifiers allowedClasses:(id)classes;
+ (void)dropSession:(id)session loadObjectsUsingLocalObjectLoader:(void *)loader objectLoader:(void *)objectLoader completionHandler:(id)handler;
@end

@implementation _SFDropSession

+ (BOOL)dropSession:(id)session containsItemsMatching:(void *)matching allowedTypeIdentifiers:(id)identifiers allowedClasses:(id)classes
{
  sessionCopy = session;
  identifiersCopy = identifiers;
  classesCopy = classes;
  localDragSession = [sessionCopy localDragSession];

  if (matching && localDragSession && ([sessionCopy items], v13 = objc_claimAutoreleasedReturnValue(), v22[0] = MEMORY[0x1E69E9820], v22[1] = 3221225472, v22[2] = __90___SFDropSession_dropSession_containsItemsMatching_allowedTypeIdentifiers_allowedClasses___block_invoke, v22[3] = &__block_descriptor_40_e20_B16__0__UIDragItem_8l, v22[4] = matching, v14 = objc_msgSend(v13, "safari_containsObjectPassingTest:", v22), v13, (v14 & 1) != 0))
  {
    v15 = 1;
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __90___SFDropSession_dropSession_containsItemsMatching_allowedTypeIdentifiers_allowedClasses___block_invoke_2;
    aBlock[3] = &unk_1E721C5A8;
    v20 = classesCopy;
    v16 = sessionCopy;
    v21 = v16;
    v17 = _Block_copy(aBlock);
    if ([identifiersCopy count] && (objc_msgSend(v16, "hasItemsConformingToTypeIdentifiers:", identifiersCopy) & 1) != 0)
    {
      v15 = 1;
    }

    else
    {
      v15 = v17[2](v17);
    }
  }

  return v15;
}

+ (void)dropSession:(id)session loadObjectsUsingLocalObjectLoader:(void *)loader objectLoader:(void *)objectLoader completionHandler:(id)handler
{
  v9 = MEMORY[0x1E69DC990];
  handlerCopy = handler;
  items = [session items];
  [v9 _sf_loadObjectsFromDragItems:items usingLocalObjectLoader:loader objectLoader:objectLoader completionHandler:handlerCopy];
}

@end