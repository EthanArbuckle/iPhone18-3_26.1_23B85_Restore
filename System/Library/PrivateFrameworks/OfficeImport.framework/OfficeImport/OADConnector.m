@interface OADConnector
- (OADConnector)init;
- (id)description;
@end

@implementation OADConnector

- (OADConnector)init
{
  v3 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = OADConnector;
  return [(OADDrawable *)&v5 initWithPropertiesClass:v3];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADConnector;
  v2 = [(OADShape *)&v4 description];

  return v2;
}

@end