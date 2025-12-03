@interface _ICContact
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContact:(id)contact;
- (_ICContact)initWithFirstName:(id)name phoneticFirstName:(id)firstName middleName:(id)middleName phoneticMiddleName:(id)phoneticMiddleName lastName:(id)lastName phoneticLastName:(id)phoneticLastName organizationName:(id)organizationName jobTitle:(id)self0 nickname:(id)self1 relations:(id)self2 streets:(id)self3 cities:(id)self4 score:(double)self5;
- (id)flatten;
- (unint64_t)hash;
@end

@implementation _ICContact

- (_ICContact)initWithFirstName:(id)name phoneticFirstName:(id)firstName middleName:(id)middleName phoneticMiddleName:(id)phoneticMiddleName lastName:(id)lastName phoneticLastName:(id)phoneticLastName organizationName:(id)organizationName jobTitle:(id)self0 nickname:(id)self1 relations:(id)self2 streets:(id)self3 cities:(id)self4 score:(double)self5
{
  nameCopy = name;
  firstNameCopy = firstName;
  firstNameCopy2 = firstName;
  middleNameCopy = middleName;
  phoneticMiddleNameCopy = phoneticMiddleName;
  lastNameCopy = lastName;
  lastNameCopy2 = lastName;
  phoneticLastNameCopy = phoneticLastName;
  organizationNameCopy = organizationName;
  titleCopy = title;
  nicknameCopy = nickname;
  relationsCopy = relations;
  streetsCopy = streets;
  citiesCopy = cities;
  v46.receiver = self;
  v46.super_class = _ICContact;
  v25 = [(_ICContact *)&v46 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_firstName, name);
    objc_storeStrong(&v26->_phoneticFirstName, firstNameCopy);
    objc_storeStrong(&v26->_middleName, middleName);
    objc_storeStrong(&v26->_phoneticMiddleName, phoneticMiddleName);
    objc_storeStrong(&v26->_lastName, lastNameCopy);
    objc_storeStrong(&v26->_phoneticLastName, phoneticLastName);
    objc_storeStrong(&v26->_organizationName, organizationName);
    objc_storeStrong(&v26->_jobTitle, title);
    objc_storeStrong(&v26->_nickname, nickname);
    v27 = [relationsCopy copy];
    relations = v26->_relations;
    v26->_relations = v27;

    v29 = [streetsCopy copy];
    streets = v26->_streets;
    v26->_streets = v29;

    v31 = [citiesCopy copy];
    cities = v26->_cities;
    v26->_cities = v31;

    v26->_score = score;
  }

  return v26;
}

- (id)flatten
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", :"}];;
  v4 = [MEMORY[0x277CBEB58] set];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __21___ICContact_flatten__block_invoke;
  v39[3] = &unk_2797ADB30;
  v5 = v3;
  v40 = v5;
  v6 = v4;
  v41 = v6;
  v7 = MEMORY[0x259C27030](v39);
  lastName = [(_ICContact *)self lastName];
  (v7)[2](v7, lastName);

  firstName = [(_ICContact *)self firstName];
  (v7)[2](v7, firstName);

  middleName = [(_ICContact *)self middleName];
  (v7)[2](v7, middleName);

  organizationName = [(_ICContact *)self organizationName];
  (v7)[2](v7, organizationName);

  jobTitle = [(_ICContact *)self jobTitle];
  (v7)[2](v7, jobTitle);

  nickname = [(_ICContact *)self nickname];
  (v7)[2](v7, nickname);

  relations = [(_ICContact *)self relations];
  v15 = [relations count];

  if (v15)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    relations2 = [(_ICContact *)self relations];
    v17 = [relations2 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
      do
      {
        v20 = 0;
        do
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(relations2);
          }

          v7[2](v7, *(*(&v35 + 1) + 8 * v20++));
        }

        while (v18 != v20);
        v18 = [relations2 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v18);
    }
  }

  cities = [(_ICContact *)self cities];
  v22 = [cities count];

  if (v22)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    cities2 = [(_ICContact *)self cities];
    v24 = [cities2 countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v32;
      do
      {
        v27 = 0;
        do
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(cities2);
          }

          v7[2](v7, *(*(&v31 + 1) + 8 * v27++));
        }

        while (v25 != v27);
        v25 = [cities2 countByEnumeratingWithState:&v31 objects:v42 count:16];
      }

      while (v25);
    }
  }

  v28 = v6;

  v29 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_firstName hash];
  v4 = [(NSString *)self->_phoneticFirstName hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_middleName hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_phoneticMiddleName hash]- v5 + 32 * v5;
  v7 = [(NSString *)self->_lastName hash]- v6 + 32 * v6;
  v8 = [(NSString *)self->_phoneticLastName hash]- v7 + 32 * v7;
  v9 = [(NSString *)self->_organizationName hash]- v8 + 32 * v8;
  v10 = [(NSString *)self->_jobTitle hash]- v9 + 32 * v9;
  v11 = [(NSString *)self->_nickname hash]- v10 + 32 * v10;
  v12 = [(NSArray *)self->_relations hash]- v11 + 32 * v11;
  v13 = [(NSArray *)self->_streets hash]- v12 + 32 * v12;
  return (self->_score + (31 * ([(NSArray *)self->_cities hash]- v13 + 32 * v13)));
}

- (BOOL)isEqualToContact:(id)contact
{
  contactCopy = contact;
  v5 = [(NSString *)self->_firstName isEqualToString:*(contactCopy + 1)]&& [(NSString *)self->_phoneticFirstName isEqualToString:self->_phoneticFirstName]&& [(NSString *)self->_middleName isEqualToString:*(contactCopy + 3)]&& [(NSString *)self->_phoneticMiddleName isEqualToString:*(contactCopy + 4)]&& [(NSString *)self->_lastName isEqualToString:*(contactCopy + 5)]&& [(NSString *)self->_phoneticLastName isEqualToString:*(contactCopy + 6)]&& [(NSString *)self->_organizationName isEqualToString:*(contactCopy + 7)]&& [(NSString *)self->_jobTitle isEqualToString:*(contactCopy + 8)]&& [(NSString *)self->_nickname isEqualToString:*(contactCopy + 9)]&& [(NSArray *)self->_relations isEqualToArray:*(contactCopy + 10)]&& [(NSArray *)self->_streets isEqualToArray:*(contactCopy + 11)]&& [(NSArray *)self->_cities isEqualToArray:*(contactCopy + 12)]&& self->_score == contactCopy[13];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_ICContact *)self isEqualToContact:v5];
  }

  return v6;
}

@end