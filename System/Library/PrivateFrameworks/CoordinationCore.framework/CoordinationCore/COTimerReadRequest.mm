@interface COTimerReadRequest
+ (id)acceptableResponses;
- (COTimerReadRequest)initWithAccessory:(id)accessory;
- (COTimerReadRequest)initWithAccessoryUniqueIdentifier:(id)identifier requiresFilter:(BOOL)filter;
- (COTimerReadRequest)initWithCoder:(id)coder;
- (id)initForMerge;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COTimerReadRequest

- (COTimerReadRequest)initWithAccessoryUniqueIdentifier:(id)identifier requiresFilter:(BOOL)filter
{
  identifierCopy = identifier;
  v8 = [(COMeshCommand *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accessoryUniqueIdentifier, identifier);
    v9->_requiresFilter = filter;
  }

  return v9;
}

- (COTimerReadRequest)initWithAccessory:(id)accessory
{
  uniqueIdentifier = [accessory uniqueIdentifier];
  v5 = [(COTimerReadRequest *)self initWithAccessoryUniqueIdentifier:uniqueIdentifier];

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

- (COTimerReadRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = COTimerReadRequest;
  v5 = [(COMeshCommand *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"accessory"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
      accessoryUniqueIdentifier = v5->_accessoryUniqueIdentifier;
      v5->_accessoryUniqueIdentifier = v6;
    }

    v5->_requiresFilter = [coderCopy containsValueForKey:@"filtered"];
    v5->_isForMerge = [coderCopy containsValueForKey:@"merge"];
    if ([coderCopy containsValueForKey:@"etag"])
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"etag"];
      eTag = v5->_eTag;
      v5->_eTag = v8;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = COTimerReadRequest;
  [(COMeshCommand *)&v8 encodeWithCoder:coderCopy];
  accessoryUniqueIdentifier = [(COTimerReadRequest *)self accessoryUniqueIdentifier];
  if (accessoryUniqueIdentifier)
  {
    [coderCopy encodeObject:accessoryUniqueIdentifier forKey:@"accessory"];
  }

  if ([(COTimerReadRequest *)self requiresFilter])
  {
    [coderCopy encodeObject:MEMORY[0x277CBEC38] forKey:@"filtered"];
  }

  if ([(COTimerReadRequest *)self isForMerge])
  {
    [coderCopy encodeObject:MEMORY[0x277CBEC38] forKey:@"merge"];
  }

  eTag = [(COTimerReadRequest *)self eTag];

  if (eTag)
  {
    eTag2 = [(COTimerReadRequest *)self eTag];
    [coderCopy encodeObject:eTag2 forKey:@"etag"];
  }
}

+ (id)acceptableResponses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

@end