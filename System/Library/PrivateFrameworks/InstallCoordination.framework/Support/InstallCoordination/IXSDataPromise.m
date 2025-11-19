@interface IXSDataPromise
- (BOOL)awakeFromSerializationWithLookupBlock:(id)a3 error:(id *)a4;
- (BOOL)cancelForReason:(id)a3 client:(unint64_t)a4 error:(id *)a5;
- (BOOL)didAwake;
- (BOOL)hasBegun;
- (BOOL)isComplete;
- (BOOL)isEqual:(id)a3;
- (IXDataPromiseSeed)clientSeed;
- (IXSDataPromise)initWithCoder:(id)a3;
- (IXSDataPromise)initWithSeed:(id)a3 error:(id *)a4;
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
- (void)_internalInitWithUniqueIdentifier:(id)a3;
- (void)_remote_cancelForReason:(id)a3 client:(unint64_t)a4 completion:(id)a5;
- (void)_remote_getErrorInfo:(id)a3;
- (void)_remote_getIsComplete:(id)a3;
- (void)_remote_getPercentComplete:(id)a3;
- (void)_remote_preflightWithCompletion:(id)a3;
- (void)_remote_resetWithCompletion:(id)a3;
- (void)_remote_setIsComplete:(id)a3;
- (void)_remote_setPercentComplete:(double)a3;
- (void)_removeSavedState;
- (void)_setPercentComplete:(double)a3 saveStateIfNeeded:(BOOL)a4;
- (void)decommission;
- (void)encodeWithCoder:(id)a3;
- (void)reset;
- (void)saveState;
- (void)setComplete:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setDidAwake:(BOOL)a3;
- (void)setIsTracked:(BOOL)a3;
- (void)setPercentComplete:(double)a3;
- (void)supersede;
@end

@implementation IXSDataPromise

- (void)_internalInitWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"com.apple.installcoordinationd.promise_%@", v4];
  v6 = [v5 UTF8String];
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create(v6, v7);
  accessQueue = self->_accessQueue;
  self->_accessQueue = v8;

  v15 = [NSString stringWithFormat:@"com.apple.installcoordinationd.promise_delegate_%@", v4];

  v10 = v15;
  v11 = [v15 UTF8String];
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create(v11, v12);
  delegateDeliveryQueue = self->_delegateDeliveryQueue;
  self->_delegateDeliveryQueue = v13;
}

- (IXSDataPromise)initWithSeed:(id)a3 error:(id *)a4
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = IXSDataPromise;
  v6 = [(IXSDataPromise *)&v14 init];
  if (v6)
  {
    v7 = objc_opt_new();
    [v5 setUniqueIdentifier:v7];

    v8 = [v5 uniqueIdentifier];
    [(IXSDataPromise *)v6 _internalInitWithUniqueIdentifier:v8];

    v9 = [(IXSDataPromise *)v6 accessQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100091D2C;
    v11[3] = &unk_100100ED8;
    v12 = v6;
    v13 = v5;
    dispatch_sync(v9, v11);
  }

  return v6;
}

- (IXDataPromiseSeed)clientSeed
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IXSDataPromise *)self seed];
  v5 = [v4 copy];

  return v5;
}

