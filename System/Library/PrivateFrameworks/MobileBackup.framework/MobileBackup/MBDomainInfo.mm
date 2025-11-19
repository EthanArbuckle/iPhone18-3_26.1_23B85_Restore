@interface MBDomainInfo
- (MBDomainInfo)initWithCoder:(id)a3;
- (MBDomainInfo)initWithDomainName:(id)a3 systemApp:(BOOL)a4 remoteSize:(unint64_t)a5 localSize:(unint64_t)a6 enabled:(BOOL)a7 restricted:(BOOL)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MBDomainInfo

- (MBDomainInfo)initWithDomainName:(id)a3 systemApp:(BOOL)a4 remoteSize:(unint64_t)a5 localSize:(unint64_t)a6 enabled:(BOOL)a7 restricted:(BOOL)a8
{
  v14 = a3;
  v19.receiver = self;
  v19.super_class = MBDomainInfo;
  v15 = [(MBDomainInfo *)&v19 init];
  if (v15)
  {
    v16 = [v14 copy];
    domainName = v15->_domainName;
    v15->_domainName = v16;

    v15->_systemApp = a4;
    v15->_remoteSize = a5;
    v15->_localSize = a6;
    v15->_enabled = a7;
    v15->_restricted = a8;
  }

  return v15;
}

- (MBDomainInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MBDomainInfo;
  v5 = [(MBDomainInfo *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domainName"];
    domainName = v5->_domainName;
    v5->_domainName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemApp"];
    v5->_systemApp = [v8 BOOLValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteSize"];
    v5->_remoteSize = [v9 unsignedLongLongValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localSize"];
    v5->_localSize = [v10 unsignedLongLongValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enabled"];
    v5->_enabled = [v11 BOOLValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"restricted"];
    v5->_restricted = [v12 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  domainName = self->_domainName;
  v5 = a3;
  [v5 encodeObject:domainName forKey:@"domainName"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_systemApp];
  [v5 encodeObject:v6 forKey:@"systemApp"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_remoteSize];
  [v5 encodeObject:v7 forKey:@"remoteSize"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_localSize];
  [v5 encodeObject:v8 forKey:@"localSize"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_enabled];
  [v5 encodeObject:v9 forKey:@"enabled"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_restricted];
  [v5 encodeObject:v10 forKey:@"restricted"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  systemApp = self->_systemApp;
  domainName = self->_domainName;
  remoteSize = self->_remoteSize;
  localSize = self->_localSize;
  enabled = self->_enabled;
  restricted = self->_restricted;

  return [v4 initWithDomainName:domainName systemApp:systemApp remoteSize:remoteSize localSize:localSize enabled:enabled restricted:restricted];
}

@end