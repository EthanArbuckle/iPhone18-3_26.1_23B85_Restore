@interface GTDiagnosticsIssue
- (GTDiagnosticsIssue)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTDiagnosticsIssue

- (GTDiagnosticsIssue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = GTDiagnosticsIssue;
  v5 = [(GTDiagnosticsIssue *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"callstack"];
    callstack = v5->_callstack;
    v5->_callstack = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cpuCallstackData"];
    cpuCallstackData = v5->_cpuCallstackData;
    v5->_cpuCallstackData = v8;

    v5->_cpuCallstackFramesNum = [coderCopy decodeInt32ForKey:@"cpuCallstackFramesNum"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"libraryOnlineSource"];
    libraryOnlineSource = v5->_libraryOnlineSource;
    v5->_libraryOnlineSource = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"libraryOfflineSource"];
    libraryOfflineSource = v5->_libraryOfflineSource;
    v5->_libraryOfflineSource = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"libraryHash"];
    libraryHash = v5->_libraryHash;
    v5->_libraryHash = v14;

    v5->_isDefaultLibrary = [coderCopy decodeBoolForKey:@"isDefaultLibrary"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metalFunctionName"];
    metalFunctionName = v5->_metalFunctionName;
    v5->_metalFunctionName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metalFunctionFile"];
    metalFunctionFile = v5->_metalFunctionFile;
    v5->_metalFunctionFile = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metalLogMessage"];
    metalLogMessage = v5->_metalLogMessage;
    v5->_metalLogMessage = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  callstack = self->_callstack;
  coderCopy = coder;
  [coderCopy encodeObject:callstack forKey:@"callstack"];
  [coderCopy encodeObject:self->_cpuCallstackData forKey:@"cpuCallstackData"];
  [coderCopy encodeInt32:self->_cpuCallstackFramesNum forKey:@"cpuCallstackFramesNum"];
  [coderCopy encodeObject:self->_libraryOnlineSource forKey:@"libraryOnlineSource"];
  [coderCopy encodeObject:self->_libraryOfflineSource forKey:@"libraryOfflineSource"];
  [coderCopy encodeObject:self->_libraryHash forKey:@"libraryHash"];
  [coderCopy encodeBool:self->_isDefaultLibrary forKey:@"isDefaultLibrary"];
  [coderCopy encodeObject:self->_metalFunctionName forKey:@"metalFunctionName"];
  [coderCopy encodeObject:self->_metalFunctionFile forKey:@"metalFunctionFile"];
  [coderCopy encodeObject:self->_metalLogMessage forKey:@"metalLogMessage"];
}

@end