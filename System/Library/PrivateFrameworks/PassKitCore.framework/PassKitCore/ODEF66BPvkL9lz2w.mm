@interface ODEF66BPvkL9lz2w
- (ODEF66BPvkL9lz2w)initWithDictionary:(id)dictionary;
- (id)toDictionary;
@end

@implementation ODEF66BPvkL9lz2w

- (ODEF66BPvkL9lz2w)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"_classType"];
  v6 = [v5 isEqualToString:@"name"];

  if (v6)
  {
    v13.receiver = self;
    v13.super_class = ODEF66BPvkL9lz2w;
    v7 = [(ODEF66BPvkL9lz2w *)&v13 init];
    if (v7)
    {
      v8 = [dictionaryCopy objectForKey:@"firstName"];
      [(ODEF66BPvkL9lz2w *)v7 setFirstName:v8];

      v9 = [dictionaryCopy objectForKey:@"lastName"];
      [(ODEF66BPvkL9lz2w *)v7 setLastName:v9];

      v10 = [dictionaryCopy objectForKey:@"fullName"];
      [(ODEF66BPvkL9lz2w *)v7 setFullName:v10];
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)toDictionary
{
  v3 = objc_opt_new();
  [v3 setObject:@"name" forKeyedSubscript:@"_classType"];
  firstName = self->_firstName;
  if (firstName)
  {
    [v3 setObject:firstName forKeyedSubscript:@"firstName"];
  }

  lastName = self->_lastName;
  if (lastName)
  {
    [v3 setObject:lastName forKeyedSubscript:@"lastName"];
  }

  fullName = self->_fullName;
  if (fullName)
  {
    [v3 setObject:fullName forKeyedSubscript:@"fullName"];
  }

  return v3;
}

@end