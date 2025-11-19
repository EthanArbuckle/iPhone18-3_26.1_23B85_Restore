@interface WFINPersonContact
+ (id)contactWithPerson:(id)a3;
+ (id)objectWithWFSerializedRepresentation:(id)a3;
- (WFINPersonContact)initWithCoder:(id)a3;
- (WFINPersonContact)initWithINPerson:(id)a3;
- (id)firstName;
- (id)formattedName;
- (id)lastName;
- (id)middleName;
- (id)nickname;
- (id)wfName;
- (id)wfSerializedRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFINPersonContact

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(WFINPersonContact *)self person];
  v5 = NSStringFromSelector(sel_person);
  [v4 encodeObject:v6 forKey:v5];
}

- (WFINPersonContact)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_person);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = [(WFINPersonContact *)self initWithINPerson:v7];
  return v8;
}

- (id)wfSerializedRepresentation
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CD3D68]);
  v4 = [(WFINPersonContact *)self person];
  v5 = [v3 encodeObject:v4];
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
      v9 = [(WFINPersonContact *)self person];
      *buf = 136315394;
      v14 = "[WFINPersonContact wfSerializedRepresentation]";
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_21E1BD000, v8, OS_LOG_TYPE_ERROR, "%s Failed to JSON encode INPerson: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)wfName
{
  v2 = [(WFINPersonContact *)self person];
  v3 = [v2 displayName];

  return v3;
}

- (id)nickname
{
  v2 = [(WFINPersonContact *)self person];
  v3 = [v2 nameComponents];
  v4 = [v3 nickname];

  return v4;
}

- (id)lastName
{
  v2 = [(WFINPersonContact *)self person];
  v3 = [v2 nameComponents];
  v4 = [v3 familyName];

  return v4;
}

- (id)firstName
{
  v2 = [(WFINPersonContact *)self person];
  v3 = [v2 nameComponents];
  v4 = [v3 givenName];

  return v4;
}

- (id)middleName
{
  v2 = [(WFINPersonContact *)self person];
  v3 = [v2 nameComponents];
  v4 = [v3 middleName];

  return v4;
}

- (id)formattedName
{
  v2 = [(WFINPersonContact *)self person];
  v3 = [v2 displayName];

  return v3;
}

- (WFINPersonContact)initWithINPerson:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFINPersonContact.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v12.receiver = self;
  v12.super_class = WFINPersonContact;
  v7 = [(WFINPersonContact *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_person, a3);
    v9 = v8;
  }

  return v8;
}

+ (id)objectWithWFSerializedRepresentation:(id)a3
{
  v4 = MEMORY[0x277CD3D60];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 objectForKeyedSubscript:@"link.contentkit.contact"];

  v8 = [v6 decodeObjectOfClass:objc_opt_class() from:v7];
  if (v8)
  {
    v9 = [a1 contactWithPerson:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)contactWithPerson:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithINPerson:v4];

  return v5;
}

@end