@interface IXPromisedStreamingZipTransferSeed
- (IXPromisedStreamingZipTransferSeed)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IXPromisedStreamingZipTransferSeed

- (IXPromisedStreamingZipTransferSeed)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IXPromisedStreamingZipTransferSeed;
  v5 = [(IXOwnedDataPromiseSeed *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"archiveBytesConsumed"];
    v5->_archiveBytesConsumed = [v6 unsignedLongLongValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"archiveSizeBytes"];
    v5->_archiveSizeBytes = [v7 unsignedLongLongValue];

    v8 = [v4 decodePropertyListForKey:@"szOptions"];
    szOptions = v5->_szOptions;
    v5->_szOptions = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = IXPromisedStreamingZipTransferSeed;
  v4 = a3;
  [(IXOwnedDataPromiseSeed *)&v8 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IXPromisedStreamingZipTransferSeed archiveBytesConsumed](self, "archiveBytesConsumed", v8.receiver, v8.super_class)}];
  [v4 encodeObject:v5 forKey:@"archiveBytesConsumed"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IXPromisedStreamingZipTransferSeed archiveSizeBytes](self, "archiveSizeBytes")}];
  [v4 encodeObject:v6 forKey:@"archiveSizeBytes"];

  v7 = [(IXPromisedStreamingZipTransferSeed *)self szOptions];
  [v4 encodeObject:v7 forKey:@"szOptions"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = IXPromisedStreamingZipTransferSeed;
  v4 = [(IXOwnedDataPromiseSeed *)&v7 copyWithZone:a3];
  [v4 setArchiveBytesConsumed:{-[IXPromisedStreamingZipTransferSeed archiveBytesConsumed](self, "archiveBytesConsumed")}];
  [v4 setArchiveSizeBytes:{-[IXPromisedStreamingZipTransferSeed archiveSizeBytes](self, "archiveSizeBytes")}];
  v5 = [(IXPromisedStreamingZipTransferSeed *)self szOptions];
  [v4 setSzOptions:v5];

  return v4;
}

@end