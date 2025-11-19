@interface ICLBundlePersonaRecord
- (BOOL)isEqual:(id)a3;
- (ICLBundlePersonaRecord)init;
- (ICLBundlePersonaRecord)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICLBundlePersonaRecord

- (ICLBundlePersonaRecord)init
{
  v3.receiver = self;
  v3.super_class = ICLBundlePersonaRecord;
  return [(ICLBundlePersonaRecord *)&v3 init];
}

- (ICLBundlePersonaRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = ICLBundlePersonaRecord;
  v5 = [(ICLBundlePersonaRecord *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataContainerURL"];
    dataContainerURL = v5->_dataContainerURL;
    v5->_dataContainerURL = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"groupContainerURLs"];
    groupContainerURLs = v5->_groupContainerURLs;
    v5->_groupContainerURLs = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"environmentVariables"];
    environmentVariables = v5->_environmentVariables;
    v5->_environmentVariables = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICLBundlePersonaRecord *)self dataContainerURL];
  [v4 encodeObject:v5 forKey:@"dataContainerURL"];

  v6 = [(ICLBundlePersonaRecord *)self groupContainerURLs];
  [v4 encodeObject:v6 forKey:@"groupContainerURLs"];

  v7 = [(ICLBundlePersonaRecord *)self environmentVariables];
  [v4 encodeObject:v7 forKey:@"environmentVariables"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ICLBundlePersonaRecord *)self dataContainerURL];
  v7 = [v6 copyWithZone:a3];
  [v5 setDataContainerURL:v7];

  v8 = [(ICLBundlePersonaRecord *)self groupContainerURLs];
  v9 = [v8 copyWithZone:a3];
  [v5 setGroupContainerURLs:v9];

  v10 = [(ICLBundlePersonaRecord *)self environmentVariables];
  v11 = [v10 copyWithZone:a3];
  [v5 setEnvironmentVariables:v11];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ICLBundlePersonaRecord *)self dataContainerURL];
      v7 = [(ICLBundlePersonaRecord *)v5 dataContainerURL];
      v8 = MICompareObjects(v6, v7);

      if (v8)
      {
        v9 = [(ICLBundlePersonaRecord *)self groupContainerURLs];
        v10 = [(ICLBundlePersonaRecord *)v5 groupContainerURLs];
        v11 = MICompareObjects(v9, v10);

        if (v11)
        {
          v12 = [(ICLBundlePersonaRecord *)self environmentVariables];
          v13 = [(ICLBundlePersonaRecord *)v5 environmentVariables];
          v14 = MICompareObjects(v12, v13);

          if (v14)
          {
            v15 = 1;
LABEL_19:

            goto LABEL_20;
          }

          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
LABEL_18:
            v15 = 0;
            goto LABEL_19;
          }
        }

        else if (gLogHandle && *(gLogHandle + 44) < 3)
        {
          goto LABEL_18;
        }
      }

      else if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_18;
      }

      MOLogWrite();
      goto LABEL_18;
    }

    v15 = 0;
  }

LABEL_20:

  return v15;
}

- (unint64_t)hash
{
  v3 = [(ICLBundlePersonaRecord *)self dataContainerURL];
  v4 = [v3 hash];

  v5 = [(ICLBundlePersonaRecord *)self groupContainerURLs];
  v6 = [v5 hash] ^ v4;

  v7 = [(ICLBundlePersonaRecord *)self environmentVariables];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICLBundlePersonaRecord *)self dataContainerURL];
  v7 = [v6 path];
  v8 = [(ICLBundlePersonaRecord *)self groupContainerURLs];
  v9 = [(ICLBundlePersonaRecord *)self environmentVariables];
  v10 = [v3 stringWithFormat:@"<%@: dataContainerURL: %@ groupContainerURLs: %@ environmentVariables: %@>", v5, v7, v8, v9];

  return v10;
}

@end