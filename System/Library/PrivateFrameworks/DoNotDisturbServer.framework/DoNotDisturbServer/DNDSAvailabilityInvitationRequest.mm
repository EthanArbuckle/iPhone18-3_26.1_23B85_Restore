@interface DNDSAvailabilityInvitationRequest
- (BOOL)isEqual:(id)equal;
- (DNDSAvailabilityInvitationRequest)initWithHandles:(id)handles invitation:(id)invitation;
- (unint64_t)hash;
@end

@implementation DNDSAvailabilityInvitationRequest

- (DNDSAvailabilityInvitationRequest)initWithHandles:(id)handles invitation:(id)invitation
{
  handlesCopy = handles;
  invitationCopy = invitation;
  v12.receiver = self;
  v12.super_class = DNDSAvailabilityInvitationRequest;
  v9 = [(DNDSAvailabilityInvitationRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_handles, handles);
    objc_storeStrong(&v10->_invitation, invitation);
  }

  return v10;
}

- (unint64_t)hash
{
  handles = [(DNDSAvailabilityInvitationRequest *)self handles];
  v4 = [handles hash];
  invitation = [(DNDSAvailabilityInvitationRequest *)self invitation];
  v6 = [invitation hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      handles = [(DNDSAvailabilityInvitationRequest *)self handles];
      handles2 = [(DNDSAvailabilityInvitationRequest *)v6 handles];
      if (handles != handles2)
      {
        handles3 = [(DNDSAvailabilityInvitationRequest *)self handles];
        if (!handles3)
        {
          v13 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v3 = handles3;
        handles4 = [(DNDSAvailabilityInvitationRequest *)v6 handles];
        if (!handles4)
        {
          v13 = 0;
LABEL_23:

          goto LABEL_24;
        }

        handles5 = [(DNDSAvailabilityInvitationRequest *)self handles];
        handles6 = [(DNDSAvailabilityInvitationRequest *)v6 handles];
        if (![handles5 isEqual:handles6])
        {
          v13 = 0;
LABEL_22:

          goto LABEL_23;
        }

        v24 = handles6;
        v25 = handles5;
        v26 = handles4;
      }

      invitation = [(DNDSAvailabilityInvitationRequest *)self invitation];
      invitation2 = [(DNDSAvailabilityInvitationRequest *)v6 invitation];
      v16 = invitation2;
      if (invitation == invitation2)
      {

        v13 = 1;
      }

      else
      {
        invitation3 = [(DNDSAvailabilityInvitationRequest *)self invitation];
        if (invitation3)
        {
          v18 = invitation3;
          invitation4 = [(DNDSAvailabilityInvitationRequest *)v6 invitation];
          if (invitation4)
          {
            invitation5 = [(DNDSAvailabilityInvitationRequest *)self invitation];
            [(DNDSAvailabilityInvitationRequest *)v6 invitation];
            v20 = v23 = v3;
            v13 = [invitation5 isEqual:v20];

            v3 = v23;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {

          v13 = 0;
        }
      }

      handles5 = v25;
      handles4 = v26;
      handles6 = v24;
      if (handles == handles2)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    v13 = 0;
  }

LABEL_25:

  return v13;
}

@end