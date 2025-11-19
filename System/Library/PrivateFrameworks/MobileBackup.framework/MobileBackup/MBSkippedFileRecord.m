@interface MBSkippedFileRecord
- (MBSkippedFileRecord)initWithDictionaryRepresentation:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation MBSkippedFileRecord

- (MBSkippedFileRecord)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MBSkippedFileRecord;
  v5 = [(MBSkippedFileRecord *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"absolutePath"];
    absolutePath = v5->_absolutePath;
    v5->_absolutePath = v6;

    v8 = [v4 objectForKeyedSubscript:@"domain"];
    domain = v5->_domain;
    v5->_domain = v8;

    v10 = [v4 objectForKeyedSubscript:@"relativePath"];
    relativePath = v5->_relativePath;
    v5->_relativePath = v10;

    v12 = [v4 objectForKeyedSubscript:@"dateSkipped"];
    dateSkipped = v5->_dateSkipped;
    v5->_dateSkipped = v12;

    v14 = [v4 objectForKeyedSubscript:@"syscallType"];
    v5->_syscallType = [v14 unsignedIntegerValue];

    v15 = [v4 objectForKeyedSubscript:@"syscallErrno"];
    v5->_syscallErrno = [v15 intValue];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v11[0] = @"absolutePath";
  v3 = [(MBSkippedFileRecord *)self absolutePath];
  v12[0] = v3;
  v11[1] = @"domain";
  v4 = [(MBSkippedFileRecord *)self domain];
  v12[1] = v4;
  v11[2] = @"relativePath";
  v5 = [(MBSkippedFileRecord *)self relativePath];
  v12[2] = v5;
  v11[3] = @"dateSkipped";
  v6 = [(MBSkippedFileRecord *)self dateSkipped];
  v12[3] = v6;
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
  v5 = [(MBSkippedFileRecord *)self absolutePath];
  v6 = [(MBSkippedFileRecord *)self domain];
  v7 = [(MBSkippedFileRecord *)self relativePath];
  v8 = [(MBSkippedFileRecord *)self syscallType];
  v9 = [(MBSkippedFileRecord *)self syscallErrno];
  v10 = [(MBSkippedFileRecord *)self dateSkipped];
  v11 = [NSString stringWithFormat:@"<%s: %p abs=%@, domain=%@ rel=%@ syscall=%lu errno=%d date=%@>", Name, self, v5, v6, v7, v8, v9, v10];

  return v11;
}

@end