@interface _BPSMapInner
- (_BPSMapInner)initWithDownstream:(id)a3 transform:(id)a4;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
@end

@implementation _BPSMapInner

- (_BPSMapInner)initWithDownstream:(id)a3 transform:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _BPSMapInner;
  v9 = [(_BPSMapInner *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    transform = v9->_transform;
    v9->_transform = v10;

    objc_storeStrong(&v9->_downstream, a3);
  }

  return v9;
}

- (void)receiveSubscription:(id)a3
{
  v4 = a3;
  v5 = [(_BPSMapInner *)self downstream];
  [v5 receiveSubscription:v4];
}

- (int64_t)receiveInput:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = [(_BPSMapInner *)v4 transform];
  v7 = (v6)[2](v6, v5);

  v8 = [(_BPSMapInner *)v4 downstream];
  v9 = [v8 receiveInput:v7];

  return v9;
}

- (void)receiveCompletion:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = self;
  v5 = a3;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = objc_opt_class();
    v7 = v11;
    _os_log_impl(&dword_1C871B000, v6, OS_LOG_TYPE_INFO, "%@ - completion", &v10, 0xCu);
  }

  v8 = [(_BPSMapInner *)v4 downstream];
  [v8 receiveCompletion:v5];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v3 = self;
  v2 = [(_BPSMapInner *)v3 downstream];
  [v2 cancel];
}

@end