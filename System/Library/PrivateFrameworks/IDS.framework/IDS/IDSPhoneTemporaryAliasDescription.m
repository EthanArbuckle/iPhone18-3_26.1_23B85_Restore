@interface IDSPhoneTemporaryAliasDescription
- (IDSPhoneTemporaryAliasDescription)initWithCoder:(id)a3;
- (IDSPhoneTemporaryAliasDescription)initWithURI:(id)a3 expirationDate:(id)a4 selected:(BOOL)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSPhoneTemporaryAliasDescription

- (IDSPhoneTemporaryAliasDescription)initWithURI:(id)a3 expirationDate:(id)a4 selected:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = IDSPhoneTemporaryAliasDescription;
  v11 = [(IDSPhoneTemporaryAliasDescription *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_URI, a3);
    objc_storeStrong(&v12->_expirationDate, a4);
    v12->_selected = a5;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_selected)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@: %p; URI: %@, expirationDate: %@, selected: %@>", v4, self, self->_URI, self->_expirationDate, v5];
}

- (void)encodeWithCoder:(id)a3
{
  URI = self->_URI;
  v5 = a3;
  [v5 encodeObject:URI forKey:@"uri"];
  [v5 encodeObject:self->_expirationDate forKey:@"expiration"];
  [v5 encodeBool:self->_selected forKey:@"selected"];
}

- (IDSPhoneTemporaryAliasDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
  v7 = [v4 decodeBoolForKey:@"selected"];

  v8 = [(IDSPhoneTemporaryAliasDescription *)self initWithURI:v5 expirationDate:v6 selected:v7];
  return v8;
}

@end