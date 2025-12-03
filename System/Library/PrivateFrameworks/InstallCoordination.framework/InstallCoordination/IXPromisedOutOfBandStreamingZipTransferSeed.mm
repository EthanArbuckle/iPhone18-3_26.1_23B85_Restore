@interface IXPromisedOutOfBandStreamingZipTransferSeed
- (IXPromisedOutOfBandStreamingZipTransferSeed)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXPromisedOutOfBandStreamingZipTransferSeed

- (IXPromisedOutOfBandStreamingZipTransferSeed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = IXPromisedOutOfBandStreamingZipTransferSeed;
  v5 = [(IXOpaqueDataPromiseSeed *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"archiveBytesConsumed"];
    v5->_archiveBytesConsumed = [v6 unsignedLongLongValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"archiveSizeBytes"];
    v5->_archiveSizeBytes = [v7 unsignedLongLongValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extractionPath"];
    extractionPath = v5->_extractionPath;
    v5->_extractionPath = v8;

    v10 = [coderCopy decodePropertyListForKey:@"szOptions"];
    szOptions = v5->_szOptions;
    v5->_szOptions = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = IXPromisedOutOfBandStreamingZipTransferSeed;
  coderCopy = coder;
  [(IXOpaqueDataPromiseSeed *)&v9 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IXPromisedOutOfBandStreamingZipTransferSeed archiveBytesConsumed](self, "archiveBytesConsumed", v9.receiver, v9.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"archiveBytesConsumed"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IXPromisedOutOfBandStreamingZipTransferSeed archiveSizeBytes](self, "archiveSizeBytes")}];
  [coderCopy encodeObject:v6 forKey:@"archiveSizeBytes"];

  extractionPath = [(IXPromisedOutOfBandStreamingZipTransferSeed *)self extractionPath];
  [coderCopy encodeObject:extractionPath forKey:@"extractionPath"];

  szOptions = [(IXPromisedOutOfBandStreamingZipTransferSeed *)self szOptions];
  [coderCopy encodeObject:szOptions forKey:@"szOptions"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = IXPromisedOutOfBandStreamingZipTransferSeed;
  v4 = [(IXOpaqueDataPromiseSeed *)&v8 copyWithZone:zone];
  [v4 setArchiveBytesConsumed:{-[IXPromisedOutOfBandStreamingZipTransferSeed archiveBytesConsumed](self, "archiveBytesConsumed")}];
  [v4 setArchiveSizeBytes:{-[IXPromisedOutOfBandStreamingZipTransferSeed archiveSizeBytes](self, "archiveSizeBytes")}];
  extractionPath = [(IXPromisedOutOfBandStreamingZipTransferSeed *)self extractionPath];
  [v4 setExtractionPath:extractionPath];

  szOptions = [(IXPromisedOutOfBandStreamingZipTransferSeed *)self szOptions];
  [v4 setSzOptions:szOptions];

  return v4;
}

@end