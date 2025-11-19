@interface CRPreflightRequestComponent
- (CRPreflightRequestComponent)initWithComponentType:(id)a3 identifier:(id)a4 asid:(id)a5;
@end

@implementation CRPreflightRequestComponent

- (CRPreflightRequestComponent)initWithComponentType:(id)a3 identifier:(id)a4 asid:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CRPreflightRequestComponent;
  v12 = [(CRPreflightRequestComponent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_type, a3);
    objc_storeStrong(&v13->_identifier, a4);
    objc_storeStrong(&v13->_asid, a5);
    v13->_state = 0;
  }

  return v13;
}

@end