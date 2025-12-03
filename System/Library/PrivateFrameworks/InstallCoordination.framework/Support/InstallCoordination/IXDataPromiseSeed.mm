@interface IXDataPromiseSeed
- (IXDataPromiseSeed)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXDataPromiseSeed

- (IXDataPromiseSeed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = IXDataPromiseSeed;
  v5 = [(IXDataPromiseSeed *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creatorIdentifier"];
    v5->_creatorIdentifier = [v8 unsignedIntegerValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalBytesNeededOnDisk"];
    v5->_totalBytesNeededOnDisk = [v11 unsignedLongLongValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(IXDataPromiseSeed *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  v6 = [NSNumber numberWithUnsignedInteger:[(IXDataPromiseSeed *)self creatorIdentifier]];
  [coderCopy encodeObject:v6 forKey:@"creatorIdentifier"];

  uniqueIdentifier = [(IXDataPromiseSeed *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];

  v8 = [NSNumber numberWithUnsignedLongLong:[(IXDataPromiseSeed *)self totalBytesNeededOnDisk]];
  [coderCopy encodeObject:v8 forKey:@"totalBytesNeededOnDisk"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  name = [(IXDataPromiseSeed *)self name];
  [v4 setName:name];

  [v4 setCreatorIdentifier:{-[IXDataPromiseSeed creatorIdentifier](self, "creatorIdentifier")}];
  uniqueIdentifier = [(IXDataPromiseSeed *)self uniqueIdentifier];
  [v4 setUniqueIdentifier:uniqueIdentifier];

  [v4 setTotalBytesNeededOnDisk:{-[IXDataPromiseSeed totalBytesNeededOnDisk](self, "totalBytesNeededOnDisk")}];
  return v4;
}

@end