@interface _BMAccessTrackerGuardedData
- (_BMAccessTrackerGuardedData)init;
- (uint64_t)cachedSandboxCheckResults;
- (uint64_t)loggedReads;
- (uint64_t)loggedWrites;
@end

@implementation _BMAccessTrackerGuardedData

- (_BMAccessTrackerGuardedData)init
{
  v10.receiver = self;
  v10.super_class = _BMAccessTrackerGuardedData;
  v2 = [(_BMAccessTrackerGuardedData *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    loggedReads = v2->_loggedReads;
    v2->_loggedReads = v3;

    v5 = objc_opt_new();
    loggedWrites = v2->_loggedWrites;
    v2->_loggedWrites = v5;

    v7 = objc_opt_new();
    cachedSandboxCheckResults = v2->_cachedSandboxCheckResults;
    v2->_cachedSandboxCheckResults = v7;
  }

  return v2;
}

- (uint64_t)loggedReads
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)loggedWrites
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)cachedSandboxCheckResults
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

@end