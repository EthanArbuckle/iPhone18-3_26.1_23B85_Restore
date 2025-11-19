@interface DMFOSUpdate
- (BOOL)isEqual:(id)a3;
- (DMFOSUpdate)initWithCoder:(id)a3;
- (DMFOSUpdate)initWithProductKey:(id)a3 humanReadableName:(id)a4 productName:(id)a5 version:(id)a6 build:(id)a7 downloadSize:(unint64_t)a8 installSize:(unint64_t)a9 isCritical:(BOOL)a10 restartRequired:(BOOL)a11 allowsInstallLater:(BOOL)a12 isSplat:(BOOL)a13 supplementalBuild:(id)a14 supplementalVersionExtra:(id)a15;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFOSUpdate

- (DMFOSUpdate)initWithProductKey:(id)a3 humanReadableName:(id)a4 productName:(id)a5 version:(id)a6 build:(id)a7 downloadSize:(unint64_t)a8 installSize:(unint64_t)a9 isCritical:(BOOL)a10 restartRequired:(BOOL)a11 allowsInstallLater:(BOOL)a12 isSplat:(BOOL)a13 supplementalBuild:(id)a14 supplementalVersionExtra:(id)a15
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a14;
  v26 = a15;
  v44.receiver = self;
  v44.super_class = DMFOSUpdate;
  v27 = [(DMFOSUpdate *)&v44 init];
  if (v27)
  {
    v28 = [v20 copy];
    productKey = v27->_productKey;
    v27->_productKey = v28;

    v30 = [v21 copy];
    humanReadableName = v27->_humanReadableName;
    v27->_humanReadableName = v30;

    v32 = [v22 copy];
    productName = v27->_productName;
    v27->_productName = v32;

    v34 = [v23 copy];
    version = v27->_version;
    v27->_version = v34;

    v36 = [v24 copy];
    build = v27->_build;
    v27->_build = v36;

    v27->_downloadSize = a8;
    v27->_installSize = a9;
    v27->_isCritical = a10;
    v27->_restartRequired = a11;
    v27->_allowsInstallLater = a12;
    v27->_isSplat = a13;
    v38 = [v25 copy];
    supplementalBuild = v27->_supplementalBuild;
    v27->_supplementalBuild = v38;

    v40 = [v26 copy];
    supplementalVersionExtra = v27->_supplementalVersionExtra;
    v27->_supplementalVersionExtra = v40;
  }

  return v27;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = objc_alloc(objc_opt_class());
  v19 = [(DMFOSUpdate *)self productKey];
  v18 = [(DMFOSUpdate *)self humanReadableName];
  v4 = [(DMFOSUpdate *)self productName];
  v5 = [(DMFOSUpdate *)self version];
  v6 = [(DMFOSUpdate *)self build];
  v17 = [(DMFOSUpdate *)self downloadSize];
  v7 = [(DMFOSUpdate *)self installSize];
  v8 = [(DMFOSUpdate *)self isCritical];
  v9 = [(DMFOSUpdate *)self restartRequired];
  v10 = [(DMFOSUpdate *)self allowsInstallLater];
  v11 = [(DMFOSUpdate *)self isSplat];
  v12 = [(DMFOSUpdate *)self supplementalBuild];
  v13 = [(DMFOSUpdate *)self supplementalVersionExtra];
  BYTE3(v16) = v11;
  BYTE2(v16) = v10;
  BYTE1(v16) = v9;
  LOBYTE(v16) = v8;
  v14 = [v20 initWithProductKey:v19 humanReadableName:v18 productName:v4 version:v5 build:v6 downloadSize:v17 installSize:v7 isCritical:v16 restartRequired:v12 allowsInstallLater:v13 isSplat:? supplementalBuild:? supplementalVersionExtra:?];

  return v14;
}

