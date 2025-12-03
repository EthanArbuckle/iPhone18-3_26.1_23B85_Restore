@interface MBSkippedFileRecord
- (MBSkippedFileRecord)initWithDictionaryRepresentation:(id)representation;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation MBSkippedFileRecord

- (MBSkippedFileRecord)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v17.receiver = self;
  v17.super_class = MBSkippedFileRecord;
  v5 = [(MBSkippedFileRecord *)&v17 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"absolutePath"];
    absolutePath = v5->_absolutePath;
    v5->_absolutePath = v6;

    v8 = [representationCopy objectForKeyedSubscript:@"domain"];
    domain = v5->_domain;
    v5->_domain = v8;

    v10 = [representationCopy objectForKeyedSubscript:@"relativePath"];
    relativePath = v5->_relativePath;
    v5->_relativePath = v10;

    v12 = [representationCopy objectForKeyedSubscript:@"dateSkipped"];
    dateSkipped = v5->_dateSkipped;
    v5->_dateSkipped = v12;

    v14 = [representationCopy objectForKeyedSubscript:@"syscallType"];
    v5->_syscallType = [v14 unsignedIntegerValue];

    v15 = [representationCopy objectForKeyedSubscript:@"syscallErrno"];
    v5->_syscallErrno = [v15 intValue];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v11[0] = @"absolutePath";
  absolutePath = [(MBSkippedFileRecord *)self absolutePath];
  v12[0] = absolutePath;
  v11[1] = @"domain";
  domain = [(MBSkippedFileRecord *)self domain];
  v12[1] = domain;
  v11[2] = @"relativePath";
  relativePath = [(MBSkippedFileRecord *)self relativePath];
  v12[2] = relativePath;
  v11[3] = @"dateSkipped";
  dateSkipped = [(MBSkippedFileRecord *)self dateSkipped];
  v12[3] = dateSkipped;
  v11[4] = @"syscallType";
  v7 = [NSNumber numberWithUnsignedInteger:[(MBSkippedFileRecord *)self syscallType]];
  v12[4] = v7;
  v11[5] = @"syscallErrno";
  v8 = [NSNumber numberWithInt:[(MBSkippedFileRecord *)self syscallErrno]];
  v12[5] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  Name = class_getName(v3);
  absolutePath = [(MBSkippedFileRecord *)self absolutePath];
  domain = [(MBSkippedFileRecord *)self domain];
  relativePath = [(MBSkippedFileRecord *)self relativePath];
  syscallType = [(MBSkippedFileRecord *)self syscallType];
  syscallErrno = [(MBSkippedFileRecord *)self syscallErrno];
  dateSkipped = [(MBSkippedFileRecord *)self dateSkipped];
  v11 = [NSString stringWithFormat:@"<%s: %p abs=%@, domain=%@ rel=%@ syscall=%lu errno=%d date=%@>", Name, self, absolutePath, domain, relativePath, syscallType, syscallErrno, dateSkipped];

  return v11;
}

@end