@interface DYDeviceInfo
- (BOOL)supportsCapabilitiesOfGraphicsAPI:(id)a3 allowedClass:(Class)a4;
- (DYDeviceInfo)initWithCoder:(id)a3;
- (NSString)descriptionForBugReport;
- (NSString)summaryForBugReport;
- (id)debugDescription;
- (id)descriptionWithProfileName:(id)a3 showingProductType:(BOOL)a4 showingPermanentIdentifier:(BOOL)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setMainScreenDescriptor:(id *)a3;
@end

@implementation DYDeviceInfo

- (DYDeviceInfo)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = DYDeviceInfo;
  v4 = [(DYDeviceInfo *)&v10 init];
  if (v4)
  {
    v4->_permanentIdentifier = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v4->_runtimeIdentifier = [a3 decodeInt64ForKey:@"runtimeIdentifier"];
    v4->_name = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v4->_productType = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    v4->_version = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    v4->_build = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"build"];
    v4->_platform = [a3 decodeInt32ForKey:@"platform"];
    v4->_metalVersion = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"metalVersion"];
    v4->_mainScreenDescriptor.width = [a3 decodeInt32ForKey:@"mainScreenResolution.width"];
    v4->_mainScreenDescriptor.height = [a3 decodeInt32ForKey:@"mainScreenResolution.height"];
    v4->_mainScreenDescriptor.scale = [a3 decodeInt32ForKey:@"mainScreenResolution.scale"];
    [a3 decodeDoubleForKey:@"mainScreenDescriptor.orientation"];
    v4->_mainScreenDescriptor.orientation = v5;
    v4->_mainScreenDescriptor.type = [a3 decodeInt32ForKey:@"mainScreenDescriptor.type"];
    v4->_supportedGraphicsAPIInfos = [a3 decodeObjectOfClasses:objc_msgSend(MEMORY[0x277D0AFD8] forKey:{"graphicsAPIInfosClassSet"), @"supportedGLProfileContextsInfo"}];
    if ([a3 containsValueForKey:@"nativePointerSize"])
    {
      v6 = [a3 decodeInt32ForKey:@"nativePointerSize"];
    }

    else
    {
      v6 = +[DYDeviceInfo defaultNativePointerSize];
    }

    v4->_nativePointerSize = v6;
    platform = v4->_platform;
    if (platform == 7)
    {
      v8 = 9;
      goto LABEL_9;
    }

    if (platform == 8)
    {
      v8 = 10;
LABEL_9:
      v4->_platform = v8;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYDeviceInfo;
  [(DYDeviceInfo *)&v3 dealloc];
}

- (id)descriptionWithProfileName:(id)a3 showingProductType:(BOOL)a4 showingPermanentIdentifier:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = v9;
  if (self->_name)
  {
    [v9 addObject:?];
  }

  if (!v6)
  {
    if (!self->_name)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ([(NSString *)self->_productType length])
  {
    [v10 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"(%@)", self->_productType)}];
  }

  if (self->_name || [(NSString *)self->_productType length])
  {
LABEL_10:
    [v10 addObject:@"-"];
  }

LABEL_11:
  if (a3)
  {
    [v10 addObject:a3];
    [v10 addObject:@"-"];
  }

  String = DYDevicePlatformGetString(self->_platform);
  if (String)
  {
    [v10 addObject:String];
  }

  if (self->_version)
  {
    [v10 addObject:?];
  }

  if (self->_build)
  {
    [v10 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"(%@)", self->_build)}];
  }

  if (v5 && [(NSString *)self->_permanentIdentifier length])
  {
    [v10 addObject:@"-"];
    [v10 addObject:self->_permanentIdentifier];
  }

  return [v10 componentsJoinedByString:@" "];
}

- (NSString)summaryForBugReport
{
  String = DYDevicePlatformGetString(self->_platform);
  version = self->_version;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@ %@ (%@)", self->_productType, String, version, self->_build];
}

