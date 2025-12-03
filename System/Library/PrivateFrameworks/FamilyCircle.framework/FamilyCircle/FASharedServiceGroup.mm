@interface FASharedServiceGroup
- (FASharedServiceGroup)initWithServerResponse:(id)response;
- (id)description;
@end

@implementation FASharedServiceGroup

- (FASharedServiceGroup)initWithServerResponse:(id)response
{
  responseCopy = response;
  v13.receiver = self;
  v13.super_class = FASharedServiceGroup;
  v5 = [(FASharedServiceGroup *)&v13 init];
  if (v5)
  {
    v6 = [responseCopy objectForKeyedSubscript:@"groupHeaderText"];
    headerText = v5->_headerText;
    v5->_headerText = v6;

    v8 = [responseCopy objectForKeyedSubscript:@"groupFooterText"];
    footerText = v5->_footerText;
    v5->_footerText = v8;

    v10 = [responseCopy objectForKeyedSubscript:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v10;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  headerText = [(FASharedServiceGroup *)self headerText];
  groupID = [(FASharedServiceGroup *)self groupID];
  services = [(FASharedServiceGroup *)self services];
  v7 = [v3 stringWithFormat:@"Header:%@ ID:%@ Services Count:%lu", headerText, groupID, objc_msgSend(services, "count")];

  return v7;
}

@end