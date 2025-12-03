@interface FCDraftFeedDescriptor
- (FCDraftFeedDescriptor)initWithChannel:(id)channel articleListID:(id)d issueListID:(id)iD;
- (id)name;
@end

@implementation FCDraftFeedDescriptor

- (FCDraftFeedDescriptor)initWithChannel:(id)channel articleListID:(id)d issueListID:(id)iD
{
  channelCopy = channel;
  dCopy = d;
  iDCopy = iD;
  v12 = MEMORY[0x1E696AEC0];
  identifier = [channelCopy identifier];
  v14 = [v12 stringWithFormat:@"drafts-%@", identifier];

  v22.receiver = self;
  v22.super_class = FCDraftFeedDescriptor;
  v15 = [(FCFeedDescriptor *)&v22 initWithIdentifier:v14];
  v16 = v15;
  if (dCopy)
  {
    if (v15)
    {
      objc_storeStrong(&v15->_channel, channel);
      v17 = [dCopy copy];
      articleListID = v16->_articleListID;
      v16->_articleListID = v17;

      v19 = [iDCopy copy];
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