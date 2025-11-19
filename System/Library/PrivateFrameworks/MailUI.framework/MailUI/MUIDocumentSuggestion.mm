@interface MUIDocumentSuggestion
+ (id)suggestionWithFileURL:(id)a3 name:(id)a4 date:(id)a5 subject:(id)a6 authors:(id)a7 authorEmailAddresses:(id)a8 objectID:(id)a9 messageList:(id)a10;
- (MUIDocumentSuggestion)initWithFileURL:(id)a3 name:(id)a4 date:(id)a5 subject:(id)a6 authors:(id)a7 authorEmailAddresses:(id)a8 objectID:(id)a9 messageList:(id)a10;
- (id)description;
@end

@implementation MUIDocumentSuggestion

+ (id)suggestionWithFileURL:(id)a3 name:(id)a4 date:(id)a5 subject:(id)a6 authors:(id)a7 authorEmailAddresses:(id)a8 objectID:(id)a9 messageList:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [[a1 alloc] initWithFileURL:v24 name:v23 date:v22 subject:v21 authors:v20 authorEmailAddresses:v19 objectID:v18 messageList:v17];

  return v25;
}

- (MUIDocumentSuggestion)initWithFileURL:(id)a3 name:(id)a4 date:(id)a5 subject:(id)a6 authors:(id)a7 authorEmailAddresses:(id)a8 objectID:(id)a9 messageList:(id)a10
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v17 = a6;
  v24.receiver = self;
  v24.super_class = MUIDocumentSuggestion;
  v18 = [(MUIResultSuggestion *)&v24 initWithObjectID:a9 messageList:a10 authors:a7 authorEmailAddresses:a8];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_fileURL, a3);
    objc_storeStrong(&v19->_name, a4);
    objc_storeStrong(&v19->_date, a5);
    objc_storeStrong(&v19->_subject, a6);
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  name = self->_name;
  date = self->_date;
  fileURL = self->_fileURL;
  v8 = [(MUIResultSuggestion *)self authors];
  v9 = [(MUIResultSuggestion *)self authorEmailAddresses];
  v10 = [(MUIResultSuggestion *)self objectID];
  v11 = [(MUIResultSuggestion *)self messageList];
  v12 = [v3 stringWithFormat:@"<%@: %p> name=%@ date=%@ fileURL=%@ authors=%@ authorEmailAddresses=%@ objectID=%@ messageList=%@", v4, self, name, date, fileURL, v8, v9, v10, v11];

  return v12;
}

@end