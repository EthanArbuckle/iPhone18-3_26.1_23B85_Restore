@interface PKPassUpcomingPassInformationGroup
+ (id)createFromEntries:(id)entries identifier:(id)identifier name:(id)name;
- (PKPassUpcomingPassInformationGroup)initWithCoder:(id)coder;
- (id)_initWithIdentifier:(id)identifier name:(id)name entries:(id)entries;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassUpcomingPassInformationGroup

+ (id)createFromEntries:(id)entries identifier:(id)identifier name:(id)name
{
  v5 = 0;
  if (identifier && name)
  {
    nameCopy = name;
    identifierCopy = identifier;
    entriesCopy = entries;
    v5 = [[PKPassUpcomingPassInformationGroup alloc] _initWithIdentifier:identifierCopy name:nameCopy entries:entriesCopy];
  }

  return v5;
}

- (id)_initWithIdentifier:(id)identifier name:(id)name entries:(id)entries
{
  identifierCopy = identifier;
  nameCopy = name;
  entriesCopy = entries;
  v12 = entriesCopy;
  selfCopy = 0;
  if (identifierCopy && nameCopy)
  {
    if ([entriesCopy count])
    {
      v17.receiver = self;
      v17.super_class = PKPassUpcomingPassInformationGroup;
      v14 = [(PKPassUpcomingPassInformationGroup *)&v17 init];
      p_isa = &v14->super.isa;
      if (v14)
      {
        objc_storeStrong(&v14->_name, name);
        objc_storeStrong(p_isa + 1, identifier);
        objc_storeStrong(p_isa + 3, entries);
      }

      self = p_isa;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (PKPassUpcomingPassInformationGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKPassUpcomingPassInformationGroup;
  v5 = [(PKPassUpcomingPassInformationGroup *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"entries"];
    entries = v5->_entries;
    v5->_entries = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_entries forKey:@"entries"];
}

@end