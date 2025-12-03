@interface PKBeacon
- (PKBeacon)initWithCoder:(id)coder;
- (id)description;
- (id)proximityUUIDAsString;
- (void)encodeWithCoder:(id)coder;
- (void)setProximityUUIDWithString:(id)string;
@end

@implementation PKBeacon

- (void)setProximityUUIDWithString:(id)string
{
  v4 = MEMORY[0x1E696AFB0];
  stringCopy = string;
  v6 = [[v4 alloc] initWithUUIDString:stringCopy];

  [(PKBeacon *)self setProximityUUID:v6];
}

- (id)proximityUUIDAsString
{
  proximityUUID = [(PKBeacon *)self proximityUUID];
  uUIDString = [proximityUUID UUIDString];

  return uUIDString;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  proximityUUID = [(PKBeacon *)self proximityUUID];
  uUIDString = [proximityUUID UUIDString];
  major = [(PKBeacon *)self major];
  stringValue = [major stringValue];
  minor = [(PKBeacon *)self minor];
  stringValue2 = [minor stringValue];
  v10 = [v3 stringWithFormat:@"(uuid:%@ major:%@ minor:%@)", uUIDString, stringValue, stringValue2];

  return v10;
}

- (PKBeacon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKBeacon;
  v5 = [(PKBeacon *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proximityUUID"];
    [(PKBeacon *)v5 setProximityUUID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"major"];
    [(PKBeacon *)v5 setMajor:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minor"];
    [(PKBeacon *)v5 setMinor:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(PKBeacon *)v5 setName:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relevantText"];
    [(PKBeacon *)v5 setRelevantText:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  proximityUUID = [(PKBeacon *)self proximityUUID];
  [coderCopy encodeObject:proximityUUID forKey:@"proximityUUID"];

  major = [(PKBeacon *)self major];
  [coderCopy encodeObject:major forKey:@"major"];

  minor = [(PKBeacon *)self minor];
  [coderCopy encodeObject:minor forKey:@"minor"];

  name = [(PKBeacon *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  relevantText = [(PKBeacon *)self relevantText];
  [coderCopy encodeObject:relevantText forKey:@"relevantText"];
}

@end