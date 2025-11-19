@interface GTDiagnosticsIssue
- (GTDiagnosticsIssue)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTDiagnosticsIssue

- (GTDiagnosticsIssue)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = GTDiagnosticsIssue;
  v5 = [(GTDiagnosticsIssue *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"callstack"];
    callstack = v5->_callstack;
    v5->_callstack = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cpuCallstackData"];
    cpuCallstackData = v5->_cpuCallstackData;
    v5->_cpuCallstackData = v8;

    v5->_cpuCallstackFramesNum = [v4 decodeInt32ForKey:@"cpuCallstackFramesNum"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"libraryOnlineSource"];
    libraryOnlineSource = v5->_libraryOnlineSource;
    v5->_libraryOnlineSource = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"libraryOfflineSource"];
    libraryOfflineSource = v5->_libraryOfflineSource;
    v5->_libraryOfflineSource = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"libraryHash"];
    libraryHash = v5->_libraryHash;
    v5->_libraryHash = v14;

    v5->_isDefaultLibrary = [v4 decodeBoolForKey:@"isDefaultLibrary"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metalFunctionName"];
    metalFunctionName = v5->_metalFunctionName;
    v5->_metalFunctionName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metalFunctionFile"];
    metalFunctionFile = v5->_metalFunctionFile;
    v5->_metalFunctionFile = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metalLogMessage"];
    metalLogMessage = v5->_metalLogMessage;
    v5->_metalLogMessage = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  callstack = self->_callstack;
  v5 = a3;
  [v5 encodeObject:callstack forKey:@"callstack"];
  [v5 encodeObject:self->_cpuCallstackData forKey:@"cpuCallstackData"];
  [v5 encodeInt32:self->_cpuCallstackFramesNum forKey:@"cpuCallstackFramesNum"];
  [v5 encodeObject:self->_libraryOnlineSource forKey:@"libraryOnlineSource"];
  [v5 encodeObject:self->_libraryOfflineSource forKey:@"libraryOfflineSource"];
  [v5 encodeObject:self->_libraryHash forKey:@"libraryHash"];
  [v5 encodeBool:self->_isDefaultLibrary forKey:@"isDefaultLibrary"];
  [v5 encodeObject:self->_metalFunctionName forKey:@"metalFunctionName"];
  [v5 encodeObject:self->_metalFunctionFile forKey:@"metalFunctionFile"];
  [v5 encodeObject:self->_metalLogMessage forKey:@"metalLogMessage"];
}

@end