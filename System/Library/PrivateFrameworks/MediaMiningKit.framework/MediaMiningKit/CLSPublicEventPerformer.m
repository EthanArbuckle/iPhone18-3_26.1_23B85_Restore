@interface CLSPublicEventPerformer
- (CLSPublicEventPerformer)initWithCoder:(id)a3;
- (CLSPublicEventPerformer)initWithLocalizedName:(id)a3 iTunesIdentifier:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  localizedName = self->_localizedName;
  v5 = a3;
  [v5 encodeObject:localizedName forKey:@"name"];
  [v5 encodeObject:self->_iTunesIdentifier forKey:@"iTunesIdentifier"];
}

- (CLSPublicEventPerformer)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iTunesIdentifier"];

  v7 = [(CLSPublicEventPerformer *)self initWithLocalizedName:v5 iTunesIdentifier:v6];
  return v7;
}

- (CLSPublicEventPerformer)initWithLocalizedName:(id)a3 iTunesIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CLSPublicEventPerformer;
  v9 = [(CLSPublicEventPerformer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localizedName, a3);
    objc_storeStrong(&v10->_iTunesIdentifier, a4);
  }

  return v10;
}

@end