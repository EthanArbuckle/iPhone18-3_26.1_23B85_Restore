@interface PKPassUpcomingPassInformationGroup
+ (id)createFromEntries:(id)a3 identifier:(id)a4 name:(id)a5;
- (PKPassUpcomingPassInformationGroup)initWithCoder:(id)a3;
- (id)_initWithIdentifier:(id)a3 name:(id)a4 entries:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassUpcomingPassInformationGroup

+ (id)createFromEntries:(id)a3 identifier:(id)a4 name:(id)a5
{
  v5 = 0;
  if (a4 && a5)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v5 = [[PKPassUpcomingPassInformationGroup alloc] _initWithIdentifier:v9 name:v8 entries:v10];
  }

  return v5;
}

- (id)_initWithIdentifier:(id)a3 name:(id)a4 entries:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  v13 = 0;
  if (v9 && v10)
  {
    if ([v11 count])
    {
      v17.receiver = self;
      v17.super_class = PKPassUpcomingPassInformationGroup;
      v14 = [(PKPassUpcomingPassInformationGroup *)&v17 init];
      p_isa = &v14->super.isa;
      if (v14)
      {
        objc_storeStrong(&v14->_name, a4);
        objc_storeStrong(p_isa + 1, a3);
        objc_storeStrong(p_isa + 3, a5);
      }

      self = p_isa;
      v13 = self;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (PKPassUpcomingPassInformationGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPassUpcomingPassInformationGroup;
  v5 = [(PKPassUpcomingPassInformationGroup *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"entries"];
    entries = v5->_entries;
    v5->_entries = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_entries forKey:@"entries"];
}

@end