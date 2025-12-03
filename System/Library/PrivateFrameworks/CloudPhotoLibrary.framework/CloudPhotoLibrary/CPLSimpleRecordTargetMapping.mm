@interface CPLSimpleRecordTargetMapping
- (id)targetForRecordWithScopedIdentifier:(id)identifier;
- (id)updatedTargetScopedIdentifiers;
- (void)setTarget:(id)target forRecordWithScopedIdentifier:(id)identifier;
@end

@implementation CPLSimpleRecordTargetMapping

- (id)updatedTargetScopedIdentifiers
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFD8]);

  return v2;
}

- (id)targetForRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[CPLRecordTarget alloc] initWithScopedIdentifier:identifierCopy otherScopedIdentifier:0 targetState:1];

  return v4;
}

- (void)setTarget:(id)target forRecordWithScopedIdentifier:(id)identifier
{
  targetCopy = target;
  identifierCopy = identifier;
  targetState = [targetCopy targetState];
  if (targetState <= 3 && targetState != 1)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v11 = v10 = identifierCopy;
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordTarget.m"];
    v13 = +[CPLRecordTarget descriptionForTargetState:](CPLRecordTarget, "descriptionForTargetState:", [targetCopy targetState]);
    [v11 handleFailureInMethod:a2 object:self file:v12 lineNumber:279 description:{@"Trying to set target of %@ to %@ in %@", v10, v13, objc_opt_class()}];

    abort();
  }
}

@end