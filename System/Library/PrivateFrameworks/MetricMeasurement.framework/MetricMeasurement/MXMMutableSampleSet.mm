@interface MXMMutableSampleSet
- (void)appendAttribute:(id)attribute;
- (void)appendDoubleValue:(double)value timestamp:(unint64_t)timestamp;
- (void)appendFloatValue:(float)value timestamp:(unint64_t)timestamp;
- (void)appendIntValue:(int)value timestamp:(unint64_t)timestamp;
- (void)appendIntegerValue:(int64_t)value timestamp:(unint64_t)timestamp;
- (void)appendSample:(id)sample;
- (void)appendSet:(id)set;
- (void)appendUnsignedIntValue:(unsigned int)value timestamp:(unint64_t)timestamp;
- (void)appendUnsignedIntegerValue:(unint64_t)value timestamp:(unint64_t)timestamp;
@end

@implementation MXMMutableSampleSet

- (void)appendSet:(id)set
{
  setCopy = set;
  attributes = [(MXMSampleSet *)self attributes];
  attributes2 = [setCopy attributes];
  v7 = [attributes isEqualToSet:attributes2];

  if ((v7 & 1) == 0)
  {
    [(MXMMutableSampleSet *)a2 appendSet:?];
  }

  [(MXMSampleSet *)self _appendSet:setCopy];
}

- (void)appendSample:(id)sample
{
  sampleCopy = sample;
  attributes = [(MXMSampleSet *)self attributes];
  attributes2 = [sampleCopy attributes];
  v7 = [attributes isEqualToSet:attributes2];

  if ((v7 & 1) == 0)
  {
    [(MXMMutableSampleSet *)a2 appendSample:?];
  }

  [(MXMSampleSet *)self _appendSample:sampleCopy];
}

- (void)appendAttribute:(id)attribute
{
  v3.receiver = self;
  v3.super_class = MXMMutableSampleSet;
  [(MXMSampleSet *)&v3 _appendAttribute:attribute];
}

- (void)appendIntValue:(int)value timestamp:(unint64_t)timestamp
{
  v4.receiver = self;
  v4.super_class = MXMMutableSampleSet;
  [(MXMSampleSet *)&v4 _appendDoubleValue:timestamp timestamp:value];
}

- (void)appendIntegerValue:(int64_t)value timestamp:(unint64_t)timestamp
{
  v4.receiver = self;
  v4.super_class = MXMMutableSampleSet;
  [(MXMSampleSet *)&v4 _appendDoubleValue:timestamp timestamp:value];
}

- (void)appendUnsignedIntValue:(unsigned int)value timestamp:(unint64_t)timestamp
{
  v4.receiver = self;
  v4.super_class = MXMMutableSampleSet;
  [(MXMSampleSet *)&v4 _appendDoubleValue:timestamp timestamp:value];
}

- (void)appendUnsignedIntegerValue:(unint64_t)value timestamp:(unint64_t)timestamp
{
  v4.receiver = self;
  v4.super_class = MXMMutableSampleSet;
  [(MXMSampleSet *)&v4 _appendDoubleValue:timestamp timestamp:value];
}

- (void)appendDoubleValue:(double)value timestamp:(unint64_t)timestamp
{
  v4.receiver = self;
  v4.super_class = MXMMutableSampleSet;
  [(MXMSampleSet *)&v4 _appendDoubleValue:timestamp timestamp:value];
}

- (void)appendFloatValue:(float)value timestamp:(unint64_t)timestamp
{
  v4.receiver = self;
  v4.super_class = MXMMutableSampleSet;
  [(MXMSampleSet *)&v4 _appendDoubleValue:timestamp timestamp:value];
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