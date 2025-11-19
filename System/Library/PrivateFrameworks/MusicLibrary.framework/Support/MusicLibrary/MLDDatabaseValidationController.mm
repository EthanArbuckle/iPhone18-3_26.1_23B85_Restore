@interface MLDDatabaseValidationController
- (BOOL)isValidatedPath:(id)a3;
- (BOOL)shouldValidateDatabaseForLibrary:(id)a3;
- (MLDDatabaseValidationController)init;
- (void)_exitForLocalizationChange;
- (void)_purgePendingDatabaseValidations;
- (void)_registerForLanguageChangeNotifications;
- (void)_tearDownLanguageChangeNotifications;
- (void)clearValidatedPaths;
- (void)dealloc;
- (void)resumeValidations;
- (void)suspendValidations;
@end

@implementation MLDDatabaseValidationController

- (void)_tearDownLanguageChangeNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];
  notify_cancel([(MLDDatabaseValidationController *)self languageChangeNotificationToken]);
}

- (void)_registerForLanguageChangeNotifications
{
  if ((MSVDeviceIsHomePod() & 1) == 0)
  {
    objc_initWeak(&location, self);
    v3 = +[NSNotificationCenter defaultCenter];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100007C68;
    v8[3] = &unk_1000310E8;
    objc_copyWeak(&v9, &location);
    v4 = [v3 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:0 usingBlock:v8];

    v5 = dispatch_get_global_queue(25, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100007D18;
    handler[3] = &unk_100031110;
    objc_copyWeak(&v7, &location);
    notify_register_dispatch("com.apple.language.changed", &self->_languageChangeNotificationToken, v5, handler);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_exitForLocalizationChange
{
  v3 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[LanguageChange] Language change notification received. Preparing to exit...", buf, 2u);
  }

  validationQueue = self->_validationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007E30;
  block[3] = &unk_1000313F0;
  block[4] = self;
  dispatch_sync(validationQueue, block);
}

- (void)_purgePendingDatabaseValidations
{
  dispatch_assert_queue_V2(self->_validationQueue);
  v3 = [(MLDDatabaseValidationController *)self suspendedValidations];
  v4 = [v3 copy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 runValidation];
        v11 = [(MLDDatabaseValidationController *)self suspendedValidations];
        [v11 removeObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (BOOL)shouldValidateDatabaseForLibrary:(id)a3
{
  validationQueue = self->_validationQueue;
  v5 = a3;
  dispatch_assert_queue_V2(validationQueue);
  v6 = [v5 databasePath];

  if ([(MLDDatabaseValidationController *)self isSuspended])
  {
    v7 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Validations are suspended: will require validation of library at - %{public}@", &v12, 0xCu);
    }

    goto LABEL_7;
  }

  v8 = +[NSFileManager defaultManager];
  v9 = [v8 fileExistsAtPath:v6];

  if (!v9)
  {
LABEL_7:
    LOBYTE(v10) = 1;
    goto LABEL_8;
  }

  v10 = [(NSMutableSet *)self->_validatedDatabasePaths containsObject:v6]^ 1;
LABEL_8:

  return v10;
}

- (void)resumeValidations
{
  validationQueue = self->_validationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008210;
  block[3] = &unk_1000313F0;
  block[4] = self;
  dispatch_async(validationQueue, block);
}

- (void)clearValidatedPaths
{
  v3 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Lock: clearing previously validated databases", buf, 2u);
  }

  validationQueue = self->_validationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000083BC;
  block[3] = &unk_1000313F0;
  block[4] = self;
  dispatch_sync(validationQueue, block);
}

- (void)suspendValidations
{
  validationQueue = self->_validationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008474;
  block[3] = &unk_1000313F0;
  block[4] = self;
  dispatch_sync(validationQueue, block);
}

- (BOOL)isValidatedPath:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  validationQueue = self->_validationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008620;
  block[3] = &unk_1000318F0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(validationQueue, block);
  LOBYTE(validationQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return validationQueue;
}

- (void)dealloc
{
  [(MLDDatabaseValidationController *)self _tearDownLanguageChangeNotifications];
  v3.receiver = self;
  v3.super_class = MLDDatabaseValidationController;
  [(MLDDatabaseValidationController *)&v3 dealloc];
}

- (MLDDatabaseValidationController)init
{
  v12.receiver = self;
  v12.super_class = MLDDatabaseValidationController;
  v2 = [(MLDDatabaseValidationController *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.medialibraryd.MLDDatabaseValidationController.SerialQueue", 0);
    validationQueue = v2->_validationQueue;
    v2->_validationQueue = v3;

    v5 = objc_alloc_init(NSMutableArray);
    suspendedValidations = v2->_suspendedValidations;
    v2->_suspendedValidations = v5;

    v7 = objc_alloc_init(NSMutableSet);
    validatedDatabasePaths = v2->_validatedDatabasePaths;
    v2->_validatedDatabasePaths = v7;

    v9 = objc_alloc_init(NSMutableSet);
    validatingDatabasePaths = v2->_validatingDatabasePaths;
    v2->_validatingDatabasePaths = v9;

    [(MLDDatabaseValidationController *)v2 _registerForLanguageChangeNotifications];
  }

  return v2;
}

@end