- (NSString)descriptionForBugReport
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"%@\n", -[DYDeviceInfo description](self, "description")];
  if (self->_hostProductType)
  {
    [v3 appendFormat:@"Simulator host device: %@ - %@\n", self->_hostProductType, self->_hostVersion];
  }

  [v3 appendFormat:@"Metal version: %@\n", self->_metalVersion];
  if ([(NSArray *)self->_supportedGraphicsAPIInfos count])
  {
    [v3 appendString:@"Supported graphics APIs:\n"];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    supportedGraphicsAPIInfos = self->_supportedGraphicsAPIInfos;
    v5 = [(NSArray *)supportedGraphicsAPIInfos countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(supportedGraphicsAPIInfos);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            v10 = [v9 descriptionForBugReport];
          }

          else
          {
            v10 = [v9 description];
          }

          [v3 appendFormat:@"  %@\n", v10];
          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSArray *)supportedGraphicsAPIInfos countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)debugDescription
{
  v3.receiver = self;
  v3.super_class = DYDeviceInfo;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\trid=%llu\n\tpid=%@\n\tname=%@\n\tproductType=%@\nhostProductType=%@\tplatform=%d\n\tmetalVersion=%@\n\tversion=%@\n\thostVersion=%@\n\tbuild=%@\n\tnativePointerSize=%u\n\t_supportedGraphicsAPIInfos=%@", -[DYDeviceInfo debugDescription](&v3, sel_debugDescription), self->_runtimeIdentifier, -[NSString debugDescription](self->_permanentIdentifier, "debugDescription"), -[NSString debugDescription](self->_name, "debugDescription"), -[NSString debugDescription](self->_productType, "debugDescription"), -[NSString debugDescription](self->_hostProductType, "debugDescription"), self->_platform, -[NSString debugDescription](self->_metalVersion, "debugDescription"), -[NSString debugDescription](self->_version, "debugDescription"), -[NSString debugDescription](self->_hostVersion, "debugDescription"), -[NSString debugDescription](self->_build, "debugDescription"), self->_nativePointerSize, -[NSArray debugDescription](self->_supportedGraphicsAPIInfos, "debugDescription")];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_permanentIdentifier forKey:@"identifier"];
  [a3 encodeInt64:self->_runtimeIdentifier forKey:@"runtimeIdentifier"];
  [a3 encodeObject:self->_name forKey:@"name"];
  [a3 encodeObject:self->_productType forKey:@"productType"];
  [a3 encodeObject:self->_version forKey:@"version"];
  [a3 encodeObject:self->_build forKey:@"build"];
  [a3 encodeInt32:self->_platform forKey:@"platform"];
  [a3 encodeObject:self->_metalVersion forKey:@"metalVersion"];
  [a3 encodeInt32:self->_mainScreenDescriptor.width forKey:@"mainScreenResolution.width"];
  [a3 encodeInt32:self->_mainScreenDescriptor.height forKey:@"mainScreenResolution.height"];
  [a3 encodeInt32:self->_mainScreenDescriptor.scale forKey:@"mainScreenResolution.scale"];
  [a3 encodeDouble:@"mainScreenDescriptor.orientation" forKey:self->_mainScreenDescriptor.orientation];
  [a3 encodeInt32:self->_mainScreenDescriptor.type forKey:@"mainScreenDescriptor.type"];
  [a3 encodeObject:self->_supportedGraphicsAPIInfos forKey:@"supportedGLProfileContextsInfo"];
  nativePointerSize = self->_nativePointerSize;

  [a3 encodeInt32:nativePointerSize forKey:@"nativePointerSize"];
}

- (BOOL)supportsCapabilitiesOfGraphicsAPI:(id)a3 allowedClass:(Class)a4
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [DYDeviceInfo supportsCapabilitiesOfGraphicsAPI:allowedClass:];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(DYDeviceInfo *)self supportedGraphicsAPIInfos];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v10 supportsCapabilitiesOfGraphicsAPI:a3])
        {
          LOBYTE(v6) = 1;
          goto LABEL_13;
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setMainScreenDescriptor:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_mainScreenDescriptor.scale = *&a3->var3;
  *&self->_mainScreenDescriptor.orientation = v3;
}

@end