- (DMFOSUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = DMFOSUpdate;
  v5 = [(DMFOSUpdate *)&v34 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"productKey"];
    productKey = v5->_productKey;
    v5->_productKey = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"humanReadableName"];
    humanReadableName = v5->_humanReadableName;
    v5->_humanReadableName = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"productName"];
    productName = v5->_productName;
    v5->_productName = v13;

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"version"];
    version = v5->_version;
    v5->_version = v16;

    v18 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"build"];
    build = v5->_build;
    v5->_build = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadSize"];
    v5->_downloadSize = [v21 unsignedIntegerValue];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installSize"];
    v5->_installSize = [v22 unsignedIntegerValue];

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isCritical"];
    v5->_isCritical = [v23 BOOLValue];

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"restartRequired"];
    v5->_restartRequired = [v24 BOOLValue];

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsInstallLater"];
    v5->_allowsInstallLater = [v25 BOOLValue];

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isSplat"];
    v5->_isSplat = [v26 BOOLValue];

    v27 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"supplementalBuild"];
    supplementalBuild = v5->_supplementalBuild;
    v5->_supplementalBuild = v28;

    v30 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"supplementalVersionExtra"];
    supplementalVersionExtra = v5->_supplementalVersionExtra;
    v5->_supplementalVersionExtra = v31;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DMFOSUpdate *)self productKey];
  [v4 encodeObject:v5 forKey:@"productKey"];

  v6 = [(DMFOSUpdate *)self humanReadableName];
  [v4 encodeObject:v6 forKey:@"humanReadableName"];

  v7 = [(DMFOSUpdate *)self productName];
  [v4 encodeObject:v7 forKey:@"productName"];

  v8 = [(DMFOSUpdate *)self version];
  [v4 encodeObject:v8 forKey:@"version"];

  v9 = [(DMFOSUpdate *)self build];
  [v4 encodeObject:v9 forKey:@"build"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFOSUpdate downloadSize](self, "downloadSize")}];
  [v4 encodeObject:v10 forKey:@"downloadSize"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFOSUpdate installSize](self, "installSize")}];
  [v4 encodeObject:v11 forKey:@"installSize"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFOSUpdate isCritical](self, "isCritical")}];
  [v4 encodeObject:v12 forKey:@"isCritical"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFOSUpdate restartRequired](self, "restartRequired")}];
  [v4 encodeObject:v13 forKey:@"restartRequired"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFOSUpdate allowsInstallLater](self, "allowsInstallLater")}];
  [v4 encodeObject:v14 forKey:@"allowsInstallLater"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFOSUpdate isSplat](self, "isSplat")}];
  [v4 encodeObject:v15 forKey:@"isSplat"];

  v16 = [(DMFOSUpdate *)self supplementalBuild];
  [v4 encodeObject:v16 forKey:@"supplementalBuild"];

  v17 = [(DMFOSUpdate *)self supplementalVersionExtra];
  [v4 encodeObject:v17 forKey:@"supplementalVersionExtra"];
}

