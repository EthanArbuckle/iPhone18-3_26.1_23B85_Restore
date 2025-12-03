@interface IDSPhoneTemporaryAliasDescription
- (IDSPhoneTemporaryAliasDescription)initWithCoder:(id)coder;
- (IDSPhoneTemporaryAliasDescription)initWithURI:(id)i expirationDate:(id)date selected:(BOOL)selected;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSPhoneTemporaryAliasDescription

- (IDSPhoneTemporaryAliasDescription)initWithURI:(id)i expirationDate:(id)date selected:(BOOL)selected
{
  iCopy = i;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = IDSPhoneTemporaryAliasDescription;
  v11 = [(IDSPhoneTemporaryAliasDescription *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_URI, i);
    objc_storeStrong(&v12->_expirationDate, date);
    v12->_selected = selected;
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

- (void)encodeWithCoder:(id)coder
{
  URI = self->_URI;
  coderCopy = coder;
  [coderCopy encodeObject:URI forKey:@"uri"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expiration"];
  [coderCopy encodeBool:self->_selected forKey:@"selected"];
}

- (IDSPhoneTemporaryAliasDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
  v7 = [coderCopy decodeBoolForKey:@"selected"];

  v8 = [(IDSPhoneTemporaryAliasDescription *)self initWithURI:v5 expirationDate:v6 selected:v7];
  return v8;
}

@end