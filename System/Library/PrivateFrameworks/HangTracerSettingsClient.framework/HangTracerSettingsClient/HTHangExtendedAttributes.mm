@interface HTHangExtendedAttributes
- (HTHangExtendedAttributes)initWithFilePath:(id)path;
- (id)getExtendedAttributeNamed:(id)named forFileAtPath:(id)path;
@end

@implementation HTHangExtendedAttributes

- (HTHangExtendedAttributes)initWithFilePath:(id)path
{
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = HTHangExtendedAttributes;
  v5 = [(HTHangExtendedAttributes *)&v18 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(HTHangExtendedAttributes *)v5 getExtendedAttributeNamed:*MEMORY[0x277D0FA50] forFileAtPath:pathCopy];
    hangID = v6->_hangID;
    v6->_hangID = v7;

    v9 = [(HTHangExtendedAttributes *)v6 getExtendedAttributeNamed:*MEMORY[0x277D0FA38] forFileAtPath:pathCopy];
    bundleID = v6->_bundleID;
    v6->_bundleID = v9;

    v11 = [(HTHangExtendedAttributes *)v6 getExtendedAttributeNamed:*MEMORY[0x277D0FA40] forFileAtPath:pathCopy];
    creationDate = v6->_creationDate;
    v6->_creationDate = v11;

    v13 = [(HTHangExtendedAttributes *)v6 getExtendedAttributeNamed:*MEMORY[0x277D0FA48] forFileAtPath:pathCopy];
    duration = v6->_duration;
    v6->_duration = v13;

    v15 = [(HTHangExtendedAttributes *)v6 getExtendedAttributeNamed:*MEMORY[0x277D0FA58] forFileAtPath:pathCopy];
    processPath = v6->_processPath;
    v6->_processPath = v15;
  }

  return v6;
}

- (id)getExtendedAttributeNamed:(id)named forFileAtPath:(id)path
{
  namedCopy = named;
  pathCopy = path;
  v7 = getxattr([pathCopy fileSystemRepresentation], objc_msgSend(namedCopy, "UTF8String"), 0, 0x2710uLL, 0, 0);
  if (v7 == -1)
  {
    v10 = 0;
  }

  else
  {
    v8 = v7;
    v9 = [MEMORY[0x277CBEB28] dataWithLength:v7];
    getxattr([pathCopy UTF8String], objc_msgSend(namedCopy, "UTF8String"), objc_msgSend(v9, "mutableBytes"), v8, 0, 0);
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
  }

  return v10;
}

@end