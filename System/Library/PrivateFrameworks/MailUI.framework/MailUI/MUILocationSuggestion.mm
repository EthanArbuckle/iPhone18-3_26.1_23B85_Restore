@interface MUILocationSuggestion
+ (id)suggestionWithAddress:(id)a3 date:(id)a4 authors:(id)a5 authorEmailAddresses:(id)a6 objectID:(id)a7 messageList:(id)a8;
- (MUILocationSuggestion)initWithAddress:(id)a3 date:(id)a4 authors:(id)a5 authorEmailAddresses:(id)a6 objectID:(id)a7 messageList:(id)a8;
- (id)description;
@end

@implementation MUILocationSuggestion

+ (id)suggestionWithAddress:(id)a3 date:(id)a4 authors:(id)a5 authorEmailAddresses:(id)a6 objectID:(id)a7 messageList:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[a1 alloc] initWithAddress:v19 date:v18 authors:v17 authorEmailAddresses:v16 objectID:v15 messageList:v14];

  return v20;
}

- (MUILocationSuggestion)initWithAddress:(id)a3 date:(id)a4 authors:(id)a5 authorEmailAddresses:(id)a6 objectID:(id)a7 messageList:(id)a8
{
  v15 = a3;
  v16 = a4;
  v20.receiver = self;
  v20.super_class = MUILocationSuggestion;
  v17 = [(MUIResultSuggestion *)&v20 initWithObjectID:a7 messageList:a8 authors:a5 authorEmailAddresses:a6];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_address, a3);
    objc_storeStrong(&v18->_date, a4);
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  address = self->_address;
  date = self->_date;
  v7 = [(MUIResultSuggestion *)self authors];
  v8 = [(MUIResultSuggestion *)self authorEmailAddresses];
  v9 = [(MUIResultSuggestion *)self objectID];
  v10 = [(MUIResultSuggestion *)self messageList];
  v11 = [v3 stringWithFormat:@"<%@: %p> address=%@ date=%@ authors=%@ authorEmailAddresses=%@ objectID=%@ messageList=%@", v4, self, address, date, v7, v8, v9, v10];

  return v11;
}

@end