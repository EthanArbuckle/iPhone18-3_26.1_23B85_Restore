@interface MOPerson
- (BOOL)isEqual:(id)a3;
- (MOPerson)initWithCoder:(id)a3;
- (MOPerson)initWithLocalIdentifier:(id)a3 name:(id)a4 contactIdentifier:(id)a5 family:(id)a6 isPHPersonTypeImportant:(BOOL)a7 isMePerson:(BOOL)a8 mePersonIdentified:(BOOL)a9 personRelationships:(id)a10 priorityScore:(double)a11 significanceScore:(double)a12;
- (MOPerson)initWithPersonDictionary:(id)a3;
- (id)description;
- (int64_t)comparePersons:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOPerson

- (MOPerson)initWithLocalIdentifier:(id)a3 name:(id)a4 contactIdentifier:(id)a5 family:(id)a6 isPHPersonTypeImportant:(BOOL)a7 isMePerson:(BOOL)a8 mePersonIdentified:(BOOL)a9 personRelationships:(id)a10 priorityScore:(double)a11 significanceScore:(double)a12
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a10;
  v37.receiver = self;
  v37.super_class = MOPerson;
  v25 = [(MOPerson *)&v37 init];
  if (v25)
  {
    v26 = [v20 copy];
    localIdentifier = v25->_localIdentifier;
    v25->_localIdentifier = v26;

    v28 = [v21 copy];
    name = v25->_name;
    v25->_name = v28;

    v30 = [v22 copy];
    contactIdentifier = v25->_contactIdentifier;
    v25->_contactIdentifier = v30;

    v32 = [v23 copy];
    family = v25->_family;
    v25->_family = v32;

    v25->_isPHPersonTypeImportant = a7;
    v25->_isMePerson = a8;
    v25->_mePersonIdentified = a9;
    v34 = [v24 copy];
    personRelationships = v25->_personRelationships;
    v25->_personRelationships = v34;

    v25->_priorityScore = a11;
    v25->_significanceScore = a12;
  }

  return v25;
}

- (MOPerson)initWithPersonDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"localIdentifier"];
  v6 = [v4 objectForKey:@"name"];
  v7 = [v4 objectForKey:@"contactIdentifier"];
  v8 = [v4 objectForKey:@"family"];
  v9 = [v4 objectForKey:@"priorityScore"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v4 objectForKey:@"significanceScore"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [v4 objectForKey:@"isPHPersonTypeImportant"];
  v16 = [v15 BOOLValue];

  v17 = [v4 objectForKey:@"isMePerson"];
  v18 = [v17 BOOLValue];

  v19 = [v4 objectForKey:@"mePersonIdentified"];

  LOBYTE(v4) = [v19 BOOLValue];
  LOBYTE(v22) = v4;
  v20 = [(MOPerson *)self initWithLocalIdentifier:v5 name:v6 contactIdentifier:v7 family:v8 isPHPersonTypeImportant:v16 isMePerson:v18 mePersonIdentified:v11 personRelationships:v14 priorityScore:v22 significanceScore:0];

  return v20;
}

- (id)description
{
  v17 = MEMORY[0x277CCACA8];
  v3 = [(MOPerson *)self localIdentifier];
  v4 = [(MOPerson *)self name];
  v5 = [v4 mask];
  v6 = [(MOPerson *)self contactIdentifier];
  v7 = [(MOPerson *)self isPHPersonTypeImportant];
  v8 = [(MOPerson *)self isMePerson];
  v9 = [(MOPerson *)self mePersonIdentified];
  v10 = [(MOPerson *)self personRelationships];
  v11 = [(MOPerson *)self family];
  [(MOPerson *)self significanceScore];
  v13 = v12;
  [(MOPerson *)self priorityScore];
  v15 = [v17 stringWithFormat:@"<MOPerson localIdentifier, %@, name, %@, contactIdentifier, %@, isPHPersonTypeImportant, %d, isMePerson, %d, mePersonIdentified, %d, peopleClassification, %@, family, %@, significanceScore, %.1f, priorityScore, %.1f>", v3, v5, v6, v7, v8, v9, v10, v11, v13, v14];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  localIdentifier = self->_localIdentifier;
  v5 = a3;
  [v5 encodeObject:localIdentifier forKey:@"localIdentifier"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_givenName forKey:@"givenName"];
  [v5 encodeObject:self->_contactIdentifier forKey:@"contactIdentifier"];
  [v5 encodeObject:self->_family forKey:@"family"];
  [v5 encodeBool:self->_isPHPersonTypeImportant forKey:@"isPHPersonTypeImportant"];
  [v5 encodeBool:self->_isMePerson forKey:@"isMePerson"];
  [v5 encodeBool:self->_mePersonIdentified forKey:@"mePersonIdentified"];
  [v5 encodeObject:self->_personRelationships forKey:@"personRelationships"];
  [v5 encodeDouble:@"priorityScore" forKey:self->_priorityScore];
  [v5 encodeDouble:@"significanceScore" forKey:self->_significanceScore];
  [v5 encodeInt64:self->_sourceEventAccessType forKey:@"sourceEventAccessType"];
  [v5 encodeObject:self->_sourceEventIdentifier forKey:@"sourceEventIdentifier"];
}

