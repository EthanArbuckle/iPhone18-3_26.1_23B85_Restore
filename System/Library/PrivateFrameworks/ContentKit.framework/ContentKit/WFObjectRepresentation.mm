@interface WFObjectRepresentation
+ (id)object:(id)a3 named:(id)a4;
+ (id)objects:(id)a3 named:(id)a4;
- (BOOL)isEncodable;
- (NSString)wfName;
- (WFObjectRepresentation)initWithCoder:(id)a3;
- (WFObjectRepresentation)initWithObject:(id)a3 named:(id)a4;
- (WFObjectType)wfType;
- (id)copyWithName:(id)a3 zone:(_NSZone *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFObjectRepresentation

+ (id)objects:(id)a3 named:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__WFObjectRepresentation_objects_named___block_invoke;
  v10[3] = &unk_278344F08;
  v11 = v6;
  v12 = a1;
  v7 = v6;
  v8 = [a3 if_map:v10];

  return v8;
}

+ (id)object:(id)a3 named:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithObject:v7 named:v6];

  return v8;
}

- (BOOL)isEncodable
{
  v2 = [(WFObjectRepresentation *)self object];
  if ([v2 conformsToProtocol:&unk_282F7EDE0] && objc_msgSend(objc_opt_class(), "supportsSecureCoding"))
  {
    v3 = objc_opt_class();
    v4 = v3 != objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  if ([(WFObjectRepresentation *)self isEncodable])
  {
    wfName = self->_wfName;
    if (wfName)
    {
      [v6 encodeObject:wfName forKey:@"wfName"];
    }

    v5 = [(WFObjectRepresentation *)self object];
    [v6 encodeObject:v5 forKey:@"object"];
  }
}

- (WFObjectRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 allowedClasses];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"object"];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wfName"];

  v8 = [(WFObjectRepresentation *)self initWithObject:v6 named:v7];
  return v8;
}

- (id)copyWithName:(id)a3 zone:(_NSZone *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() allocWithZone:a4];
  v8 = [(WFObjectRepresentation *)self object];
  if (v6)
  {
    v9 = [v7 initWithObject:v8 named:v6];
  }

  else
  {
    v10 = [(WFObjectRepresentation *)self wfName];
    v9 = [v7 initWithObject:v8 named:v10];
  }

  return v9;
}

- (WFObjectType)wfType
{
  v2 = [(WFObjectRepresentation *)self object];
  v3 = [v2 wfType];

  return v3;
}

- (NSString)wfName
{
  wfName = self->_wfName;
  if (wfName)
  {
    v3 = wfName;
  }

  else
  {
    v4 = [(WFObjectRepresentation *)self object];
    v3 = [v4 wfName];
  }

  return v3;
}

- (WFObjectRepresentation)initWithObject:(id)a3 named:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFObjectRepresentation.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"object"}];
  }

  v10 = [(WFObjectRepresentation *)self init];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v9 = 0;
    }

    objc_storeStrong(&v10->_object, a3);
    v11 = [v9 copy];
    wfName = v10->_wfName;
    v10->_wfName = v11;

    v13 = v10;
  }

  return v10;
}

@end