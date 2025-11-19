@interface LNConstraintValidator
- (LNConstraintValidator)init;
- (int64_t)validateAction:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation LNConstraintValidator

- (int64_t)validateAction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  connection = self->_connection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__LNConstraintValidator_validateAction_error___block_invoke;
  v12[3] = &unk_1E74B08E8;
  v12[4] = &v17;
  v12[5] = &v13;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__LNConstraintValidator_validateAction_error___block_invoke_2;
  v11[3] = &unk_1E74B0910;
  v11[4] = &v13;
  v11[5] = &v17;
  [v8 validateAction:v6 reply:v11];

  if (a4)
  {
    *a4 = v18[5];
  }

  v9 = v14[3];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v9;
}

void __46__LNConstraintValidator_validateAction_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = -2;
}

void __46__LNConstraintValidator_validateAction_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v6)
  {
    v8 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = v6;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v8 errorWithDomain:@"AppIntentConstraints" code:a2 userInfo:v3];
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9);
  if (v7)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = LNConstraintValidator;
  [(LNConstraintValidator *)&v3 dealloc];
}

- (LNConstraintValidator)init
{
  v8.receiver = self;
  v8.super_class = LNConstraintValidator;
  v2 = [(LNConstraintValidator *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.linkd.constraints" options:0];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = LNDaemonConstraintValidationXPCInterface();
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_connection resume];
    v6 = v2;
  }

  return v2;
}

@end