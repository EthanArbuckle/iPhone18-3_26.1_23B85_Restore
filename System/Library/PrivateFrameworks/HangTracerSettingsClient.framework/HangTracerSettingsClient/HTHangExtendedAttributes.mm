@interface HTHangExtendedAttributes
- (HTHangExtendedAttributes)initWithFilePath:(id)a3;
- (id)getExtendedAttributeNamed:(id)a3 forFileAtPath:(id)a4;
@end

@implementation HTHangExtendedAttributes

- (HTHangExtendedAttributes)initWithFilePath:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HTHangExtendedAttributes;
  v5 = [(HTHangExtendedAttributes *)&v18 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(HTHangExtendedAttributes *)v5 getExtendedAttributeNamed:*MEMORY[0x277D0FA50] forFileAtPath:v4];
    hangID = v6->_hangID;
    v6->_hangID = v7;

    v9 = [(HTHangExtendedAttributes *)v6 getExtendedAttributeNamed:*MEMORY[0x277D0FA38] forFileAtPath:v4];
    bundleID = v6->_bundleID;
    v6->_bundleID = v9;

    v11 = [(HTHangExtendedAttributes *)v6 getExtendedAttributeNamed:*MEMORY[0x277D0FA40] forFileAtPath:v4];
    creationDate = v6->_creationDate;
    v6->_creationDate = v11;

    v13 = [(HTHangExtendedAttributes *)v6 getExtendedAttributeNamed:*MEMORY[0x277D0FA48] forFileAtPath:v4];
    duration = v6->_duration;
    v6->_duration = v13;

    v15 = [(HTHangExtendedAttributes *)v6 getExtendedAttributeNamed:*MEMORY[0x277D0FA58] forFileAtPath:v4];
    processPath = v6->_processPath;
    v6->_processPath = v15;
  }

  return v6;
}

- (id)getExtendedAttributeNamed:(id)a3 forFileAtPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = getxattr([v6 fileSystemRepresentation], objc_msgSend(v5, "UTF8String"), 0, 0x2710uLL, 0, 0);
  if (v7 == -1)
  {
    v10 = 0;
  }

  else
  {
    v8 = v7;
    v9 = [MEMORY[0x277CBEB28] dataWithLength:v7];
    getxattr([v6 UTF8String], objc_msgSend(v5, "UTF8String"), objc_msgSend(v9, "mutableBytes"), v8, 0, 0);
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
  }

  return v10;
}

@end