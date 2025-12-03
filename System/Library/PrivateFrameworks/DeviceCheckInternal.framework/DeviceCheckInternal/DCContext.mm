@interface DCContext
- (DCContext)initWithCoder:(id)coder;
@end

@implementation DCContext

- (DCContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DCContext *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientAppID"];
    clientAppID = v5->_clientAppID;
    v5->_clientAppID = v6;
  }

  return v5;
}

@end