@interface CRKChapter
- (CRKChapter)init;
- (CRKChapter)initWithCoder:(id)a3;
- (NSDictionary)JSONRepresentation;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
  v5 = [(CRKChapter *)self title];
  v6 = [(CRKChapter *)self subchapters];
  v7 = [(CRKChapter *)self webURL];
  v8 = [v7 absoluteString];
  v9 = [v3 stringWithFormat:@"<%@: %p { title = %@, subchapters = %@, webURL = %@ }>", v4, self, v5, v6, v8];

  return v9;
}

- (NSDictionary)JSONRepresentation
{
  v3 = objc_opt_new();
  v4 = [(CRKChapter *)self title];
  [v3 setObject:v4 forKeyedSubscript:@"Title"];

  v5 = [(CRKChapter *)self webURL];
  v6 = [v5 absoluteString];
  [v3 setObject:v6 forKeyedSubscript:@"Web URL"];

  v7 = [(CRKChapter *)self subchapters];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(CRKChapter *)self subchapters];
    v10 = [v9 valueForKey:@"JSONRepresentation"];
    [v3 setObject:v10 forKeyedSubscript:@"Subchapters"];
  }

  return v3;
}

- (CRKChapter)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CRKChapter;
  v5 = [(CRKChapter *)&v18 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"title"];
    title = v5->_title;
    v5->_title = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"subchapters"];
    subchapters = v5->_subchapters;
    v5->_subchapters = v12;

    v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"webURL"];
    webURL = v5->_webURL;
    v5->_webURL = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRKChapter *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(CRKChapter *)self subchapters];
  [v4 encodeObject:v6 forKey:@"subchapters"];

  v7 = [(CRKChapter *)self webURL];
  [v4 encodeObject:v7 forKey:@"webURL"];
}

@end