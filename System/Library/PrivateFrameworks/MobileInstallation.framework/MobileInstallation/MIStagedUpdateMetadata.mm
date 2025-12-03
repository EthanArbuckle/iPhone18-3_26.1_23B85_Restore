@interface MIStagedUpdateMetadata
- (BOOL)isEqual:(id)equal;
- (MIStagedUpdateMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initForStagedIdentifier:(id)identifier diskUsage:(unint64_t)usage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MIStagedUpdateMetadata

- (id)initForStagedIdentifier:(id)identifier diskUsage:(unint64_t)usage
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = MIStagedUpdateMetadata;
  v8 = [(MIStagedUpdateMetadata *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_stagedIdentifier, identifier);
    v9->_stagedDiskUsage = usage;
  }

  return v9;
}

- (MIStagedUpdateMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = MIStagedUpdateMetadata;
  v5 = [(MIStagedUpdateMetadata *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagedIdentifier"];
    stagedIdentifier = v5->_stagedIdentifier;
    v5->_stagedIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagedDiskUsage"];
    v5->_stagedDiskUsage = [v8 unsignedLongLongValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stagedIdentifier = [(MIStagedUpdateMetadata *)self stagedIdentifier];
  [coderCopy encodeObject:stagedIdentifier forKey:@"stagedIdentifier"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MIStagedUpdateMetadata stagedDiskUsage](self, "stagedDiskUsage")}];
  [coderCopy encodeObject:v6 forKey:@"stagedDiskUsage"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  stagedIdentifier = [(MIStagedUpdateMetadata *)self stagedIdentifier];
  [v4 setStagedIdentifier:stagedIdentifier];

  [v4 setStagedDiskUsage:{-[MIStagedUpdateMetadata stagedDiskUsage](self, "stagedDiskUsage")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      stagedIdentifier = [(MIStagedUpdateMetadata *)self stagedIdentifier];
      stagedIdentifier2 = [(MIStagedUpdateMetadata *)v5 stagedIdentifier];
      v8 = MICompareObjects(stagedIdentifier, stagedIdentifier2);

      if (v8)
      {
        stagedDiskUsage = [(MIStagedUpdateMetadata *)self stagedDiskUsage];
        if (stagedDiskUsage == [(MIStagedUpdateMetadata *)v5 stagedDiskUsage])
        {
          v10 = 1;
LABEL_12:

          goto LABEL_13;
        }

        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          MOLogWrite();
        }
      }

      v10 = 0;
      goto LABEL_12;
    }

    v10 = 0;
  }

LABEL_13:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  stagedIdentifier = [(MIStagedUpdateMetadata *)self stagedIdentifier];
  v5 = [v3 stringWithFormat:@"[%@/%llu]", stagedIdentifier, -[MIStagedUpdateMetadata stagedDiskUsage](self, "stagedDiskUsage")];

  return v5;
}

@end