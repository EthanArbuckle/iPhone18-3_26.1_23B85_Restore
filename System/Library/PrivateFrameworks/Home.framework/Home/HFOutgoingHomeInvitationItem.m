@interface HFOutgoingHomeInvitationItem
- (HFOutgoingHomeInvitationItem)initWithOutgoingInvitation:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HFOutgoingHomeInvitationItem

- (HFOutgoingHomeInvitationItem)initWithOutgoingInvitation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFOutgoingHomeInvitationItem;
  v6 = [(HFOutgoingHomeInvitationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outgoingInvitation, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HFOutgoingHomeInvitationItem alloc];
  v5 = [(HFOutgoingHomeInvitationItem *)self outgoingInvitation];
  v6 = [(HFOutgoingHomeInvitationItem *)v4 initWithOutgoingInvitation:v5];

  return v6;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_alloc_init(HFMutableItemUpdateOutcome);
  v5 = [(HFOutgoingHomeInvitationItem *)self outgoingInvitation];
  v6 = [v5 invitee];
  v7 = [v6 name];
  [(HFMutableItemUpdateOutcome *)v4 setObject:v7 forKeyedSubscript:@"title"];

  v8 = [HFUserHandle alloc];
  v9 = [(HFOutgoingHomeInvitationItem *)self outgoingInvitation];
  v10 = [v9 invitee];
  v11 = [v10 userID];
  v12 = [(HFUserHandle *)v8 initWithType:1 userID:v11];
  [(HFMutableItemUpdateOutcome *)v4 setObject:v12 forKeyedSubscript:@"userID"];

  v13 = MEMORY[0x277CCABB0];
  v14 = [(HFOutgoingHomeInvitationItem *)self outgoingInvitation];
  v15 = [v13 numberWithInteger:{objc_msgSend(v14, "invitationState")}];
  [(HFMutableItemUpdateOutcome *)v4 setObject:v15 forKeyedSubscript:@"invitationState"];

  v16 = [(HFOutgoingHomeInvitationItem *)self outgoingInvitation];
  v17 = HFLocalizedStringFromHMHomeInvitationState([v16 invitationState]);
  [(HFMutableItemUpdateOutcome *)v4 setObject:v17 forKeyedSubscript:@"description"];

  v18 = [(HFOutgoingHomeInvitationItem *)self outgoingInvitation];
  v19 = HFLocalizedStringFromHMHomeInvitationState([v18 invitationState]);
  [(HFMutableItemUpdateOutcome *)v4 setObject:v19 forKeyedSubscript:@"userAccessDescription"];

  v20 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v20;
}

@end