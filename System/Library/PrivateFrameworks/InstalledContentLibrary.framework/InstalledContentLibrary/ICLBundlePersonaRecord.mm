@interface ICLBundlePersonaRecord
- (BOOL)isEqual:(id)equal;
- (ICLBundlePersonaRecord)init;
- (ICLBundlePersonaRecord)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICLBundlePersonaRecord

- (ICLBundlePersonaRecord)init
{
  v3.receiver = self;
  v3.super_class = ICLBundlePersonaRecord;
  return [(ICLBundlePersonaRecord *)&v3 init];
}

- (ICLBundlePersonaRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = ICLBundlePersonaRecord;
  v5 = [(ICLBundlePersonaRecord *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataContainerURL"];
    dataContainerURL = v5->_dataContainerURL;
    v5->_dataContainerURL = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"groupContainerURLs"];
    groupContainerURLs = v5->_groupContainerURLs;
    v5->_groupContainerURLs = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"environmentVariables"];
    environmentVariables = v5->_environmentVariables;
    v5->_environmentVariables = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dataContainerURL = [(ICLBundlePersonaRecord *)self dataContainerURL];
  [coderCopy encodeObject:dataContainerURL forKey:@"dataContainerURL"];

  groupContainerURLs = [(ICLBundlePersonaRecord *)self groupContainerURLs];
  [coderCopy encodeObject:groupContainerURLs forKey:@"groupContainerURLs"];

  environmentVariables = [(ICLBundlePersonaRecord *)self environmentVariables];
  [coderCopy encodeObject:environmentVariables forKey:@"environmentVariables"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  dataContainerURL = [(ICLBundlePersonaRecord *)self dataContainerURL];
  v7 = [dataContainerURL copyWithZone:zone];
  [v5 setDataContainerURL:v7];

  groupContainerURLs = [(ICLBundlePersonaRecord *)self groupContainerURLs];
  v9 = [groupContainerURLs copyWithZone:zone];
  [v5 setGroupContainerURLs:v9];

  environmentVariables = [(ICLBundlePersonaRecord *)self environmentVariables];
  v11 = [environmentVariables copyWithZone:zone];
  [v5 setEnvironmentVariables:v11];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      dataContainerURL = [(ICLBundlePersonaRecord *)self dataContainerURL];
      dataContainerURL2 = [(ICLBundlePersonaRecord *)v5 dataContainerURL];
      v8 = MICompareObjects(dataContainerURL, dataContainerURL2);

      if (v8)
      {
        groupContainerURLs = [(ICLBundlePersonaRecord *)self groupContainerURLs];
        groupContainerURLs2 = [(ICLBundlePersonaRecord *)v5 groupContainerURLs];
        v11 = MICompareObjects(groupContainerURLs, groupContainerURLs2);

        if (v11)
        {
          environmentVariables = [(ICLBundlePersonaRecord *)self environmentVariables];
          environmentVariables2 = [(ICLBundlePersonaRecord *)v5 environmentVariables];
          v14 = MICompareObjects(environmentVariables, environmentVariables2);

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
  dataContainerURL = [(ICLBundlePersonaRecord *)self dataContainerURL];
  v4 = [dataContainerURL hash];

  groupContainerURLs = [(ICLBundlePersonaRecord *)self groupContainerURLs];
  v6 = [groupContainerURLs hash] ^ v4;

  environmentVariables = [(ICLBundlePersonaRecord *)self environmentVariables];
  v8 = [environmentVariables hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  dataContainerURL = [(ICLBundlePersonaRecord *)self dataContainerURL];
  path = [dataContainerURL path];
  groupContainerURLs = [(ICLBundlePersonaRecord *)self groupContainerURLs];
  environmentVariables = [(ICLBundlePersonaRecord *)self environmentVariables];
  v10 = [v3 stringWithFormat:@"<%@: dataContainerURL: %@ groupContainerURLs: %@ environmentVariables: %@>", v5, path, groupContainerURLs, environmentVariables];

  return v10;
}

@end