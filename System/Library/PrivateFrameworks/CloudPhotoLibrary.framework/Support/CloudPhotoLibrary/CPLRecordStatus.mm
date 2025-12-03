@interface CPLRecordStatus
- (id)initFromPQLResultSet:(id)set center:(id)center error:(id *)error;
@end

@implementation CPLRecordStatus

- (id)initFromPQLResultSet:(id)set center:(id)center error:(id *)error
{
  setCopy = set;
  centerCopy = center;
  v10 = [setCopy integerAtIndex:0];
  v11 = [setCopy stringAtIndex:1];
  v12 = [centerCopy scopedIdentifierForLocalIdentifier:v11 scopeIndex:v10];

  if (v12)
  {
    v13 = [setCopy stringAtIndex:2];
    v14 = [setCopy unsignedIntegerAtIndex:3];
    v15 = NSClassFromString(v13);
    if ([(objc_class *)v15 isSubclassOfClass:objc_opt_class()])
    {
      v16 = [(objc_class *)v15 newRecordWithScopedIdentifier:v12];
      self = [(CPLRecordStatus *)self initWithRecord:v16 generation:v14];

      selfCopy = self;
    }

    else if (error)
    {
      +[CPLErrors unknownError];
      *error = selfCopy = 0;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else if (error)
  {
    [CPLErrors invalidScopeErrorWithScopeIndex:v10];
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end