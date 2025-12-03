@interface AVOutputContext
+ (id)errorFromResult:(id)result;
- (void)addOutputDevice:(id)device options:(id)options queue:(id)queue completion:(id)completion;
- (void)addOutputDevices:(id)devices options:(id)options queue:(id)queue completion:(id)completion;
- (void)removeOutputDevice:(id)device options:(id)options queue:(id)queue completion:(id)completion;
- (void)removeOutputDevices:(id)devices options:(id)options queue:(id)queue completion:(id)completion;
- (void)setOutputDevice:(id)device options:(id)options queue:(id)queue completion:(id)completion;
- (void)setOutputDevices:(id)devices options:(id)options queue:(id)queue completion:(id)completion;
@end

@implementation AVOutputContext

- (void)setOutputDevices:(id)devices options:(id)options queue:(id)queue completion:(id)completion
{
  optionsCopy = options;
  queueCopy = queue;
  completionCopy = completion;
  devicesCopy = devices;
  v13 = +[NSDate now];
  v14 = qos_class_self();
  v15 = [optionsCopy objectForKeyedSubscript:AVOutputContextOutputDevicesModificationOptionCorrelationID];
  v16 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"AVOutputContext.setOutputDevices", v15];
  v17 = v16;
  if (self)
  {
    [(__CFString *)v16 appendFormat:@" for %@", self];
  }

  v18 = _MRLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v52 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v19 = _MRLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v52 = @"AVOutputContext.setOutputDevices";
    v53 = 2114;
    v54 = v15;
    v55 = 2112;
    v56 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v20 = _MRLogForCategory();
  v21 = [v15 hash];
  if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = v21;
    if (os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, v22, "AVOutputContext.setOutputDevices", "", buf, 2u);
    }
  }

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100192AE4;
  v43[3] = &unk_1004BF2B8;
  v23 = v15;
  v50 = v14;
  v44 = v23;
  v45 = @"AVOutputContext.setOutputDevices";
  selfCopy = self;
  v47 = v13;
  v48 = queueCopy;
  v49 = completionCopy;
  v24 = queueCopy;
  v25 = completionCopy;
  v26 = v13;
  v27 = objc_retainBlock(v43);
  v28 = [MRBlockGuard alloc];
  v29 = [[NSString alloc] initWithFormat:@"%@<%@>", @"AVOutputContext.setOutputDevices", v23];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100192F80;
  v41[3] = &unk_1004B6FE8;
  v30 = v27;
  v42 = v30;
  v31 = [v28 initWithTimeout:v29 reason:v24 queue:v41 handler:60.0];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100192F90;
  v36[3] = &unk_1004C09B8;
  v37 = v31;
  v38 = @"AVOutputContext.setOutputDevices";
  v39 = v23;
  v40 = v30;
  v32 = v23;
  v33 = v30;
  v34 = v31;
  [(AVOutputContext *)self setOutputDevices:devicesCopy options:optionsCopy completionHandler:v36];
}

- (void)setOutputDevice:(id)device options:(id)options queue:(id)queue completion:(id)completion
{
  optionsCopy = options;
  queueCopy = queue;
  completionCopy = completion;
  deviceCopy = device;
  v13 = +[NSDate now];
  v14 = qos_class_self();
  v15 = [optionsCopy objectForKeyedSubscript:AVOutputContextOutputDevicesModificationOptionCorrelationID];
  v16 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"AVOutputContext.setOutputDevice", v15];
  v17 = v16;
  if (self)
  {
    [(__CFString *)v16 appendFormat:@" for %@", self];
  }

  v18 = _MRLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v52 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v19 = _MRLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v52 = @"AVOutputContext.setOutputDevice";
    v53 = 2114;
    v54 = v15;
    v55 = 2112;
    v56 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v20 = _MRLogForCategory();
  v21 = [v15 hash];
  if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = v21;
    if (os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, v22, "AVOutputContext.setOutputDevice", "", buf, 2u);
    }
  }

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100193510;
  v43[3] = &unk_1004BF2B8;
  v23 = v15;
  v50 = v14;
  v44 = v23;
  v45 = @"AVOutputContext.setOutputDevice";
  selfCopy = self;
  v47 = v13;
  v48 = queueCopy;
  v49 = completionCopy;
  v24 = queueCopy;
  v25 = completionCopy;
  v26 = v13;
  v27 = objc_retainBlock(v43);
  v28 = [MRBlockGuard alloc];
  v29 = [[NSString alloc] initWithFormat:@"%@<%@>", @"AVOutputContext.setOutputDevice", v23];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1001939AC;
  v41[3] = &unk_1004B6FE8;
  v30 = v27;
  v42 = v30;
  v31 = [v28 initWithTimeout:v29 reason:v24 queue:v41 handler:60.0];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1001939BC;
  v36[3] = &unk_1004C09B8;
  v37 = v31;
  v38 = @"AVOutputContext.setOutputDevice";
  v39 = v23;
  v40 = v30;
  v32 = v23;
  v33 = v30;
  v34 = v31;
  [(AVOutputContext *)self setOutputDevice:deviceCopy options:optionsCopy completionHandler:v36];
}

