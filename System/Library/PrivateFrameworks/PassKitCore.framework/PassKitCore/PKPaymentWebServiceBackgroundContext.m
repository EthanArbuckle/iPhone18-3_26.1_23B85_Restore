@interface PKPaymentWebServiceBackgroundContext
+ (id)contextWithArchive:(id)a3;
- (PKPaymentWebServiceBackgroundContext)init;
- (PKPaymentWebServiceBackgroundContext)initWithCoder:(id)a3;
- (id)backgroundDownloadRecordForRecordName:(id)a3;
- (id)backgroundDownloadRecordForTaskIdentifier:(unint64_t)a3;
- (id)remainingTasks;
- (void)addBackgroundDownloadRecord:(id)a3 forRecordName:(id)a4;
- (void)addBackgroundDownloadRecord:(id)a3 forTaskIdentifier:(unint64_t)a4;
- (void)archiveAtPath:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeBackgroundDownloadRecordForRecordName:(id)a3;
- (void)removeBackgroundDownloadRecordForTaskIdentifier:(unint64_t)a3;
@end

@implementation PKPaymentWebServiceBackgroundContext

- (PKPaymentWebServiceBackgroundContext)init
{
  v9.receiver = self;
  v9.super_class = PKPaymentWebServiceBackgroundContext;
  v2 = [(PKPaymentWebServiceBackgroundContext *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    backgroundTaskRecordsByTaskIdentifier = v3->_backgroundTaskRecordsByTaskIdentifier;
    v3->_backgroundTaskRecordsByTaskIdentifier = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    backgroundTaskRecordsByRecordName = v3->_backgroundTaskRecordsByRecordName;
    v3->_backgroundTaskRecordsByRecordName = v6;
  }

  return v3;
}

- (PKPaymentWebServiceBackgroundContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentWebServiceBackgroundContext *)self init];
  v6 = v5;
  if (v5)
  {
    os_unfair_lock_lock(&v5->_lock);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v7 setWithObjects:{v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"backgroundTaskByTaskIdentifier"];
    v16 = [v15 mutableCopy];
    [(PKPaymentWebServiceBackgroundContext *)v6 setBackgroundTaskRecordsByTaskIdentifier:v16];

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v17 setWithObjects:{v18, v19, v20, v21, v22, v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"backgroundTaskRecordsByRecordName"];
    v26 = [v25 mutableCopy];
    [(PKPaymentWebServiceBackgroundContext *)v6 setBackgroundTaskRecordsByRecordName:v26];

    v27 = [(PKPaymentWebServiceBackgroundContext *)v6 backgroundTaskRecordsByRecordName];

    if (!v27)
    {
      v28 = [MEMORY[0x1E695DF90] dictionary];
      [(PKPaymentWebServiceBackgroundContext *)v6 setBackgroundTaskRecordsByRecordName:v28];
    }

    os_unfair_lock_unlock(&v6->_lock);
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByTaskIdentifier];
  [v4 encodeObject:v5 forKey:@"backgroundTaskByTaskIdentifier"];

  v6 = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByRecordName];
  [v4 encodeObject:v6 forKey:@"backgroundTaskRecordsByRecordName"];

  os_unfair_lock_unlock(&self->_lock);
}

+ (id)contextWithArchive:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:a3 options:1 error:0];
  if (v3)
  {
    v13 = 0;
    v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v3 error:&v13];
    v5 = v13;
    v6 = v5;
    if (v4)
    {
      if (!v5)
      {
        v10 = objc_opt_class();
        v11 = *MEMORY[0x1E696A508];
        v12 = 0;
        v7 = [v4 decodeTopLevelObjectOfClass:v10 forKey:v11 error:&v12];
        v6 = v12;
        [v4 finishDecoding];
        if (!v6)
        {
          goto LABEL_9;
        }

        goto LABEL_6;
      }

      [v4 finishDecoding];
    }

    v7 = 0;
LABEL_6:
    v8 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v6;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPaymentWebServiceContext: error occurred while trying to unarchive Payment Web Service Background context. We should discard the data. %{public}@.", buf, 0xCu);
    }

LABEL_9:
    if (v7)
    {
      goto LABEL_11;
    }
  }

  v7 = objc_alloc_init(PKPaymentWebServiceBackgroundContext);
LABEL_11:

  return v7;
}

- (void)archiveAtPath:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Archiving PKPaymentWebServiceBackgroundContext", v7, 2u);
  }

  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [v6 writeToFile:v4 atomically:1];

  PKExcludePathFromBackup(v4);
}

- (void)addBackgroundDownloadRecord:(id)a3 forTaskIdentifier:(unint64_t)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = a4;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Adding background download record for task %lu", &v10, 0xCu);
  }

  v8 = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByTaskIdentifier];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v8 setObject:v6 forKey:v9];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addBackgroundDownloadRecord:(id)a3 forRecordName:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Adding background download record for recordName %@", &v10, 0xCu);
  }

  v9 = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByRecordName];
  [v9 setObject:v7 forKey:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)backgroundDownloadRecordForTaskIdentifier:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByTaskIdentifier];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)backgroundDownloadRecordForRecordName:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByRecordName];
  v6 = [v5 objectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)removeBackgroundDownloadRecordForTaskIdentifier:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a3;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Removing background download record for task %lu", &v8, 0xCu);
  }

  v6 = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByTaskIdentifier];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v6 removeObjectForKey:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeBackgroundDownloadRecordForRecordName:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Removing background download record for recordName %@", &v7, 0xCu);
  }

  v6 = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByRecordName];
  [v6 removeObjectForKey:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)remainingTasks
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  os_unfair_lock_lock(&self->_lock);
  v4 = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByTaskIdentifier];
  v5 = [v4 allKeys];
  [v3 addObjectsFromArray:v5];

  v6 = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByRecordName];
  v7 = [v6 allKeys];
  [v3 addObjectsFromArray:v7];

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

@end