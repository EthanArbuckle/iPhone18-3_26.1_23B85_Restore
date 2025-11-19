@interface CPLSimpleRecordTargetMapping
- (id)targetForRecordWithScopedIdentifier:(id)a3;
- (id)updatedTargetScopedIdentifiers;
- (void)setTarget:(id)a3 forRecordWithScopedIdentifier:(id)a4;
@end

@implementation CPLSimpleRecordTargetMapping

- (id)updatedTargetScopedIdentifiers
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFD8]);

  return v2;
}

- (id)targetForRecordWithScopedIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v3 otherScopedIdentifier:0 targetState:1];

  return v4;
}

- (void)setTarget:(id)a3 forRecordWithScopedIdentifier:(id)a4
{
  v14 = a3;
  v7 = a4;
  v8 = [v14 targetState];
  if (v8 <= 3 && v8 != 1)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v11 = v10 = v7;
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordTarget.m"];
    v13 = +[CPLRecordTarget descriptionForTargetState:](CPLRecordTarget, "descriptionForTargetState:", [v14 targetState]);
    [v11 handleFailureInMethod:a2 object:self file:v12 lineNumber:279 description:{@"Trying to set target of %@ to %@ in %@", v10, v13, objc_opt_class()}];

    abort();
  }
}

@end