- (IXSDataPromise)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = IXSDataPromise;
  v5 = [(IXSDataPromise *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seed"];
    seed = v5->_seed;
    v5->_seed = v6;

    v8 = [(IXDataPromiseSeed *)v5->_seed uniqueIdentifier];
    [(IXSDataPromise *)v5 _internalInitWithUniqueIdentifier:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"errorSourceIdentifier"];
    v5->_errorSourceIdentifier = [v11 unsignedLongLongValue];

    v5->_isTracked = [v4 decodeBoolForKey:@"isTracked"];
    [v4 decodeDoubleForKey:@"percentComplete"];
    v5->_percentComplete = v12;
    v5->_complete = [v4 decodeBoolForKey:@"complete"];
    v13 = [(IXSDataPromise *)v5 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100091F98;
    block[3] = &unk_1001010A0;
    v16 = v5;
    dispatch_sync(v13, block);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IXSDataPromise *)self seed];
  [v4 encodeObject:v6 forKey:@"seed"];

  v7 = [(IXSDataPromise *)self error];
  [v4 encodeObject:v7 forKey:@"error"];

  v8 = [NSNumber numberWithUnsignedInteger:[(IXSDataPromise *)self errorSourceIdentifier]];
  [v4 encodeObject:v8 forKey:@"errorSourceIdentifier"];

  [v4 encodeBool:-[IXSDataPromise isTracked](self forKey:{"isTracked"), @"isTracked"}];
  [(IXSDataPromise *)self percentComplete];
  [v4 encodeDouble:@"percentComplete" forKey:?];
  [v4 encodeBool:-[IXSDataPromise isComplete](self forKey:{"isComplete"), @"complete"}];

  [(IXSDataPromise *)self percentComplete];

  [(IXSDataPromise *)self setLastSavedPercentComplete:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
  {
    v8 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(IXSDataPromise *)v5 uniqueIdentifier];
    v7 = [(IXSDataPromise *)self uniqueIdentifier];
    v8 = [v6 isEqual:v7];
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
  v2 = [(IXSDataPromise *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (void)reset
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IXSDataPromise *)self error];

  if (v4)
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[IXSDataPromise reset]";
      v6 = "%s: Ignoring reset request for promise that hit error";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    }
  }

  else
  {
    v7 = [(IXSDataPromise *)self isComplete];
    v5 = sub_1000031B0(off_100121958);
    v8 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v7)
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
        v16 = self;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Resetting data promise %@", buf, 0x16u);
      }

      [(IXSDataPromise *)self setComplete:0];
      [(IXSDataPromise *)self setPercentComplete:0.0];
      v5 = [(IXSDataPromise *)self delegate];
      if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v9 = [(IXSDataPromise *)self delegateDeliveryQueue];
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100092454;
        v10[3] = &unk_100100ED8;
        v5 = v5;
        v11 = v5;
        v12 = self;
        sub_100071134(v9, v10);
      }
    }
  }
}

- (BOOL)cancelForReason:(id)a3 client:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v9);

  if (!v8)
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

  if (!a4)
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
    if (a5)
    {
      v18 = v18;
      v19 = 0;
      *a5 = v18;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_22;
  }

  v10 = [(IXSDataPromise *)self error];

  v11 = sub_1000031B0(off_100121958);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *buf = 136315650;
      v33 = "[IXSDataPromise cancelForReason:client:error:]";
      v34 = 2112;
      v35 = self;
      v36 = 2112;
      v37 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: %@ : ignoring cancel request for reason %@ after promise was already canceled", buf, 0x20u);
    }
  }

  else
  {
    if (v12)
    {
      *buf = 136315906;
      v33 = "[IXSDataPromise cancelForReason:client:error:]";
      v34 = 2112;
      v35 = self;
      v36 = 2048;
      v37 = a4;
      v38 = 2112;
      v39 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: %@ : canceled by client %lu for reason %@", buf, 0x2Au);
    }

    [(IXSDataPromise *)self setError:v8];
    [(IXSDataPromise *)self setErrorSourceIdentifier:a4];
    self->_complete = 0;
    self->_percentComplete = 0.0;
    v11 = [(IXSDataPromise *)self delegate];
    if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v20 = [(IXSDataPromise *)self delegateDeliveryQueue];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100092830;
      v27[3] = &unk_1001015A0;
      v28 = v11;
      v29 = self;
      v30 = v8;
      v31 = a4;
      sub_100071134(v20, v27);
    }

    v21 = [(IXSDataPromise *)self delegateDeliveryQueue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100092840;
    v24[3] = &unk_1001018D0;
    v24[4] = self;
    v25 = v8;
    v26 = a4;
    sub_100071134(v21, v24);

    [(IXSDataPromise *)self decommission];
  }

  v18 = 0;
  v19 = 1;
LABEL_22:

  return v19;
}

- (NSError)error
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  error = self->_error;

  return error;
}

- (unint64_t)errorSourceIdentifier
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  return self->_errorSourceIdentifier;
}

- (BOOL)awakeFromSerializationWithLookupBlock:(id)a3 error:(id *)a4
{
  v5 = [(IXSDataPromise *)self accessQueue:a3];
  dispatch_assert_queue_V2(v5);

  if (![(IXSDataPromise *)self didAwake])
  {
    [(IXSDataPromise *)self setDidAwake:1];
  }

  return 1;
}

