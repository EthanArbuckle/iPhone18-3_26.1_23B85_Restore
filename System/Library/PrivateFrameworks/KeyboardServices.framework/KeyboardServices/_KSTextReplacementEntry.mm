@interface _KSTextReplacementEntry
+ (id)localEntryFromCloudEntry:(id)entry;
- (BOOL)isEquivalentTo:(id)to;
- (NSString)cloudID;
- (_KSTextReplacementEntry)init;
- (_KSTextReplacementEntry)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)encryptedFields;
- (id)unEncryptedFields;
- (id)uniqueID;
- (id)uniqueRecordName;
- (id)uniqueRecordNameVer0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _KSTextReplacementEntry

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_phrase copyWithZone:zone];
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(NSString *)self->_shortcut copyWithZone:zone];
    v9 = v5[3];
    v5[3] = v8;

    v10 = [(NSDate *)self->_timestamp copyWithZone:zone];
    v11 = v5[4];
    v5[4] = v10;

    v12 = [(_KSTextReplacementEntry *)self->_priorValue copyWithZone:zone];
    v13 = v5[6];
    v5[6] = v12;

    v14 = [(NSString *)self->_cloudID copyWithZone:zone];
    v15 = v5[5];
    v5[5] = v14;

    if (!v5[5])
    {
      uniqueID = [(_KSTextReplacementEntry *)self uniqueID];
      v17 = v5[5];
      v5[5] = uniqueID;
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
    date = [MEMORY[0x277CBEAA8] date];
    timestamp = v2->_timestamp;
    v2->_timestamp = date;

    uniqueID = [(_KSTextReplacementEntry *)v2 uniqueID];
    cloudID = v2->_cloudID;
    v2->_cloudID = uniqueID;

    shortcut = v2->_shortcut;
    v2->_shortcut = &stru_286796E30;

    phrase = v2->_phrase;
    v2->_phrase = &stru_286796E30;
  }

  return v2;
}

- (_KSTextReplacementEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = _KSTextReplacementEntry;
  v5 = [(_KSTextReplacementEntry *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phrase"];
    phrase = v5->_phrase;
    v5->_phrase = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcut"];
    shortcut = v5->_shortcut;
    v5->_shortcut = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"priorValue"];
    priorValue = v5->_priorValue;
    v5->_priorValue = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cloudID"];
    cloudID = v5->_cloudID;
    v5->_cloudID = v14;

    if (!v5->_cloudID)
    {
      uniqueID = [(_KSTextReplacementEntry *)v5 uniqueID];
      v17 = v5->_cloudID;
      v5->_cloudID = uniqueID;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  phrase = self->_phrase;
  coderCopy = coder;
  [coderCopy encodeObject:phrase forKey:@"phrase"];
  [coderCopy encodeObject:self->_shortcut forKey:@"shortcut"];
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
  [coderCopy encodeObject:self->_priorValue forKey:@"priorValue"];
  [coderCopy encodeObject:self->_cloudID forKey:@"cloudID"];
}

- (id)uniqueRecordNameVer0
{
  v3 = MEMORY[0x277CCACA8];
  shortcut = [(_KSTextReplacementEntry *)self shortcut];
  phrase = [(_KSTextReplacementEntry *)self phrase];
  v6 = [v3 stringWithFormat:@"%@-%@", shortcut, phrase];

  return v6;
}

- (id)uniqueRecordName
{
  v3 = MEMORY[0x277CCACA8];
  shortcut = [(_KSTextReplacementEntry *)self shortcut];
  phrase = [(_KSTextReplacementEntry *)self phrase];
  v6 = [v3 stringWithFormat:@"%@%@", shortcut, phrase];

  illegalCharacterSet = [MEMORY[0x277CCA900] illegalCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:illegalCharacterSet];

  controlCharacterSet = [MEMORY[0x277CCA900] controlCharacterSet];
  v10 = [v8 stringByTrimmingCharactersInSet:controlCharacterSet];

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v12 = [v10 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v12;
}

- (NSString)cloudID
{
  cloudID = self->_cloudID;
  if (!cloudID)
  {
    uniqueID = [(_KSTextReplacementEntry *)self uniqueID];
    v5 = self->_cloudID;
    self->_cloudID = uniqueID;

    cloudID = self->_cloudID;
  }

  return cloudID;
}

- (id)uniqueID
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (id)unEncryptedFields
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"timestamp";
  timestamp = [(_KSTextReplacementEntry *)self timestamp];
  v7[0] = timestamp;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)encryptedFields
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  shortcut = [(_KSTextReplacementEntry *)self shortcut];
  v5 = [shortcut dataUsingEncoding:4];

  if (v5)
  {
    [dictionary setObject:v5 forKeyedSubscript:@"shortcutE"];
  }

  phrase = [(_KSTextReplacementEntry *)self phrase];
  v7 = [phrase dataUsingEncoding:4];

  if (v7)
  {
    [dictionary setObject:v7 forKeyedSubscript:@"phraseE"];
  }

  return dictionary;
}

+ (id)localEntryFromCloudEntry:(id)entry
{
  entryCopy = entry;
  v4 = objc_alloc_init(_KSTextReplacementEntry);
  encryptedValuesByKey = [entryCopy encryptedValuesByKey];
  v6 = [encryptedValuesByKey objectForKey:@"shortcutE"];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
  }

  else
  {
    v7 = [entryCopy objectForKey:@"shortcut"];
  }

  v8 = v7;
  [(_KSTextReplacementEntry *)v4 setShortcut:v7];

  encryptedValuesByKey2 = [entryCopy encryptedValuesByKey];
  v10 = [encryptedValuesByKey2 objectForKey:@"phraseE"];

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];
  }

  else
  {
    v11 = [entryCopy objectForKey:@"phrase"];
  }

  v12 = v11;
  [(_KSTextReplacementEntry *)v4 setPhrase:v11];

  v13 = [entryCopy objectForKey:@"timestamp"];
  [(_KSTextReplacementEntry *)v4 setTimestamp:v13];

  recordID = [entryCopy recordID];
  recordName = [recordID recordName];
  [(_KSTextReplacementEntry *)v4 setCloudID:recordName];

  shortcut = [(_KSTextReplacementEntry *)v4 shortcut];

  if (!shortcut)
  {
    [(_KSTextReplacementEntry *)v4 setShortcut:&stru_286796E30];
  }

  phrase = [(_KSTextReplacementEntry *)v4 phrase];

  if (!phrase)
  {
    [(_KSTextReplacementEntry *)v4 setPhrase:&stru_286796E30];
  }

  v18 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [entryCopy encodeSystemFieldsWithCoder:v18];
  [v18 finishEncoding];
  encodedData = [v18 encodedData];
  v20 = [MEMORY[0x277CBEA90] dataWithData:encodedData];
  [(_KSTextReplacementEntry *)v4 setCloudData:v20];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  shortcut = [(_KSTextReplacementEntry *)self shortcut];
  phrase = [(_KSTextReplacementEntry *)self phrase];
  v6 = [v3 stringWithFormat:@"%@, %@", shortcut, phrase];

  return v6;
}

- (BOOL)isEquivalentTo:(id)to
{
  toCopy = to;
  shortcut = [(_KSTextReplacementEntry *)self shortcut];
  shortcut2 = [toCopy shortcut];
  if ([shortcut isEqualToString:shortcut2])
  {
    phrase = [(_KSTextReplacementEntry *)self phrase];
    phrase2 = [toCopy phrase];
    v9 = [phrase isEqualToString:phrase2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end