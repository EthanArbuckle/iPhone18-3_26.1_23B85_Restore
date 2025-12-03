@interface MUILinkSuggestion
+ (id)suggestionWithURL:(id)l title:(id)title richLinkID:(id)d authors:(id)authors authorEmailAddresses:(id)addresses objectID:(id)iD messageID:(id)messageID messageList:(id)self0;
- (MUILinkSuggestion)initWithURL:(id)l title:(id)title richLinkID:(id)d authors:(id)authors authorEmailAddresses:(id)addresses objectID:(id)iD messageID:(id)messageID messageList:(id)self0;
- (id)description;
@end

@implementation MUILinkSuggestion

+ (id)suggestionWithURL:(id)l title:(id)title richLinkID:(id)d authors:(id)authors authorEmailAddresses:(id)addresses objectID:(id)iD messageID:(id)messageID messageList:(id)self0
{
  listCopy = list;
  messageIDCopy = messageID;
  iDCopy = iD;
  addressesCopy = addresses;
  authorsCopy = authors;
  dCopy = d;
  titleCopy = title;
  lCopy = l;
  v25 = [[self alloc] initWithURL:lCopy title:titleCopy richLinkID:dCopy authors:authorsCopy authorEmailAddresses:addressesCopy objectID:iDCopy messageID:messageIDCopy messageList:listCopy];

  return v25;
}

- (MUILinkSuggestion)initWithURL:(id)l title:(id)title richLinkID:(id)d authors:(id)authors authorEmailAddresses:(id)addresses objectID:(id)iD messageID:(id)messageID messageList:(id)self0
{
  lCopy = l;
  titleCopy = title;
  dCopy = d;
  messageIDCopy = messageID;
  v24.receiver = self;
  v24.super_class = MUILinkSuggestion;
  v18 = [(MUIResultSuggestion *)&v24 initWithObjectID:iD messageList:list authors:authors authorEmailAddresses:addresses];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_url, l);
    objc_storeStrong(&v19->_title, title);
    objc_storeStrong(&v19->_richLinkID, d);
    objc_storeStrong(&v19->_messageID, messageID);
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  url = self->_url;
  title = self->_title;
  richLinkID = self->_richLinkID;
  authors = [(MUIResultSuggestion *)self authors];
  authorEmailAddresses = [(MUIResultSuggestion *)self authorEmailAddresses];
  objectID = [(MUIResultSuggestion *)self objectID];
  messageList = [(MUIResultSuggestion *)self messageList];
  v12 = [v3 stringWithFormat:@"<%@: %p> url=%@ title=%@ richLinkID=%@  authors=%@ authorEmailAddresses=%@ objectID=%@ messageList=%@", v4, self, url, title, richLinkID, authors, authorEmailAddresses, objectID, messageList];

  return v12;
}

@end