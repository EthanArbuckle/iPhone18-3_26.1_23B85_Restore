@interface MFDAutosaveSession
+ (id)log;
- (MFDAutosaveSession)initWithAutosaveIdentifier:(id)identifier;
- (NSString)description;
- (void)dealloc;
@end

@implementation MFDAutosaveSession

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054BD0;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_1001857E0 != -1)
  {
    dispatch_once(&qword_1001857E0, block);
  }

  v2 = qword_1001857D8;

  return v2;
}

- (MFDAutosaveSession)initWithAutosaveIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = MFDAutosaveSession;
  v5 = [(MFDAutosaveSession *)&v11 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    autosaveIdentifier = v5->_autosaveIdentifier;
    v5->_autosaveIdentifier = v6;

    v8 = +[MFDAutosaveSession log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      autosaveIdentifier = [(MFDAutosaveSession *)v5 autosaveIdentifier];
      *buf = 138412290;
      v13 = autosaveIdentifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Autosave session started. (autosaveID=%@)", buf, 0xCu);
    }
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[MFDAutosaveSession log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    autosaveIdentifier = [(MFDAutosaveSession *)self autosaveIdentifier];
    *buf = 138412290;
    v7 = autosaveIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Autosave session ended. (autosaveID=%@)", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = MFDAutosaveSession;
  [(MFDAutosaveSession *)&v5 dealloc];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  autosaveIdentifier = [(MFDAutosaveSession *)self autosaveIdentifier];
  v6 = [NSString stringWithFormat:@"<%@: %p, autosaveID=%@>", v4, self, autosaveIdentifier];

  return v6;
}

@end