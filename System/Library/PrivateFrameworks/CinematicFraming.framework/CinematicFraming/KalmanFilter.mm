@interface KalmanFilter
- (CGRect)estimatedBounds;
- (KalmanFilter)init;
- (void)addObservation:(id)observation;
@end

@implementation KalmanFilter

- (void)addObservation:(id)observation
{
  observationCopy = observation;
  v17 = observationCopy;
  if (self->_isFirstObservation)
  {
    self->_observationIdentifier = [observationCopy oid];
    observationCopy = v17;
    self->_isFirstObservation = 0;
  }

  [observationCopy oid];
  [v17 bounds];
  v6 = v5;
  [v17 bounds];
  v8 = v7;
  [v17 bounds];
  v10 = v9 + (v6 * 0.5);
  [v17 bounds];
  v12 = v11 + (v8 * 0.5);
  v13 = v12;
  *&v12 = v10;
  [(KalmanFilterPrivate *)self->_kalmanFilterX addObservation:v12];
  *&v14 = v13;
  [(KalmanFilterPrivate *)self->_kalmanFilterY addObservation:v14];
  *&v15 = v6;
  [(KalmanFilterPrivate *)self->_kalmanFilterWidth addObservation:v15];
  *&v16 = v8;
  [(KalmanFilterPrivate *)self->_kalmanFilterHeight addObservation:v16];
}

- (CGRect)estimatedBounds
{
  [(KalmanFilterPrivate *)self->_kalmanFilterWidth estimatedObservation];
  v4 = v3;
  [(KalmanFilterPrivate *)self->_kalmanFilterHeight estimatedObservation];
  v6 = v5;
  [(KalmanFilterPrivate *)self->_kalmanFilterX estimatedObservation];
  v8 = v7 - (v4 * 0.5);
  [(KalmanFilterPrivate *)self->_kalmanFilterY estimatedObservation];
  v10 = v9 - (v6 * 0.5);
  v11 = v8;
  v12 = v10;
  v13 = v4;
  v14 = v6;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (KalmanFilter)init
{
  v18.receiver = self;
  v18.super_class = KalmanFilter;
  v2 = [(KalmanFilter *)&v18 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_9;
  }

  v2->_observationIdentifier = -1;
  v4 = objc_alloc_init(KalmanFilterPrivate);
  kalmanFilterX = v3->_kalmanFilterX;
  v3->_kalmanFilterX = v4;

  if (!v3->_kalmanFilterX || (v6 = objc_alloc_init(KalmanFilterPrivate), kalmanFilterY = v3->_kalmanFilterY, v3->_kalmanFilterY = v6, kalmanFilterY, !v3->_kalmanFilterY) || (v8 = objc_alloc_init(KalmanFilterPrivate), kalmanFilterWidth = v3->_kalmanFilterWidth, v3->_kalmanFilterWidth = v8, kalmanFilterWidth, !v3->_kalmanFilterWidth) || (v10 = objc_alloc_init(KalmanFilterPrivate), kalmanFilterHeight = v3->_kalmanFilterHeight, v3->_kalmanFilterHeight = v10, kalmanFilterHeight, !v3->_kalmanFilterHeight))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_0();
    FigDebugAssert3();
LABEL_9:
    v16 = 0;
    goto LABEL_7;
  }

  LODWORD(v12) = 1028443341;
  [(KalmanFilterPrivate *)v3->_kalmanFilterX setMeasurementNoise:v12];
  LODWORD(v13) = 1028443341;
  [(KalmanFilterPrivate *)v3->_kalmanFilterY setMeasurementNoise:v13];
  LODWORD(v14) = 1055286886;
  [(KalmanFilterPrivate *)v3->_kalmanFilterWidth setMeasurementNoise:v14];
  LODWORD(v15) = 1055286886;
  [(KalmanFilterPrivate *)v3->_kalmanFilterHeight setMeasurementNoise:v15];
  v3->_isFirstObservation = 1;
  v16 = v3;
LABEL_7:

  return v16;
}

@end