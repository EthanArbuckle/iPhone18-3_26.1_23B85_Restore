@interface MUIDocumentSuggestion
+ (id)suggestionWithFileURL:(id)l name:(id)name date:(id)date subject:(id)subject authors:(id)authors authorEmailAddresses:(id)addresses objectID:(id)d messageList:(id)self0;
- (MUIDocumentSuggestion)initWithFileURL:(id)l name:(id)name date:(id)date subject:(id)subject authors:(id)authors authorEmailAddresses:(id)addresses objectID:(id)d messageList:(id)self0;
- (id)description;
@end

@implementation MUIDocumentSuggestion

+ (id)suggestionWithFileURL:(id)l name:(id)name date:(id)date subject:(id)subject authors:(id)authors authorEmailAddresses:(id)addresses objectID:(id)d messageList:(id)self0
{
  listCopy = list;
  dCopy = d;
  addressesCopy = addresses;
  authorsCopy = authors;
  subjectCopy = subject;
  dateCopy = date;
  nameCopy = name;
  lCopy = l;
  v25 = [[self alloc] initWithFileURL:lCopy name:nameCopy date:dateCopy subject:subjectCopy authors:authorsCopy authorEmailAddresses:addressesCopy objectID:dCopy messageList:listCopy];

  return v25;
}

- (MUIDocumentSuggestion)initWithFileURL:(id)l name:(id)name date:(id)date subject:(id)subject authors:(id)authors authorEmailAddresses:(id)addresses objectID:(id)d messageList:(id)self0
{
  lCopy = l;
  nameCopy = name;
  dateCopy = date;
  subjectCopy = subject;
  v24.receiver = self;
  v24.super_class = MUIDocumentSuggestion;
  v18 = [(MUIResultSuggestion *)&v24 initWithObjectID:d messageList:list authors:authors authorEmailAddresses:addresses];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_fileURL, l);
    objc_storeStrong(&v19->_name, name);
    objc_storeStrong(&v19->_date, date);
    objc_storeStrong(&v19->_subject, subject);
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
  authors = [(MUIResultSuggestion *)self authors];
  authorEmailAddresses = [(MUIResultSuggestion *)self authorEmailAddresses];
  objectID = [(MUIResultSuggestion *)self objectID];
  messageList = [(MUIResultSuggestion *)self messageList];
  v12 = [v3 stringWithFormat:@"<%@: %p> name=%@ date=%@ fileURL=%@ authors=%@ authorEmailAddresses=%@ objectID=%@ messageList=%@", v4, self, name, date, fileURL, authors, authorEmailAddresses, objectID, messageList];

  return v12;
}

@end