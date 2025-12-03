@interface ICLStashedAppRecord
- (BOOL)isEqual:(id)equal;
- (ICLStashedAppRecord)initWithCoder:(id)coder;
- (ICLStashedAppRecord)initWithLegacyRecordDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)legacyRecordDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICLStashedAppRecord

- (ICLStashedAppRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ICLStashedAppRecord;
  v5 = [(ICLAppRecord *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stashedAtTimestamp"];
    stashedAtTimestamp = v5->_stashedAtTimestamp;
    v5->_stashedAtTimestamp = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stashOriginalInstallTimestamp"];
    stashOriginalInstallTimestamp = v5->_stashOriginalInstallTimestamp;
    v5->_stashOriginalInstallTimestamp = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = ICLStashedAppRecord;
  coderCopy = coder;
  [(ICLAppRecord *)&v7 encodeWithCoder:coderCopy];
  v5 = [(ICLStashedAppRecord *)self stashedAtTimestamp:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"stashedAtTimestamp"];

  stashOriginalInstallTimestamp = [(ICLStashedAppRecord *)self stashOriginalInstallTimestamp];
  [coderCopy encodeObject:stashOriginalInstallTimestamp forKey:@"stashOriginalInstallTimestamp"];
}

- (ICLStashedAppRecord)initWithLegacyRecordDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = ICLStashedAppRecord;
  v5 = [(ICLAppRecord *)&v13 initWithLegacyRecordDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"StashedAtTimestamp"];
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
    v9 = [dictionaryCopy objectForKeyedSubscript:@"StashOriginalInstallTimestamp"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = ICLStashedAppRecord;
  v5 = [(ICLAppRecord *)&v11 copyWithZone:?];
  stashedAtTimestamp = [(ICLStashedAppRecord *)self stashedAtTimestamp];
  v7 = [stashedAtTimestamp copyWithZone:zone];
  [v5 setStashedAtTimestamp:v7];

  stashOriginalInstallTimestamp = [(ICLStashedAppRecord *)self stashOriginalInstallTimestamp];
  v9 = [stashOriginalInstallTimestamp copyWithZone:zone];
  [v5 setStashOriginalInstallTimestamp:v9];

  return v5;
}

- (id)legacyRecordDictionary
{
  v3 = objc_opt_new();
  v9.receiver = self;
  v9.super_class = ICLStashedAppRecord;
  legacyRecordDictionary = [(ICLAppRecord *)&v9 legacyRecordDictionary];
  [v3 addEntriesFromDictionary:legacyRecordDictionary];

  stashedAtTimestamp = [(ICLStashedAppRecord *)self stashedAtTimestamp];
  if (stashedAtTimestamp)
  {
    [v3 setObject:stashedAtTimestamp forKeyedSubscript:@"StashedAtTimestamp"];
  }

  stashOriginalInstallTimestamp = [(ICLStashedAppRecord *)self stashOriginalInstallTimestamp];
  if (stashOriginalInstallTimestamp)
  {
    [v3 setObject:stashOriginalInstallTimestamp forKeyedSubscript:@"StashOriginalInstallTimestamp"];
  }

  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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
      if ([(ICLAppRecord *)&v14 isEqual:equalCopy])
      {
        v5 = equalCopy;
        stashedAtTimestamp = [(ICLStashedAppRecord *)self stashedAtTimestamp];
        stashedAtTimestamp2 = [(ICLStashedAppRecord *)v5 stashedAtTimestamp];
        v8 = MICompareObjects(stashedAtTimestamp, stashedAtTimestamp2);

        if (v8)
        {
          stashOriginalInstallTimestamp = [(ICLStashedAppRecord *)self stashOriginalInstallTimestamp];
          stashOriginalInstallTimestamp2 = [(ICLStashedAppRecord *)v5 stashOriginalInstallTimestamp];
          v11 = MICompareObjects(stashOriginalInstallTimestamp, stashOriginalInstallTimestamp2);

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
  stashedAtTimestamp = [(ICLStashedAppRecord *)self stashedAtTimestamp];
  v4 = [stashedAtTimestamp hash];

  stashOriginalInstallTimestamp = [(ICLStashedAppRecord *)self stashOriginalInstallTimestamp];
  v6 = [stashOriginalInstallTimestamp hash] ^ v4;

  v8.receiver = self;
  v8.super_class = ICLStashedAppRecord;
  return v6 ^ [(ICLAppRecord *)&v8 hash];
}

@end