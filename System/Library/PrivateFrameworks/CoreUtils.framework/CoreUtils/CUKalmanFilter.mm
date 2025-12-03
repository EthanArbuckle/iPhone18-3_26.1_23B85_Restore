@interface CUKalmanFilter
- (CUKalmanFilter)initWithConfiguration:(id)configuration;
- (double)updateWithValue:(double)value control:(double)control;
@end

@implementation CUKalmanFilter

- (double)updateWithValue:(double)value control:(double)control
{
  [(CUKalmanConfiguration *)self->_config paramA];
  v8 = v7;
  stateX = self->_stateX;
  [(CUKalmanConfiguration *)self->_config paramB];
  v11 = v10 * control + v8 * stateX;
  v12 = v8 * self->_stateU;
  [(CUKalmanConfiguration *)self->_config paramR];
  v14 = v13 + v12 * v8;
  [(CUKalmanConfiguration *)self->_config paramC];
  v16 = v15;
  v17 = v14 * v15;
  [(CUKalmanConfiguration *)self->_config paramQ];
  v19 = v17 * (1.0 / (v18 + v17 * v16));
  result = v11 + v19 * (value - v16 * v11);
  self->_stateX = result;
  self->_stateU = v14 + -(v19 * v16) * v14;
  return result;
}

- (CUKalmanFilter)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = CUKalmanFilter;
  v6 = [(CUKalmanFilter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, configuration);
    *&v7->_stateX = vdupq_n_s64(0x7FF8000000000000uLL);
    v8 = v7;
  }

  return v7;
}

@end