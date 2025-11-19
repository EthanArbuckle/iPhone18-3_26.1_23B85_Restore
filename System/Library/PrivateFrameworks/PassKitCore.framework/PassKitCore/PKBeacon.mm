@interface PKBeacon
- (PKBeacon)initWithCoder:(id)a3;
- (id)description;
- (id)proximityUUIDAsString;
- (void)encodeWithCoder:(id)a3;
- (void)setProximityUUIDWithString:(id)a3;
@end

@implementation PKBeacon

- (void)setProximityUUIDWithString:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [[v4 alloc] initWithUUIDString:v5];

  [(PKBeacon *)self setProximityUUID:v6];
}

- (id)proximityUUIDAsString
{
  v2 = [(PKBeacon *)self proximityUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PKBeacon *)self proximityUUID];
  v5 = [v4 UUIDString];
  v6 = [(PKBeacon *)self major];
  v7 = [v6 stringValue];
  v8 = [(PKBeacon *)self minor];
  v9 = [v8 stringValue];
  v10 = [v3 stringWithFormat:@"(uuid:%@ major:%@ minor:%@)", v5, v7, v9];

  return v10;
}

- (PKBeacon)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKBeacon;
  v5 = [(PKBeacon *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proximityUUID"];
    [(PKBeacon *)v5 setProximityUUID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"major"];
    [(PKBeacon *)v5 setMajor:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minor"];
    [(PKBeacon *)v5 setMinor:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(PKBeacon *)v5 setName:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relevantText"];
    [(PKBeacon *)v5 setRelevantText:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKBeacon *)self proximityUUID];
  [v4 encodeObject:v5 forKey:@"proximityUUID"];

  v6 = [(PKBeacon *)self major];
  [v4 encodeObject:v6 forKey:@"major"];

  v7 = [(PKBeacon *)self minor];
  [v4 encodeObject:v7 forKey:@"minor"];

  v8 = [(PKBeacon *)self name];
  [v4 encodeObject:v8 forKey:@"name"];

  v9 = [(PKBeacon *)self relevantText];
  [v4 encodeObject:v9 forKey:@"relevantText"];
}

@end