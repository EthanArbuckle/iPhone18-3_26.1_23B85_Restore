@interface MXMMutableSampleSet
- (void)appendAttribute:(id)a3;
- (void)appendDoubleValue:(double)a3 timestamp:(unint64_t)a4;
- (void)appendFloatValue:(float)a3 timestamp:(unint64_t)a4;
- (void)appendIntValue:(int)a3 timestamp:(unint64_t)a4;
- (void)appendIntegerValue:(int64_t)a3 timestamp:(unint64_t)a4;
- (void)appendSample:(id)a3;
- (void)appendSet:(id)a3;
- (void)appendUnsignedIntValue:(unsigned int)a3 timestamp:(unint64_t)a4;
- (void)appendUnsignedIntegerValue:(unint64_t)a3 timestamp:(unint64_t)a4;
@end

@implementation MXMMutableSampleSet

- (void)appendSet:(id)a3
{
  v8 = a3;
  v5 = [(MXMSampleSet *)self attributes];
  v6 = [v8 attributes];
  v7 = [v5 isEqualToSet:v6];

  if ((v7 & 1) == 0)
  {
    [(MXMMutableSampleSet *)a2 appendSet:?];
  }

  [(MXMSampleSet *)self _appendSet:v8];
}

- (void)appendSample:(id)a3
{
  v8 = a3;
  v5 = [(MXMSampleSet *)self attributes];
  v6 = [v8 attributes];
  v7 = [v5 isEqualToSet:v6];

  if ((v7 & 1) == 0)
  {
    [(MXMMutableSampleSet *)a2 appendSample:?];
  }

  [(MXMSampleSet *)self _appendSample:v8];
}

- (void)appendAttribute:(id)a3
{
  v3.receiver = self;
  v3.super_class = MXMMutableSampleSet;
  [(MXMSampleSet *)&v3 _appendAttribute:a3];
}

- (void)appendIntValue:(int)a3 timestamp:(unint64_t)a4
{
  v4.receiver = self;
  v4.super_class = MXMMutableSampleSet;
  [(MXMSampleSet *)&v4 _appendDoubleValue:a4 timestamp:a3];
}

- (void)appendIntegerValue:(int64_t)a3 timestamp:(unint64_t)a4
{
  v4.receiver = self;
  v4.super_class = MXMMutableSampleSet;
  [(MXMSampleSet *)&v4 _appendDoubleValue:a4 timestamp:a3];
}

- (void)appendUnsignedIntValue:(unsigned int)a3 timestamp:(unint64_t)a4
{
  v4.receiver = self;
  v4.super_class = MXMMutableSampleSet;
  [(MXMSampleSet *)&v4 _appendDoubleValue:a4 timestamp:a3];
}

- (void)appendUnsignedIntegerValue:(unint64_t)a3 timestamp:(unint64_t)a4
{
  v4.receiver = self;
  v4.super_class = MXMMutableSampleSet;
  [(MXMSampleSet *)&v4 _appendDoubleValue:a4 timestamp:a3];
}

- (void)appendDoubleValue:(double)a3 timestamp:(unint64_t)a4
{
  v4.receiver = self;
  v4.super_class = MXMMutableSampleSet;
  [(MXMSampleSet *)&v4 _appendDoubleValue:a4 timestamp:a3];
}

- (void)appendFloatValue:(float)a3 timestamp:(unint64_t)a4
{
  v4.receiver = self;
  v4.super_class = MXMMutableSampleSet;
  [(MXMSampleSet *)&v4 _appendDoubleValue:a4 timestamp:a3];
}

- (void)appendSet:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MXMSampleSet.m" lineNumber:392 description:{@"Invalid parameter not satisfying: %@", @"[self.attributes isEqualToSet:set.attributes]"}];
}

- (void)appendSample:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MXMSampleSet.m" lineNumber:397 description:{@"Invalid parameter not satisfying: %@", @"[self.attributes isEqualToSet:sample.attributes]"}];
}

@end