- (MOPerson)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"localIdentifier"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"family"];
  v8 = [v3 decodeBoolForKey:@"isPHPersonTypeImportant"];
  v9 = [v3 decodeBoolForKey:@"isMePerson"];
  v10 = [v3 decodeBoolForKey:@"mePersonIdentified"];
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"personRelationships"];

  [v3 decodeDoubleForKey:@"priorityScore"];
  v16 = v15;
  [v3 decodeDoubleForKey:@"significanceScore"];
  LOBYTE(v22) = v10;
  v18 = [(MOPerson *)self initWithLocalIdentifier:v4 name:v5 contactIdentifier:v6 family:v7 isPHPersonTypeImportant:v8 isMePerson:v9 mePersonIdentified:v16 personRelationships:v17 priorityScore:v22 significanceScore:v14];
  if (v18)
  {
    v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sourceEventIdentifier"];
    [(MOPerson *)v18 setSourceEventIdentifier:v19];

    -[MOPerson setSourceEventAccessType:](v18, "setSourceEventAccessType:", [v3 decodeInt64ForKey:@"sourceEventAccessType"]);
    v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"givenName"];
    [(MOPerson *)v18 setGivenName:v20];
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v6 = v4;
    v7 = [(MOPerson *)self localIdentifier];
    if (v7)
    {
      v8 = [(MOPerson *)v6 localIdentifier];
      LODWORD(v9) = v8 != 0;
    }

    else
    {
      LODWORD(v9) = 0;
    }

    v11 = [(MOPerson *)self contactIdentifier];
    if (v11)
    {
      v12 = [(MOPerson *)v6 contactIdentifier];
      v13 = v12 != 0;
    }

    else
    {
      v13 = 0;
    }

    if (v9)
    {
      v14 = [(MOPerson *)self localIdentifier];
      v15 = [(MOPerson *)v6 localIdentifier];
      v16 = [v14 isEqualToString:v15];
    }

    else
    {
      v16 = 0;
    }

    v17 = [(MOPerson *)self name];
    if (v17)
    {
      v18 = [(MOPerson *)v6 name];
      if (v18)
      {
        [(MOPerson *)self name];
        v9 = v27 = v9;
        [(MOPerson *)v6 name];
        v19 = v16;
        v21 = v20 = v13;
        v22 = [v9 isEqualToString:v21];

        v13 = v20;
        v16 = v19;

        LOBYTE(v9) = v27;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    if (v13)
    {
      v23 = [(MOPerson *)self contactIdentifier];
      v24 = [(MOPerson *)v6 contactIdentifier];
      v25 = [v23 isEqualToString:v24];
    }

    else
    {
      v25 = 0;
    }

    if ((v16 | v25))
    {
      v10 = 1;
    }

    else
    {
      v10 = ((v9 | v13) ^ 1) & v22;
    }
  }

  return v10 & 1;
}

- (unint64_t)hash
{
  v3 = [(MOPerson *)self localIdentifier];
  if (v3)
  {
    v4 = [(MOPerson *)self localIdentifier];
    v5 = [v4 hash];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(MOPerson *)self name];
  if (v6)
  {
    v7 = [(MOPerson *)self name];
    v8 = [v7 hash];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(MOPerson *)self givenName];
  if (v9)
  {
    v10 = [(MOPerson *)self givenName];
    v11 = [v10 hash];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(MOPerson *)self contactIdentifier];
  if (v12)
  {
    v13 = [(MOPerson *)self contactIdentifier];
    v14 = [v13 hash];
  }

  else
  {
    v14 = 0;
  }

  return v8 ^ v5 ^ v11 ^ v14;
}

- (int64_t)comparePersons:(id)a3
{
  v4 = a3;
  if (![(MOPerson *)self isMePerson])
  {
    if ([v4 isMePerson])
    {
      v5 = 1;
      goto LABEL_7;
    }

    if (![(MOPerson *)self isPHPersonTypeImportant])
    {
      v5 = [v4 isPHPersonTypeImportant];
      goto LABEL_7;
    }
  }

  v5 = -1;
LABEL_7:

  return v5;
}

@end