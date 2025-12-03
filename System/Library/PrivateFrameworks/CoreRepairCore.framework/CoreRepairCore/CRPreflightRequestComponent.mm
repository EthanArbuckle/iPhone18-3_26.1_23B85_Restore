@interface CRPreflightRequestComponent
- (CRPreflightRequestComponent)initWithComponentType:(id)type identifier:(id)identifier asid:(id)asid;
@end

@implementation CRPreflightRequestComponent

- (CRPreflightRequestComponent)initWithComponentType:(id)type identifier:(id)identifier asid:(id)asid
{
  typeCopy = type;
  identifierCopy = identifier;
  asidCopy = asid;
  v15.receiver = self;
  v15.super_class = CRPreflightRequestComponent;
  v12 = [(CRPreflightRequestComponent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_type, type);
    objc_storeStrong(&v13->_identifier, identifier);
    objc_storeStrong(&v13->_asid, asid);
    v13->_state = 0;
  }

  return v13;
}

@end