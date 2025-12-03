@interface DMFOSUpdate
- (BOOL)isEqual:(id)equal;
- (DMFOSUpdate)initWithCoder:(id)coder;
- (DMFOSUpdate)initWithProductKey:(id)key humanReadableName:(id)name productName:(id)productName version:(id)version build:(id)build downloadSize:(unint64_t)size installSize:(unint64_t)installSize isCritical:(BOOL)self0 restartRequired:(BOOL)self1 allowsInstallLater:(BOOL)self2 isSplat:(BOOL)self3 supplementalBuild:(id)self4 supplementalVersionExtra:(id)self5;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFOSUpdate

- (DMFOSUpdate)initWithProductKey:(id)key humanReadableName:(id)name productName:(id)productName version:(id)version build:(id)build downloadSize:(unint64_t)size installSize:(unint64_t)installSize isCritical:(BOOL)self0 restartRequired:(BOOL)self1 allowsInstallLater:(BOOL)self2 isSplat:(BOOL)self3 supplementalBuild:(id)self4 supplementalVersionExtra:(id)self5
{
  keyCopy = key;
  nameCopy = name;
  productNameCopy = productName;
  versionCopy = version;
  buildCopy = build;
  supplementalBuildCopy = supplementalBuild;
  extraCopy = extra;
  v44.receiver = self;
  v44.super_class = DMFOSUpdate;
  v27 = [(DMFOSUpdate *)&v44 init];
  if (v27)
  {
    v28 = [keyCopy copy];
    productKey = v27->_productKey;
    v27->_productKey = v28;

    v30 = [nameCopy copy];
    humanReadableName = v27->_humanReadableName;
    v27->_humanReadableName = v30;

    v32 = [productNameCopy copy];
    productName = v27->_productName;
    v27->_productName = v32;

    v34 = [versionCopy copy];
    version = v27->_version;
    v27->_version = v34;

    v36 = [buildCopy copy];
    build = v27->_build;
    v27->_build = v36;

    v27->_downloadSize = size;
    v27->_installSize = installSize;
    v27->_isCritical = critical;
    v27->_restartRequired = required;
    v27->_allowsInstallLater = later;
    v27->_isSplat = splat;
    v38 = [supplementalBuildCopy copy];
    supplementalBuild = v27->_supplementalBuild;
    v27->_supplementalBuild = v38;

    v40 = [extraCopy copy];
    supplementalVersionExtra = v27->_supplementalVersionExtra;
    v27->_supplementalVersionExtra = v40;
  }

  return v27;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = objc_alloc(objc_opt_class());
  productKey = [(DMFOSUpdate *)self productKey];
  humanReadableName = [(DMFOSUpdate *)self humanReadableName];
  productName = [(DMFOSUpdate *)self productName];
  version = [(DMFOSUpdate *)self version];
  build = [(DMFOSUpdate *)self build];
  downloadSize = [(DMFOSUpdate *)self downloadSize];
  installSize = [(DMFOSUpdate *)self installSize];
  isCritical = [(DMFOSUpdate *)self isCritical];
  restartRequired = [(DMFOSUpdate *)self restartRequired];
  allowsInstallLater = [(DMFOSUpdate *)self allowsInstallLater];
  isSplat = [(DMFOSUpdate *)self isSplat];
  supplementalBuild = [(DMFOSUpdate *)self supplementalBuild];
  supplementalVersionExtra = [(DMFOSUpdate *)self supplementalVersionExtra];
  BYTE3(v16) = isSplat;
  BYTE2(v16) = allowsInstallLater;
  BYTE1(v16) = restartRequired;
  LOBYTE(v16) = isCritical;
  v14 = [v20 initWithProductKey:productKey humanReadableName:humanReadableName productName:productName version:version build:build downloadSize:downloadSize installSize:installSize isCritical:v16 restartRequired:supplementalBuild allowsInstallLater:supplementalVersionExtra isSplat:? supplementalBuild:? supplementalVersionExtra:?];

  return v14;
}

