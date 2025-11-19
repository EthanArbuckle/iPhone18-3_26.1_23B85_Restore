@interface WFUnsupportedContentLocation
+ (id)locationWithIdentifier:(id)a3 serializedRepresentation:(id)a4;
+ (id)objectWithWFSerializedRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (WFUnsupportedContentLocation)initWithCoder:(id)a3;
- (WFUnsupportedContentLocation)initWithIdentifier:(id)a3 serializedRepresentation:(id)a4;
- (id)localizedTitle;
- (id)wfSerializedRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFUnsupportedContentLocation

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFContentLocation *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, identifier: %@>", v5, self, v6];

  return v7;
}

- (id)wfSerializedRepresentation
{
  v2 = [(WFUnsupportedContentLocation *)self backingSerializedRepresentation];
  v3 = [v2 copy];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFUnsupportedContentLocation;
  v4 = a3;
  [(WFContentLocation *)&v6 encodeWithCoder:v4];
  v5 = [(WFUnsupportedContentLocation *)self backingSerializedRepresentation:v6.receiver];
  [v4 encodeObject:v5 forKey:@"backingSerializedRepresentation"];
}

- (WFUnsupportedContentLocation)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = WFUnsupportedContentLocation;
  v3 = a3;
  v4 = [(WFContentLocation *)&v13 initWithCoder:v3];
  v5 = MEMORY[0x277CBEB98];
  v6 = v4;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v8 = [v5 setWithArray:v7];
  v9 = [v3 decodeObjectOfClasses:v8 forKey:@"backingSerializedRepresentation"];

  v10 = [(WFContentLocation *)v6 identifier];
  v11 = [(WFUnsupportedContentLocation *)v6 initWithIdentifier:v10 serializedRepresentation:v9];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(WFContentLocation *)self identifier];
    v6 = [v4 identifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(WFContentLocation *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (WFUnsupportedContentLocation)initWithIdentifier:(id)a3 serializedRepresentation:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = WFUnsupportedContentLocation;
  v8 = [(WFContentLocation *)&v12 initWithIdentifier:a3 promptingBehaviour:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_backingSerializedRepresentation, a4);
    v10 = v9;
  }

  return v9;
}

+ (id)objectWithWFSerializedRepresentation:(id)a3
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___WFUnsupportedContentLocation;
  v4 = a3;
  v5 = objc_msgSendSuper2(&v9, sel_objectWithWFSerializedRepresentation_, v4);
  v6 = [v5 identifier];
  v7 = [a1 locationWithIdentifier:v6 serializedRepresentation:v4];

  return v7;
}

+ (id)locationWithIdentifier:(id)a3 serializedRepresentation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithIdentifier:v7 serializedRepresentation:v6];

  return v8;
}

@end