- (void)saveState
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  if ([(IXSDataPromise *)self isTracked])
  {
    v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v4 encodeObject:self forKey:NSKeyedArchiveRootObjectKey];
    v5 = [v4 encodedData];

    v6 = [IXSDataPromiseManager savePathForPromise:self];
    v12 = 0;
    v7 = [v5 writeToURL:v6 options:268435457 error:&v12];
    v8 = v12;
    if ((v7 & 1) == 0)
    {
      v9 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v6 path];
        *buf = 136315906;
        v14 = "[IXSDataPromise saveState]";
        v15 = 2112;
        v16 = self;
        v17 = 2112;
        v18 = v10;
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
      v16 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Not saving %@ because it's not tracked", buf, 0x16u);
    }
  }
}

- (void)_removeSavedState
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

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
      v9 = [v4 path];
      *buf = 136315906;
      v12 = "[IXSDataPromise _removeSavedState]";
      v13 = 2112;
      v14 = self;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: Failed to remove saved promise %@ at %@ : %@", buf, 0x2Au);
    }
  }
}

- (void)setIsTracked:(BOOL)a3
{
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  if (a3)
  {
    self->_isTracked = a3;

    [(IXSDataPromise *)self saveState];
  }

  else
  {
    [(IXSDataPromise *)self _removeSavedState];
    self->_isTracked = a3;
  }
}

- (NSString)name
{
  v2 = [(IXSDataPromise *)self seed];
  v3 = [v2 name];

  return v3;
}

- (unint64_t)creatorIdentifier
{
  v2 = [(IXSDataPromise *)self seed];
  v3 = [v2 creatorIdentifier];

  return v3;
}

- (NSUUID)uniqueIdentifier
{
  v2 = [(IXSDataPromise *)self seed];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (unint64_t)totalBytesNeededOnDisk
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IXSDataPromise *)self seed];
  v5 = [v4 totalBytesNeededOnDisk];

  return v5;
}

- (unint64_t)totalBytesForProgress
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  return [(IXSDataPromise *)self totalBytesNeededOnDisk];
}

- (unint64_t)bytesConsumedOnDisk
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  [(IXSDataPromise *)self percentComplete];
  return (v4 * [(IXSDataPromise *)self totalBytesNeededOnDisk]);
}

- (NSURL)preflightPath
{
  v3 = +[IXGlobalConfiguration sharedInstance];
  v4 = [v3 userVolumeURL];

  v5 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 path];
    v8 = 136315650;
    v9 = "[IXSDataPromise preflightPath]";
    v10 = 2112;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: WARNING: Preflight called on %@ which assumes data will end up on the volume containing %@; this may not be accurate.", &v8, 0x20u);
  }

  return v4;
}

- (NSSet)subPromiseUUIDs
{
  v2 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v2);

  return +[NSSet set];
}

- (BOOL)isComplete
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  return self->_complete;
}

- (void)setComplete:(BOOL)a3
{
  v3 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  if (self->_complete != v3)
  {
    if (!self->_complete || v3)
    {
      if (!v3)
      {
        return;
      }

      [(IXSDataPromise *)self percentComplete];
      if (v7 < 1.0)
      {
        [(IXSDataPromise *)self _setPercentComplete:0 saveStateIfNeeded:1.0];
      }

      self->_complete = v3;
      [(IXSDataPromise *)self saveState];
      v6 = [(IXSDataPromise *)self delegate];
      if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v8 = [(IXSDataPromise *)self delegateDeliveryQueue];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1000933DC;
        v11[3] = &unk_100100ED8;
        v12 = v6;
        v13 = self;
        sub_100071134(v8, v11);
      }

      v9 = [(IXSDataPromise *)self delegateDeliveryQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000933E8;
      v10[3] = &unk_1001010A0;
      v10[4] = self;
      sub_100071134(v9, v10);
    }

    else
    {
      v6 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "[IXSDataPromise setComplete:]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Ignoring attempt to set a complete promise to not complete", buf, 0xCu);
      }
    }
  }
}