- (DMFOSUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = DMFOSUpdate;
  v5 = [(DMFOSUpdate *)&v34 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"productKey"];
    productKey = v5->_productKey;
    v5->_productKey = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"humanReadableName"];
    humanReadableName = v5->_humanReadableName;
    v5->_humanReadableName = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"productName"];
    productName = v5->_productName;
    v5->_productName = v13;

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"version"];
    version = v5->_version;
    v5->_version = v16;

    v18 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"build"];
    build = v5->_build;
    v5->_build = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadSize"];
    v5->_downloadSize = [v21 unsignedIntegerValue];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installSize"];
    v5->_installSize = [v22 unsignedIntegerValue];

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isCritical"];
    v5->_isCritical = [v23 BOOLValue];

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"restartRequired"];
    v5->_restartRequired = [v24 BOOLValue];

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowsInstallLater"];
    v5->_allowsInstallLater = [v25 BOOLValue];

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isSplat"];
    v5->_isSplat = [v26 BOOLValue];

    v27 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"supplementalBuild"];
    supplementalBuild = v5->_supplementalBuild;
    v5->_supplementalBuild = v28;

    v30 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"supplementalVersionExtra"];
    supplementalVersionExtra = v5->_supplementalVersionExtra;
    v5->_supplementalVersionExtra = v31;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  productKey = [(DMFOSUpdate *)self productKey];
  [coderCopy encodeObject:productKey forKey:@"productKey"];

  humanReadableName = [(DMFOSUpdate *)self humanReadableName];
  [coderCopy encodeObject:humanReadableName forKey:@"humanReadableName"];

  productName = [(DMFOSUpdate *)self productName];
  [coderCopy encodeObject:productName forKey:@"productName"];

  version = [(DMFOSUpdate *)self version];
  [coderCopy encodeObject:version forKey:@"version"];

  build = [(DMFOSUpdate *)self build];
  [coderCopy encodeObject:build forKey:@"build"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFOSUpdate downloadSize](self, "downloadSize")}];
  [coderCopy encodeObject:v10 forKey:@"downloadSize"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFOSUpdate installSize](self, "installSize")}];
  [coderCopy encodeObject:v11 forKey:@"installSize"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFOSUpdate isCritical](self, "isCritical")}];
  [coderCopy encodeObject:v12 forKey:@"isCritical"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFOSUpdate restartRequired](self, "restartRequired")}];
  [coderCopy encodeObject:v13 forKey:@"restartRequired"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFOSUpdate allowsInstallLater](self, "allowsInstallLater")}];
  [coderCopy encodeObject:v14 forKey:@"allowsInstallLater"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFOSUpdate isSplat](self, "isSplat")}];
  [coderCopy encodeObject:v15 forKey:@"isSplat"];

  supplementalBuild = [(DMFOSUpdate *)self supplementalBuild];
  [coderCopy encodeObject:supplementalBuild forKey:@"supplementalBuild"];

  supplementalVersionExtra = [(DMFOSUpdate *)self supplementalVersionExtra];
  [coderCopy encodeObject:supplementalVersionExtra forKey:@"supplementalVersionExtra"];
}

