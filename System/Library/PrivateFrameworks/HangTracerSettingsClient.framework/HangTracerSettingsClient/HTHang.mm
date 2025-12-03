@interface HTHang
- (HTHang)initWithXPCDictionary:(id)dictionary;
@end

@implementation HTHang

- (HTHang)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = HTHang;
  v5 = [(HTHang *)&v20 init];
  if (v5)
  {
    v6 = stringFromXpcDictionary(dictionaryCopy, *MEMORY[0x277D0FA50]);
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = stringFromXpcDictionary(dictionaryCopy, *MEMORY[0x277D0FA38]);
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = stringFromXpcDictionary(dictionaryCopy, *MEMORY[0x277D0FA40]);
    [v10 doubleValue];
    v12 = v11;

    if (v12 == 0.0)
    {
      v13 = 0;
    }

    else
    {
      v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v12];
    }

    creationDate = v5->_creationDate;
    v5->_creationDate = v13;

    v15 = stringFromXpcDictionary(dictionaryCopy, *MEMORY[0x277D0FA48]);
    [v15 doubleValue];
    v5->_duration = v16;

    v17 = stringFromXpcDictionary(dictionaryCopy, *MEMORY[0x277D0FA58]);
    processPath = v5->_processPath;
    v5->_processPath = v17;

    objc_storeStrong(&v5->_bundleId, v5->_bundleID);
    objc_storeStrong(&v5->_hangId, v5->_identifier);
    objc_storeStrong(&v5->_createdAt, v5->_creationDate);
  }

  return v5;
}

@end