@interface IXSDataPromise
- (BOOL)awakeFromSerializationWithLookupBlock:(id)block error:(id *)error;
- (BOOL)cancelForReason:(id)reason client:(unint64_t)client error:(id *)error;
- (BOOL)didAwake;
- (BOOL)hasBegun;
- (BOOL)isComplete;
- (BOOL)isEqual:(id)equal;
- (IXDataPromiseSeed)clientSeed;
- (IXSDataPromise)initWithCoder:(id)coder;
- (IXSDataPromise)initWithSeed:(id)seed error:(id *)error;
- (IXSDataPromiseDelegate)delegate;
- (NSError)error;
- (NSSet)subPromiseUUIDs;
- (NSString)name;
- (NSURL)preflightPath;
- (NSUUID)uniqueIdentifier;
- (double)percentComplete;
- (id)description;
- (unint64_t)bytesConsumedOnDisk;
- (unint64_t)creatorIdentifier;
- (unint64_t)errorSourceIdentifier;
- (unint64_t)hash;
- (unint64_t)totalBytesForProgress;
- (unint64_t)totalBytesNeededOnDisk;
- (void)_internalInitWithUniqueIdentifier:(id)identifier;
- (void)_remote_cancelForReason:(id)reason client:(unint64_t)client completion:(id)completion;
- (void)_remote_getErrorInfo:(id)info;
- (void)_remote_getIsComplete:(id)complete;
- (void)_remote_getPercentComplete:(id)complete;
- (void)_remote_preflightWithCompletion:(id)completion;
- (void)_remote_resetWithCompletion:(id)completion;
- (void)_remote_setIsComplete:(id)complete;
- (void)_remote_setPercentComplete:(double)complete;
- (void)_removeSavedState;
- (void)_setPercentComplete:(double)complete saveStateIfNeeded:(BOOL)needed;
- (void)decommission;
- (void)encodeWithCoder:(id)coder;
- (void)reset;
- (void)saveState;
- (void)setComplete:(BOOL)complete;
- (void)setDelegate:(id)delegate;
- (void)setDidAwake:(BOOL)awake;
- (void)setIsTracked:(BOOL)tracked;
- (void)setPercentComplete:(double)complete;
- (void)supersede;
@end

@implementation IXSDataPromise

- (void)_internalInitWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierCopy = [NSString stringWithFormat:@"com.apple.installcoordinationd.promise_%@", identifierCopy];
  uTF8String = [identifierCopy UTF8String];
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create(uTF8String, v7);
  accessQueue = self->_accessQueue;
  self->_accessQueue = v8;

  identifierCopy2 = [NSString stringWithFormat:@"com.apple.installcoordinationd.promise_delegate_%@", identifierCopy];

  v10 = identifierCopy2;
  uTF8String2 = [identifierCopy2 UTF8String];
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create(uTF8String2, v12);
  delegateDeliveryQueue = self->_delegateDeliveryQueue;
  self->_delegateDeliveryQueue = v13;
}

- (IXSDataPromise)initWithSeed:(id)seed error:(id *)error
{
  seedCopy = seed;
  v14.receiver = self;
  v14.super_class = IXSDataPromise;
  v6 = [(IXSDataPromise *)&v14 init];
  if (v6)
  {
    v7 = objc_opt_new();
    [seedCopy setUniqueIdentifier:v7];

    uniqueIdentifier = [seedCopy uniqueIdentifier];
    [(IXSDataPromise *)v6 _internalInitWithUniqueIdentifier:uniqueIdentifier];

    accessQueue = [(IXSDataPromise *)v6 accessQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100091D2C;
    v11[3] = &unk_100100ED8;
    v12 = v6;
    v13 = seedCopy;
    dispatch_sync(accessQueue, v11);
  }

  return v6;
}

- (IXDataPromiseSeed)clientSeed
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  seed = [(IXSDataPromise *)self seed];
  v5 = [seed copy];

  return v5;
}

