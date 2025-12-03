@interface MRDTaskAssertion
+ (OS_dispatch_queue)workerQueue;
- (BOOL)invalidateInDuration:(double)duration;
- (BOOL)isValid;
- (double)remainingDuration;
- (id)description;
- (id)invalidationHandler;
- (void)_acquire;
- (void)callInvalidationHandlerWithReason:(id)reason;
- (void)dealloc;
- (void)invalidateWithReason:(id)reason;
@end

@implementation MRDTaskAssertion

- (id)description
{
  v3 = objc_opt_class();
  v4 = self->_type - 1;
  if (v4 > 7)
  {
    v5 = @"UnknownType";
  }

  else
  {
    v5 = off_1004BE508[v4];
  }

  type = self->_type;
  if (type > 8)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1004BE548[type];
  }

  v8 = [NSMutableString stringWithFormat:@"<%@:%p> %@-%u:%@:%@", v3, self, self->_bundleID, self->_pid, v5, v7];
  v9 = v8;
  if (self->_hostAssertion)
  {
    [v8 appendFormat:@"hostAssertion=%@", self->_hostAssertion];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  invalidationTimer = selfCopy->_invalidationTimer;
  if (invalidationTimer)
  {
    [(MRSingleShotTimer *)invalidationTimer remainingDuration];
    [v9 appendFormat:@"<%lf more seconds", v12];
  }

  objc_sync_exit(selfCopy);

  [v9 appendString:@">"];

  return v9;
}

- (void)_acquire
{
  assertion = self->_assertion;
  if (assertion && ([(RBSAssertion *)assertion isValid]& 1) == 0)
  {
    v4 = self->_assertion;
    v16 = 0;
    v5 = [(RBSAssertion *)v4 acquireWithError:&v16];
    v6 = v16;
    v7 = _MRLogForCategory();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Acquired assertion: %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003AA380(self, v8);
    }
  }

  hostAssertion = self->_hostAssertion;
  if (hostAssertion && ([(RBSAssertion *)hostAssertion isValid]& 1) == 0)
  {
    v10 = self->_hostAssertion;
    v15 = 0;
    v11 = [(RBSAssertion *)v10 acquireWithError:&v15];
    v12 = v15;
    v13 = _MRLogForCategory();
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Acquired host assertion: %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1003AA3F8(self, v14);
    }
  }
}

- (BOOL)isValid
{
  if (([(RBSAssertion *)self->_assertion isValid]& 1) != 0)
  {
    return 1;
  }

  hostAssertion = self->_hostAssertion;

  return [(RBSAssertion *)hostAssertion isValid];
}

+ (OS_dispatch_queue)workerQueue
{
  if (qword_100529500 != -1)
  {
    sub_1003AA36C();
  }

  v3 = qword_1005294F8;

  return v3;
}

- (void)dealloc
{
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  [(MRDTaskAssertion *)self invalidateWithReason:@"Dealloc"];
  v4.receiver = self;
  v4.super_class = MRDTaskAssertion;
  [(MRDTaskAssertion *)&v4 dealloc];
}

- (void)invalidateWithReason:(id)reason
{
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  invalidationTimer = selfCopy->_invalidationTimer;
  selfCopy->_invalidationTimer = 0;

  objc_sync_exit(selfCopy);
  [(MRDTaskAssertion *)selfCopy callInvalidationHandlerWithReason:reasonCopy];
  if ([(RBSAssertion *)selfCopy->_assertion isValid])
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412546;
      v10 = selfCopy;
      v11 = 2112;
      v12 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Releasing assertion %@ %@", &v9, 0x16u);
    }

    [(RBSAssertion *)selfCopy->_assertion invalidate];
  }

  if ([(RBSAssertion *)selfCopy->_hostAssertion isValid])
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412546;
      v10 = selfCopy;
      v11 = 2112;
      v12 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Releasing host assertion %@ %@", &v9, 0x16u);
    }

    [(RBSAssertion *)selfCopy->_hostAssertion invalidate];
  }
}

- (BOOL)invalidateInDuration:(double)duration
{
  if (duration > 30.0)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1003AA2E8(self, v5, duration);
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  isValid = [(MRDTaskAssertion *)selfCopy isValid];
  if (isValid)
  {
    [(MRSingleShotTimer *)selfCopy->_invalidationTimer remainingDuration];
    if (v8 < duration)
    {
      invalidationTimer = selfCopy->_invalidationTimer;
      if (invalidationTimer)
      {
        v10 = _MRLogForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          [(MRSingleShotTimer *)selfCopy->_invalidationTimer remainingDuration];
          *buf = 134218242;
          durationCopy = v11;
          v21 = 2112;
          v22 = selfCopy;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Replacing host assertion invalidation timer that was due to fire in %lf seconds %@", buf, 0x16u);
        }

        invalidationTimer = selfCopy->_invalidationTimer;
      }

      selfCopy->_invalidationTimer = 0;

      v12 = [MRSingleShotTimer alloc];
      workerQueue = [objc_opt_class() workerQueue];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10013991C;
      v18[3] = &unk_1004BE4C8;
      v18[4] = selfCopy;
      v14 = [(MRSingleShotTimer *)v12 initWithInterval:workerQueue queue:v18 block:duration];
      v15 = selfCopy->_invalidationTimer;
      selfCopy->_invalidationTimer = v14;

      v16 = _MRLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        durationCopy = duration;
        v21 = 2112;
        v22 = selfCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Setting host assertion invalidation timer to fire in %lf seconds %@", buf, 0x16u);
      }
    }
  }

  objc_sync_exit(selfCopy);

  return isValid;
}

- (double)remainingDuration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MRSingleShotTimer *)selfCopy->_invalidationTimer remainingDuration];
  v4 = v3;
  objc_sync_exit(selfCopy);

  return v4;
}

- (id)invalidationHandler
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [selfCopy->_invalidationHandler copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)callInvalidationHandlerWithReason:(id)reason
{
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [selfCopy->_invalidationHandler copy];
  invalidationHandler = selfCopy->_invalidationHandler;
  selfCopy->_invalidationHandler = 0;

  objc_sync_exit(selfCopy);
  if (v6)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412546;
      v10 = selfCopy;
      v11 = 2112;
      v12 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Calling assertion invalidation handler %@ %@", &v9, 0x16u);
    }

    v6[2](v6, selfCopy, reasonCopy);
  }
}

@end