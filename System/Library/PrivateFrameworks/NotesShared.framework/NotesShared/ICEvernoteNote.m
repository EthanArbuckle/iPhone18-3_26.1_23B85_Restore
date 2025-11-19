@interface ICEvernoteNote
- (ICEvernoteNote)init;
- (ICEvernoteNote)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (ICEvernoteNote)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = ICEvernoteNote;
  v5 = [(ICEvernoteNote *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    content = v5->_content;
    v5->_content = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"created"];
    created = v5->_created;
    v5->_created = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updated"];
    updated = v5->_updated;
    v5->_updated = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"tags"];
    tags = v5->_tags;
    v5->_tags = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"resources"];
    resources = v5->_resources;
    v5->_resources = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICEvernoteNote *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(ICEvernoteNote *)self content];
  [v4 encodeObject:v6 forKey:@"content"];

  v7 = [(ICEvernoteNote *)self created];
  [v4 encodeObject:v7 forKey:@"created"];

  v8 = [(ICEvernoteNote *)self updated];
  [v4 encodeObject:v8 forKey:@"updated"];

  v9 = [(ICEvernoteNote *)self tags];
  [v4 encodeObject:v9 forKey:@"tags"];

  v10 = [(ICEvernoteNote *)self resources];
  [v4 encodeObject:v10 forKey:@"resources"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ICEvernoteNote *)self title];
  v5 = [(ICEvernoteNote *)self content];
  v6 = [v3 stringWithFormat:@"title: %@\ncontent: %@", v4, v5];

  return v6;
}

@end