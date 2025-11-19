@interface CRKBook
- (CRKBook)init;
- (CRKBook)initWithCoder:(id)a3;
- (id)description;
- (id)imageDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKBook

- (CRKBook)init
{
  v3.receiver = self;
  v3.super_class = CRKBook;
  result = [(CRKBook *)&v3 init];
  if (result)
  {
    result->_type = 3;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRKBook *)self title];
  v6 = [(CRKBook *)self author];
  v7 = [(CRKBook *)self path];
  v8 = [(CRKBook *)self imageDescription];
  v9 = [(CRKBook *)self webURL];
  v10 = [v9 absoluteString];
  v11 = NSStringFromCRKBookType([(CRKBook *)self type]);
  v12 = [(CRKBook *)self hasChapters];
  v13 = @"NO";
  if (v12)
  {
    v13 = @"YES";
  }

  v14 = [v3 stringWithFormat:@"<%@: %p { title = %@, author = %@, path = %@, image = %@, webURL = %@, type = %@, hasChapters = %@ }>", v4, self, v5, v6, v7, v8, v10, v11, v13];

  return v14;
}

- (id)imageDescription
{
  v3 = [(CRKBook *)self image];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(CRKBook *)self image];
    v6 = [v4 stringWithFormat:@"<Data with length %lu>", objc_msgSend(v5, "length")];
  }

  else
  {
    v6 = @"nil";
  }

  return v6;
}

- (CRKBook)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CRKBook;
  v5 = [(CRKBook *)&v23 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"title"];
    title = v5->_title;
    v5->_title = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"author"];
    author = v5->_author;
    v5->_author = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"path"];
    path = v5->_path;
    v5->_path = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"image"];
    image = v5->_image;
    v5->_image = v16;

    v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"webURL"];
    webURL = v5->_webURL;
    v5->_webURL = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasChapters"];
    v5->_hasChapters = [v21 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRKBook *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(CRKBook *)self author];
  [v4 encodeObject:v6 forKey:@"author"];

  v7 = [(CRKBook *)self path];
  [v4 encodeObject:v7 forKey:@"path"];

  v8 = [(CRKBook *)self image];
  [v4 encodeObject:v8 forKey:@"image"];

  v9 = [(CRKBook *)self webURL];
  [v4 encodeObject:v9 forKey:@"webURL"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKBook hasChapters](self, "hasChapters")}];
  [v4 encodeObject:v10 forKey:@"hasChapters"];
}

@end