- (IXSDataPromise)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = IXSDataPromise;
  v5 = [(IXSDataPromise *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seed"];
    seed = v5->_seed;
    v5->_seed = v6;

    uniqueIdentifier = [(IXDataPromiseSeed *)v5->_seed uniqueIdentifier];
    [(IXSDataPromise *)v5 _internalInitWithUniqueIdentifier:uniqueIdentifier];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"errorSourceIdentifier"];
    v5->_errorSourceIdentifier = [v11 unsignedLongLongValue];

    v5->_isTracked = [coderCopy decodeBoolForKey:@"isTracked"];
    [coderCopy decodeDoubleForKey:@"percentComplete"];
    v5->_percentComplete = v12;
    v5->_complete = [coderCopy decodeBoolForKey:@"complete"];
    accessQueue = [(IXSDataPromise *)v5 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100091F98;
    block[3] = &unk_1001010A0;
    v16 = v5;
    dispatch_sync(accessQueue, block);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  seed = [(IXSDataPromise *)self seed];
  [coderCopy encodeObject:seed forKey:@"seed"];

  error = [(IXSDataPromise *)self error];
  [coderCopy encodeObject:error forKey:@"error"];

  v8 = [NSNumber numberWithUnsignedInteger:[(IXSDataPromise *)self errorSourceIdentifier]];
  [coderCopy encodeObject:v8 forKey:@"errorSourceIdentifier"];

  [coderCopy encodeBool:-[IXSDataPromise isTracked](self forKey:{"isTracked"), @"isTracked"}];
  [(IXSDataPromise *)self percentComplete];
  [coderCopy encodeDouble:@"percentComplete" forKey:?];
  [coderCopy encodeBool:-[IXSDataPromise isComplete](self forKey:{"isComplete"), @"complete"}];

  [(IXSDataPromise *)self percentComplete];

  [(IXSDataPromise *)self setLastSavedPercentComplete:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
  {
    v8 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uniqueIdentifier = [(IXSDataPromise *)v5 uniqueIdentifier];
    uniqueIdentifier2 = [(IXSDataPromise *)self uniqueIdentifier];
    v8 = [uniqueIdentifier isEqual:uniqueIdentifier2];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (unint64_t)hash
{
  uniqueIdentifier = [(IXSDataPromise *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (void)reset
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  error = [(IXSDataPromise *)self error];

  if (error)
  {
    delegate = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[IXSDataPromise reset]";
      v6 = "%s: Ignoring reset request for promise that hit error";
LABEL_7:
      _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    }
  }

  else
  {
    isComplete = [(IXSDataPromise *)self isComplete];
    delegate = sub_1000031B0(off_100121958);
    v8 = os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT);
    if (isComplete)
    {
      if (v8)
      {
        *buf = 136315138;
        v14 = "[IXSDataPromise reset]";
        v6 = "%s: Ignoring reset request for complete promise";
        goto LABEL_7;
      }
    }

    else
    {
      if (v8)
      {
        *buf = 136315394;
        v14 = "[IXSDataPromise reset]";
        v15 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_DEFAULT, "%s: Resetting data promise %@", buf, 0x16u);
      }

      [(IXSDataPromise *)self setComplete:0];
      [(IXSDataPromise *)self setPercentComplete:0.0];
      delegate = [(IXSDataPromise *)self delegate];
      if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        delegateDeliveryQueue = [(IXSDataPromise *)self delegateDeliveryQueue];
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100092454;
        v10[3] = &unk_100100ED8;
        delegate = delegate;
        v11 = delegate;
        selfCopy2 = self;
        sub_100071134(delegateDeliveryQueue, v10);
      }
    }
  }
}

- (BOOL)cancelForReason:(id)reason client:(unint64_t)client error:(id *)error
{
  reasonCopy = reason;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (!reasonCopy)
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000A84D0();
    }

    v15 = @"Reason passed to [IXSDataPromise cancelForReason:client:] was nil";
    v16 = 171;
    goto LABEL_12;
  }

  if (!client)
  {
    v17 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000A8458();
    }

    v15 = @"Client passed to [IXSDataPromise cancelForReason:client:] was IXClientNone (0)";
    v16 = 176;
LABEL_12:
    v18 = sub_1000405FC("[IXSDataPromise cancelForReason:client:error:]", v16, @"IXErrorDomain", 0x35uLL, 0, 0, v15, v14, v23);
    if (error)
    {
      v18 = v18;
      v19 = 0;
      *error = v18;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_22;
  }

  error = [(IXSDataPromise *)self error];

  delegate = sub_1000031B0(off_100121958);
  v12 = os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT);
  if (error)
  {
    if (v12)
    {
      *buf = 136315650;
      v33 = "[IXSDataPromise cancelForReason:client:error:]";
      v34 = 2112;
      selfCopy2 = self;
      v36 = 2112;
      clientCopy = reasonCopy;
      _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_DEFAULT, "%s: %@ : ignoring cancel request for reason %@ after promise was already canceled", buf, 0x20u);
    }
  }

  else
  {
    if (v12)
    {
      *buf = 136315906;
      v33 = "[IXSDataPromise cancelForReason:client:error:]";
      v34 = 2112;
      selfCopy2 = self;
      v36 = 2048;
      clientCopy = client;
      v38 = 2112;
      v39 = reasonCopy;
      _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_DEFAULT, "%s: %@ : canceled by client %lu for reason %@", buf, 0x2Au);
    }

    [(IXSDataPromise *)self setError:reasonCopy];
    [(IXSDataPromise *)self setErrorSourceIdentifier:client];
    self->_complete = 0;
    self->_percentComplete = 0.0;
    delegate = [(IXSDataPromise *)self delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      delegateDeliveryQueue = [(IXSDataPromise *)self delegateDeliveryQueue];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100092830;
      v27[3] = &unk_1001015A0;
      v28 = delegate;
      selfCopy3 = self;
      v30 = reasonCopy;
      clientCopy2 = client;
      sub_100071134(delegateDeliveryQueue, v27);
    }

    delegateDeliveryQueue2 = [(IXSDataPromise *)self delegateDeliveryQueue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100092840;
    v24[3] = &unk_1001018D0;
    v24[4] = self;
    v25 = reasonCopy;
    clientCopy3 = client;
    sub_100071134(delegateDeliveryQueue2, v24);

    [(IXSDataPromise *)self decommission];
  }

  v18 = 0;
  v19 = 1;
