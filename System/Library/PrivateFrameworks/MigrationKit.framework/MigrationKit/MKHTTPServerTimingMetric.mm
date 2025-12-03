@interface MKHTTPServerTimingMetric
- (MKHTTPServerTimingMetric)initWithDuration:(double)duration;
- (MKHTTPServerTimingMetric)initWithDuration:(double)duration desc:(id)desc;
- (id)value;
@end

@implementation MKHTTPServerTimingMetric

- (MKHTTPServerTimingMetric)initWithDuration:(double)duration
{
  v7.receiver = self;
  v7.super_class = MKHTTPServerTimingMetric;
  v4 = [(MKHTTPServerTimingMetric *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(MKHTTPServerTimingMetric *)v4 setDuration:duration];
  }

  return v5;
}

- (MKHTTPServerTimingMetric)initWithDuration:(double)duration desc:(id)desc
{
  descCopy = desc;
  v10.receiver = self;
  v10.super_class = MKHTTPServerTimingMetric;
  v7 = [(MKHTTPServerTimingMetric *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MKHTTPServerTimingMetric *)v7 setDuration:duration];
    [(MKHTTPServerTimingMetric *)v8 setDesc:descCopy];
  }

  return v8;
}

- (id)value
{
  if ([(NSString *)self->_desc length])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"desc=%@;dur=%f", self->_desc, *&self->_duration];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"dur=%f", *&self->_duration, v5];
  }
  v3 = ;

  return v3;
}

@end