@interface ICLStashedAppRecord
- (BOOL)isEqual:(id)a3;
- (ICLStashedAppRecord)initWithCoder:(id)a3;
- (ICLStashedAppRecord)initWithLegacyRecordDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)legacyRecordDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICLStashedAppRecord

- (ICLStashedAppRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICLStashedAppRecord;
  v5 = [(ICLAppRecord *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stashedAtTimestamp"];
    stashedAtTimestamp = v5->_stashedAtTimestamp;
    v5->_stashedAtTimestamp = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stashOriginalInstallTimestamp"];
    stashOriginalInstallTimestamp = v5->_stashOriginalInstallTimestamp;
    v5->_stashOriginalInstallTimestamp = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = ICLStashedAppRecord;
  v4 = a3;
  [(ICLAppRecord *)&v7 encodeWithCoder:v4];
  v5 = [(ICLStashedAppRecord *)self stashedAtTimestamp:v7.receiver];
  [v4 encodeObject:v5 forKey:@"stashedAtTimestamp"];

  v6 = [(ICLStashedAppRecord *)self stashOriginalInstallTimestamp];
  [v4 encodeObject:v6 forKey:@"stashOriginalInstallTimestamp"];
}

- (ICLStashedAppRecord)initWithLegacyRecordDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ICLStashedAppRecord;
  v5 = [(ICLAppRecord *)&v13 initWithLegacyRecordDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"StashedAtTimestamp"];
    objc_opt_class();
    v7 = v6;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    [(ICLStashedAppRecord *)v5 setStashedAtTimestamp:v8];
    v9 = [v4 objectForKeyedSubscript:@"StashOriginalInstallTimestamp"];
    objc_opt_class();
    v10 = v9;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    [(ICLStashedAppRecord *)v5 setStashOriginalInstallTimestamp:v11];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = ICLStashedAppRecord;
  v5 = [(ICLAppRecord *)&v11 copyWithZone:?];
  v6 = [(ICLStashedAppRecord *)self stashedAtTimestamp];
  v7 = [v6 copyWithZone:a3];
  [v5 setStashedAtTimestamp:v7];

  v8 = [(ICLStashedAppRecord *)self stashOriginalInstallTimestamp];
  v9 = [v8 copyWithZone:a3];
  [v5 setStashOriginalInstallTimestamp:v9];

  return v5;
}

- (id)legacyRecordDictionary
{
  v3 = objc_opt_new();
  v9.receiver = self;
  v9.super_class = ICLStashedAppRecord;
  v4 = [(ICLAppRecord *)&v9 legacyRecordDictionary];
  [v3 addEntriesFromDictionary:v4];

  v5 = [(ICLStashedAppRecord *)self stashedAtTimestamp];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"StashedAtTimestamp"];
  }

  v6 = [(ICLStashedAppRecord *)self stashOriginalInstallTimestamp];
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"StashOriginalInstallTimestamp"];
  }

  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14.receiver = self;
      v14.super_class = ICLStashedAppRecord;
      if ([(ICLAppRecord *)&v14 isEqual:v4])
      {
        v5 = v4;
        v6 = [(ICLStashedAppRecord *)self stashedAtTimestamp];
        v7 = [(ICLStashedAppRecord *)v5 stashedAtTimestamp];
        v8 = MICompareObjects(v6, v7);

        if (v8)
        {
          v9 = [(ICLStashedAppRecord *)self stashOriginalInstallTimestamp];
          v10 = [(ICLStashedAppRecord *)v5 stashOriginalInstallTimestamp];
          v11 = MICompareObjects(v9, v10);

          if (v11)
          {
            v12 = 1;
LABEL_16:

            goto LABEL_17;
          }

          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
LABEL_15:
            v12 = 0;
            goto LABEL_16;
          }
        }

        else if (gLogHandle && *(gLogHandle + 44) < 3)
        {
          goto LABEL_15;
        }

        MOLogWrite();
        goto LABEL_15;
      }
    }

    v12 = 0;
  }

LABEL_17:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(ICLStashedAppRecord *)self stashedAtTimestamp];
  v4 = [v3 hash];

  v5 = [(ICLStashedAppRecord *)self stashOriginalInstallTimestamp];
  v6 = [v5 hash] ^ v4;

  v8.receiver = self;
  v8.super_class = ICLStashedAppRecord;
  return v6 ^ [(ICLAppRecord *)&v8 hash];
}

@end