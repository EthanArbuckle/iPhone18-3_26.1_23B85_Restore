@interface MBDomainInfo
- (MBDomainInfo)initWithCoder:(id)coder;
- (MBDomainInfo)initWithDomainName:(id)name systemApp:(BOOL)app remoteSize:(unint64_t)size localSize:(unint64_t)localSize enabled:(BOOL)enabled restricted:(BOOL)restricted;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MBDomainInfo

- (MBDomainInfo)initWithDomainName:(id)name systemApp:(BOOL)app remoteSize:(unint64_t)size localSize:(unint64_t)localSize enabled:(BOOL)enabled restricted:(BOOL)restricted
{
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = MBDomainInfo;
  v15 = [(MBDomainInfo *)&v19 init];
  if (v15)
  {
    v16 = [nameCopy copy];
    domainName = v15->_domainName;
    v15->_domainName = v16;

    v15->_systemApp = app;
    v15->_remoteSize = size;
    v15->_localSize = localSize;
    v15->_enabled = enabled;
    v15->_restricted = restricted;
  }

  return v15;
}

- (MBDomainInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MBDomainInfo;
  v5 = [(MBDomainInfo *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domainName"];
    domainName = v5->_domainName;
    v5->_domainName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemApp"];
    v5->_systemApp = [v8 BOOLValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteSize"];
    v5->_remoteSize = [v9 unsignedLongLongValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localSize"];
    v5->_localSize = [v10 unsignedLongLongValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enabled"];
    v5->_enabled = [v11 BOOLValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"restricted"];
    v5->_restricted = [v12 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  domainName = self->_domainName;
  coderCopy = coder;
  [coderCopy encodeObject:domainName forKey:@"domainName"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_systemApp];
  [coderCopy encodeObject:v6 forKey:@"systemApp"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_remoteSize];
  [coderCopy encodeObject:v7 forKey:@"remoteSize"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_localSize];
  [coderCopy encodeObject:v8 forKey:@"localSize"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_enabled];
  [coderCopy encodeObject:v9 forKey:@"enabled"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_restricted];
  [coderCopy encodeObject:v10 forKey:@"restricted"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  systemApp = self->_systemApp;
  domainName = self->_domainName;
  remoteSize = self->_remoteSize;
  localSize = self->_localSize;
  enabled = self->_enabled;
  restricted = self->_restricted;

  return [v4 initWithDomainName:domainName systemApp:systemApp remoteSize:remoteSize localSize:localSize enabled:enabled restricted:restricted];
}

@end