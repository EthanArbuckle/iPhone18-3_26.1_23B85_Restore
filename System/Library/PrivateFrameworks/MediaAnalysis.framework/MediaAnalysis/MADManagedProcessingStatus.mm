@interface MADManagedProcessingStatus
+ (id)assetTypePredicatesStringWithMediaType:(int64_t)a3 mediaSubtypes:(unint64_t)a4;
+ (int)fetchFirstManagedProcessingStatus:(id *)a3 predicate:(id)a4 managedObjectContext:(id)a5;
+ (int)fetchManagedProcessingStatus:(id *)a3 taskID:(unint64_t)a4 localIdentifier:(id)a5 managedObjectContext:(id)a6;
+ (int)fetchManagedProcessingStatusBatch:(id *)a3 predicate:(id)a4 fetchLimit:(id)a5 sortDescriptors:(id)a6 managedObjectContext:(id)a7;
@end

@implementation MADManagedProcessingStatus

+ (int)fetchManagedProcessingStatusBatch:(id *)a3 predicate:(id)a4 fetchLimit:(id)a5 sortDescriptors:(id)a6 managedObjectContext:(id)a7
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (!a3 || v12 && [v12 longLongValue] <= 0)
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
    if (v11)
    {
      [v15 setPredicate:v11];
    }

    if (v12)
    {
      [v16 setFetchLimit:{objc_msgSend(v12, "longLongValue")}];
    }

    if ([v13 count])
    {
      [v16 setSortDescriptors:v13];
    }

    v23 = 0;
    v17 = [v14 executeFetchRequest:v16 error:&v23];
    v18 = v23;
    v19 = v17;
    *a3 = v17;
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

+ (int)fetchFirstManagedProcessingStatus:(id *)a3 predicate:(id)a4 managedObjectContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v13 = 0;
  v9 = [objc_opt_class() fetchManagedProcessingStatusBatch:&v13 predicate:v8 fetchLimit:&unk_1F49BDC00 sortDescriptors:0 managedObjectContext:v7];

  v10 = v13;
  v11 = v10;
  if (!v9)
  {
    *a3 = [v10 firstObject];
  }

  return v9;
}

+ (int)fetchManagedProcessingStatus:(id *)a3 taskID:(unint64_t)a4 localIdentifier:(id)a5 managedObjectContext:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (a3)
  {
    v11 = MEMORY[0x1E696AE18];
    v12 = [objc_opt_class() localIdentifierColumnName];
    v13 = [objc_opt_class() taskIDColumnName];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v15 = [v11 predicateWithFormat:@"%K == %@ && %K == %@", v12, v9, v13, v14];

    v16 = [objc_opt_class() fetchFirstManagedProcessingStatus:a3 predicate:v15 managedObjectContext:v10];
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

+ (id)assetTypePredicatesStringWithMediaType:(int64_t)a3 mediaSubtypes:(unint64_t)a4
{
  if ((a3 - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v5 = a4;
    v7 = MEMORY[0x1E696AD60];
    v8 = [objc_opt_class() mediaTypeColumnName];
    v4 = [v7 stringWithFormat:@"%@ == %lld", v8, a3];

    if (a3 == 1)
    {
      v9 = [objc_opt_class() mediaSubtypesColumnName];
      v10 = v9;
      if ((v5 & 8) != 0)
      {
        v11 = @" && (%@ & %lld) != 0";
      }

      else
      {
        v11 = @" && (%@ & %lld) == 0";
      }

      [v4 appendFormat:v11, v9, 8];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end