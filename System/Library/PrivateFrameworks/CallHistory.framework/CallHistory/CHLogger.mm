@interface CHLogger
- (CHLogger)initWithDomain:(const char *)domain;
@end

@implementation CHLogger

- (CHLogger)initWithDomain:(const char *)domain
{
  v9.receiver = self;
  v9.super_class = CHLogger;
  v4 = [(CHLogger *)&v9 init];
  if (v4)
  {
    v5 = +[CHLogServer sharedInstance];
    v6 = [v5 logHandleForDomain:domain];
    logHandle = v4->_logHandle;
    v4->_logHandle = v6;
  }

  return v4;
}

@end