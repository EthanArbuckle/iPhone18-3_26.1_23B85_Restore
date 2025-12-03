@interface MRULogHelper
- (MRULogHelper)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context;
- (void)logInternal:(id)internal arguments:(char *)arguments;
- (void)verboseLog:(id)log;
@end

@implementation MRULogHelper

- (MRULogHelper)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context
{
  v8.receiver = self;
  v8.super_class = MRULogHelper;
  result = [(MRULogHelper *)&v8 init];
  if (result)
  {
    result->_logFunction = function;
    result->_logContext = context;
    result->_verbose = 1;
  }

  return result;
}

- (void)logInternal:(id)internal arguments:(char *)arguments
{
  internalCopy = internal;
  v10 = [[NSMutableString alloc] initWithFormat:internalCopy arguments:arguments];

  [v10 appendString:@"\n"];
  logFunction = self->_logFunction;
  logContext = self->_logContext;
  v9 = v10;
  logFunction(logContext, [v10 UTF8String]);
}

- (void)verboseLog:(id)log
{
  if (self->_verbose)
  {
    [(MRULogHelper *)self logInternal:log arguments:&v3];
  }
}

@end