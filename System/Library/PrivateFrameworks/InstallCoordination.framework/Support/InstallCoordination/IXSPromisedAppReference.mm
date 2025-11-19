@interface IXSPromisedAppReference
- (BOOL)cancelForReason:(id)a3 client:(unint64_t)a4 error:(id *)a5;
- (IXSPromisedAppReference)initWithCoder:(id)a3;
- (IXSPromisedAppReference)initWithSeed:(id)a3 ifMatchingPredicate:(id)a4 error:(id *)a5;
- (MIAppReference)appReference;
- (void)encodeWithCoder:(id)a3;
- (void)markAppReferenceAsConsumed;
- (void)setAppReference:(id)a3;
@end

@implementation IXSPromisedAppReference

- (IXSPromisedAppReference)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IXSPromisedAppReference;
  v5 = [(IXSOwnedDataPromise *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appReference"];
    appReference = v5->_appReference;
    v5->_appReference = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v7.receiver = self;
  v7.super_class = IXSPromisedAppReference;
  [(IXSOwnedDataPromise *)&v7 encodeWithCoder:v4];
  v6 = [(IXSPromisedAppReference *)self appReference];
  [v4 encodeObject:v6 forKey:@"appReference"];
}

- (IXSPromisedAppReference)initWithSeed:(id)a3 ifMatchingPredicate:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v33.receiver = self;
  v33.super_class = IXSPromisedAppReference;
  v10 = [(IXSOwnedDataPromise *)&v33 initWithSeed:v8 error:a5];
  if (!v10)
  {
    v17 = 0;
    goto LABEL_7;
  }

  v11 = [v8 identity];
  v32 = 0;
  v12 = sub_100015B38(v11, [v8 installationDomain], &v32);
  v13 = v32;
  if (!v12)
  {
    v22 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100099814();
    }

    sub_1000405FC("[IXSPromisedAppReference initWithSeed:ifMatchingPredicate:error:]", 68, @"IXErrorDomain", 0x32uLL, v13, 0, @"Could not get LSApplicationRecord for app with identity %@", v23, v11);
    goto LABEL_14;
  }

  [v9 allowEvaluation];
  if (([v9 evaluateWithObject:v12] & 1) == 0)
  {
    v24 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100099788();
    }

    sub_1000405FC("[IXSPromisedAppReference initWithSeed:ifMatchingPredicate:error:]", 75, @"IXErrorDomain", 0x31uLL, 0, 0, @"Predicate %@ did not match for LSApplicationRecord %@", v25, v9);
    v17 = LABEL_14:;

    goto LABEL_15;
  }

  v14 = [v11 miAppIdentity];
  [v12 installSessionIdentifier];
  v15 = v28 = v11;
  v31 = v13;
  v16 = MIAcquireReferenceForInstalledAppWithError();
  v17 = v13;

  if (v16)
  {
    appReference = v10->_appReference;
    v10->_appReference = v16;
    v19 = v16;

    v20 = [(IXSDataPromise *)v10 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000151C4;
    block[3] = &unk_1001010A0;
    v30 = v10;
    dispatch_sync(v20, block);

LABEL_7:
    v21 = v10;
    goto LABEL_18;
  }

  v11 = v28;
LABEL_15:

  if (a5)
  {
    v26 = v17;
    v21 = 0;
    *a5 = v17;
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
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  appReference = self->_appReference;

  return appReference;
}

- (void)setAppReference:(id)a3
{
  v6 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  if (self->_appReference != v6)
  {
    objc_storeStrong(&self->_appReference, a3);
  }
}

- (void)markAppReferenceAsConsumed
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  [(IXSPromisedAppReference *)self setAppReference:0];
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
      sub_1000999A0();
    }

    v15 = @"Reason passed to [IXSPromisedAppReference cancelForReason:client:error:] was nil";
    v16 = 135;
    goto LABEL_12;
  }

  if (!a4)
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
    v10 = 0;
    goto LABEL_13;
  }

  v10 = [(IXSPromisedAppReference *)self appReference];
  if (!v10)
  {
    v12 = 0;
LABEL_16:
    v23.receiver = self;
    v23.super_class = IXSPromisedAppReference;
    v24[0] = v12;
    v18 = [(IXSOwnedDataPromise *)&v23 cancelForReason:v8 client:a4 error:v24];
    v19 = v24[0];

    v12 = v19;
    if (!a5)
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
  if (!a5)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (!v18)
  {
    v20 = v12;
    *a5 = v12;
  }

LABEL_19:

  return v18;
}

@end