LABEL_22:

  return v19;
}

- (NSError)error
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  error = self->_error;

  return error;
}

- (unint64_t)errorSourceIdentifier
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  return self->_errorSourceIdentifier;
}

- (BOOL)awakeFromSerializationWithLookupBlock:(id)block error:(id *)error
{
  v5 = [(IXSDataPromise *)self accessQueue:block];
  dispatch_assert_queue_V2(v5);

  if (![(IXSDataPromise *)self didAwake])
  {
    [(IXSDataPromise *)self setDidAwake:1];
  }

  return 1;
}

- (void)saveState
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if ([(IXSDataPromise *)self isTracked])
  {
    v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v4 encodeObject:self forKey:NSKeyedArchiveRootObjectKey];
    encodedData = [v4 encodedData];

    v6 = [IXSDataPromiseManager savePathForPromise:self];
    v12 = 0;
    v7 = [encodedData writeToURL:v6 options:268435457 error:&v12];
    v8 = v12;
    if ((v7 & 1) == 0)
    {
      v9 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        path = [v6 path];
        *buf = 136315906;
        v14 = "[IXSDataPromise saveState]";
        v15 = 2112;
        selfCopy2 = self;
        v17 = 2112;
        v18 = path;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to write promise %@ to disk at %@: %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v11 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[IXSDataPromise saveState]";
      v15 = 2112;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Not saving %@ because it's not tracked", buf, 0x16u);
    }
  }
}

- (void)_removeSavedState
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v4 = [IXSDataPromiseManager savePathForPromise:self];
  v5 = +[IXFileManager defaultManager];
  v10 = 0;
  v6 = [v5 removeItemAtURL:v4 error:&v10];
  v7 = v10;

  if ((v6 & 1) == 0)
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      path = [v4 path];
      *buf = 136315906;
      v12 = "[IXSDataPromise _removeSavedState]";
      v13 = 2112;
      selfCopy = self;
      v15 = 2112;
      v16 = path;
      v17 = 2112;
      v18 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: Failed to remove saved promise %@ at %@ : %@", buf, 0x2Au);
    }
  }
}

