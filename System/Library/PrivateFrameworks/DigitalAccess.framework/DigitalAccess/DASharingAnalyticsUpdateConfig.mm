@interface DASharingAnalyticsUpdateConfig
- (DASharingAnalyticsUpdateConfig)initWithCoder:(id)a3;
- (DASharingAnalyticsUpdateConfig)initWithInvitationIdentifiers:(id)a3 keyIdentifier:(id)a4 recipientFlow:(BOOL)a5 analyticsData:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DASharingAnalyticsUpdateConfig

- (DASharingAnalyticsUpdateConfig)initWithInvitationIdentifiers:(id)a3 keyIdentifier:(id)a4 recipientFlow:(BOOL)a5 analyticsData:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = DASharingAnalyticsUpdateConfig;
  v14 = [(DASharingAnalyticsUpdateConfig *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_invitationIdentifiers, a3);
    objc_storeStrong(&v15->_keyIdentifier, a4);
    v15->_recipientFlow = a5;
    objc_storeStrong(&v15->_analyticsData, a6);
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DASharingAnalyticsUpdateConfig *)self invitationIdentifiers];
  [v4 encodeObject:v5 forKey:@"invitationIdentifiers"];

  v6 = [(DASharingAnalyticsUpdateConfig *)self keyIdentifier];
  [v4 encodeObject:v6 forKey:@"keyIdentifier"];

  [v4 encodeBool:-[DASharingAnalyticsUpdateConfig recipientFlow](self forKey:{"recipientFlow"), @"recipientFlow"}];
  v7 = [(DASharingAnalyticsUpdateConfig *)self analyticsData];
  [v4 encodeObject:v7 forKey:@"analyticsData"];
}

- (DASharingAnalyticsUpdateConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = DASharingAnalyticsUpdateConfig;
  v5 = [(DASharingAnalyticsUpdateConfig *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"invitationIdentifiers"];
    invitationIdentifiers = v5->_invitationIdentifiers;
    v5->_invitationIdentifiers = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v11;

    v5->_recipientFlow = [v4 decodeBoolForKey:@"recipientFlow"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"analyticsData"];
    analyticsData = v5->_analyticsData;
    v5->_analyticsData = v13;
  }

  return v5;
}

@end