@interface IXSPromisedAppReference
- (BOOL)cancelForReason:(id)reason client:(unint64_t)client error:(id *)error;
- (IXSPromisedAppReference)initWithCoder:(id)coder;
- (IXSPromisedAppReference)initWithSeed:(id)seed ifMatchingPredicate:(id)predicate error:(id *)error;
- (MIAppReference)appReference;
- (void)encodeWithCoder:(id)coder;
- (void)markAppReferenceAsConsumed;
- (void)setAppReference:(id)reference;
@end

@implementation IXSPromisedAppReference

- (IXSPromisedAppReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = IXSPromisedAppReference;
  v5 = [(IXSOwnedDataPromise *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appReference"];
    appReference = v5->_appReference;
    v5->_appReference = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v7.receiver = self;
  v7.super_class = IXSPromisedAppReference;
  [(IXSOwnedDataPromise *)&v7 encodeWithCoder:coderCopy];
  appReference = [(IXSPromisedAppReference *)self appReference];
  [coderCopy encodeObject:appReference forKey:@"appReference"];
}

- (IXSPromisedAppReference)initWithSeed:(id)seed ifMatchingPredicate:(id)predicate error:(id *)error
{
  seedCopy = seed;
  predicateCopy = predicate;
  v33.receiver = self;
  v33.super_class = IXSPromisedAppReference;
  v10 = [(IXSOwnedDataPromise *)&v33 initWithSeed:seedCopy error:error];
  if (!v10)
  {
    v17 = 0;
    goto LABEL_7;
  }

  identity = [seedCopy identity];
  v32 = 0;
  v12 = sub_100015B38(identity, [seedCopy installationDomain], &v32);
  v13 = v32;
  if (!v12)
  {
    v22 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100099814();
    }

    sub_1000405FC("[IXSPromisedAppReference initWithSeed:ifMatchingPredicate:error:]", 68, @"IXErrorDomain", 0x32uLL, v13, 0, @"Could not get LSApplicationRecord for app with identity %@", v23, identity);
    goto LABEL_14;
  }

  [predicateCopy allowEvaluation];
  if (([predicateCopy evaluateWithObject:v12] & 1) == 0)
  {
    v24 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100099788();
    }

    sub_1000405FC("[IXSPromisedAppReference initWithSeed:ifMatchingPredicate:error:]", 75, @"IXErrorDomain", 0x31uLL, 0, 0, @"Predicate %@ did not match for LSApplicationRecord %@", v25, predicateCopy);
    v17 = LABEL_14:;

    goto LABEL_15;
  }

  miAppIdentity = [identity miAppIdentity];
  [v12 installSessionIdentifier];
  v15 = v28 = identity;
  v31 = v13;
  v16 = MIAcquireReferenceForInstalledAppWithError();
  v17 = v13;

  if (v16)
  {
    appReference = v10->_appReference;
    v10->_appReference = v16;
    v19 = v16;

    accessQueue = [(IXSDataPromise *)v10 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000151C4;
    block[3] = &unk_1001010A0;
    v30 = v10;
    dispatch_sync(accessQueue, block);

LABEL_7:
    v21 = v10;
    goto LABEL_18;
  }

  identity = v28;
LABEL_15:

  if (error)
  {
    v26 = v17;
    v21 = 0;
    *error = v17;
  }

  else
  {
    v21 = 0;
  }

LABEL_18:

  return v21;
}

- (MIAppReference)appReference
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  appReference = self->_appReference;

  return appReference;
}

- (void)setAppReference:(id)reference
{
  referenceCopy = reference;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (self->_appReference != referenceCopy)
  {
    objc_storeStrong(&self->_appReference, reference);
  }
}

- (void)markAppReferenceAsConsumed
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  [(IXSPromisedAppReference *)self setAppReference:0];
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
      sub_1000999A0();
    }

    v15 = @"Reason passed to [IXSPromisedAppReference cancelForReason:client:error:] was nil";
    v16 = 135;
    goto LABEL_12;
  }

  if (!client)
  {
    v17 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10009991C();
    }

    v15 = @"Client passed to [IXSPromisedAppReference cancelForReason:client:error:] was IXClientNone (0)";
    v16 = 140;
LABEL_12:
    v12 = sub_1000405FC("[IXSPromisedAppReference cancelForReason:client:error:]", v16, @"IXErrorDomain", 0x35uLL, 0, 0, v15, v14, v23.receiver);
    appReference = 0;
    goto LABEL_13;
  }

  appReference = [(IXSPromisedAppReference *)self appReference];
  if (!appReference)
  {
    v12 = 0;
LABEL_16:
    v23.receiver = self;
    v23.super_class = IXSPromisedAppReference;
    v24[0] = v12;
    v18 = [(IXSOwnedDataPromise *)&v23 cancelForReason:reasonCopy client:client error:v24];
    v19 = v24[0];

    v12 = v19;
    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v24[1] = 0;
  v11 = MIInvalidateReferenceForInstalledAppWithError();
  v12 = 0;
  if (v11)
  {
    [(IXSPromisedAppReference *)self setAppReference:0];
    goto LABEL_16;
  }

  v22 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    sub_100099898();
  }

LABEL_13:
  v18 = 0;
  if (!error)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (!v18)
  {
    v20 = v12;
    *error = v12;
  }

LABEL_19:

  return v18;
}

@end