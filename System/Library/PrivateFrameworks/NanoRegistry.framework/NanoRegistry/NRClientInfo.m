@interface NRClientInfo
- (NRClientInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NRClientInfo

- (NRClientInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NRClientInfo *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"processName"];
    processName = v5->_processName;
    v5->_processName = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong(v4 + 1, self->_processName);
  return v4;
}

@end