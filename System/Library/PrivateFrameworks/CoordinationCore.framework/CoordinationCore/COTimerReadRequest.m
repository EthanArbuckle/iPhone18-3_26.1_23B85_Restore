@interface COTimerReadRequest
+ (id)acceptableResponses;
- (COTimerReadRequest)initWithAccessory:(id)a3;
- (COTimerReadRequest)initWithAccessoryUniqueIdentifier:(id)a3 requiresFilter:(BOOL)a4;
- (COTimerReadRequest)initWithCoder:(id)a3;
- (id)initForMerge;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COTimerReadRequest

- (COTimerReadRequest)initWithAccessoryUniqueIdentifier:(id)a3 requiresFilter:(BOOL)a4
{
  v7 = a3;
  v8 = [(COMeshCommand *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accessoryUniqueIdentifier, a3);
    v9->_requiresFilter = a4;
  }

  return v9;
}

- (COTimerReadRequest)initWithAccessory:(id)a3
{
  v4 = [a3 uniqueIdentifier];
  v5 = [(COTimerReadRequest *)self initWithAccessoryUniqueIdentifier:v4];

  return v5;
}

- (id)initForMerge
{
  result = [(COMeshCommand *)self init];
  if (result)
  {
    *(result + 17) = 0;
    *(result + 16) = 1;
  }

  return result;
}

- (COTimerReadRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = COTimerReadRequest;
  v5 = [(COMeshCommand *)&v11 initWithCoder:v4];
  if (v5)
  {
    if ([v4 containsValueForKey:@"accessory"])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
      accessoryUniqueIdentifier = v5->_accessoryUniqueIdentifier;
      v5->_accessoryUniqueIdentifier = v6;
    }

    v5->_requiresFilter = [v4 containsValueForKey:@"filtered"];
    v5->_isForMerge = [v4 containsValueForKey:@"merge"];
    if ([v4 containsValueForKey:@"etag"])
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"etag"];
      eTag = v5->_eTag;
      v5->_eTag = v8;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = COTimerReadRequest;
  [(COMeshCommand *)&v8 encodeWithCoder:v4];
  v5 = [(COTimerReadRequest *)self accessoryUniqueIdentifier];
  if (v5)
  {
    [v4 encodeObject:v5 forKey:@"accessory"];
  }

  if ([(COTimerReadRequest *)self requiresFilter])
  {
    [v4 encodeObject:MEMORY[0x277CBEC38] forKey:@"filtered"];
  }

  if ([(COTimerReadRequest *)self isForMerge])
  {
    [v4 encodeObject:MEMORY[0x277CBEC38] forKey:@"merge"];
  }

  v6 = [(COTimerReadRequest *)self eTag];

  if (v6)
  {
    v7 = [(COTimerReadRequest *)self eTag];
    [v4 encodeObject:v7 forKey:@"etag"];
  }
}

+ (id)acceptableResponses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

@end