@interface DYGTGPUToolsVersionInfo
- (DYGTGPUToolsVersionInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DYGTGPUToolsVersionInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSDictionary *)self->_infoPlist copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSDictionary *)self->_versionPlist copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  *(v5 + 8) = self->_interposeVersionGL;
  *(v5 + 12) = self->_interposeVersionMetal;
  return v5;
}

- (DYGTGPUToolsVersionInfo)initWithCoder:(id)coder
{
  v17[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = DYGTGPUToolsVersionInfo;
  v5 = [(DYGTGPUToolsVersionInfo *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"infoPlist"];
    infoPlist = v5->_infoPlist;
    v5->_infoPlist = v9;

    v11 = objc_opt_class();
    v12 = [coderCopy decodeDictionaryWithKeysOfClass:v11 objectsOfClass:objc_opt_class() forKey:@"versionPlist"];
    versionPlist = v5->_versionPlist;
    v5->_versionPlist = v12;

    v5->_interposeVersionGL = [coderCopy decodeInt32ForKey:@"interposeVersion"];
    v5->_interposeVersionMetal = [coderCopy decodeInt32ForKey:@"interposeVersionMetal"];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  infoPlist = self->_infoPlist;
  coderCopy = coder;
  [coderCopy encodeObject:infoPlist forKey:@"infoPlist"];
  [coderCopy encodeObject:self->_versionPlist forKey:@"versionPlist"];
  [coderCopy encodeInt32:self->_interposeVersionGL forKey:@"interposeVersion"];
  [coderCopy encodeInt32:self->_interposeVersionMetal forKey:@"interposeVersionMetal"];
}

@end