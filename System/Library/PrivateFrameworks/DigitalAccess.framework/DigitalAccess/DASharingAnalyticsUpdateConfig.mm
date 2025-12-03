@interface DASharingAnalyticsUpdateConfig
- (DASharingAnalyticsUpdateConfig)initWithCoder:(id)coder;
- (DASharingAnalyticsUpdateConfig)initWithInvitationIdentifiers:(id)identifiers keyIdentifier:(id)identifier recipientFlow:(BOOL)flow analyticsData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DASharingAnalyticsUpdateConfig

- (DASharingAnalyticsUpdateConfig)initWithInvitationIdentifiers:(id)identifiers keyIdentifier:(id)identifier recipientFlow:(BOOL)flow analyticsData:(id)data
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = DASharingAnalyticsUpdateConfig;
  v14 = [(DASharingAnalyticsUpdateConfig *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_invitationIdentifiers, identifiers);
    objc_storeStrong(&v15->_keyIdentifier, identifier);
    v15->_recipientFlow = flow;
    objc_storeStrong(&v15->_analyticsData, data);
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  invitationIdentifiers = [(DASharingAnalyticsUpdateConfig *)self invitationIdentifiers];
  [coderCopy encodeObject:invitationIdentifiers forKey:@"invitationIdentifiers"];

  keyIdentifier = [(DASharingAnalyticsUpdateConfig *)self keyIdentifier];
  [coderCopy encodeObject:keyIdentifier forKey:@"keyIdentifier"];

  [coderCopy encodeBool:-[DASharingAnalyticsUpdateConfig recipientFlow](self forKey:{"recipientFlow"), @"recipientFlow"}];
  analyticsData = [(DASharingAnalyticsUpdateConfig *)self analyticsData];
  [coderCopy encodeObject:analyticsData forKey:@"analyticsData"];
}

- (DASharingAnalyticsUpdateConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = DASharingAnalyticsUpdateConfig;
  v5 = [(DASharingAnalyticsUpdateConfig *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"invitationIdentifiers"];
    invitationIdentifiers = v5->_invitationIdentifiers;
    v5->_invitationIdentifiers = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v11;

    v5->_recipientFlow = [coderCopy decodeBoolForKey:@"recipientFlow"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"analyticsData"];
    analyticsData = v5->_analyticsData;
    v5->_analyticsData = v13;
  }

  return v5;
}

@end