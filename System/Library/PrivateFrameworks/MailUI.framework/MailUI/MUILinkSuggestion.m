@interface MUILinkSuggestion
+ (id)suggestionWithURL:(id)a3 title:(id)a4 richLinkID:(id)a5 authors:(id)a6 authorEmailAddresses:(id)a7 objectID:(id)a8 messageID:(id)a9 messageList:(id)a10;
- (MUILinkSuggestion)initWithURL:(id)a3 title:(id)a4 richLinkID:(id)a5 authors:(id)a6 authorEmailAddresses:(id)a7 objectID:(id)a8 messageID:(id)a9 messageList:(id)a10;
- (id)description;
@end

@implementation MUILinkSuggestion

+ (id)suggestionWithURL:(id)a3 title:(id)a4 richLinkID:(id)a5 authors:(id)a6 authorEmailAddresses:(id)a7 objectID:(id)a8 messageID:(id)a9 messageList:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [[a1 alloc] initWithURL:v24 title:v23 richLinkID:v22 authors:v21 authorEmailAddresses:v20 objectID:v19 messageID:v18 messageList:v17];

  return v25;
}

- (MUILinkSuggestion)initWithURL:(id)a3 title:(id)a4 richLinkID:(id)a5 authors:(id)a6 authorEmailAddresses:(id)a7 objectID:(id)a8 messageID:(id)a9 messageList:(id)a10
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v17 = a9;
  v24.receiver = self;
  v24.super_class = MUILinkSuggestion;
  v18 = [(MUIResultSuggestion *)&v24 initWithObjectID:a8 messageList:a10 authors:a6 authorEmailAddresses:a7];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_url, a3);
    objc_storeStrong(&v19->_title, a4);
    objc_storeStrong(&v19->_richLinkID, a5);
    objc_storeStrong(&v19->_messageID, a9);
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
  v8 = [(MUIResultSuggestion *)self authors];
  v9 = [(MUIResultSuggestion *)self authorEmailAddresses];
  v10 = [(MUIResultSuggestion *)self objectID];
  v11 = [(MUIResultSuggestion *)self messageList];
  v12 = [v3 stringWithFormat:@"<%@: %p> url=%@ title=%@ richLinkID=%@  authors=%@ authorEmailAddresses=%@ objectID=%@ messageList=%@", v4, self, url, title, richLinkID, v8, v9, v10, v11];

  return v12;
}

@end