- (unint64_t)hash
{
  productKey = [(DMFOSUpdate *)self productKey];
  v4 = [productKey hash];
  humanReadableName = [(DMFOSUpdate *)self humanReadableName];
  v6 = [humanReadableName hash] ^ v4;
  productName = [(DMFOSUpdate *)self productName];
  v8 = [productName hash];
  version = [(DMFOSUpdate *)self version];
  v10 = v6 ^ v8 ^ [version hash];
  build = [(DMFOSUpdate *)self build];
  v12 = [build hash];
  v13 = v12 ^ [(DMFOSUpdate *)self downloadSize];
  v14 = v10 ^ v13 ^ [(DMFOSUpdate *)self installSize];
  isCritical = [(DMFOSUpdate *)self isCritical];
  v16 = isCritical ^ [(DMFOSUpdate *)self restartRequired];
  v17 = v14 ^ v16 ^ [(DMFOSUpdate *)self allowsInstallLater];
  isSplat = [(DMFOSUpdate *)self isSplat];
  supplementalBuild = [(DMFOSUpdate *)self supplementalBuild];
  v20 = isSplat ^ [supplementalBuild hash];
  supplementalVersionExtra = [(DMFOSUpdate *)self supplementalVersionExtra];
  v22 = v20 ^ [supplementalVersionExtra hash];

  return v17 ^ v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v34 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      productKey = [(DMFOSUpdate *)self productKey];
      productKey2 = [(DMFOSUpdate *)v5 productKey];
      v8 = productKey;
      v9 = productKey2;
      if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
      {
        v34 = 0;
      }

      else
      {
        humanReadableName = [(DMFOSUpdate *)self humanReadableName];
        humanReadableName2 = [(DMFOSUpdate *)v5 humanReadableName];
        v13 = humanReadableName;
        v14 = humanReadableName2;
        if (v13 | v14 && (v15 = [v13 isEqual:v14], v14, v13, !v15))
        {
          v34 = 0;
        }

        else
        {
          productName = [(DMFOSUpdate *)self productName];
          productName2 = [(DMFOSUpdate *)v5 productName];
          v18 = productName;
          v53 = productName2;
          if (v18 | v53 && (v19 = [v18 isEqual:v53], v53, v18, !v19))
          {
            v34 = 0;
          }

          else
          {
            v50 = v18;
            version = [(DMFOSUpdate *)self version];
            version2 = [(DMFOSUpdate *)v5 version];
            v22 = version;
            v51 = v22;
            v52 = version2;
            if (__PAIR128__(v52, v22) == 0 || (v23 = [v22 isEqual:v52], v52, v22, v23))
            {
              build = [(DMFOSUpdate *)self build];
              build2 = [(DMFOSUpdate *)v5 build];
              v26 = build;
              v48 = build2;
              v49 = v26;
              if (v26 | v48 && (v27 = [v26 isEqual:v48], v48, v49, !v27))
              {
                v34 = 0;
                v18 = v50;
                v22 = v51;
              }

              else
              {
                downloadSize = [(DMFOSUpdate *)self downloadSize];
                v22 = v51;
                if (downloadSize == [(DMFOSUpdate *)v5 downloadSize]&& (v29 = [(DMFOSUpdate *)self installSize], v29 == [(DMFOSUpdate *)v5 installSize]) && (v30 = [(DMFOSUpdate *)self isCritical], v30 == [(DMFOSUpdate *)v5 isCritical]) && (v31 = [(DMFOSUpdate *)self restartRequired], v31 == [(DMFOSUpdate *)v5 restartRequired]) && (v32 = [(DMFOSUpdate *)self allowsInstallLater], v32 == [(DMFOSUpdate *)v5 allowsInstallLater]) && (v33 = [(DMFOSUpdate *)self isSplat], v33 == [(DMFOSUpdate *)v5 isSplat]))
                {
                  supplementalBuild = [(DMFOSUpdate *)self supplementalBuild];
                  supplementalBuild2 = [(DMFOSUpdate *)v5 supplementalBuild];
                  v38 = supplementalBuild;
                  v39 = supplementalBuild2;
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
                    supplementalVersionExtra = [(DMFOSUpdate *)v5 supplementalVersionExtra];
                    if (v42 | supplementalVersionExtra)
                    {
                      v44 = supplementalVersionExtra;
                      v45 = [v42 isEqual:supplementalVersionExtra];
                      supplementalVersionExtra = v44;
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
  productKey = [(DMFOSUpdate *)self productKey];
  v5 = [productKey length];

  if (v5)
  {
    productKey2 = [(DMFOSUpdate *)self productKey];
    [v3 appendFormat:@"\n\tProduct Key                : “%@”", productKey2];
  }

  humanReadableName = [(DMFOSUpdate *)self humanReadableName];
  v8 = [humanReadableName length];

  if (v8)
  {
    humanReadableName2 = [(DMFOSUpdate *)self humanReadableName];
    [v3 appendFormat:@"\n\tHuman Readable Name        : “%@”", humanReadableName2];
  }

  productName = [(DMFOSUpdate *)self productName];
  v11 = [productName length];

  if (v11)
  {
    productName2 = [(DMFOSUpdate *)self productName];
    [v3 appendFormat:@"\n\tProduct Name               : “%@”", productName2];
  }

  version = [(DMFOSUpdate *)self version];
  v14 = [version length];

  if (v14)
  {
    version2 = [(DMFOSUpdate *)self version];
    [v3 appendFormat:@"\n\tVersion                    : “%@”", version2];
  }

  build = [(DMFOSUpdate *)self build];
  v17 = [build length];

  if (v17)
  {
    build2 = [(DMFOSUpdate *)self build];
    [v3 appendFormat:@"\n\tBuild                      : “%@”", build2];
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
  supplementalBuild = [(DMFOSUpdate *)self supplementalBuild];
  v24 = [supplementalBuild length];

  if (v24)
  {
    supplementalBuild2 = [(DMFOSUpdate *)self supplementalBuild];
    [v3 appendFormat:@"\n\tSupplemental Build         : “%@”", supplementalBuild2];
  }

  supplementalVersionExtra = [(DMFOSUpdate *)self supplementalVersionExtra];
  v27 = [supplementalVersionExtra length];

  if (v27)
  {
    supplementalVersionExtra2 = [(DMFOSUpdate *)self supplementalVersionExtra];
    [v3 appendFormat:@"\n\tSupplemental Version Extra : “%@”", supplementalVersionExtra2];
  }

  [v3 appendString:@"\n}>"];
  v29 = [v3 copy];

  return v29;
}

@end