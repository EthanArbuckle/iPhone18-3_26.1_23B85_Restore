@interface MBDeviceTransferProgress
- (MBDeviceTransferProgress)init;
- (MBDeviceTransferProgress)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (MBDeviceTransferProgress)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MBDeviceTransferProgress;
  v5 = [(MBDeviceTransferProgress *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phaseDescription"];
    [(MBDeviceTransferProgress *)v5 setPhaseDescription:v6];

    -[MBDeviceTransferProgress setPhase:](v5, "setPhase:", [v4 decodeIntegerForKey:@"phase"]);
    [v4 decodeDoubleForKey:@"progress"];
    [(MBDeviceTransferProgress *)v5 setProgress:?];
    -[MBDeviceTransferProgress setMinutesRemaining:](v5, "setMinutesRemaining:", [v4 decodeIntegerForKey:@"minutesRemaining"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileTransferStartDate"];
    [(MBDeviceTransferProgress *)v5 setFileTransferStartDate:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"restoreStartDate"];
    [(MBDeviceTransferProgress *)v5 setRestoreStartDate:v8];

    -[MBDeviceTransferProgress setFilesTransferred:](v5, "setFilesTransferred:", [v4 decodeInt64ForKey:@"filesTransferred"]);
    -[MBDeviceTransferProgress setBytesTransferred:](v5, "setBytesTransferred:", [v4 decodeInt64ForKey:@"bytesTransferred"]);
    -[MBDeviceTransferProgress setTotalByteCount:](v5, "setTotalByteCount:", [v4 decodeInt64ForKey:@"totalByteCount"]);
    -[MBDeviceTransferProgress setTotalFileCount:](v5, "setTotalFileCount:", [v4 decodeInt64ForKey:@"totalFileCount"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(MBDeviceTransferProgress *)self phaseDescription];
  [v7 encodeObject:v4 forKey:@"phaseDescription"];

  [v7 encodeInteger:-[MBDeviceTransferProgress phase](self forKey:{"phase"), @"phase"}];
  [(MBDeviceTransferProgress *)self progress];
  [v7 encodeDouble:@"progress" forKey:?];
  [v7 encodeInteger:-[MBDeviceTransferProgress minutesRemaining](self forKey:{"minutesRemaining"), @"minutesRemaining"}];
  v5 = [(MBDeviceTransferProgress *)self fileTransferStartDate];
  [v7 encodeObject:v5 forKey:@"fileTransferStartDate"];

  v6 = [(MBDeviceTransferProgress *)self restoreStartDate];
  [v7 encodeObject:v6 forKey:@"restoreStartDate"];

  [v7 encodeInt64:-[MBDeviceTransferProgress filesTransferred](self forKey:{"filesTransferred"), @"filesTransferred"}];
  [v7 encodeInt64:-[MBDeviceTransferProgress bytesTransferred](self forKey:{"bytesTransferred"), @"bytesTransferred"}];
  [v7 encodeInt64:-[MBDeviceTransferProgress totalByteCount](self forKey:{"totalByteCount"), @"totalByteCount"}];
  [v7 encodeInt64:-[MBDeviceTransferProgress totalFileCount](self forKey:{"totalFileCount"), @"totalFileCount"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(MBDeviceTransferProgress *)self phaseDescription];
  v6 = [v5 copy];
  [v4 setPhaseDescription:v6];

  [v4 setPhase:{-[MBDeviceTransferProgress phase](self, "phase")}];
  [(MBDeviceTransferProgress *)self progress];
  [v4 setProgress:?];
  [v4 setMinutesRemaining:{-[MBDeviceTransferProgress minutesRemaining](self, "minutesRemaining")}];
  v7 = [(MBDeviceTransferProgress *)self fileTransferStartDate];
  [v4 setFileTransferStartDate:v7];

  v8 = [(MBDeviceTransferProgress *)self restoreStartDate];
  [v4 setRestoreStartDate:v8];

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
  v8 = [(MBDeviceTransferProgress *)self minutesRemaining];
  v9 = [(MBDeviceTransferProgress *)self filesTransferred];
  v10 = [(MBDeviceTransferProgress *)self bytesTransferred];
  v11 = [(MBDeviceTransferProgress *)self totalByteCount];
  v12 = [(MBDeviceTransferProgress *)self totalFileCount];
  v13 = [(MBDeviceTransferProgress *)self phaseDescription];
  v14 = [v3 stringWithFormat:@"<%s: %p progress=%.2f, minutesRemaining=%ld, filesTransferred=%llu, bytesTransferred=%llu, totalByteCount=%llu, totalFileCount=%llu, phase=%@>", Name, self, v7, v8, v9, v10, v11, v12, v13];;

  return v14;
}

@end