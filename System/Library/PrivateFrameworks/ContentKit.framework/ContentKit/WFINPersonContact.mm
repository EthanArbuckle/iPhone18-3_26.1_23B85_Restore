@interface WFINPersonContact
+ (id)contactWithPerson:(id)person;
+ (id)objectWithWFSerializedRepresentation:(id)representation;
- (WFINPersonContact)initWithCoder:(id)coder;
- (WFINPersonContact)initWithINPerson:(id)person;
- (id)firstName;
- (id)formattedName;
- (id)lastName;
- (id)middleName;
- (id)nickname;
- (id)wfName;
- (id)wfSerializedRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFINPersonContact

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  person = [(WFINPersonContact *)self person];
  v5 = NSStringFromSelector(sel_person);
  [coderCopy encodeObject:person forKey:v5];
}

- (WFINPersonContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_person);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = [(WFINPersonContact *)self initWithINPerson:v7];
  return v8;
}

- (id)wfSerializedRepresentation
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CD3D68]);
  person = [(WFINPersonContact *)self person];
  v5 = [v3 encodeObject:person];
  v6 = [v5 mutableCopy];

  if (v6)
  {
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"WFIsINPerson"];
    v11 = @"link.contentkit.contact";
    v12 = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  }

  else
  {
    v8 = getWFWFContactLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      person2 = [(WFINPersonContact *)self person];
      *buf = 136315394;
      v14 = "[WFINPersonContact wfSerializedRepresentation]";
      v15 = 2112;
      v16 = person2;
      _os_log_impl(&dword_21E1BD000, v8, OS_LOG_TYPE_ERROR, "%s Failed to JSON encode INPerson: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)wfName
{
  person = [(WFINPersonContact *)self person];
  displayName = [person displayName];

  return displayName;
}

- (id)nickname
{
  person = [(WFINPersonContact *)self person];
  nameComponents = [person nameComponents];
  nickname = [nameComponents nickname];

  return nickname;
}

- (id)lastName
{
  person = [(WFINPersonContact *)self person];
  nameComponents = [person nameComponents];
  familyName = [nameComponents familyName];

  return familyName;
}

- (id)firstName
{
  person = [(WFINPersonContact *)self person];
  nameComponents = [person nameComponents];
  givenName = [nameComponents givenName];

  return givenName;
}

- (id)middleName
{
  person = [(WFINPersonContact *)self person];
  nameComponents = [person nameComponents];
  middleName = [nameComponents middleName];

  return middleName;
}

- (id)formattedName
{
  person = [(WFINPersonContact *)self person];
  displayName = [person displayName];

  return displayName;
}

- (WFINPersonContact)initWithINPerson:(id)person
{
  personCopy = person;
  if (!personCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFINPersonContact.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v12.receiver = self;
  v12.super_class = WFINPersonContact;
  v7 = [(WFINPersonContact *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_person, person);
    v9 = v8;
  }

  return v8;
}

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  v4 = MEMORY[0x277CD3D60];
  representationCopy = representation;
  v6 = objc_alloc_init(v4);
  v7 = [representationCopy objectForKeyedSubscript:@"link.contentkit.contact"];

  v8 = [v6 decodeObjectOfClass:objc_opt_class() from:v7];
  if (v8)
  {
    v9 = [self contactWithPerson:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)contactWithPerson:(id)person
{
  personCopy = person;
  v5 = [[self alloc] initWithINPerson:personCopy];

  return v5;
}

@end