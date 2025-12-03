@interface MADManagedProcessingStatus
+ (id)assetTypePredicatesStringWithMediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes;
+ (int)fetchFirstManagedProcessingStatus:(id *)status predicate:(id)predicate managedObjectContext:(id)context;
+ (int)fetchManagedProcessingStatus:(id *)status taskID:(unint64_t)d localIdentifier:(id)identifier managedObjectContext:(id)context;
+ (int)fetchManagedProcessingStatusBatch:(id *)batch predicate:(id)predicate fetchLimit:(id)limit sortDescriptors:(id)descriptors managedObjectContext:(id)context;
@end

@implementation MADManagedProcessingStatus

+ (int)fetchManagedProcessingStatusBatch:(id *)batch predicate:(id)predicate fetchLimit:(id)limit sortDescriptors:(id)descriptors managedObjectContext:(id)context
{
  v28 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  limitCopy = limit;
  descriptorsCopy = descriptors;
  contextCopy = context;
  if (!batch || limitCopy && [limitCopy longLongValue] <= 0)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADManagedProcessingStatus] Unable to execute fetch request due to invalid fetchResults or fetchLimit", buf, 2u);
    }

    v21 = -50;
  }

  else
  {
    v15 = +[MADManagedProcessingStatus fetchRequest];
    v16 = v15;
    if (predicateCopy)
    {
      [v15 setPredicate:predicateCopy];
    }

    if (limitCopy)
    {
      [v16 setFetchLimit:{objc_msgSend(limitCopy, "longLongValue")}];
    }

    if ([descriptorsCopy count])
    {
      [v16 setSortDescriptors:descriptorsCopy];
    }

    v23 = 0;
    v17 = [contextCopy executeFetchRequest:v16 error:&v23];
    v18 = v23;
    v19 = v17;
    *batch = v17;
    if (v18)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = [v16 debugDescription];
        *buf = 138412546;
        v25 = v20;
        v26 = 2112;
        v27 = v18;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADManagedProcessingStatus] Failed to execute fetch request %@: %@", buf, 0x16u);
      }

      v21 = -18;
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

+ (int)fetchFirstManagedProcessingStatus:(id *)status predicate:(id)predicate managedObjectContext:(id)context
{
  contextCopy = context;
  predicateCopy = predicate;
  v13 = 0;
  v9 = [objc_opt_class() fetchManagedProcessingStatusBatch:&v13 predicate:predicateCopy fetchLimit:&unk_1F49BDC00 sortDescriptors:0 managedObjectContext:contextCopy];

  v10 = v13;
  v11 = v10;
  if (!v9)
  {
    *status = [v10 firstObject];
  }

  return v9;
}

+ (int)fetchManagedProcessingStatus:(id *)status taskID:(unint64_t)d localIdentifier:(id)identifier managedObjectContext:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  if (status)
  {
    v11 = MEMORY[0x1E696AE18];
    localIdentifierColumnName = [objc_opt_class() localIdentifierColumnName];
    taskIDColumnName = [objc_opt_class() taskIDColumnName];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
    v15 = [v11 predicateWithFormat:@"%K == %@ && %K == %@", localIdentifierColumnName, identifierCopy, taskIDColumnName, v14];

    v16 = [objc_opt_class() fetchFirstManagedProcessingStatus:status predicate:v15 managedObjectContext:contextCopy];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Nil return object for managedProcessingStatus", buf, 2u);
    }

    v16 = -50;
  }

  return v16;
}

+ (id)assetTypePredicatesStringWithMediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes
{
  if ((type - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    subtypesCopy = subtypes;
    v7 = MEMORY[0x1E696AD60];
    mediaTypeColumnName = [objc_opt_class() mediaTypeColumnName];
    type = [v7 stringWithFormat:@"%@ == %lld", mediaTypeColumnName, type];

    if (type == 1)
    {
      mediaSubtypesColumnName = [objc_opt_class() mediaSubtypesColumnName];
      v10 = mediaSubtypesColumnName;
      if ((subtypesCopy & 8) != 0)
      {
        v11 = @" && (%@ & %lld) != 0";
      }

      else
      {
        v11 = @" && (%@ & %lld) == 0";
      }

      [type appendFormat:v11, mediaSubtypesColumnName, 8];
    }
  }

  else
  {
    type = 0;
  }

  return type;
}

@end