- (double)percentComplete
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  return self->_percentComplete;
}

- (void)_setPercentComplete:(double)a3 saveStateIfNeeded:(BOOL)a4
{
  v4 = a4;
  v7 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v7);

  if ([(IXSDataPromise *)self isComplete])
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v23 = "[IXSDataPromise _setPercentComplete:saveStateIfNeeded:]";
      v24 = 2048;
      v25 = a3;
      v26 = 2112;
      v27 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Ignoring attempt to set percent complete to %f for %@ when it was already complete.", buf, 0x20u);
    }
  }

  else
  {
    if (a3 < 0.0)
    {
      return;
    }

    if (a3 > 1.0)
    {
      a3 = 1.0;
    }

    v9 = self->_percentComplete == 0.0 && a3 > 0.0;
    self->_percentComplete = a3;
    [(IXSDataPromise *)self lastSavedPercentComplete];
    if (v10 == 0.0 || ([(IXSDataPromise *)self lastSavedPercentComplete], a3 - v11 >= 0.100000001))
    {
      v12 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v23 = "[IXSDataPromise _setPercentComplete:saveStateIfNeeded:]";
        v24 = 2112;
        v25 = *&self;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Progress: %@", buf, 0x16u);
      }

      if (v4)
      {
        [(IXSDataPromise *)self saveState];
      }
    }

    v8 = [(IXSDataPromise *)self delegate];
    if (v8)
    {
      if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v13 = [(IXSDataPromise *)self delegateDeliveryQueue];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100093788;
        v19[3] = &unk_100100ED8;
        v20 = v8;
        v21 = self;
        sub_100071134(v13, v19);
      }

      if (objc_opt_respondsToSelector())
      {
        v14 = [(IXSDataPromise *)self delegateDeliveryQueue];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100093794;
        v15[3] = &unk_1001018D0;
        v8 = v8;
        v16 = v8;
        v17 = self;
        v18 = a3;
        sub_100071134(v14, v15);
      }
    }
  }
}

- (void)setPercentComplete:(double)a3
{
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  [(IXSDataPromise *)self _setPercentComplete:1 saveStateIfNeeded:a3];
}

- (BOOL)hasBegun
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  [(IXSDataPromise *)self percentComplete];
  return v4 > 0.0;
}

- (BOOL)didAwake
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  return self->_didAwake;
}

- (void)setDidAwake:(BOOL)a3
{
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  self->_didAwake = a3;
}

- (IXSDataPromiseDelegate)delegate
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_delegate, v4);
    if (v4)
    {
      if ([(IXSDataPromise *)self hasBegun])
      {
        v7 = [(IXSDataPromise *)self delegateDeliveryQueue];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100093B1C;
        v20[3] = &unk_100100ED8;
        v21 = v4;
        v22 = self;
        sub_100071134(v7, v20);
      }

      [(IXSDataPromise *)self percentComplete];
      if (v8 > 0.0)
      {
        [(IXSDataPromise *)self percentComplete];
        v10 = v9;
        v11 = [(IXSDataPromise *)self delegateDeliveryQueue];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100093B28;
        v16[3] = &unk_1001018D0;
        v17 = v4;
        v18 = self;
        v19 = v10;
        sub_100071134(v11, v16);
      }

      if ([(IXSDataPromise *)self isComplete])
      {
        v12 = [(IXSDataPromise *)self delegateDeliveryQueue];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100093B38;
        v13[3] = &unk_100100ED8;
        v14 = v4;
        v15 = self;
        sub_100071134(v12, v13);
      }
    }
  }
}

- (void)decommission
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[IXSDataPromise decommission]";
    v8 = 2112;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Decommissioning %@", &v6, 0x16u);
  }

  [(IXSDataPromise *)self setDelegate:0];
  [(IXSDataPromise *)self setIsTracked:0];
  v5 = +[IXSDataPromiseManager sharedInstance];
  [v5 decommissionPromise:self];
}

