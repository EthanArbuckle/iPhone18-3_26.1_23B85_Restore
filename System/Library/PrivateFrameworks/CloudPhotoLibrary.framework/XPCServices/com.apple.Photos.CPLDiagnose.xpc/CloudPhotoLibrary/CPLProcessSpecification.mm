@interface CPLProcessSpecification
+ (id)baseProcessSpecification;
+ (id)priviledgedProcessSpecification;
+ (id)signalProcessSpecification;
- (CPLProcessSpecification)initWithShouldSignal:(BOOL)signal shouldSample:(BOOL)sample shouldRunMemoryTools:(BOOL)tools shouldRunTaskInfo:(BOOL)info requiresRoot:(BOOL)root;
@end

@implementation CPLProcessSpecification

- (CPLProcessSpecification)initWithShouldSignal:(BOOL)signal shouldSample:(BOOL)sample shouldRunMemoryTools:(BOOL)tools shouldRunTaskInfo:(BOOL)info requiresRoot:(BOOL)root
{
  v13.receiver = self;
  v13.super_class = CPLProcessSpecification;
  result = [(CPLProcessSpecification *)&v13 init];
  if (result)
  {
    result->_shouldSignal = signal;
    result->_shouldSample = sample;
    result->_shouldRunMemoryTools = tools;
    result->_shouldRunTaskInfo = info;
    result->_requiresRoot = root;
  }

  return result;
}

+ (id)baseProcessSpecification
{
  v2 = [[self alloc] initWithShouldSignal:0 shouldSample:1 shouldRunMemoryTools:1 shouldRunTaskInfo:1 requiresRoot:0];

  return v2;
}

+ (id)priviledgedProcessSpecification
{
  v2 = [[self alloc] initWithShouldSignal:0 shouldSample:1 shouldRunMemoryTools:1 shouldRunTaskInfo:1 requiresRoot:1];

  return v2;
}

+ (id)signalProcessSpecification
{
  v2 = [[self alloc] initWithShouldSignal:1 shouldSample:1 shouldRunMemoryTools:1 shouldRunTaskInfo:1 requiresRoot:0];

  return v2;
}

@end