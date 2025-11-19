@interface BaseTrack
- (BaseTrack)initWithObservation:(id)a3 identifier:(int64_t)a4 type:(int64_t)a5 atTime:(id *)a6;
- (BaseTrack)pairTrack;
- (CGRect)lastObservationBounds;
- (void)addObservation:(id)a3 atTime:(id *)a4;
- (void)dealloc;
@end

@implementation BaseTrack

- (BaseTrack)initWithObservation:(id)a3 identifier:(int64_t)a4 type:(int64_t)a5 atTime:(id *)a6
{
  v11 = a3;
  v18.receiver = self;
  v18.super_class = BaseTrack;
  v12 = [(BaseTrack *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_firstObservation, a3);
    v14 = *&a6->var0;
    v13->_firstTimestamp.epoch = a6->var3;
    *&v13->_firstTimestamp.value = v14;
    objc_storeStrong(&v13->_lastObservation, a3);
    var3 = a6->var3;
    *&v13->_lastTimestamp.value = *&a6->var0;
    v13->_lastTimestamp.epoch = var3;
    v13->_identifier = a4;
    v13->_type = a5;
    v16 = v13;
  }

  return v13;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BaseTrack;
  [(BaseTrack *)&v2 dealloc];
}

- (void)addObservation:(id)a3 atTime:(id *)a4
{
  objc_storeStrong(&self->_lastObservation, a3);
  v6 = *&a4->var0;
  self->_lastTimestamp.epoch = a4->var3;
  *&self->_lastTimestamp.value = v6;
}

- (CGRect)lastObservationBounds
{
  [(Detection *)self->_lastObservation bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BaseTrack)pairTrack
{
  WeakRetained = objc_loadWeakRetained(&self->pairTrack);

  return WeakRetained;
}

@end