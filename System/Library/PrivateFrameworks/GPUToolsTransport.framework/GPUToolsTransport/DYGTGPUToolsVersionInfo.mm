@interface DYGTGPUToolsVersionInfo
- (DYGTGPUToolsVersionInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DYGTGPUToolsVersionInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSDictionary *)self->_infoPlist copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSDictionary *)self->_versionPlist copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  *(v5 + 8) = self->_interposeVersionGL;
  *(v5 + 12) = self->_interposeVersionMetal;
  return v5;
}

- (DYGTGPUToolsVersionInfo)initWithCoder:(id)a3
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"infoPlist"];
    infoPlist = v5->_infoPlist;
    v5->_infoPlist = v9;

    v11 = objc_opt_class();
    v12 = [v4 decodeDictionaryWithKeysOfClass:v11 objectsOfClass:objc_opt_class() forKey:@"versionPlist"];
    versionPlist = v5->_versionPlist;
    v5->_versionPlist = v12;

    v5->_interposeVersionGL = [v4 decodeInt32ForKey:@"interposeVersion"];
    v5->_interposeVersionMetal = [v4 decodeInt32ForKey:@"interposeVersionMetal"];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  infoPlist = self->_infoPlist;
  v5 = a3;
  [v5 encodeObject:infoPlist forKey:@"infoPlist"];
  [v5 encodeObject:self->_versionPlist forKey:@"versionPlist"];
  [v5 encodeInt32:self->_interposeVersionGL forKey:@"interposeVersion"];
  [v5 encodeInt32:self->_interposeVersionMetal forKey:@"interposeVersionMetal"];
}

@end