- (void)addOutputDevices:(id)devices options:(id)options queue:(id)queue completion:(id)completion
{
  devicesCopy = devices;
  optionsCopy = options;
  queue = queue;
  completionCopy = completion;
  v38 = devicesCopy;
  if ([devicesCopy count] == 1)
  {
    firstObject = [devicesCopy firstObject];
    v11 = completionCopy;
    [(AVOutputContext *)self addOutputDevice:firstObject options:optionsCopy queue:queue completion:completionCopy];
  }

  else
  {
    v12 = +[NSDate now];
    v13 = qos_class_self();
    v14 = [optionsCopy objectForKeyedSubscript:AVOutputContextOutputDevicesModificationOptionCorrelationID];
    v15 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"AVOutputContext.addOutputDevices", v14];
    contextID = [(AVOutputContext *)self contextID];

    if (contextID)
    {
      contextID2 = [(AVOutputContext *)self contextID];
      [v15 appendFormat:@" for %@", contextID2];
    }

    v18 = _MRLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }

    v19 = _MRLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = @"AVOutputContext.addOutputDevices";
      *&buf[12] = 2114;
      *&buf[14] = v14;
      *&buf[22] = 2112;
      v67 = optionsCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v20 = _MRLogForCategory();
    v21 = [v14 hash];
    if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, v21, "AVOutputContext.addOutputDevices", "", buf, 2u);
    }

    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_10019414C;
    v58[3] = &unk_1004C09E0;
    v64 = v13;
    v37 = v14;
    v59 = v37;
    v60 = @"AVOutputContext.addOutputDevices";
    selfCopy = self;
    v34 = v12;
    v62 = v34;
    v63 = completionCopy;
    v22 = objc_retainBlock(v58);
    v23 = [MRBlockGuard alloc];
    v24 = [[NSString alloc] initWithFormat:@"%@<%@>", @"AVOutputContext.addOutputDevices", v37];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100194570;
    v56[3] = &unk_1004B6FE8;
    v36 = v22;
    v57 = v36;
    v35 = [v23 initWithTimeout:v24 reason:queue queue:v56 handler:60.0];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v67 = sub_10003526C;
    v68 = sub_100035AEC;
    v69 = 0;
    v25 = dispatch_group_create();
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v26 = devicesCopy;
    v27 = [v26 countByEnumeratingWithState:&v52 objects:v65 count:16];
    if (v27)
    {
      v28 = *v53;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v53 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v52 + 1) + 8 * i);
          dispatch_group_enter(v25);
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_100194580;
          v49[3] = &unk_1004B69F8;
          v51 = buf;
          v50 = v25;
          [(AVOutputContext *)self addOutputDevice:v30 options:optionsCopy queue:0 completion:v49];
        }

        v27 = [v26 countByEnumeratingWithState:&v52 objects:v65 count:16];
      }

      while (v27);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001945E8;
    block[3] = &unk_1004C0A08;
    v48 = buf;
    v44 = v35;
    v45 = @"AVOutputContext.addOutputDevices";
    v46 = v37;
    v47 = v36;
    v31 = v37;
    v32 = v36;
    v33 = v35;
    dispatch_group_notify(v25, queue, block);

    _Block_object_dispose(buf, 8);
    v11 = completionCopy;
  }
}

