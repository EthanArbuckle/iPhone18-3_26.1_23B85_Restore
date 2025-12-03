@interface HFOutgoingHomeInvitationItem
- (HFOutgoingHomeInvitationItem)initWithOutgoingInvitation:(id)invitation;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HFOutgoingHomeInvitationItem

- (HFOutgoingHomeInvitationItem)initWithOutgoingInvitation:(id)invitation
{
  invitationCopy = invitation;
  v9.receiver = self;
  v9.super_class = HFOutgoingHomeInvitationItem;
  v6 = [(HFOutgoingHomeInvitationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outgoingInvitation, invitation);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HFOutgoingHomeInvitationItem alloc];
  outgoingInvitation = [(HFOutgoingHomeInvitationItem *)self outgoingInvitation];
  v6 = [(HFOutgoingHomeInvitationItem *)v4 initWithOutgoingInvitation:outgoingInvitation];

  return v6;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = objc_alloc_init(HFMutableItemUpdateOutcome);
  outgoingInvitation = [(HFOutgoingHomeInvitationItem *)self outgoingInvitation];
  invitee = [outgoingInvitation invitee];
  name = [invitee name];
  [(HFMutableItemUpdateOutcome *)v4 setObject:name forKeyedSubscript:@"title"];

  v8 = [HFUserHandle alloc];
  outgoingInvitation2 = [(HFOutgoingHomeInvitationItem *)self outgoingInvitation];
  invitee2 = [outgoingInvitation2 invitee];
  userID = [invitee2 userID];
  v12 = [(HFUserHandle *)v8 initWithType:1 userID:userID];
  [(HFMutableItemUpdateOutcome *)v4 setObject:v12 forKeyedSubscript:@"userID"];

  v13 = MEMORY[0x277CCABB0];
  outgoingInvitation3 = [(HFOutgoingHomeInvitationItem *)self outgoingInvitation];
  v15 = [v13 numberWithInteger:{objc_msgSend(outgoingInvitation3, "invitationState")}];
  [(HFMutableItemUpdateOutcome *)v4 setObject:v15 forKeyedSubscript:@"invitationState"];

  outgoingInvitation4 = [(HFOutgoingHomeInvitationItem *)self outgoingInvitation];
  v17 = HFLocalizedStringFromHMHomeInvitationState([outgoingInvitation4 invitationState]);
  [(HFMutableItemUpdateOutcome *)v4 setObject:v17 forKeyedSubscript:@"description"];

  outgoingInvitation5 = [(HFOutgoingHomeInvitationItem *)self outgoingInvitation];
  v19 = HFLocalizedStringFromHMHomeInvitationState([outgoingInvitation5 invitationState]);
  [(HFMutableItemUpdateOutcome *)v4 setObject:v19 forKeyedSubscript:@"userAccessDescription"];

  v20 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v20;
}

@end