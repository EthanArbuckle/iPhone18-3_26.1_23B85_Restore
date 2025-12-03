@interface ICMarkupUtilities(UI)
+ (id)dataToEditForAttachment:()UI includeMarkupModelData:embedMarkupModelDataInImage:;
@end

@implementation ICMarkupUtilities(UI)

+ (id)dataToEditForAttachment:()UI includeMarkupModelData:embedMarkupModelDataInImage:
{
  v8 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__73;
  v23 = __Block_byref_object_dispose__73;
  v24 = 0;
  managedObjectContext = [v8 managedObjectContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__ICMarkupUtilities_UI__dataToEditForAttachment_includeMarkupModelData_embedMarkupModelDataInImage___block_invoke;
  v13[3] = &unk_1E846DF70;
  v10 = v8;
  v14 = v10;
  v15 = &v19;
  v17 = a4;
  selfCopy = self;
  v18 = a5;
  [managedObjectContext performBlockAndWait:v13];

  v11 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v11;
}

@end