- (void)addOutputDevice:(id)device options:(id)options queue:(id)queue completion:(id)completion
{
  optionsCopy = options;
  queueCopy = queue;
  completionCopy = completion;
  deviceCopy = device;
  v13 = +[NSDate now];
  v14 = qos_class_self();
  v15 = [optionsCopy objectForKeyedSubscript:AVOutputContextOutputDevicesModificationOptionCorrelationID];
  v16 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"AVOutputContext.addOutputDevice", v15];
  contextID = [(AVOutputContext *)self contextID];

  if (contextID)
  {
    contextID2 = [(AVOutputContext *)self contextID];
    [(__CFString *)v16 appendFormat:@" for %@", contextID2];
  }

  v19 = _MRLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v53 = v16;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v20 = _MRLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v53 = @"AVOutputContext.addOutputDevice";
    v54 = 2114;
    v55 = v15;
    v56 = 2112;
    v57 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v21 = _MRLogForCategory();
  v22 = [v15 hash];
  if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v23 = v22;
    if (os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v23, "AVOutputContext.addOutputDevice", "", buf, 2u);
    }
  }

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100194B9C;
  v44[3] = &unk_1004BF2B8;
  v24 = v15;
  v51 = v14;
  v45 = v24;
  v46 = @"AVOutputContext.addOutputDevice";
  selfCopy = self;
  v48 = v13;
  v49 = queueCopy;
  v50 = completionCopy;
  v25 = queueCopy;
  v26 = completionCopy;
  v27 = v13;
  v28 = objc_retainBlock(v44);
  v29 = [MRBlockGuard alloc];
  v30 = [[NSString alloc] initWithFormat:@"%@<%@>", @"AVOutputContext.addOutputDevice", v24];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100195050;
  v42[3] = &unk_1004B6FE8;
  v31 = v28;
  v43 = v31;
  v32 = [v29 initWithTimeout:v30 reason:v42 handler:60.0];

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100195060;
  v37[3] = &unk_1004C09B8;
  v38 = v32;
  v39 = @"AVOutputContext.addOutputDevice";
  v40 = v24;
  v41 = v31;
  v33 = v24;
  v34 = v31;
  v35 = v32;
  [(AVOutputContext *)self addOutputDevice:deviceCopy options:optionsCopy completionHandler:v37];
}

- (void)removeOutputDevices:(id)devices options:(id)options queue:(id)queue completion:(id)completion
{
  devicesCopy = devices;
  optionsCopy = options;
  queue = queue;
  completionCopy = completion;
  v38 = devicesCopy;
  if ([devicesCopy count] == 1)
  {
    firstObject = [devicesCopy firstObject];
    v11 = completionCopy;
    [(AVOutputContext *)self removeOutputDevice:firstObject options:optionsCopy queue:queue completion:completionCopy];
  }

  else
  {
    v12 = +[NSDate now];
    v13 = qos_class_self();
    v14 = [optionsCopy objectForKeyedSubscript:AVOutputContextOutputDevicesModificationOptionCorrelationID];
    v15 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"AVOutputContext.removeOutputDevices", v14];
    contextID = [(AVOutputContext *)self contextID];

    if (contextID)
    {
      contextID2 = [(AVOutputContext *)self contextID];
      [v15 appendFormat:@" for %@", contextID2];
    }

    v18 = _MRLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }

    v19 = _MRLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = @"AVOutputContext.removeOutputDevices";
      *&buf[12] = 2114;
      *&buf[14] = v14;
      *&buf[22] = 2112;
      v67 = optionsCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v20 = _MRLogForCategory();
    v21 = [v14 hash];
    if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, v21, "AVOutputContext.removeOutputDevices", "", buf, 2u);
    }

    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1001957F0;
    v58[3] = &unk_1004C09E0;
    v64 = v13;
    v37 = v14;
    v59 = v37;
    v60 = @"AVOutputContext.removeOutputDevices";
    selfCopy = self;
    v34 = v12;
    v62 = v34;
    v63 = completionCopy;
    v22 = objc_retainBlock(v58);
    v23 = [MRBlockGuard alloc];
    v24 = [[NSString alloc] initWithFormat:@"%@<%@>", @"AVOutputContext.removeOutputDevices", v37];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100195C14;
    v56[3] = &unk_1004B6FE8;
    v36 = v22;
    v57 = v36;
    v35 = [v23 initWithTimeout:v24 reason:queue queue:v56 handler:60.0];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v67 = sub_10003526C;
    v68 = sub_100035AEC;
    v69 = 0;
    v25 = dispatch_group_create();
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v26 = devicesCopy;
    v27 = [v26 countByEnumeratingWithState:&v52 objects:v65 count:16];
    if (v27)
    {
      v28 = *v53;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v53 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v52 + 1) + 8 * i);
          dispatch_group_enter(v25);
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_100195C24;
          v49[3] = &unk_1004B69F8;
          v51 = buf;
          v50 = v25;
          [(AVOutputContext *)self removeOutputDevice:v30 options:optionsCopy queue:0 completion:v49];
        }

        v27 = [v26 countByEnumeratingWithState:&v52 objects:v65 count:16];
      }

      while (v27);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100195C8C;
    block[3] = &unk_1004C0A08;
    v48 = buf;
    v44 = v35;
    v45 = @"AVOutputContext.removeOutputDevices";
    v46 = v37;
    v47 = v36;
    v31 = v37;
    v32 = v36;
    v33 = v35;
    dispatch_group_notify(v25, queue, block);

    _Block_object_dispose(buf, 8);
    v11 = completionCopy;
  }
}

