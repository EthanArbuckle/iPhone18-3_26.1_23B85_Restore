@interface IRNDiagnosticExtension
- (id)attachmentsForParameters:(id)parameters;
- (void)logToFileForTacho:(const void *)tacho;
- (void)setupWithParameters:(id)parameters;
- (void)teardownWithParameters:(id)parameters;
@end

@implementation IRNDiagnosticExtension

- (void)setupWithParameters:(id)parameters
{
  v3 = irn_get_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[IRNDiagnosticExtension setupWithParameters:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v4, 0xCu);
  }
}

- (void)teardownWithParameters:(id)parameters
{
  v3 = irn_get_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[IRNDiagnosticExtension teardownWithParameters:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v4, 0xCu);
  }
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  v22 = parametersCopy;
  v5 = irn_get_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = parametersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "attachmentsForParameters: %{public}@", &buf, 0xCu);
  }

  v6 = dispatch_semaphore_create(0);
  queue = dispatch_queue_create("com.apple.HeartRhythmAlgorithms.IRNDiagnostic.PulseSequenceRetrieval.Queue", 0);
  v25 = objc_opt_new();
  v24 = [HKSampleType seriesTypeForIdentifier:HKDataTypeIdentifierHeartbeatSeries];
  v7 = [NSDate dateWithTimeIntervalSinceNow:-604800.0];
  v8 = +[NSDate date];
  v23 = [HKQuery predicateForSamplesWithStartDate:v7 endDate:v8 options:0];

  v9 = [NSSortDescriptor sortDescriptorWithKey:HKSampleSortIdentifierStartDate ascending:1];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x4812000000;
  v38 = sub_100001298;
  v39 = sub_1000012BC;
  v40 = &unk_10000C439;
  memset(v41, 0, 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000012E8;
  block[3] = &unk_100010408;
  v10 = v24;
  v28 = v10;
  v11 = v23;
  v29 = v11;
  v12 = v9;
  v30 = v12;
  v13 = v6;
  v31 = v13;
  p_buf = &buf;
  v14 = v25;
  v32 = v14;
  dispatch_async(queue, block);
  v15 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v13, v15);
  [(IRNDiagnosticExtension *)self logToFileForTacho:*(&buf + 1) + 48];
  v16 = +[NSFileManager defaultManager];
  v17 = [v16 contentsOfDirectoryAtPath:@"/var/mobile/Library/Logs/IRNDiagnostics/" error:0];

  v18 = irn_get_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v35 = 138543362;
    *&v35[4] = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "tachgoram retrieval generated files : %{public}@", v35, 0xCu);
  }

  v19 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/IRNDiagnostics/"];
  [v19 setShouldCompress:&__kCFBooleanTrue];
  [v19 setDeleteOnAttach:&__kCFBooleanTrue];
  v34 = v19;
  v20 = [NSArray arrayWithObjects:&v34 count:1];

  _Block_object_dispose(&buf, 8);
  *v35 = v41;
  sub_100003A5C(v35);

  return v20;
}

- (void)logToFileForTacho:(const void *)tacho
{
  v4 = +[NSFileManager defaultManager];
  v22 = NSFileProtectionKey;
  v23 = NSFileProtectionCompleteUnlessOpen;
  v5 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v20 = 0;
  v6 = [v4 createDirectoryAtPath:@"/var/mobile/Library/Logs/IRNDiagnostics/" withIntermediateDirectories:1 attributes:v5 error:&v20];
  v13 = v20;

  if (v6)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    std::to_string(&v14, v7);
    v8 = std::string::insert(&v14, 0, "irn_tachograms_");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v21, ".json");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v19 = v10->__r_.__value_.__r.__words[2];
    *v18 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    [@"/var/mobile/Library/Logs/IRNDiagnostics/" UTF8String];
    std::operator+<char>();
    sub_1000022D8(&v21, &__p);
    if (*tacho != *(tacho + 1))
    {
      sub_1000044F8(v15, 0, 0, 0, 2);
    }

    std::filebuf::~filebuf();
    std::ostream::~ostream();
    std::ios::~ios();
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
    }
  }

  else
  {
    v12 = irn_get_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100009684(v13, v12);
    }
  }
}

@end