@interface CPLProcessSpecification
+ (id)baseProcessSpecification;
+ (id)priviledgedProcessSpecification;
+ (id)signalProcessSpecification;
- (CPLProcessSpecification)initWithShouldSignal:(BOOL)a3 shouldSample:(BOOL)a4 shouldRunMemoryTools:(BOOL)a5 shouldRunTaskInfo:(BOOL)a6 requiresRoot:(BOOL)a7;
@end

@implementation CPLProcessSpecification

- (CPLProcessSpecification)initWithShouldSignal:(BOOL)a3 shouldSample:(BOOL)a4 shouldRunMemoryTools:(BOOL)a5 shouldRunTaskInfo:(BOOL)a6 requiresRoot:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = CPLProcessSpecification;
  result = [(CPLProcessSpecification *)&v13 init];
  if (result)
  {
    result->_shouldSignal = a3;
    result->_shouldSample = a4;
    result->_shouldRunMemoryTools = a5;
    result->_shouldRunTaskInfo = a6;
    result->_requiresRoot = a7;
  }

  return result;
}

+ (id)baseProcessSpecification
{
  v2 = [[a1 alloc] initWithShouldSignal:0 shouldSample:1 shouldRunMemoryTools:1 shouldRunTaskInfo:1 requiresRoot:0];

  return v2;
}

+ (id)priviledgedProcessSpecification
{
  v2 = [[a1 alloc] initWithShouldSignal:0 shouldSample:1 shouldRunMemoryTools:1 shouldRunTaskInfo:1 requiresRoot:1];

  return v2;
}

+ (id)signalProcessSpecification
{
  v2 = [[a1 alloc] initWithShouldSignal:1 shouldSample:1 shouldRunMemoryTools:1 shouldRunTaskInfo:1 requiresRoot:0];

  return v2;
}

@end