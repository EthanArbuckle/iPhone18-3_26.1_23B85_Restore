@interface ICEvernoteNote
- (ICEvernoteNote)init;
- (ICEvernoteNote)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICEvernoteNote

- (ICEvernoteNote)init
{
  v8.receiver = self;
  v8.super_class = ICEvernoteNote;
  v2 = [(ICEvernoteNote *)&v8 init];
  v3 = v2;
  if (v2)
  {
    tags = v2->_tags;
    v5 = MEMORY[0x277CBEBF8];
    v2->_tags = MEMORY[0x277CBEBF8];

    resources = v3->_resources;
    v3->_resources = v5;
  }

  return v3;
}

- (ICEvernoteNote)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = ICEvernoteNote;
  v5 = [(ICEvernoteNote *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    content = v5->_content;
    v5->_content = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"created"];
    created = v5->_created;
    v5->_created = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updated"];
    updated = v5->_updated;
    v5->_updated = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"tags"];
    tags = v5->_tags;
    v5->_tags = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"resources"];
    resources = v5->_resources;
    v5->_resources = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(ICEvernoteNote *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  content = [(ICEvernoteNote *)self content];
  [coderCopy encodeObject:content forKey:@"content"];

  created = [(ICEvernoteNote *)self created];
  [coderCopy encodeObject:created forKey:@"created"];

  updated = [(ICEvernoteNote *)self updated];
  [coderCopy encodeObject:updated forKey:@"updated"];

  tags = [(ICEvernoteNote *)self tags];
  [coderCopy encodeObject:tags forKey:@"tags"];

  resources = [(ICEvernoteNote *)self resources];
  [coderCopy encodeObject:resources forKey:@"resources"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  title = [(ICEvernoteNote *)self title];
  content = [(ICEvernoteNote *)self content];
  v6 = [v3 stringWithFormat:@"title: %@\ncontent: %@", title, content];

  return v6;
}

@end