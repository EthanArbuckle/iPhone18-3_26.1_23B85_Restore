@interface _ICContact
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContact:(id)a3;
- (_ICContact)initWithFirstName:(id)a3 phoneticFirstName:(id)a4 middleName:(id)a5 phoneticMiddleName:(id)a6 lastName:(id)a7 phoneticLastName:(id)a8 organizationName:(id)a9 jobTitle:(id)a10 nickname:(id)a11 relations:(id)a12 streets:(id)a13 cities:(id)a14 score:(double)a15;
- (id)flatten;
- (unint64_t)hash;
@end

@implementation _ICContact

- (_ICContact)initWithFirstName:(id)a3 phoneticFirstName:(id)a4 middleName:(id)a5 phoneticMiddleName:(id)a6 lastName:(id)a7 phoneticLastName:(id)a8 organizationName:(id)a9 jobTitle:(id)a10 nickname:(id)a11 relations:(id)a12 streets:(id)a13 cities:(id)a14 score:(double)a15
{
  v45 = a3;
  v35 = a4;
  v44 = a4;
  v43 = a5;
  v42 = a6;
  v36 = a7;
  v41 = a7;
  v40 = a8;
  v39 = a9;
  v38 = a10;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  v46.receiver = self;
  v46.super_class = _ICContact;
  v25 = [(_ICContact *)&v46 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_firstName, a3);
    objc_storeStrong(&v26->_phoneticFirstName, v35);
    objc_storeStrong(&v26->_middleName, a5);
    objc_storeStrong(&v26->_phoneticMiddleName, a6);
    objc_storeStrong(&v26->_lastName, v36);
    objc_storeStrong(&v26->_phoneticLastName, a8);
    objc_storeStrong(&v26->_organizationName, a9);
    objc_storeStrong(&v26->_jobTitle, a10);
    objc_storeStrong(&v26->_nickname, a11);
    v27 = [v22 copy];
    relations = v26->_relations;
    v26->_relations = v27;

    v29 = [v23 copy];
    streets = v26->_streets;
    v26->_streets = v29;

    v31 = [v24 copy];
    cities = v26->_cities;
    v26->_cities = v31;

    v26->_score = a15;
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
  v8 = [(_ICContact *)self lastName];
  (v7)[2](v7, v8);

  v9 = [(_ICContact *)self firstName];
  (v7)[2](v7, v9);

  v10 = [(_ICContact *)self middleName];
  (v7)[2](v7, v10);

  v11 = [(_ICContact *)self organizationName];
  (v7)[2](v7, v11);

  v12 = [(_ICContact *)self jobTitle];
  (v7)[2](v7, v12);

  v13 = [(_ICContact *)self nickname];
  (v7)[2](v7, v13);

  v14 = [(_ICContact *)self relations];
  v15 = [v14 count];

  if (v15)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v16 = [(_ICContact *)self relations];
    v17 = [v16 countByEnumeratingWithState:&v35 objects:v43 count:16];
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
            objc_enumerationMutation(v16);
          }

          v7[2](v7, *(*(&v35 + 1) + 8 * v20++));
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v18);
    }
  }

  v21 = [(_ICContact *)self cities];
  v22 = [v21 count];

  if (v22)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = [(_ICContact *)self cities];
    v24 = [v23 countByEnumeratingWithState:&v31 objects:v42 count:16];
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
            objc_enumerationMutation(v23);
          }

          v7[2](v7, *(*(&v31 + 1) + 8 * v27++));
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v31 objects:v42 count:16];
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

- (BOOL)isEqualToContact:(id)a3
{
  v4 = a3;
  v5 = [(NSString *)self->_firstName isEqualToString:*(v4 + 1)]&& [(NSString *)self->_phoneticFirstName isEqualToString:self->_phoneticFirstName]&& [(NSString *)self->_middleName isEqualToString:*(v4 + 3)]&& [(NSString *)self->_phoneticMiddleName isEqualToString:*(v4 + 4)]&& [(NSString *)self->_lastName isEqualToString:*(v4 + 5)]&& [(NSString *)self->_phoneticLastName isEqualToString:*(v4 + 6)]&& [(NSString *)self->_organizationName isEqualToString:*(v4 + 7)]&& [(NSString *)self->_jobTitle isEqualToString:*(v4 + 8)]&& [(NSString *)self->_nickname isEqualToString:*(v4 + 9)]&& [(NSArray *)self->_relations isEqualToArray:*(v4 + 10)]&& [(NSArray *)self->_streets isEqualToArray:*(v4 + 11)]&& [(NSArray *)self->_cities isEqualToArray:*(v4 + 12)]&& self->_score == v4[13];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_ICContact *)self isEqualToContact:v5];
  }

  return v6;
}

@end