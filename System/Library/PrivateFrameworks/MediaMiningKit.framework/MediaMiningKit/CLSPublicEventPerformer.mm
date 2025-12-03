@interface CLSPublicEventPerformer
- (CLSPublicEventPerformer)initWithCoder:(id)coder;
- (CLSPublicEventPerformer)initWithLocalizedName:(id)name iTunesIdentifier:(id)identifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSPublicEventPerformer

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = CLSPublicEventPerformer;
  v4 = [(CLSPublicEventPerformer *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ localizedName: %@, localizedName: %@", v4, self->_localizedName, self->_iTunesIdentifier];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  localizedName = self->_localizedName;
  coderCopy = coder;
  [coderCopy encodeObject:localizedName forKey:@"name"];
  [coderCopy encodeObject:self->_iTunesIdentifier forKey:@"iTunesIdentifier"];
}

- (CLSPublicEventPerformer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iTunesIdentifier"];

  v7 = [(CLSPublicEventPerformer *)self initWithLocalizedName:v5 iTunesIdentifier:v6];
  return v7;
}

- (CLSPublicEventPerformer)initWithLocalizedName:(id)name iTunesIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = CLSPublicEventPerformer;
  v9 = [(CLSPublicEventPerformer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localizedName, name);
    objc_storeStrong(&v10->_iTunesIdentifier, identifier);
  }

  return v10;
}

@end