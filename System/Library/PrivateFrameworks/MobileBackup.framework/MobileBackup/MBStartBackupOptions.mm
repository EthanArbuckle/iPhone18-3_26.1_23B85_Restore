@interface MBStartBackupOptions
- (MBStartBackupOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MBStartBackupOptions

- (MBStartBackupOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = MBStartBackupOptions;
  v5 = [(MBStartBackupOptions *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cellularAccess"];
    [(MBStartBackupOptions *)v5 setCellularAccess:v6];

    -[MBStartBackupOptions setBackupPolicy:](v5, "setBackupPolicy:", [coderCopy decodeIntegerForKey:@"backupPolicy"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  cellularAccess = [(MBStartBackupOptions *)self cellularAccess];
  [coderCopy encodeObject:cellularAccess forKey:@"cellularAccess"];

  [coderCopy encodeInteger:-[MBStartBackupOptions backupPolicy](self forKey:{"backupPolicy"), @"backupPolicy"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  cellularAccess = [(MBStartBackupOptions *)self cellularAccess];
  [v4 setCellularAccess:cellularAccess];

  [v4 setBackupPolicy:{-[MBStartBackupOptions backupPolicy](self, "backupPolicy")}];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  cellularAccess = [(MBStartBackupOptions *)self cellularAccess];
  v7 = [v3 stringWithFormat:@"<%s: %p cellularAccess=%@; backupPolicy=%ld>", Name, self, cellularAccess, -[MBStartBackupOptions backupPolicy](self, "backupPolicy")];;

  return v7;
}

@end