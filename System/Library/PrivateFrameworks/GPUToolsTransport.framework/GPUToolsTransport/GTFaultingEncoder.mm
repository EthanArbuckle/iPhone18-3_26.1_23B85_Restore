@interface GTFaultingEncoder
- (GTFaultingEncoder)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTFaultingEncoder

- (GTFaultingEncoder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = GTFaultingEncoder;
  v5 = [(GTFaultingEncoder *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cpuCallstackData"];
    cpuCallstackData = v5->_cpuCallstackData;
    v5->_cpuCallstackData = v6;

    v5->_cpuCallstackFramesNum = [coderCopy decodeInt32ForKey:@"cpuCallstackFramesNum"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metalLogMessage"];
    metalLogMessage = v5->_metalLogMessage;
    v5->_metalLogMessage = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  cpuCallstackData = self->_cpuCallstackData;
  coderCopy = coder;
  [coderCopy encodeObject:cpuCallstackData forKey:@"cpuCallstackData"];
  [coderCopy encodeInt32:self->_cpuCallstackFramesNum forKey:@"cpuCallstackFramesNum"];
  [coderCopy encodeObject:self->_metalLogMessage forKey:@"metalLogMessage"];
}

@end