- (void)setIsTracked:(BOOL)tracked
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (tracked)
  {
    self->_isTracked = tracked;

    [(IXSDataPromise *)self saveState];
  }

  else
  {
    [(IXSDataPromise *)self _removeSavedState];
    self->_isTracked = tracked;
  }
}

- (NSString)name
{
  seed = [(IXSDataPromise *)self seed];
  name = [seed name];

  return name;
}

- (unint64_t)creatorIdentifier
{
  seed = [(IXSDataPromise *)self seed];
  creatorIdentifier = [seed creatorIdentifier];

  return creatorIdentifier;
}

- (NSUUID)uniqueIdentifier
{
  seed = [(IXSDataPromise *)self seed];
  uniqueIdentifier = [seed uniqueIdentifier];

  return uniqueIdentifier;
}

- (unint64_t)totalBytesNeededOnDisk
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  seed = [(IXSDataPromise *)self seed];
  totalBytesNeededOnDisk = [seed totalBytesNeededOnDisk];

  return totalBytesNeededOnDisk;
}

- (unint64_t)totalBytesForProgress
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  return [(IXSDataPromise *)self totalBytesNeededOnDisk];
}

- (unint64_t)bytesConsumedOnDisk
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  [(IXSDataPromise *)self percentComplete];
  return (v4 * [(IXSDataPromise *)self totalBytesNeededOnDisk]);
}

- (NSURL)preflightPath
{
  v3 = +[IXGlobalConfiguration sharedInstance];
  userVolumeURL = [v3 userVolumeURL];

  v5 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    path = [userVolumeURL path];
    v8 = 136315650;
    v9 = "[IXSDataPromise preflightPath]";
    v10 = 2112;
    selfCopy = self;
    v12 = 2112;
    v13 = path;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: WARNING: Preflight called on %@ which assumes data will end up on the volume containing %@; this may not be accurate.", &v8, 0x20u);
  }

  return userVolumeURL;
}

- (NSSet)subPromiseUUIDs
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  return +[NSSet set];
}

- (BOOL)isComplete
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  return self->_complete;
}

- (void)setComplete:(BOOL)complete
{
  completeCopy = complete;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (self->_complete != completeCopy)
  {
    if (!self->_complete || completeCopy)
    {
      if (!completeCopy)
      {
        return;
      }

      [(IXSDataPromise *)self percentComplete];
      if (v7 < 1.0)
      {
        [(IXSDataPromise *)self _setPercentComplete:0 saveStateIfNeeded:1.0];
      }

      self->_complete = completeCopy;
      [(IXSDataPromise *)self saveState];
      delegate = [(IXSDataPromise *)self delegate];
      if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        delegateDeliveryQueue = [(IXSDataPromise *)self delegateDeliveryQueue];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1000933DC;
        v11[3] = &unk_100100ED8;
        v12 = delegate;
        selfCopy = self;
        sub_100071134(delegateDeliveryQueue, v11);
      }

      delegateDeliveryQueue2 = [(IXSDataPromise *)self delegateDeliveryQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000933E8;
      v10[3] = &unk_1001010A0;
      v10[4] = self;
      sub_100071134(delegateDeliveryQueue2, v10);
    }

    else
    {
      delegate = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "[IXSDataPromise setComplete:]";
        _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_DEFAULT, "%s: Ignoring attempt to set a complete promise to not complete", buf, 0xCu);
      }
    }
  }
}

- (double)percentComplete
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  return self->_percentComplete;
}

