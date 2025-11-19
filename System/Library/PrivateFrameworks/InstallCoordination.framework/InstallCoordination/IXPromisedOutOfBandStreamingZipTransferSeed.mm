@interface IXPromisedOutOfBandStreamingZipTransferSeed
- (IXPromisedOutOfBandStreamingZipTransferSeed)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IXPromisedOutOfBandStreamingZipTransferSeed

- (IXPromisedOutOfBandStreamingZipTransferSeed)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IXPromisedOutOfBandStreamingZipTransferSeed;
  v5 = [(IXOpaqueDataPromiseSeed *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"archiveBytesConsumed"];
    v5->_archiveBytesConsumed = [v6 unsignedLongLongValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"archiveSizeBytes"];
    v5->_archiveSizeBytes = [v7 unsignedLongLongValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extractionPath"];
    extractionPath = v5->_extractionPath;
    v5->_extractionPath = v8;

    v10 = [v4 decodePropertyListForKey:@"szOptions"];
    szOptions = v5->_szOptions;
    v5->_szOptions = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = IXPromisedOutOfBandStreamingZipTransferSeed;
  v4 = a3;
  [(IXOpaqueDataPromiseSeed *)&v9 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IXPromisedOutOfBandStreamingZipTransferSeed archiveBytesConsumed](self, "archiveBytesConsumed", v9.receiver, v9.super_class)}];
  [v4 encodeObject:v5 forKey:@"archiveBytesConsumed"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IXPromisedOutOfBandStreamingZipTransferSeed archiveSizeBytes](self, "archiveSizeBytes")}];
  [v4 encodeObject:v6 forKey:@"archiveSizeBytes"];

  v7 = [(IXPromisedOutOfBandStreamingZipTransferSeed *)self extractionPath];
  [v4 encodeObject:v7 forKey:@"extractionPath"];

  v8 = [(IXPromisedOutOfBandStreamingZipTransferSeed *)self szOptions];
  [v4 encodeObject:v8 forKey:@"szOptions"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = IXPromisedOutOfBandStreamingZipTransferSeed;
  v4 = [(IXOpaqueDataPromiseSeed *)&v8 copyWithZone:a3];
  [v4 setArchiveBytesConsumed:{-[IXPromisedOutOfBandStreamingZipTransferSeed archiveBytesConsumed](self, "archiveBytesConsumed")}];
  [v4 setArchiveSizeBytes:{-[IXPromisedOutOfBandStreamingZipTransferSeed archiveSizeBytes](self, "archiveSizeBytes")}];
  v5 = [(IXPromisedOutOfBandStreamingZipTransferSeed *)self extractionPath];
  [v4 setExtractionPath:v5];

  v6 = [(IXPromisedOutOfBandStreamingZipTransferSeed *)self szOptions];
  [v4 setSzOptions:v6];

  return v4;
}

@end