@interface MBStartBackupOptions
- (MBStartBackupOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MBStartBackupOptions

- (MBStartBackupOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MBStartBackupOptions;
  v5 = [(MBStartBackupOptions *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cellularAccess"];
    [(MBStartBackupOptions *)v5 setCellularAccess:v6];

    -[MBStartBackupOptions setBackupPolicy:](v5, "setBackupPolicy:", [v4 decodeIntegerForKey:@"backupPolicy"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(MBStartBackupOptions *)self cellularAccess];
  [v5 encodeObject:v4 forKey:@"cellularAccess"];

  [v5 encodeInteger:-[MBStartBackupOptions backupPolicy](self forKey:{"backupPolicy"), @"backupPolicy"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(MBStartBackupOptions *)self cellularAccess];
  [v4 setCellularAccess:v5];

  [v4 setBackupPolicy:{-[MBStartBackupOptions backupPolicy](self, "backupPolicy")}];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  v6 = [(MBStartBackupOptions *)self cellularAccess];
  v7 = [v3 stringWithFormat:@"<%s: %p cellularAccess=%@; backupPolicy=%ld>", Name, self, v6, -[MBStartBackupOptions backupPolicy](self, "backupPolicy")];;

  return v7;
}

@end