- (unint64_t)hash
{
  v3 = [(DMFOSUpdate *)self productKey];
  v4 = [v3 hash];
  v5 = [(DMFOSUpdate *)self humanReadableName];
  v6 = [v5 hash] ^ v4;
  v7 = [(DMFOSUpdate *)self productName];
  v8 = [v7 hash];
  v9 = [(DMFOSUpdate *)self version];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(DMFOSUpdate *)self build];
  v12 = [v11 hash];
  v13 = v12 ^ [(DMFOSUpdate *)self downloadSize];
  v14 = v10 ^ v13 ^ [(DMFOSUpdate *)self installSize];
  v15 = [(DMFOSUpdate *)self isCritical];
  v16 = v15 ^ [(DMFOSUpdate *)self restartRequired];
  v17 = v14 ^ v16 ^ [(DMFOSUpdate *)self allowsInstallLater];
  v18 = [(DMFOSUpdate *)self isSplat];
  v19 = [(DMFOSUpdate *)self supplementalBuild];
  v20 = v18 ^ [v19 hash];
  v21 = [(DMFOSUpdate *)self supplementalVersionExtra];
  v22 = v20 ^ [v21 hash];

  return v17 ^ v22;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v34 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DMFOSUpdate *)self productKey];
      v7 = [(DMFOSUpdate *)v5 productKey];
      v8 = v6;
      v9 = v7;
      if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
      {
        v34 = 0;
      }

      else
      {
        v11 = [(DMFOSUpdate *)self humanReadableName];
        v12 = [(DMFOSUpdate *)v5 humanReadableName];
        v13 = v11;
        v14 = v12;
        if (v13 | v14 && (v15 = [v13 isEqual:v14], v14, v13, !v15))
        {
          v34 = 0;
        }

        else
        {
          v16 = [(DMFOSUpdate *)self productName];
          v17 = [(DMFOSUpdate *)v5 productName];
          v18 = v16;
          v53 = v17;
          if (v18 | v53 && (v19 = [v18 isEqual:v53], v53, v18, !v19))
          {
            v34 = 0;
          }

          else
          {
            v50 = v18;
            v20 = [(DMFOSUpdate *)self version];
            v21 = [(DMFOSUpdate *)v5 version];
            v22 = v20;
            v51 = v22;
            v52 = v21;
            if (__PAIR128__(v52, v22) == 0 || (v23 = [v22 isEqual:v52], v52, v22, v23))
            {
              v24 = [(DMFOSUpdate *)self build];
              v25 = [(DMFOSUpdate *)v5 build];
              v26 = v24;
              v48 = v25;
              v49 = v26;
              if (v26 | v48 && (v27 = [v26 isEqual:v48], v48, v49, !v27))
              {
                v34 = 0;
                v18 = v50;
                v22 = v51;
              }

              else
              {
                v28 = [(DMFOSUpdate *)self downloadSize];
                v22 = v51;
                if (v28 == [(DMFOSUpdate *)v5 downloadSize]&& (v29 = [(DMFOSUpdate *)self installSize], v29 == [(DMFOSUpdate *)v5 installSize]) && (v30 = [(DMFOSUpdate *)self isCritical], v30 == [(DMFOSUpdate *)v5 isCritical]) && (v31 = [(DMFOSUpdate *)self restartRequired], v31 == [(DMFOSUpdate *)v5 restartRequired]) && (v32 = [(DMFOSUpdate *)self allowsInstallLater], v32 == [(DMFOSUpdate *)v5 allowsInstallLater]) && (v33 = [(DMFOSUpdate *)self isSplat], v33 == [(DMFOSUpdate *)v5 isSplat]))
                {
                  v36 = [(DMFOSUpdate *)self supplementalBuild];
                  v37 = [(DMFOSUpdate *)v5 supplementalBuild];
                  v38 = v36;
                  v39 = v37;
                  v47 = v39;
                  if (v38 | v39 && (v40 = v39, v41 = [v38 isEqual:v39], v40, v38, !v41))
                  {
                    v34 = 0;
                    v18 = v50;
                    v22 = v51;
                  }

                  else
                  {
                    v42 = [(DMFOSUpdate *)self supplementalVersionExtra:v38];
                    v43 = [(DMFOSUpdate *)v5 supplementalVersionExtra];
                    if (v42 | v43)
                    {
                      v44 = v43;
                      v45 = [v42 isEqual:v43];
                      v43 = v44;
                      v34 = v45;
                    }

                    else
                    {
                      v34 = 1;
                    }

                    v18 = v50;
                    v22 = v51;

                    v38 = v46;
                  }
                }

                else
                {
                  v34 = 0;
                  v18 = v50;
                }
              }
            }

            else
            {
              v34 = 0;
              v18 = v50;
            }
          }
        }
      }
    }

    else
    {
      v34 = 0;
    }
  }

  return v34;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {", objc_opt_class(), self];
  v4 = [(DMFOSUpdate *)self productKey];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(DMFOSUpdate *)self productKey];
    [v3 appendFormat:@"\n\tProduct Key                : “%@”", v6];
  }

  v7 = [(DMFOSUpdate *)self humanReadableName];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(DMFOSUpdate *)self humanReadableName];
    [v3 appendFormat:@"\n\tHuman Readable Name        : “%@”", v9];
  }

  v10 = [(DMFOSUpdate *)self productName];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [(DMFOSUpdate *)self productName];
    [v3 appendFormat:@"\n\tProduct Name               : “%@”", v12];
  }

  v13 = [(DMFOSUpdate *)self version];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [(DMFOSUpdate *)self version];
    [v3 appendFormat:@"\n\tVersion                    : “%@”", v15];
  }

  v16 = [(DMFOSUpdate *)self build];
  v17 = [v16 length];

  if (v17)
  {
    v18 = [(DMFOSUpdate *)self build];
    [v3 appendFormat:@"\n\tBuild                      : “%@”", v18];
  }

  [v3 appendFormat:@"\n\tDownload Size              : %lu", -[DMFOSUpdate downloadSize](self, "downloadSize")];
  [v3 appendFormat:@"\n\tInstall Size               : %lu", -[DMFOSUpdate installSize](self, "installSize")];
  if ([(DMFOSUpdate *)self isCritical])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  [v3 appendFormat:@"\n\tIs Critical                : %@", v19];
  if ([(DMFOSUpdate *)self restartRequired])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  [v3 appendFormat:@"\n\tRestart Required           : %@", v20];
  if ([(DMFOSUpdate *)self allowsInstallLater])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  [v3 appendFormat:@"\n\tAllows Install Later       : %@", v21];
  if ([(DMFOSUpdate *)self isSplat])
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  [v3 appendFormat:@"\n\tIs Splat                   : %@", v22];
  v23 = [(DMFOSUpdate *)self supplementalBuild];
  v24 = [v23 length];

  if (v24)
  {
    v25 = [(DMFOSUpdate *)self supplementalBuild];
    [v3 appendFormat:@"\n\tSupplemental Build         : “%@”", v25];
  }

  v26 = [(DMFOSUpdate *)self supplementalVersionExtra];
  v27 = [v26 length];

  if (v27)
  {
    v28 = [(DMFOSUpdate *)self supplementalVersionExtra];
    [v3 appendFormat:@"\n\tSupplemental Version Extra : “%@”", v28];
  }

  [v3 appendString:@"\n}>"];
  v29 = [v3 copy];

  return v29;
}

@end