@interface WFUnsupportedContentLocation
+ (id)locationWithIdentifier:(id)identifier serializedRepresentation:(id)representation;
+ (id)objectWithWFSerializedRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (WFUnsupportedContentLocation)initWithCoder:(id)coder;
- (WFUnsupportedContentLocation)initWithIdentifier:(id)identifier serializedRepresentation:(id)representation;
- (id)localizedTitle;
- (id)wfSerializedRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFUnsupportedContentLocation

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(WFContentLocation *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, identifier: %@>", v5, self, identifier];

  return v7;
}

- (id)wfSerializedRepresentation
{
  backingSerializedRepresentation = [(WFUnsupportedContentLocation *)self backingSerializedRepresentation];
  v3 = [backingSerializedRepresentation copy];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFUnsupportedContentLocation;
  coderCopy = coder;
  [(WFContentLocation *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFUnsupportedContentLocation *)self backingSerializedRepresentation:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"backingSerializedRepresentation"];
}

- (WFUnsupportedContentLocation)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = WFUnsupportedContentLocation;
  coderCopy = coder;
  v4 = [(WFContentLocation *)&v13 initWithCoder:coderCopy];
  v5 = MEMORY[0x277CBEB98];
  v6 = v4;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v8 = [v5 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"backingSerializedRepresentation"];

  identifier = [(WFContentLocation *)v6 identifier];
  v11 = [(WFUnsupportedContentLocation *)v6 initWithIdentifier:identifier serializedRepresentation:v9];

  return v11;
}

- (id)localizedTitle
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v4 = 136315138;
    v5 = "[WFUnsupportedContentLocation localizedTitle]";
    _os_log_impl(&dword_21E1BD000, v2, OS_LOG_TYPE_FAULT, "%s The UI should never attempt to display a WFUnsupportedContentLocation", &v4, 0xCu);
  }

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    identifier = [(WFContentLocation *)self identifier];
    identifier2 = [equalCopy identifier];
    v7 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  identifier = [(WFContentLocation *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (WFUnsupportedContentLocation)initWithIdentifier:(id)identifier serializedRepresentation:(id)representation
{
  representationCopy = representation;
  v12.receiver = self;
  v12.super_class = WFUnsupportedContentLocation;
  v8 = [(WFContentLocation *)&v12 initWithIdentifier:identifier promptingBehaviour:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_backingSerializedRepresentation, representation);
    v10 = v9;
  }

  return v9;
}

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___WFUnsupportedContentLocation;
  representationCopy = representation;
  v5 = objc_msgSendSuper2(&v9, sel_objectWithWFSerializedRepresentation_, representationCopy);
  identifier = [v5 identifier];
  v7 = [self locationWithIdentifier:identifier serializedRepresentation:representationCopy];

  return v7;
}

+ (id)locationWithIdentifier:(id)identifier serializedRepresentation:(id)representation
{
  representationCopy = representation;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithIdentifier:identifierCopy serializedRepresentation:representationCopy];

  return v8;
}

@end