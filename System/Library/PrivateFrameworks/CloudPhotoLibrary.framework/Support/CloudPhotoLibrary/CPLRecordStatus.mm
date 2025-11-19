@interface CPLRecordStatus
- (id)initFromPQLResultSet:(id)a3 center:(id)a4 error:(id *)a5;
@end

@implementation CPLRecordStatus

- (id)initFromPQLResultSet:(id)a3 center:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 integerAtIndex:0];
  v11 = [v8 stringAtIndex:1];
  v12 = [v9 scopedIdentifierForLocalIdentifier:v11 scopeIndex:v10];

  if (v12)
  {
    v13 = [v8 stringAtIndex:2];
    v14 = [v8 unsignedIntegerAtIndex:3];
    v15 = NSClassFromString(v13);
    if ([(objc_class *)v15 isSubclassOfClass:objc_opt_class()])
    {
      v16 = [(objc_class *)v15 newRecordWithScopedIdentifier:v12];
      self = [(CPLRecordStatus *)self initWithRecord:v16 generation:v14];

      v17 = self;
    }

    else if (a5)
    {
      +[CPLErrors unknownError];
      *a5 = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else if (a5)
  {
    [CPLErrors invalidScopeErrorWithScopeIndex:v10];
    *a5 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end