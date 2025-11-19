@interface CRKOpenFileRequestItem
- (CRKOpenFileRequestItem)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKOpenFileRequestItem

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRKOpenFileRequestItem *)self fileName];
  v6 = [(CRKOpenFileRequestItem *)self fileData];
  v7 = [v3 stringWithFormat:@"<%@: %p { fileName = %@, fileData = %ld bytes }>", v4, self, v5, objc_msgSend(v6, "length")];

  return v7;
}

- (CRKOpenFileRequestItem)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CRKOpenFileRequestItem;
  v5 = [(CRKOpenFileRequestItem *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"fileData"];
    fileData = v5->_fileData;
    v5->_fileData = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"fileName"];
    fileName = v5->_fileName;
    v5->_fileName = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRKOpenFileRequestItem *)self fileData];
  [v4 encodeObject:v5 forKey:@"fileData"];

  v6 = [(CRKOpenFileRequestItem *)self fileName];
  [v4 encodeObject:v6 forKey:@"fileName"];
}

@end