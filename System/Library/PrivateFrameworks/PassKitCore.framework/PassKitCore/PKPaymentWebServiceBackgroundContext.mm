@interface PKPaymentWebServiceBackgroundContext
+ (id)contextWithArchive:(id)archive;
- (PKPaymentWebServiceBackgroundContext)init;
- (PKPaymentWebServiceBackgroundContext)initWithCoder:(id)coder;
- (id)backgroundDownloadRecordForRecordName:(id)name;
- (id)backgroundDownloadRecordForTaskIdentifier:(unint64_t)identifier;
- (id)remainingTasks;
- (void)addBackgroundDownloadRecord:(id)record forRecordName:(id)name;
- (void)addBackgroundDownloadRecord:(id)record forTaskIdentifier:(unint64_t)identifier;
- (void)archiveAtPath:(id)path;
- (void)encodeWithCoder:(id)coder;
- (void)removeBackgroundDownloadRecordForRecordName:(id)name;
- (void)removeBackgroundDownloadRecordForTaskIdentifier:(unint64_t)identifier;
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

- (PKPaymentWebServiceBackgroundContext)initWithCoder:(id)coder
{
  coderCopy = coder;
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
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"backgroundTaskByTaskIdentifier"];
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
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"backgroundTaskRecordsByRecordName"];
    v26 = [v25 mutableCopy];
    [(PKPaymentWebServiceBackgroundContext *)v6 setBackgroundTaskRecordsByRecordName:v26];

    backgroundTaskRecordsByRecordName = [(PKPaymentWebServiceBackgroundContext *)v6 backgroundTaskRecordsByRecordName];

    if (!backgroundTaskRecordsByRecordName)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(PKPaymentWebServiceBackgroundContext *)v6 setBackgroundTaskRecordsByRecordName:dictionary];
    }

    os_unfair_lock_unlock(&v6->_lock);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  backgroundTaskRecordsByTaskIdentifier = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByTaskIdentifier];
  [coderCopy encodeObject:backgroundTaskRecordsByTaskIdentifier forKey:@"backgroundTaskByTaskIdentifier"];

  backgroundTaskRecordsByRecordName = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByRecordName];
  [coderCopy encodeObject:backgroundTaskRecordsByRecordName forKey:@"backgroundTaskRecordsByRecordName"];

  os_unfair_lock_unlock(&self->_lock);
}

+ (id)contextWithArchive:(id)archive
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:archive options:1 error:0];
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

- (void)archiveAtPath:(id)path
{
  pathCopy = path;
  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Archiving PKPaymentWebServiceBackgroundContext", v7, 2u);
  }

  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [v6 writeToFile:pathCopy atomically:1];

  PKExcludePathFromBackup(pathCopy);
}

- (void)addBackgroundDownloadRecord:(id)record forTaskIdentifier:(unint64_t)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  os_unfair_lock_lock(&self->_lock);
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    identifierCopy = identifier;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Adding background download record for task %lu", &v10, 0xCu);
  }

  backgroundTaskRecordsByTaskIdentifier = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByTaskIdentifier];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:identifier];
  [backgroundTaskRecordsByTaskIdentifier setObject:recordCopy forKey:v9];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addBackgroundDownloadRecord:(id)record forRecordName:(id)name
{
  v12 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  recordCopy = record;
  os_unfair_lock_lock(&self->_lock);
  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = nameCopy;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Adding background download record for recordName %@", &v10, 0xCu);
  }

  backgroundTaskRecordsByRecordName = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByRecordName];
  [backgroundTaskRecordsByRecordName setObject:recordCopy forKey:nameCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)backgroundDownloadRecordForTaskIdentifier:(unint64_t)identifier
{
  os_unfair_lock_lock(&self->_lock);
  backgroundTaskRecordsByTaskIdentifier = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByTaskIdentifier];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:identifier];
  v7 = [backgroundTaskRecordsByTaskIdentifier objectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)backgroundDownloadRecordForRecordName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock(&self->_lock);
  backgroundTaskRecordsByRecordName = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByRecordName];
  v6 = [backgroundTaskRecordsByRecordName objectForKey:nameCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)removeBackgroundDownloadRecordForTaskIdentifier:(unint64_t)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    identifierCopy = identifier;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Removing background download record for task %lu", &v8, 0xCu);
  }

  backgroundTaskRecordsByTaskIdentifier = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByTaskIdentifier];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:identifier];
  [backgroundTaskRecordsByTaskIdentifier removeObjectForKey:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeBackgroundDownloadRecordForRecordName:(id)name
{
  v9 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  os_unfair_lock_lock(&self->_lock);
  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = nameCopy;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Removing background download record for recordName %@", &v7, 0xCu);
  }

  backgroundTaskRecordsByRecordName = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByRecordName];
  [backgroundTaskRecordsByRecordName removeObjectForKey:nameCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)remainingTasks
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  os_unfair_lock_lock(&self->_lock);
  backgroundTaskRecordsByTaskIdentifier = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByTaskIdentifier];
  allKeys = [backgroundTaskRecordsByTaskIdentifier allKeys];
  [v3 addObjectsFromArray:allKeys];

  backgroundTaskRecordsByRecordName = [(PKPaymentWebServiceBackgroundContext *)self backgroundTaskRecordsByRecordName];
  allKeys2 = [backgroundTaskRecordsByRecordName allKeys];
  [v3 addObjectsFromArray:allKeys2];

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

@end