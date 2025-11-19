@interface FCDraftFeedDescriptor
- (FCDraftFeedDescriptor)initWithChannel:(id)a3 articleListID:(id)a4 issueListID:(id)a5;
- (id)name;
@end

@implementation FCDraftFeedDescriptor

- (FCDraftFeedDescriptor)initWithChannel:(id)a3 articleListID:(id)a4 issueListID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x1E696AEC0];
  v13 = [v9 identifier];
  v14 = [v12 stringWithFormat:@"drafts-%@", v13];

  v22.receiver = self;
  v22.super_class = FCDraftFeedDescriptor;
  v15 = [(FCFeedDescriptor *)&v22 initWithIdentifier:v14];
  v16 = v15;
  if (v10)
  {
    if (v15)
    {
      objc_storeStrong(&v15->_channel, a3);
      v17 = [v10 copy];
      articleListID = v16->_articleListID;
      v16->_articleListID = v17;

      v19 = [v11 copy];
      issueListID = v16->_issueListID;
      v16->_issueListID = v19;
    }

    else
    {
      issueListID = 0;
    }
  }

  else
  {
    issueListID = v15;
    v16 = 0;
  }

  return v16;
}

- (id)name
{
  v2 = FCBundle();
  v3 = [v2 localizedStringForKey:@"Drafts" value:&stru_1F2DC7DC0 table:0];

  return v3;
}

@end