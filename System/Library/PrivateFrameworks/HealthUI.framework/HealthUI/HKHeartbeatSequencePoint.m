@interface HKHeartbeatSequencePoint
- (HKHeartbeatSequencePoint)initWithTimeInterval:(double)a3 beatsPerMinute:(double)a4;
- (id)allYValues;
@end

@implementation HKHeartbeatSequencePoint

- (HKHeartbeatSequencePoint)initWithTimeInterval:(double)a3 beatsPerMinute:(double)a4
{
  v12.receiver = self;
  v12.super_class = HKHeartbeatSequencePoint;
  v6 = [(HKHeartbeatSequencePoint *)&v12 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    xValue = v6->_xValue;
    v6->_xValue = v7;

    v9 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    yValue = v6->_yValue;
    v6->_yValue = v9;
  }

  return v6;
}

- (id)allYValues
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_yValue;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end