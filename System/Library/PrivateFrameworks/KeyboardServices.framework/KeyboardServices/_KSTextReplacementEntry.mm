@interface _KSTextReplacementEntry
+ (id)localEntryFromCloudEntry:(id)a3;
- (BOOL)isEquivalentTo:(id)a3;
- (NSString)cloudID;
- (_KSTextReplacementEntry)init;
- (_KSTextReplacementEntry)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)encryptedFields;
- (id)unEncryptedFields;
- (id)uniqueID;
- (id)uniqueRecordName;
- (id)uniqueRecordNameVer0;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _KSTextReplacementEntry

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_phrase copyWithZone:a3];
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(NSString *)self->_shortcut copyWithZone:a3];
    v9 = v5[3];
    v5[3] = v8;

    v10 = [(NSDate *)self->_timestamp copyWithZone:a3];
    v11 = v5[4];
    v5[4] = v10;

    v12 = [(_KSTextReplacementEntry *)self->_priorValue copyWithZone:a3];
    v13 = v5[6];
    v5[6] = v12;

    v14 = [(NSString *)self->_cloudID copyWithZone:a3];
    v15 = v5[5];
    v5[5] = v14;

    if (!v5[5])
    {
      v16 = [(_KSTextReplacementEntry *)self uniqueID];
      v17 = v5[5];
      v5[5] = v16;
    }
  }

  return v5;
}

- (_KSTextReplacementEntry)init
{
  v10.receiver = self;
  v10.super_class = _KSTextReplacementEntry;
  v2 = [(_KSTextReplacementEntry *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    timestamp = v2->_timestamp;
    v2->_timestamp = v3;

    v5 = [(_KSTextReplacementEntry *)v2 uniqueID];
    cloudID = v2->_cloudID;
    v2->_cloudID = v5;

    shortcut = v2->_shortcut;
    v2->_shortcut = &stru_286796E30;

    phrase = v2->_phrase;
    v2->_phrase = &stru_286796E30;
  }

  return v2;
}

- (_KSTextReplacementEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _KSTextReplacementEntry;
  v5 = [(_KSTextReplacementEntry *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phrase"];
    phrase = v5->_phrase;
    v5->_phrase = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortcut"];
    shortcut = v5->_shortcut;
    v5->_shortcut = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"priorValue"];
    priorValue = v5->_priorValue;
    v5->_priorValue = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cloudID"];
    cloudID = v5->_cloudID;
    v5->_cloudID = v14;

    if (!v5->_cloudID)
    {
      v16 = [(_KSTextReplacementEntry *)v5 uniqueID];
      v17 = v5->_cloudID;
      v5->_cloudID = v16;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  phrase = self->_phrase;
  v5 = a3;
  [v5 encodeObject:phrase forKey:@"phrase"];
  [v5 encodeObject:self->_shortcut forKey:@"shortcut"];
  [v5 encodeObject:self->_timestamp forKey:@"timestamp"];
  [v5 encodeObject:self->_priorValue forKey:@"priorValue"];
  [v5 encodeObject:self->_cloudID forKey:@"cloudID"];
}

- (id)uniqueRecordNameVer0
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_KSTextReplacementEntry *)self shortcut];
  v5 = [(_KSTextReplacementEntry *)self phrase];
  v6 = [v3 stringWithFormat:@"%@-%@", v4, v5];

  return v6;
}

- (id)uniqueRecordName
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_KSTextReplacementEntry *)self shortcut];
  v5 = [(_KSTextReplacementEntry *)self phrase];
  v6 = [v3 stringWithFormat:@"%@%@", v4, v5];

  v7 = [MEMORY[0x277CCA900] illegalCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = [MEMORY[0x277CCA900] controlCharacterSet];
  v10 = [v8 stringByTrimmingCharactersInSet:v9];

  v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v12 = [v10 stringByTrimmingCharactersInSet:v11];

  return v12;
}

- (NSString)cloudID
{
  cloudID = self->_cloudID;
  if (!cloudID)
  {
    v4 = [(_KSTextReplacementEntry *)self uniqueID];
    v5 = self->_cloudID;
    self->_cloudID = v4;

    cloudID = self->_cloudID;
  }

  return cloudID;
}

- (id)uniqueID
{
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)unEncryptedFields
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"timestamp";
  v2 = [(_KSTextReplacementEntry *)self timestamp];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)encryptedFields
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(_KSTextReplacementEntry *)self shortcut];
  v5 = [v4 dataUsingEncoding:4];

  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"shortcutE"];
  }

  v6 = [(_KSTextReplacementEntry *)self phrase];
  v7 = [v6 dataUsingEncoding:4];

  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:@"phraseE"];
  }

  return v3;
}

+ (id)localEntryFromCloudEntry:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_KSTextReplacementEntry);
  v5 = [v3 encryptedValuesByKey];
  v6 = [v5 objectForKey:@"shortcutE"];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
  }

  else
  {
    v7 = [v3 objectForKey:@"shortcut"];
  }

  v8 = v7;
  [(_KSTextReplacementEntry *)v4 setShortcut:v7];

  v9 = [v3 encryptedValuesByKey];
  v10 = [v9 objectForKey:@"phraseE"];

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];
  }

  else
  {
    v11 = [v3 objectForKey:@"phrase"];
  }

  v12 = v11;
  [(_KSTextReplacementEntry *)v4 setPhrase:v11];

  v13 = [v3 objectForKey:@"timestamp"];
  [(_KSTextReplacementEntry *)v4 setTimestamp:v13];

  v14 = [v3 recordID];
  v15 = [v14 recordName];
  [(_KSTextReplacementEntry *)v4 setCloudID:v15];

  v16 = [(_KSTextReplacementEntry *)v4 shortcut];

  if (!v16)
  {
    [(_KSTextReplacementEntry *)v4 setShortcut:&stru_286796E30];
  }

  v17 = [(_KSTextReplacementEntry *)v4 phrase];

  if (!v17)
  {
    [(_KSTextReplacementEntry *)v4 setPhrase:&stru_286796E30];
  }

  v18 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v3 encodeSystemFieldsWithCoder:v18];
  [v18 finishEncoding];
  v19 = [v18 encodedData];
  v20 = [MEMORY[0x277CBEA90] dataWithData:v19];
  [(_KSTextReplacementEntry *)v4 setCloudData:v20];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_KSTextReplacementEntry *)self shortcut];
  v5 = [(_KSTextReplacementEntry *)self phrase];
  v6 = [v3 stringWithFormat:@"%@, %@", v4, v5];

  return v6;
}

- (BOOL)isEquivalentTo:(id)a3
{
  v4 = a3;
  v5 = [(_KSTextReplacementEntry *)self shortcut];
  v6 = [v4 shortcut];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(_KSTextReplacementEntry *)self phrase];
    v8 = [v4 phrase];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end