- (void)_setPercentComplete:(double)complete saveStateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if ([(IXSDataPromise *)self isComplete])
  {
    delegate = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v23 = "[IXSDataPromise _setPercentComplete:saveStateIfNeeded:]";
      v24 = 2048;
      completeCopy = complete;
      v26 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_DEFAULT, "%s: Ignoring attempt to set percent complete to %f for %@ when it was already complete.", buf, 0x20u);
    }
  }

  else
  {
    if (complete < 0.0)
    {
      return;
    }

    if (complete > 1.0)
    {
      complete = 1.0;
    }

    v9 = self->_percentComplete == 0.0 && complete > 0.0;
    self->_percentComplete = complete;
    [(IXSDataPromise *)self lastSavedPercentComplete];
    if (v10 == 0.0 || ([(IXSDataPromise *)self lastSavedPercentComplete], complete - v11 >= 0.100000001))
    {
      v12 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v23 = "[IXSDataPromise _setPercentComplete:saveStateIfNeeded:]";
        v24 = 2112;
        completeCopy = *&self;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Progress: %@", buf, 0x16u);
      }

      if (neededCopy)
      {
        [(IXSDataPromise *)self saveState];
      }
    }

    delegate = [(IXSDataPromise *)self delegate];
    if (delegate)
    {
      if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        delegateDeliveryQueue = [(IXSDataPromise *)self delegateDeliveryQueue];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100093788;
        v19[3] = &unk_100100ED8;
        v20 = delegate;
        selfCopy2 = self;
        sub_100071134(delegateDeliveryQueue, v19);
      }

      if (objc_opt_respondsToSelector())
      {
        delegateDeliveryQueue2 = [(IXSDataPromise *)self delegateDeliveryQueue];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100093794;
        v15[3] = &unk_1001018D0;
        delegate = delegate;
        v16 = delegate;
        selfCopy3 = self;
        completeCopy2 = complete;
        sub_100071134(delegateDeliveryQueue2, v15);
      }
    }
  }
}

- (void)setPercentComplete:(double)complete
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  [(IXSDataPromise *)self _setPercentComplete:1 saveStateIfNeeded:complete];
}

- (BOOL)hasBegun
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  [(IXSDataPromise *)self percentComplete];
  return v4 > 0.0;
}

- (BOOL)didAwake
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  return self->_didAwake;
}

- (void)setDidAwake:(BOOL)awake
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  self->_didAwake = awake;
}

- (IXSDataPromiseDelegate)delegate
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained != delegateCopy)
  {
    objc_storeWeak(&self->_delegate, delegateCopy);
    if (delegateCopy)
    {
      if ([(IXSDataPromise *)self hasBegun])
      {
        delegateDeliveryQueue = [(IXSDataPromise *)self delegateDeliveryQueue];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100093B1C;
        v20[3] = &unk_100100ED8;
        v21 = delegateCopy;
        selfCopy = self;
        sub_100071134(delegateDeliveryQueue, v20);
      }

      [(IXSDataPromise *)self percentComplete];
      if (v8 > 0.0)
      {
        [(IXSDataPromise *)self percentComplete];
        v10 = v9;
        delegateDeliveryQueue2 = [(IXSDataPromise *)self delegateDeliveryQueue];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100093B28;
        v16[3] = &unk_1001018D0;
        v17 = delegateCopy;
        selfCopy2 = self;
        v19 = v10;
        sub_100071134(delegateDeliveryQueue2, v16);
      }

      if ([(IXSDataPromise *)self isComplete])
      {
        delegateDeliveryQueue3 = [(IXSDataPromise *)self delegateDeliveryQueue];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100093B38;
        v13[3] = &unk_100100ED8;
        v14 = delegateCopy;
        selfCopy3 = self;
        sub_100071134(delegateDeliveryQueue3, v13);
      }
    }
  }
}

- (void)decommission
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v4 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[IXSDataPromise decommission]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Decommissioning %@", &v6, 0x16u);
  }

  [(IXSDataPromise *)self setDelegate:0];
  [(IXSDataPromise *)self setIsTracked:0];
  v5 = +[IXSDataPromiseManager sharedInstance];
  [v5 decommissionPromise:self];
}

- (void)supersede
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  [(IXSDataPromise *)self setDelegate:0];
  v6 = sub_1000405FC("[IXSDataPromise supersede]", 569, @"IXErrorDomain", 7uLL, 0, 0, @"Data promise was superseded by a new promise being set.", v4, v5);
  [(IXSDataPromise *)self cancelForReason:v6 client:15 error:0];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  name = [(IXSDataPromise *)self name];
  v6 = IXStringForClientID([(IXSDataPromise *)self creatorIdentifier]);
  uniqueIdentifier = [(IXSDataPromise *)self uniqueIdentifier];
  percentComplete = self->_percentComplete;
  complete = self->_complete;
  seed = [(IXSDataPromise *)self seed];
  totalBytesNeededOnDisk = [seed totalBytesNeededOnDisk];
  v12 = 78;
  if (complete)
  {
    v12 = 89;
  }

  v13 = [NSString stringWithFormat:@"<%@(%p) Name:%@ Creator:%@ UUID:%@ PercentComplete:%f IsComplete:%c DiskUsageBytes:%llu>", v4, self, name, v6, uniqueIdentifier, *&percentComplete, v12, totalBytesNeededOnDisk];

  return v13;
}

