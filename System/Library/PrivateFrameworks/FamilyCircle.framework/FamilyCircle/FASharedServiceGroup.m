@interface FASharedServiceGroup
- (FASharedServiceGroup)initWithServerResponse:(id)a3;
- (id)description;
@end

@implementation FASharedServiceGroup

- (FASharedServiceGroup)initWithServerResponse:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FASharedServiceGroup;
  v5 = [(FASharedServiceGroup *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"groupHeaderText"];
    headerText = v5->_headerText;
    v5->_headerText = v6;

    v8 = [v4 objectForKeyedSubscript:@"groupFooterText"];
    footerText = v5->_footerText;
    v5->_footerText = v8;

    v10 = [v4 objectForKeyedSubscript:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v10;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FASharedServiceGroup *)self headerText];
  v5 = [(FASharedServiceGroup *)self groupID];
  v6 = [(FASharedServiceGroup *)self services];
  v7 = [v3 stringWithFormat:@"Header:%@ ID:%@ Services Count:%lu", v4, v5, objc_msgSend(v6, "count")];

  return v7;
}

@end