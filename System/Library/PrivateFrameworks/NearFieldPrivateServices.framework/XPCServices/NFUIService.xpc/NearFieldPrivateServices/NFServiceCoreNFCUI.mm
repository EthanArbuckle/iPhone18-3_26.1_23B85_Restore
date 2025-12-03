@interface NFServiceCoreNFCUI
+ (id)instance;
- (NFServiceCoreNFCUI)init;
- (void)activate:(id)activate context:(id)context withCompletion:(id)completion;
- (void)invalidate;
- (void)setPurpose:(id)purpose;
- (void)setUIMode:(int64_t)mode;
- (void)setUIOperationMode:(int64_t)mode;
- (void)tagCount:(id)count;
@end

@implementation NFServiceCoreNFCUI

+ (id)instance
{
  if (qword_100010DD8 != -1)
  {
    dispatch_once(&qword_100010DD8, &stru_10000C6B8);
  }

  v3 = qword_100010DD0;

  return v3;
}

- (NFServiceCoreNFCUI)init
{
  v3.receiver = self;
  v3.super_class = NFServiceCoreNFCUI;
  result = [(NFServiceCoreNFCUI *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)activate:(id)activate context:(id)context withCompletion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  activateCopy = activate;
  v12 = +[NSXPCConnection currentConnection];
  objc_initWeak(&location, v12);

  objc_initWeak(&from, activateCopy);
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidationRequested)
  {
    v54 = NSLocalizedDescriptionKey;
    v55 = @"Invalid parameter";
    v13 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v14 = [NSError errorWithDomain:@"NFUIService" code:10 userInfo:v13];
    completionCopy[2](completionCopy, v14);

    os_unfair_lock_unlock(&self->_lock);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v16 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v20 = 45;
      if (isMetaClass)
      {
        v20 = 43;
      }

      v16(6, "%c[%{public}s %{public}s]:%i Invalidation already requested.", v20, ClassName, Name, 68);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = object_getClass(self);
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      v24 = object_getClassName(self);
      v25 = sel_getName(a2);
      *buf = 67109890;
      *&buf[4] = v23;
      *v52 = 2082;
      *&v52[2] = v24;
      *&v52[10] = 2082;
      *&v52[12] = v25;
      *&v52[20] = 1024;
      *&v52[22] = 68;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalidation already requested.", buf, 0x22u);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    if (self->_uiController)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v26 = NFLogGetLogger();
      if (v26)
      {
        v27 = v26;
        v28 = object_getClass(self);
        v29 = class_isMetaClass(v28);
        v30 = object_getClassName(self);
        v41 = sel_getName(a2);
        v31 = 45;
        if (v29)
        {
          v31 = 43;
        }

        v27(3, "%c[%{public}s %{public}s]:%i Error : Re-using the sharing service...", v31, v30, v41, 76);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      uiController = NFSharedLogGetLogger();
      if (os_log_type_enabled(uiController, OS_LOG_TYPE_ERROR))
      {
        v33 = object_getClass(self);
        if (class_isMetaClass(v33))
        {
          v34 = 43;
        }

        else
        {
          v34 = 45;
        }

        v35 = object_getClassName(self);
        v36 = sel_getName(a2);
        *buf = 67109890;
        *&buf[4] = v34;
        *v52 = 2082;
        *&v52[2] = v35;
        *&v52[10] = 2082;
        *&v52[12] = v36;
        *&v52[20] = 1024;
        *&v52[22] = 76;
        _os_log_impl(&_mh_execute_header, uiController, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : Re-using the sharing service...", buf, 0x22u);
      }
    }

    else
    {
      v37 = objc_opt_new();
      uiController = self->_uiController;
      self->_uiController = v37;
    }

    [(SFNFCTagReaderUIController *)self->_uiController setOperationMode:self->_operationMode];
    [(SFNFCTagReaderUIController *)self->_uiController setMode:self->_mode];
    [(SFNFCTagReaderUIController *)self->_uiController setPurpose:self->_purpose];
    [(SFNFCTagReaderUIController *)self->_uiController nfcTagScannedCount:self->_tagCount];
    *buf = 0;
    *v52 = buf;
    *&v52[8] = 0x3032000000;
    *&v52[16] = sub_100003C48;
    *&v52[24] = sub_100003C58;
    selfCopy = self;
    v53 = selfCopy;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100003C60;
    v44[3] = &unk_10000C6E0;
    objc_copyWeak(&v47, &from);
    v46 = buf;
    v48[1] = a2;
    v45 = contextCopy;
    objc_copyWeak(v48, &location);
    [(SFNFCTagReaderUIController *)self->_uiController setInvalidationHandler:v44];
    v39 = self->_uiController;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100003F40;
    v42[3] = &unk_10000C708;
    v42[4] = selfCopy;
    v43 = completionCopy;
    [(SFNFCTagReaderUIController *)v39 activateWithCompletion:v42];

    objc_destroyWeak(v48);
    objc_destroyWeak(&v47);
    _Block_object_dispose(buf, 8);
  }

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)setUIMode:(int64_t)mode
{
  if (self->_uiController)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Update mode on next activation", v11, ClassName, Name, 120);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(self);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      *buf = 67109890;
      v17 = v14;
      v18 = 2082;
      v19 = object_getClassName(self);
      v20 = 2082;
      v21 = sel_getName(a2);
      v22 = 1024;
      v23 = 120;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Update mode on next activation", buf, 0x22u);
    }
  }

  self->_mode = mode;
}

- (void)setUIOperationMode:(int64_t)mode
{
  if (self->_uiController)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Update mode on next activation", v11, ClassName, Name, 129);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(self);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      *buf = 67109890;
      v17 = v14;
      v18 = 2082;
      v19 = object_getClassName(self);
      v20 = 2082;
      v21 = sel_getName(a2);
      v22 = 1024;
      v23 = 129;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Update mode on next activation", buf, 0x22u);
    }
  }

  self->_operationMode = mode;
}

- (void)tagCount:(id)count
{
  uiController = self->_uiController;
  if (uiController)
  {
    integerValue = [count integerValue];

    [(SFNFCTagReaderUIController *)uiController nfcTagScannedCount:integerValue];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v8(4, "%c[%{public}s %{public}s]:%i Controller has not been activated", v12, ClassName, Name, 140);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = object_getClass(self);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      *buf = 67109890;
      v18 = v15;
      v19 = 2082;
      v20 = object_getClassName(self);
      v21 = 2082;
      v22 = sel_getName(a2);
      v23 = 1024;
      v24 = 140;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Controller has not been activated", buf, 0x22u);
    }
  }
}

- (void)setPurpose:(id)purpose
{
  purposeCopy = purpose;
  uiController = self->_uiController;
  v7 = purposeCopy;
  if (uiController)
  {
    [(SFNFCTagReaderUIController *)uiController setPurpose:?];
  }

  else
  {
    objc_storeStrong(&self->_purpose, purpose);
  }
}

- (void)invalidate
{
  if (self->_uiController)
  {
    os_unfair_lock_lock(&self->_lock);
    self->_invalidationRequested = 1;
    os_unfair_lock_unlock(&self->_lock);
    uiController = self->_uiController;

    [(SFNFCTagReaderUIController *)uiController invalidate];
  }
}

@end