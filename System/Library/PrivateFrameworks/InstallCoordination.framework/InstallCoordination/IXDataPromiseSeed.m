@interface IXDataPromiseSeed
- (IXDataPromiseSeed)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IXDataPromiseSeed

- (IXDataPromiseSeed)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IXDataPromiseSeed;
  v5 = [(IXDataPromiseSeed *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creatorIdentifier"];
    v5->_creatorIdentifier = [v8 unsignedIntegerValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalBytesNeededOnDisk"];
    v5->_totalBytesNeededOnDisk = [v11 unsignedLongLongValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IXDataPromiseSeed *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IXDataPromiseSeed creatorIdentifier](self, "creatorIdentifier")}];
  [v4 encodeObject:v6 forKey:@"creatorIdentifier"];

  v7 = [(IXDataPromiseSeed *)self uniqueIdentifier];
  [v4 encodeObject:v7 forKey:@"uniqueIdentifier"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IXDataPromiseSeed totalBytesNeededOnDisk](self, "totalBytesNeededOnDisk")}];
  [v4 encodeObject:v8 forKey:@"totalBytesNeededOnDisk"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(IXDataPromiseSeed *)self name];
  [v4 setName:v5];

  [v4 setCreatorIdentifier:{-[IXDataPromiseSeed creatorIdentifier](self, "creatorIdentifier")}];
  v6 = [(IXDataPromiseSeed *)self uniqueIdentifier];
  [v4 setUniqueIdentifier:v6];

  [v4 setTotalBytesNeededOnDisk:{-[IXDataPromiseSeed totalBytesNeededOnDisk](self, "totalBytesNeededOnDisk")}];
  return v4;
}

@end