@interface IDSDRegistrationListener
+ (id)sharedInstance;
- (IDSDRegistrationListener)init;
- (id)addBlockForRegistrationCompletion:(id)completion;
- (void)_callBlocksWithResult:(BOOL)result registrations:(id)registrations error:(id)error;
- (void)dealloc;
- (void)registrationController:(id)controller allRegistrationsSucceeded:(id)succeeded;
@end

@implementation IDSDRegistrationListener

+ (id)sharedInstance
{
  if (qword_100CBD5A0 != -1)
  {
    sub_1009222D4();
  }

  v3 = qword_100CBD5A8;

  return v3;
}

- (IDSDRegistrationListener)init
{
  v7.receiver = self;
  v7.super_class = IDSDRegistrationListener;
  v2 = [(IDSDRegistrationListener *)&v7 init];
  if (v2)
  {
    v3 = +[IDSRegistrationController sharedInstance];
    [v3 addListener:v2];

    v4 = +[IMRGLog registrationListener];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting Up", v6, 2u);
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[IDSRegistrationController sharedInstance];
  [v3 removeListener:self];

  v4.receiver = self;
  v4.super_class = IDSDRegistrationListener;
  [(IDSDRegistrationListener *)&v4 dealloc];
}

- (id)addBlockForRegistrationCompletion:(id)completion
{
  completionCopy = completion;
  if (!self->_completionBlocks)
  {
    v5 = objc_alloc_init(NSMutableSet);
    completionBlocks = self->_completionBlocks;
    self->_completionBlocks = v5;
  }

  v7 = [completionCopy copy];

  v8 = self->_completionBlocks;
  v9 = objc_retainBlock(v7);
  [(NSMutableSet *)v8 addObject:v9];

  v10 = objc_retainBlock(v7);

  return v10;
}

- (void)_callBlocksWithResult:(BOOL)result registrations:(id)registrations error:(id)error
{
  registrationsCopy = registrations;
  errorCopy = error;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_completionBlocks;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v14 + 1) + 8 * v13) + 16))(*(*(&v14 + 1) + 8 * v13));
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)registrationController:(id)controller allRegistrationsSucceeded:(id)succeeded
{
  succeededCopy = succeeded;
  v6 = +[IMRGLog registrationListener];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Told all registrations succeeded, calling completion blocks", v7, 2u);
  }

  [(IDSDRegistrationListener *)self _callBlocksWithResult:1 registrations:succeededCopy error:0];
}

@end