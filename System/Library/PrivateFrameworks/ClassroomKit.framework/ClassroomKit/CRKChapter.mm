@interface CRKChapter
- (CRKChapter)init;
- (CRKChapter)initWithCoder:(id)coder;
- (NSDictionary)JSONRepresentation;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKChapter

- (CRKChapter)init
{
  v6.receiver = self;
  v6.super_class = CRKChapter;
  v2 = [(CRKChapter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    subchapters = v2->_subchapters;
    v2->_subchapters = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  title = [(CRKChapter *)self title];
  subchapters = [(CRKChapter *)self subchapters];
  webURL = [(CRKChapter *)self webURL];
  absoluteString = [webURL absoluteString];
  v9 = [v3 stringWithFormat:@"<%@: %p { title = %@, subchapters = %@, webURL = %@ }>", v4, self, title, subchapters, absoluteString];

  return v9;
}

- (NSDictionary)JSONRepresentation
{
  v3 = objc_opt_new();
  title = [(CRKChapter *)self title];
  [v3 setObject:title forKeyedSubscript:@"Title"];

  webURL = [(CRKChapter *)self webURL];
  absoluteString = [webURL absoluteString];
  [v3 setObject:absoluteString forKeyedSubscript:@"Web URL"];

  subchapters = [(CRKChapter *)self subchapters];
  v8 = [subchapters count];

  if (v8)
  {
    subchapters2 = [(CRKChapter *)self subchapters];
    v10 = [subchapters2 valueForKey:@"JSONRepresentation"];
    [v3 setObject:v10 forKeyedSubscript:@"Subchapters"];
  }

  return v3;
}

- (CRKChapter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CRKChapter;
  v5 = [(CRKChapter *)&v18 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"title"];
    title = v5->_title;
    v5->_title = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"subchapters"];
    subchapters = v5->_subchapters;
    v5->_subchapters = v12;

    v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"webURL"];
    webURL = v5->_webURL;
    v5->_webURL = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(CRKChapter *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  subchapters = [(CRKChapter *)self subchapters];
  [coderCopy encodeObject:subchapters forKey:@"subchapters"];

  webURL = [(CRKChapter *)self webURL];
  [coderCopy encodeObject:webURL forKey:@"webURL"];
}

@end