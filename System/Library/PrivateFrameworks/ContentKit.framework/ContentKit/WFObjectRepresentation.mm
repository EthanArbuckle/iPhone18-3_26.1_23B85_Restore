@interface WFObjectRepresentation
+ (id)object:(id)object named:(id)named;
+ (id)objects:(id)objects named:(id)named;
- (BOOL)isEncodable;
- (NSString)wfName;
- (WFObjectRepresentation)initWithCoder:(id)coder;
- (WFObjectRepresentation)initWithObject:(id)object named:(id)named;
- (WFObjectType)wfType;
- (id)copyWithName:(id)name zone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFObjectRepresentation

+ (id)objects:(id)objects named:(id)named
{
  namedCopy = named;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__WFObjectRepresentation_objects_named___block_invoke;
  v10[3] = &unk_278344F08;
  v11 = namedCopy;
  selfCopy = self;
  v7 = namedCopy;
  v8 = [objects if_map:v10];

  return v8;
}

+ (id)object:(id)object named:(id)named
{
  namedCopy = named;
  objectCopy = object;
  v8 = [[self alloc] initWithObject:objectCopy named:namedCopy];

  return v8;
}

- (BOOL)isEncodable
{
  object = [(WFObjectRepresentation *)self object];
  if ([object conformsToProtocol:&unk_282F7EDE0] && objc_msgSend(objc_opt_class(), "supportsSecureCoding"))
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([(WFObjectRepresentation *)self isEncodable])
  {
    wfName = self->_wfName;
    if (wfName)
    {
      [coderCopy encodeObject:wfName forKey:@"wfName"];
    }

    object = [(WFObjectRepresentation *)self object];
    [coderCopy encodeObject:object forKey:@"object"];
  }
}

- (WFObjectRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  allowedClasses = [coderCopy allowedClasses];
  v6 = [coderCopy decodeObjectOfClasses:allowedClasses forKey:@"object"];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wfName"];

  v8 = [(WFObjectRepresentation *)self initWithObject:v6 named:v7];
  return v8;
}

- (id)copyWithName:(id)name zone:(_NSZone *)zone
{
  nameCopy = name;
  v7 = [objc_opt_class() allocWithZone:zone];
  object = [(WFObjectRepresentation *)self object];
  if (nameCopy)
  {
    v9 = [v7 initWithObject:object named:nameCopy];
  }

  else
  {
    wfName = [(WFObjectRepresentation *)self wfName];
    v9 = [v7 initWithObject:object named:wfName];
  }

  return v9;
}

- (WFObjectType)wfType
{
  object = [(WFObjectRepresentation *)self object];
  wfType = [object wfType];

  return wfType;
}

- (NSString)wfName
{
  wfName = self->_wfName;
  if (wfName)
  {
    wfName = wfName;
  }

  else
  {
    object = [(WFObjectRepresentation *)self object];
    wfName = [object wfName];
  }

  return wfName;
}

- (WFObjectRepresentation)initWithObject:(id)object named:(id)named
{
  objectCopy = object;
  namedCopy = named;
  if (!objectCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFObjectRepresentation.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"object"}];
  }

  v10 = [(WFObjectRepresentation *)self init];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      namedCopy = 0;
    }

    objc_storeStrong(&v10->_object, object);
    v11 = [namedCopy copy];
    wfName = v10->_wfName;
    v10->_wfName = v11;

    v13 = v10;
  }

  return v10;
}

@end