- (void)removeOutputDevice:(id)device options:(id)options queue:(id)queue completion:(id)completion
{
  optionsCopy = options;
  queueCopy = queue;
  completionCopy = completion;
  deviceCopy = device;
  v13 = +[NSDate now];
  v14 = qos_class_self();
  v15 = [optionsCopy objectForKeyedSubscript:AVOutputContextOutputDevicesModificationOptionCorrelationID];
  v16 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"AVOutputContext.removeOutputDevice", v15];
  contextID = [(AVOutputContext *)self contextID];

  if (contextID)
  {
    contextID2 = [(AVOutputContext *)self contextID];
    [(__CFString *)v16 appendFormat:@" for %@", contextID2];
  }

  v19 = _MRLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v53 = v16;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v20 = _MRLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v53 = @"AVOutputContext.removeOutputDevice";
    v54 = 2114;
    v55 = v15;
    v56 = 2112;
    v57 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v21 = _MRLogForCategory();
  v22 = [v15 hash];
  if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v23 = v22;
    if (os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v23, "AVOutputContext.removeOutputDevice", "", buf, 2u);
    }
  }

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100196240;
  v44[3] = &unk_1004BF2B8;
  v24 = v15;
  v51 = v14;
  v45 = v24;
  v46 = @"AVOutputContext.removeOutputDevice";
  selfCopy = self;
  v48 = v13;
  v49 = queueCopy;
  v50 = completionCopy;
  v25 = queueCopy;
  v26 = completionCopy;
  v27 = v13;
  v28 = objc_retainBlock(v44);
  v29 = [MRBlockGuard alloc];
  v30 = [[NSString alloc] initWithFormat:@"%@<%@>", @"AVOutputContext.removeOutputDevice", v24];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1001966F4;
  v42[3] = &unk_1004B6FE8;
  v31 = v28;
  v43 = v31;
  v32 = [v29 initWithTimeout:v30 reason:v42 handler:60.0];

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100196704;
  v37[3] = &unk_1004C09B8;
  v38 = v32;
  v39 = @"AVOutputContext.removeOutputDevice";
  v40 = v24;
  v41 = v31;
  v33 = v24;
  v34 = v31;
  v35 = v32;
  [(AVOutputContext *)self removeOutputDevice:deviceCopy options:optionsCopy completionHandler:v37];
}

+ (id)errorFromResult:(id)result
{
  resultCopy = result;
  status = [resultCopy status];
  if (status < 2 || status == 3)
  {
    Error = MRMediaRemoteCreateError();
  }

  else if (status == 4)
  {
    cancellationReason = [resultCopy cancellationReason];
    [cancellationReason isEqualToString:AVOutputContextDestinationChangeCancellationReasonAuthorizationSkipped];

    cancellationReason2 = [resultCopy cancellationReason];
    Error = MRMediaRemoteCreateErrorWithDescription();
  }

  else
  {
    Error = 0;
  }

  return Error;
}

@end