@interface CCDifferentialUpdaterFactory
- (CCDifferentialUpdaterFactory)initWithWriteAccess:(id)access changeNotifier:(id)notifier timeout:(double)timeout;
- (id)updaterForSet:(id)set withRequest:(id)request;
@end

@implementation CCDifferentialUpdaterFactory

- (CCDifferentialUpdaterFactory)initWithWriteAccess:(id)access changeNotifier:(id)notifier timeout:(double)timeout
{
  accessCopy = access;
  notifierCopy = notifier;
  v15.receiver = self;
  v15.super_class = CCDifferentialUpdaterFactory;
  v11 = [(CCDifferentialUpdaterFactory *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_writeAccess, access);
    if (!v12->_writeAccess)
    {
      v13 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v12->_changeNotifier, notifier);
    v12->_timeout = timeout;
  }

  v13 = v12;
LABEL_6:

  return v13;
}

- (id)updaterForSet:(id)set withRequest:(id)request
{
  setCopy = set;
  requestCopy = request;
  writeAccess = self->_writeAccess;
  accessAssertion = [requestCopy accessAssertion];
  v10 = [(CCDataResourceWriteAccess *)writeAccess setWriterForSet:setCopy accessAssertion:accessAssertion];

  if (v10)
  {
    v11 = [CCDifferentialUpdater updaterForSet:setCopy withRequest:requestCopy setWriter:v10 changeNotifier:self->_changeNotifier timeout:self->_timeout];
  }

  else
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CCDifferentialUpdaterFactory updaterForSet:withRequest:];
    }

    v11 = 0;
  }

  return v11;
}

- (void)updaterForSet:withRequest:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1DA444000, v0, v1, "Failed to obtain data resource writer for set: %@, request: %@");
  v2 = *MEMORY[0x1E69E9840];
}

@end