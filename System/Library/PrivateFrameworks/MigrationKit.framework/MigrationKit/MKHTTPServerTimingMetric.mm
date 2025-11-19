@interface MKHTTPServerTimingMetric
- (MKHTTPServerTimingMetric)initWithDuration:(double)a3;
- (MKHTTPServerTimingMetric)initWithDuration:(double)a3 desc:(id)a4;
- (id)value;
@end

@implementation MKHTTPServerTimingMetric

- (MKHTTPServerTimingMetric)initWithDuration:(double)a3
{
  v7.receiver = self;
  v7.super_class = MKHTTPServerTimingMetric;
  v4 = [(MKHTTPServerTimingMetric *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(MKHTTPServerTimingMetric *)v4 setDuration:a3];
  }

  return v5;
}

- (MKHTTPServerTimingMetric)initWithDuration:(double)a3 desc:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = MKHTTPServerTimingMetric;
  v7 = [(MKHTTPServerTimingMetric *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MKHTTPServerTimingMetric *)v7 setDuration:a3];
    [(MKHTTPServerTimingMetric *)v8 setDesc:v6];
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