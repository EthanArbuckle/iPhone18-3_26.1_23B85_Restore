@interface _BPSScanInner
- (_BPSScanInner)initWithDownstream:(id)a3 nextPartialResult:(id)a4 initialResult:(id)a5;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
@end

@implementation _BPSScanInner

- (_BPSScanInner)initWithDownstream:(id)a3 nextPartialResult:(id)a4 initialResult:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = _BPSScanInner;
  v12 = [(_BPSScanInner *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_downstream, a3);
    v14 = [v10 copy];
    nextPartialResult = v13->_nextPartialResult;
    v13->_nextPartialResult = v14;

    objc_storeStrong(&v13->_result, a5);
  }

  return v13;
}

- (void)receiveSubscription:(id)a3
{
  v4 = a3;
  v5 = [(_BPSScanInner *)self downstream];
  [v5 receiveSubscription:v4];
}

- (int64_t)receiveInput:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = [(_BPSScanInner *)v4 nextPartialResult];
  v7 = [(_BPSScanInner *)v4 result];
  v8 = (v6)[2](v6, v7, v5);

  [(_BPSScanInner *)v4 setResult:v8];
  v9 = [(_BPSScanInner *)v4 downstream];
  v10 = [(_BPSScanInner *)v4 result];
  v11 = [v9 receiveInput:v10];

  return v11;
}

- (void)receiveCompletion:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_BPSScanInner receiveCompletion:];
  }

  v7 = [(_BPSScanInner *)v4 downstream];
  [v7 receiveCompletion:v5];
}

- (void)cancel
{
  v3 = self;
  v2 = [(_BPSScanInner *)v3 downstream];
  [v2 cancel];
}

- (void)receiveCompletion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0_6(&dword_1C871B000, v1, v2, "%@ - completion", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x1E69E9840];
}

@end