@interface IXPromisedStreamingZipTransferSeed
- (IXPromisedStreamingZipTransferSeed)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXPromisedStreamingZipTransferSeed

- (IXPromisedStreamingZipTransferSeed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = IXPromisedStreamingZipTransferSeed;
  v5 = [(IXOwnedDataPromiseSeed *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"archiveBytesConsumed"];
    v5->_archiveBytesConsumed = [v6 unsignedLongLongValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"archiveSizeBytes"];
    v5->_archiveSizeBytes = [v7 unsignedLongLongValue];

    v8 = [coderCopy decodePropertyListForKey:@"szOptions"];
    szOptions = v5->_szOptions;
    v5->_szOptions = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = IXPromisedStreamingZipTransferSeed;
  coderCopy = coder;
  [(IXOwnedDataPromiseSeed *)&v8 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IXPromisedStreamingZipTransferSeed archiveBytesConsumed](self, "archiveBytesConsumed", v8.receiver, v8.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"archiveBytesConsumed"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IXPromisedStreamingZipTransferSeed archiveSizeBytes](self, "archiveSizeBytes")}];
  [coderCopy encodeObject:v6 forKey:@"archiveSizeBytes"];

  szOptions = [(IXPromisedStreamingZipTransferSeed *)self szOptions];
  [coderCopy encodeObject:szOptions forKey:@"szOptions"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = IXPromisedStreamingZipTransferSeed;
  v4 = [(IXOwnedDataPromiseSeed *)&v7 copyWithZone:zone];
  [v4 setArchiveBytesConsumed:{-[IXPromisedStreamingZipTransferSeed archiveBytesConsumed](self, "archiveBytesConsumed")}];
  [v4 setArchiveSizeBytes:{-[IXPromisedStreamingZipTransferSeed archiveSizeBytes](self, "archiveSizeBytes")}];
  szOptions = [(IXPromisedStreamingZipTransferSeed *)self szOptions];
  [v4 setSzOptions:szOptions];

  return v4;
}

@end