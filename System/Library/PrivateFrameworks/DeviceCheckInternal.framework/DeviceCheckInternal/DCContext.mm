@interface DCContext
- (DCContext)initWithCoder:(id)a3;
@end

@implementation DCContext

- (DCContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DCContext *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_clientAppID"];
    clientAppID = v5->_clientAppID;
    v5->_clientAppID = v6;
  }

  return v5;
}

@end