- (void)supersede
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  [(IXSDataPromise *)self setDelegate:0];
  v6 = sub_1000405FC("[IXSDataPromise supersede]", 569, @"IXErrorDomain", 7uLL, 0, 0, @"Data promise was superseded by a new promise being set.", v4, v5);
  [(IXSDataPromise *)self cancelForReason:v6 client:15 error:0];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(IXSDataPromise *)self name];
  v6 = IXStringForClientID([(IXSDataPromise *)self creatorIdentifier]);
  v7 = [(IXSDataPromise *)self uniqueIdentifier];
  percentComplete = self->_percentComplete;
  complete = self->_complete;
  v10 = [(IXSDataPromise *)self seed];
  v11 = [v10 totalBytesNeededOnDisk];
  v12 = 78;
  if (complete)
  {
    v12 = 89;
  }

  v13 = [NSString stringWithFormat:@"<%@(%p) Name:%@ Creator:%@ UUID:%@ PercentComplete:%f IsComplete:%c DiskUsageBytes:%llu>", v4, self, v5, v6, v7, *&percentComplete, v12, v11];

  return v13;
}

- (void)_remote_getPercentComplete:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100093FCC;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v6, v7);

  v4[2](v4, 0, v9[3]);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setPercentComplete:(double)a3
{
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000940B0;
  v7[3] = &unk_100100DF8;
  v7[4] = self;
  *&v7[5] = a3;
  dispatch_sync(v6, v7);
}

- (void)_remote_getIsComplete:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000941CC;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v6, v7);

  (*(v4 + 2))(v4, *(v9 + 24), 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setIsComplete:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(IXSDataPromise *)self uniqueIdentifier];
  v7 = [v6 UUIDString];
  v8 = sub_10003B2E0(v7, 9);

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
  v9 = [(IXSDataPromise *)self accessQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100094394;
  v10[3] = &unk_100101268;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(v9, v10);

  v4[2](v4, v12[5]);
  _Block_object_dispose(&v11, 8);
}

- (void)_remote_cancelForReason:(id)a3 client:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v10);

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10009437C;
  v21 = sub_10009438C;
  v22 = 0;
  v11 = [(IXSDataPromise *)self accessQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100094578;
  v13[3] = &unk_100103A18;
  v13[4] = self;
  v12 = v8;
  v15 = &v17;
  v16 = a4;
  v14 = v12;
  dispatch_sync(v11, v13);

  v9[2](v9, v18[5]);
  _Block_object_dispose(&v17, 8);
}

- (void)_remote_resetWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

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
  v6 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000948A4;
  block[3] = &unk_1001018A8;
  block[4] = self;
  block[5] = &v18;
  block[6] = &v14;
  dispatch_sync(v6, block);

  if (*(v19[0] + 40))
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000A8548(v19, v7);
    }

    v9 = sub_1000405FC("[IXSDataPromise(IXSDataPromiseIPCMethods) _remote_resetWithCompletion:]", 662, @"IXErrorDomain", 4uLL, 0, 0, @"Attempt made to reset a canceled promise (promise canceled with error %@)", v8, *(v19[0] + 40));
    v4[2](v4, v9);
  }

  else
  {
    if (*(v15 + 24) != 1)
    {
      v4[2](v4, 0);
      goto LABEL_10;
    }

    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000A85E4();
    }

    v9 = sub_1000405FC("[IXSDataPromise(IXSDataPromiseIPCMethods) _remote_resetWithCompletion:]", 665, @"IXErrorDomain", 4uLL, 0, 0, @"Attempt made to reset a completed promise", v11, v12);
    v4[2](v4, v9);
  }

LABEL_10:
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
}

- (void)_remote_getErrorInfo:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

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
  v6 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100094AB4;
  block[3] = &unk_1001018A8;
  block[4] = self;
  block[5] = &v12;
  block[6] = &v8;
  dispatch_sync(v6, block);

  v4[2](v4, v9[3], v13[5]);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
}

- (void)_remote_preflightWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100094CC4;
  block[3] = &unk_1001018A8;
  block[4] = self;
  block[5] = &v18;
  block[6] = &v14;
  dispatch_sync(v6, block);

  v7 = [(IXSDataPromise *)self preflightPath];
  v8 = v19[3];
  v9 = v15[3];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100094D0C;
  v11[3] = &unk_100103330;
  v10 = v4;
  v12 = v10;
  sub_100044164(v7, v8, v9, 0, v11);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
}

@end