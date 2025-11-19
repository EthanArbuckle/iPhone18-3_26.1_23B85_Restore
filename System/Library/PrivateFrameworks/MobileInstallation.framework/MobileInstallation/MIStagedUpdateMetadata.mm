@interface MIStagedUpdateMetadata
- (BOOL)isEqual:(id)a3;
- (MIStagedUpdateMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initForStagedIdentifier:(id)a3 diskUsage:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MIStagedUpdateMetadata

- (id)initForStagedIdentifier:(id)a3 diskUsage:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MIStagedUpdateMetadata;
  v8 = [(MIStagedUpdateMetadata *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_stagedIdentifier, a3);
    v9->_stagedDiskUsage = a4;
  }

  return v9;
}

- (MIStagedUpdateMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MIStagedUpdateMetadata;
  v5 = [(MIStagedUpdateMetadata *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagedIdentifier"];
    stagedIdentifier = v5->_stagedIdentifier;
    v5->_stagedIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagedDiskUsage"];
    v5->_stagedDiskUsage = [v8 unsignedLongLongValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MIStagedUpdateMetadata *)self stagedIdentifier];
  [v4 encodeObject:v5 forKey:@"stagedIdentifier"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MIStagedUpdateMetadata stagedDiskUsage](self, "stagedDiskUsage")}];
  [v4 encodeObject:v6 forKey:@"stagedDiskUsage"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MIStagedUpdateMetadata *)self stagedIdentifier];
  [v4 setStagedIdentifier:v5];

  [v4 setStagedDiskUsage:{-[MIStagedUpdateMetadata stagedDiskUsage](self, "stagedDiskUsage")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIStagedUpdateMetadata *)self stagedIdentifier];
      v7 = [(MIStagedUpdateMetadata *)v5 stagedIdentifier];
      v8 = MICompareObjects(v6, v7);

      if (v8)
      {
        v9 = [(MIStagedUpdateMetadata *)self stagedDiskUsage];
        if (v9 == [(MIStagedUpdateMetadata *)v5 stagedDiskUsage])
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
  v4 = [(MIStagedUpdateMetadata *)self stagedIdentifier];
  v5 = [v3 stringWithFormat:@"[%@/%llu]", v4, -[MIStagedUpdateMetadata stagedDiskUsage](self, "stagedDiskUsage")];

  return v5;
}

@end