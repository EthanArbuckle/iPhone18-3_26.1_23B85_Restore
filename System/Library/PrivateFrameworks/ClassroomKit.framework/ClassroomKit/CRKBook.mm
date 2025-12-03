@interface CRKBook
- (CRKBook)init;
- (CRKBook)initWithCoder:(id)coder;
- (id)description;
- (id)imageDescription;
- (void)encodeWithCoder:(id)coder;
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
  title = [(CRKBook *)self title];
  author = [(CRKBook *)self author];
  path = [(CRKBook *)self path];
  imageDescription = [(CRKBook *)self imageDescription];
  webURL = [(CRKBook *)self webURL];
  absoluteString = [webURL absoluteString];
  v11 = NSStringFromCRKBookType([(CRKBook *)self type]);
  hasChapters = [(CRKBook *)self hasChapters];
  v13 = @"NO";
  if (hasChapters)
  {
    v13 = @"YES";
  }

  v14 = [v3 stringWithFormat:@"<%@: %p { title = %@, author = %@, path = %@, image = %@, webURL = %@, type = %@, hasChapters = %@ }>", v4, self, title, author, path, imageDescription, absoluteString, v11, v13];

  return v14;
}

- (id)imageDescription
{
  image = [(CRKBook *)self image];

  if (image)
  {
    v4 = MEMORY[0x277CCACA8];
    image2 = [(CRKBook *)self image];
    v6 = [v4 stringWithFormat:@"<Data with length %lu>", objc_msgSend(image2, "length")];
  }

  else
  {
    v6 = @"nil";
  }

  return v6;
}

- (CRKBook)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = CRKBook;
  v5 = [(CRKBook *)&v23 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"title"];
    title = v5->_title;
    v5->_title = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"author"];
    author = v5->_author;
    v5->_author = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"path"];
    path = v5->_path;
    v5->_path = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"image"];
    image = v5->_image;
    v5->_image = v16;

    v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"webURL"];
    webURL = v5->_webURL;
    v5->_webURL = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasChapters"];
    v5->_hasChapters = [v21 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(CRKBook *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  author = [(CRKBook *)self author];
  [coderCopy encodeObject:author forKey:@"author"];

  path = [(CRKBook *)self path];
  [coderCopy encodeObject:path forKey:@"path"];

  image = [(CRKBook *)self image];
  [coderCopy encodeObject:image forKey:@"image"];

  webURL = [(CRKBook *)self webURL];
  [coderCopy encodeObject:webURL forKey:@"webURL"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKBook hasChapters](self, "hasChapters")}];
  [coderCopy encodeObject:v10 forKey:@"hasChapters"];
}

@end