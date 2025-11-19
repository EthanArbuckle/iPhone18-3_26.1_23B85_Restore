@interface GTFaultingEncoder
- (GTFaultingEncoder)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTFaultingEncoder

- (GTFaultingEncoder)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GTFaultingEncoder;
  v5 = [(GTFaultingEncoder *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cpuCallstackData"];
    cpuCallstackData = v5->_cpuCallstackData;
    v5->_cpuCallstackData = v6;

    v5->_cpuCallstackFramesNum = [v4 decodeInt32ForKey:@"cpuCallstackFramesNum"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metalLogMessage"];
    metalLogMessage = v5->_metalLogMessage;
    v5->_metalLogMessage = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  cpuCallstackData = self->_cpuCallstackData;
  v5 = a3;
  [v5 encodeObject:cpuCallstackData forKey:@"cpuCallstackData"];
  [v5 encodeInt32:self->_cpuCallstackFramesNum forKey:@"cpuCallstackFramesNum"];
  [v5 encodeObject:self->_metalLogMessage forKey:@"metalLogMessage"];
}

@end