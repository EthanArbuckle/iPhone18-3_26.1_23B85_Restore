@interface FBSceneSnapshotAction
- (FBSceneSnapshotAction)initWithScene:(id)scene requests:(id)requests expirationInterval:(double)interval responseHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
@end

@implementation FBSceneSnapshotAction

- (FBSceneSnapshotAction)initWithScene:(id)scene requests:(id)requests expirationInterval:(double)interval responseHandler:(id)handler
{
  v55 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  requestsCopy = requests;
  handlerCopy = handler;
  identifier = [sceneCopy identifier];
  v13 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v43 = identifier;
  v16 = [v13 stringWithFormat:@"<%@: %p %@>", v15, self, identifier];;

  v17 = FBLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v54 = v16;
    _os_log_impl(&dword_1A89DD000, v17, OS_LOG_TYPE_DEFAULT, "Created: %{public}@", buf, 0xCu);
  }

  clientHandle = [sceneCopy clientHandle];
  processHandle = [clientHandle processHandle];
  v20 = [processHandle pid];

  v21 = 0;
  v22 = &off_1A8A71000;
  if ([sceneCopy isValid] && v20 >= 1)
  {
    v23 = objc_alloc(MEMORY[0x1E69C7548]);
    v24 = MEMORY[0x1E696AEC0];
    identifier2 = [sceneCopy identifier];
    v25 = [v24 stringWithFormat:@"FBSceneSnapshotAction:%@", identifier2];
    v26 = [MEMORY[0x1E69C7640] targetWithPid:v20];
    [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SceneSnapshotAction"];
    selfCopy = self;
    v28 = v16;
    v30 = v29 = handlerCopy;
    v52[0] = v30;
    v31 = [MEMORY[0x1E69C7570] invalidateAfterInterval:interval];
    v52[1] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
    v21 = [v23 initWithExplanation:v25 target:v26 attributes:v32];

    v22 = &off_1A8A71000;
    handlerCopy = v29;
    v16 = v28;
    self = selfCopy;

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __83__FBSceneSnapshotAction_initWithScene_requests_expirationInterval_responseHandler___block_invoke;
    v50[3] = &unk_1E783D040;
    v51 = v16;
    [v21 setInvalidationHandler:v50];
  }

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = *(v22 + 454);
  v46[2] = __83__FBSceneSnapshotAction_initWithScene_requests_expirationInterval_responseHandler___block_invoke_13;
  v46[3] = &unk_1E783D150;
  v33 = v16;
  v47 = v33;
  v34 = v21;
  v48 = v34;
  v35 = handlerCopy;
  v49 = v35;
  v45.receiver = self;
  v45.super_class = FBSceneSnapshotAction;
  v36 = [(FBSSceneSnapshotAction *)&v45 initWithRequests:requestsCopy expirationInterval:v46 responseHandler:interval];
  if (v36)
  {
    identifier3 = [sceneCopy identifier];
    v38 = [identifier3 copy];
    sceneID = v36->_sceneID;
    v36->_sceneID = v38;

    objc_storeStrong(&v36->_assertion, v21);
    objc_storeStrong(&v36->_description, v16);
    [v34 acquireWithError:0];
  }

  v40 = *MEMORY[0x1E69E9840];
  return v36;
}

void __83__FBSceneSnapshotAction_initWithScene_requests_expirationInterval_responseHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = FBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __83__FBSceneSnapshotAction_initWithScene_requests_expirationInterval_responseHandler___block_invoke_cold_1(a1, v4, v5);
  }
}

void __83__FBSceneSnapshotAction_initWithScene_requests_expirationInterval_responseHandler___block_invoke_13(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];
  v5 = FBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    if (v4)
    {
      v7 = [v4 succinctDescription];
    }

    else
    {
      v7 = @"success";
    }

    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_1A89DD000, v5, OS_LOG_TYPE_DEFAULT, "Got response for %{public}@: %{public}@", &v10, 0x16u);
    if (v4)
    {
    }
  }

  [*(a1 + 40) invalidate];
  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(RBSAssertion *)self->_assertion invalidate];
  v3.receiver = self;
  v3.super_class = FBSceneSnapshotAction;
  [(FBSceneSnapshotAction *)&v3 dealloc];
}

- (void)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = FBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    description = self->_description;
    *buf = 138543362;
    v8 = description;
    _os_log_impl(&dword_1A89DD000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating: %{public}@", buf, 0xCu);
  }

  [(RBSAssertion *)self->_assertion invalidate];
  v6.receiver = self;
  v6.super_class = FBSceneSnapshotAction;
  [(FBSSceneSnapshotAction *)&v6 invalidate];
  v5 = *MEMORY[0x1E69E9840];
}

void __83__FBSceneSnapshotAction_initWithScene_requests_expirationInterval_responseHandler___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [a2 succinctDescription];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_1A89DD000, a3, OS_LOG_TYPE_ERROR, "Assertion invalidated for %{public}@: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end