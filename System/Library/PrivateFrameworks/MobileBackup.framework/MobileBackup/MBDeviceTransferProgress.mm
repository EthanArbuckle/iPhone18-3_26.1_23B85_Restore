@interface MBDeviceTransferProgress
- (MBDeviceTransferProgress)init;
- (MBDeviceTransferProgress)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MBDeviceTransferProgress

- (MBDeviceTransferProgress)init
{
  v5.receiver = self;
  v5.super_class = MBDeviceTransferProgress;
  v2 = [(MBDeviceTransferProgress *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MBDeviceTransferProgress *)v2 setProgress:0.0];
    [(MBDeviceTransferProgress *)v3 setMinutesRemaining:-1];
    [(MBDeviceTransferProgress *)v3 setFilesTransferred:0];
    [(MBDeviceTransferProgress *)v3 setBytesTransferred:0];
    [(MBDeviceTransferProgress *)v3 setTotalByteCount:0];
    [(MBDeviceTransferProgress *)v3 setTotalFileCount:0];
  }

  return v3;
}

- (MBDeviceTransferProgress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = MBDeviceTransferProgress;
  v5 = [(MBDeviceTransferProgress *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phaseDescription"];
    [(MBDeviceTransferProgress *)v5 setPhaseDescription:v6];

    -[MBDeviceTransferProgress setPhase:](v5, "setPhase:", [coderCopy decodeIntegerForKey:@"phase"]);
    [coderCopy decodeDoubleForKey:@"progress"];
    [(MBDeviceTransferProgress *)v5 setProgress:?];
    -[MBDeviceTransferProgress setMinutesRemaining:](v5, "setMinutesRemaining:", [coderCopy decodeIntegerForKey:@"minutesRemaining"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileTransferStartDate"];
    [(MBDeviceTransferProgress *)v5 setFileTransferStartDate:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"restoreStartDate"];
    [(MBDeviceTransferProgress *)v5 setRestoreStartDate:v8];

    -[MBDeviceTransferProgress setFilesTransferred:](v5, "setFilesTransferred:", [coderCopy decodeInt64ForKey:@"filesTransferred"]);
    -[MBDeviceTransferProgress setBytesTransferred:](v5, "setBytesTransferred:", [coderCopy decodeInt64ForKey:@"bytesTransferred"]);
    -[MBDeviceTransferProgress setTotalByteCount:](v5, "setTotalByteCount:", [coderCopy decodeInt64ForKey:@"totalByteCount"]);
    -[MBDeviceTransferProgress setTotalFileCount:](v5, "setTotalFileCount:", [coderCopy decodeInt64ForKey:@"totalFileCount"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  phaseDescription = [(MBDeviceTransferProgress *)self phaseDescription];
  [coderCopy encodeObject:phaseDescription forKey:@"phaseDescription"];

  [coderCopy encodeInteger:-[MBDeviceTransferProgress phase](self forKey:{"phase"), @"phase"}];
  [(MBDeviceTransferProgress *)self progress];
  [coderCopy encodeDouble:@"progress" forKey:?];
  [coderCopy encodeInteger:-[MBDeviceTransferProgress minutesRemaining](self forKey:{"minutesRemaining"), @"minutesRemaining"}];
  fileTransferStartDate = [(MBDeviceTransferProgress *)self fileTransferStartDate];
  [coderCopy encodeObject:fileTransferStartDate forKey:@"fileTransferStartDate"];

  restoreStartDate = [(MBDeviceTransferProgress *)self restoreStartDate];
  [coderCopy encodeObject:restoreStartDate forKey:@"restoreStartDate"];

  [coderCopy encodeInt64:-[MBDeviceTransferProgress filesTransferred](self forKey:{"filesTransferred"), @"filesTransferred"}];
  [coderCopy encodeInt64:-[MBDeviceTransferProgress bytesTransferred](self forKey:{"bytesTransferred"), @"bytesTransferred"}];
  [coderCopy encodeInt64:-[MBDeviceTransferProgress totalByteCount](self forKey:{"totalByteCount"), @"totalByteCount"}];
  [coderCopy encodeInt64:-[MBDeviceTransferProgress totalFileCount](self forKey:{"totalFileCount"), @"totalFileCount"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  phaseDescription = [(MBDeviceTransferProgress *)self phaseDescription];
  v6 = [phaseDescription copy];
  [v4 setPhaseDescription:v6];

  [v4 setPhase:{-[MBDeviceTransferProgress phase](self, "phase")}];
  [(MBDeviceTransferProgress *)self progress];
  [v4 setProgress:?];
  [v4 setMinutesRemaining:{-[MBDeviceTransferProgress minutesRemaining](self, "minutesRemaining")}];
  fileTransferStartDate = [(MBDeviceTransferProgress *)self fileTransferStartDate];
  [v4 setFileTransferStartDate:fileTransferStartDate];

  restoreStartDate = [(MBDeviceTransferProgress *)self restoreStartDate];
  [v4 setRestoreStartDate:restoreStartDate];

  [v4 setFilesTransferred:{-[MBDeviceTransferProgress filesTransferred](self, "filesTransferred")}];
  [v4 setBytesTransferred:{-[MBDeviceTransferProgress bytesTransferred](self, "bytesTransferred")}];
  [v4 setTotalByteCount:{-[MBDeviceTransferProgress totalByteCount](self, "totalByteCount")}];
  [v4 setTotalFileCount:{-[MBDeviceTransferProgress totalFileCount](self, "totalFileCount")}];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  [(MBDeviceTransferProgress *)self progress];
  v7 = v6;
  minutesRemaining = [(MBDeviceTransferProgress *)self minutesRemaining];
  filesTransferred = [(MBDeviceTransferProgress *)self filesTransferred];
  bytesTransferred = [(MBDeviceTransferProgress *)self bytesTransferred];
  totalByteCount = [(MBDeviceTransferProgress *)self totalByteCount];
  totalFileCount = [(MBDeviceTransferProgress *)self totalFileCount];
  phaseDescription = [(MBDeviceTransferProgress *)self phaseDescription];
  v14 = [v3 stringWithFormat:@"<%s: %p progress=%.2f, minutesRemaining=%ld, filesTransferred=%llu, bytesTransferred=%llu, totalByteCount=%llu, totalFileCount=%llu, phase=%@>", Name, self, v7, minutesRemaining, filesTransferred, bytesTransferred, totalByteCount, totalFileCount, phaseDescription];;

  return v14;
}

@end