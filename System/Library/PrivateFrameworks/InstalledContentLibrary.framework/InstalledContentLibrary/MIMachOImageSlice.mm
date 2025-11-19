@interface MIMachOImageSlice
- (MIMachOImageSlice)initWithCPUType:(int)a3 cpuSubtype:(int)a4 platform:(unsigned int)a5 sdkVersion:(unsigned int)a6 minOSVersion:(unsigned int)a7;
- (id)description;
@end

@implementation MIMachOImageSlice

- (MIMachOImageSlice)initWithCPUType:(int)a3 cpuSubtype:(int)a4 platform:(unsigned int)a5 sdkVersion:(unsigned int)a6 minOSVersion:(unsigned int)a7
{
  v7 = *&a7;
  v8 = *&a6;
  v9 = *&a5;
  v10 = *&a4;
  v11 = *&a3;
  v16.receiver = self;
  v16.super_class = MIMachOImageSlice;
  v12 = [(MIMachOImageSlice *)&v16 init];
  v13 = v12;
  if (v12)
  {
    [(MIMachOImageSlice *)v12 setCpuType:v11];
    [(MIMachOImageSlice *)v13 setCpuSubtype:v10];
    [(MIMachOImageSlice *)v13 setPlatform:v9];
    [(MIMachOImageSlice *)v13 setSdkVersion:v8];
    [(MIMachOImageSlice *)v13 setMinOSVersion:v7];
    v14 = [MEMORY[0x1E696AEC0] stringWithCString:macho_arch_name_for_cpu_type(v11 encoding:{v10), 4}];
    [(MIMachOImageSlice *)v13 setArchNameString:v14];
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = MIMachOStringForPlatform([(MIMachOImageSlice *)self platform]);
  v7 = [v3 stringWithFormat:@"<%@ platform:%@ sdkVersion:%u minOSVersion:%u>", v5, v6, -[MIMachOImageSlice sdkVersion](self, "sdkVersion"), -[MIMachOImageSlice minOSVersion](self, "minOSVersion")];

  return v7;
}

@end