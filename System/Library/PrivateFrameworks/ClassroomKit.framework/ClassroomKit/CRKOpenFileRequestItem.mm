@interface CRKOpenFileRequestItem
- (CRKOpenFileRequestItem)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKOpenFileRequestItem

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  fileName = [(CRKOpenFileRequestItem *)self fileName];
  fileData = [(CRKOpenFileRequestItem *)self fileData];
  v7 = [v3 stringWithFormat:@"<%@: %p { fileName = %@, fileData = %ld bytes }>", v4, self, fileName, objc_msgSend(fileData, "length")];

  return v7;
}

- (CRKOpenFileRequestItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CRKOpenFileRequestItem;
  v5 = [(CRKOpenFileRequestItem *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"fileData"];
    fileData = v5->_fileData;
    v5->_fileData = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"fileName"];
    fileName = v5->_fileName;
    v5->_fileName = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fileData = [(CRKOpenFileRequestItem *)self fileData];
  [coderCopy encodeObject:fileData forKey:@"fileData"];

  fileName = [(CRKOpenFileRequestItem *)self fileName];
  [coderCopy encodeObject:fileName forKey:@"fileName"];
}

@end