- (void)_remote_getPercentComplete:(id)complete
{
  completeCopy = complete;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100093FCC;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  completeCopy[2](completeCopy, 0, v9[3]);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setPercentComplete:(double)complete
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000940B0;
  v7[3] = &unk_100100DF8;
  v7[4] = self;
  *&v7[5] = complete;
  dispatch_sync(accessQueue2, v7);
}

- (void)_remote_getIsComplete:(id)complete
{
  completeCopy = complete;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000941CC;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  (*(completeCopy + 2))(completeCopy, *(v9 + 24), 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setIsComplete:(id)complete
{
  completeCopy = complete;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  uniqueIdentifier = [(IXSDataPromise *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v8 = sub_10003B2E0(uUIDString, 9);

  if (v8)
  {
    exit(1);
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10009437C;
  v15 = sub_10009438C;
  v16 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100094394;
  v10[3] = &unk_100101268;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(accessQueue2, v10);

  completeCopy[2](completeCopy, v12[5]);
  _Block_object_dispose(&v11, 8);
}

- (void)_remote_cancelForReason:(id)reason client:(unint64_t)client completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10009437C;
  v21 = sub_10009438C;
  v22 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100094578;
  v13[3] = &unk_100103A18;
  v13[4] = self;
  v12 = reasonCopy;
  v15 = &v17;
  clientCopy = client;
  v14 = v12;
  dispatch_sync(accessQueue2, v13);

  completionCopy[2](completionCopy, v18[5]);
  _Block_object_dispose(&v17, 8);
}

- (void)_remote_resetWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = sub_10009437C;
  v19[3] = sub_10009438C;
  v20 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000948A4;
  block[3] = &unk_1001018A8;
  block[4] = self;
  block[5] = &v18;
  block[6] = &v14;
  dispatch_sync(accessQueue2, block);

  if (*(v19[0] + 40))
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000A8548(v19, v7);
    }

    v9 = sub_1000405FC("[IXSDataPromise(IXSDataPromiseIPCMethods) _remote_resetWithCompletion:]", 662, @"IXErrorDomain", 4uLL, 0, 0, @"Attempt made to reset a canceled promise (promise canceled with error %@)", v8, *(v19[0] + 40));
    completionCopy[2](completionCopy, v9);
  }

  else
  {
    if (*(v15 + 24) != 1)
    {
      completionCopy[2](completionCopy, 0);
      goto LABEL_10;
    }

    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000A85E4();
    }

    v9 = sub_1000405FC("[IXSDataPromise(IXSDataPromiseIPCMethods) _remote_resetWithCompletion:]", 665, @"IXErrorDomain", 4uLL, 0, 0, @"Attempt made to reset a completed promise", v11, v12);
    completionCopy[2](completionCopy, v9);
  }

LABEL_10:
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
}

- (void)_remote_getErrorInfo:(id)info
{
  infoCopy = info;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10009437C;
  v16 = sub_10009438C;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100094AB4;
  block[3] = &unk_1001018A8;
  block[4] = self;
  block[5] = &v12;
  block[6] = &v8;
  dispatch_sync(accessQueue2, block);

  infoCopy[2](infoCopy, v9[3], v13[5]);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
}

- (void)_remote_preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100094CC4;
  block[3] = &unk_1001018A8;
  block[4] = self;
  block[5] = &v18;
  block[6] = &v14;
  dispatch_sync(accessQueue2, block);

  preflightPath = [(IXSDataPromise *)self preflightPath];
  v8 = v19[3];
  v9 = v15[3];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100094D0C;
  v11[3] = &unk_100103330;
  v10 = completionCopy;
  v12 = v10;
  sub_100044164(preflightPath, v8, v9, 0, v11);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
}

@end