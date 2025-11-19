@interface CAMTimelapseBackendSessionContext
- (CAMTimelapseBackendSessionContext)init;
- (CAMTimelapseBackendSessionContext)initWithTimelapseUUID:(id)a3;
- (id)description;
@end

@implementation CAMTimelapseBackendSessionContext

- (CAMTimelapseBackendSessionContext)initWithTimelapseUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CAMTimelapseBackendSessionContext;
  v6 = [(CAMTimelapseBackendSessionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_timelapseUUID, a3);
  }

  return v7;
}

- (CAMTimelapseBackendSessionContext)init
{
  [(CAMTimelapseBackendSessionContext *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = CAMTimelapseBackendSessionContext;
  v4 = [(CAMTimelapseBackendSessionContext *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: timelapseUUID=%@", v4, self->_timelapseUUID];

  return v5;
}

@end