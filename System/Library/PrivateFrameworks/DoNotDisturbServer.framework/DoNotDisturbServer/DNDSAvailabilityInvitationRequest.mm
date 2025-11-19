@interface DNDSAvailabilityInvitationRequest
- (BOOL)isEqual:(id)a3;
- (DNDSAvailabilityInvitationRequest)initWithHandles:(id)a3 invitation:(id)a4;
- (unint64_t)hash;
@end

@implementation DNDSAvailabilityInvitationRequest

- (DNDSAvailabilityInvitationRequest)initWithHandles:(id)a3 invitation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DNDSAvailabilityInvitationRequest;
  v9 = [(DNDSAvailabilityInvitationRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_handles, a3);
    objc_storeStrong(&v10->_invitation, a4);
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(DNDSAvailabilityInvitationRequest *)self handles];
  v4 = [v3 hash];
  v5 = [(DNDSAvailabilityInvitationRequest *)self invitation];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDSAvailabilityInvitationRequest *)self handles];
      v8 = [(DNDSAvailabilityInvitationRequest *)v6 handles];
      if (v7 != v8)
      {
        v9 = [(DNDSAvailabilityInvitationRequest *)self handles];
        if (!v9)
        {
          v13 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v3 = v9;
        v10 = [(DNDSAvailabilityInvitationRequest *)v6 handles];
        if (!v10)
        {
          v13 = 0;
LABEL_23:

          goto LABEL_24;
        }

        v11 = [(DNDSAvailabilityInvitationRequest *)self handles];
        v12 = [(DNDSAvailabilityInvitationRequest *)v6 handles];
        if (![v11 isEqual:v12])
        {
          v13 = 0;
LABEL_22:

          goto LABEL_23;
        }

        v24 = v12;
        v25 = v11;
        v26 = v10;
      }

      v14 = [(DNDSAvailabilityInvitationRequest *)self invitation];
      v15 = [(DNDSAvailabilityInvitationRequest *)v6 invitation];
      v16 = v15;
      if (v14 == v15)
      {

        v13 = 1;
      }

      else
      {
        v17 = [(DNDSAvailabilityInvitationRequest *)self invitation];
        if (v17)
        {
          v18 = v17;
          v19 = [(DNDSAvailabilityInvitationRequest *)v6 invitation];
          if (v19)
          {
            v22 = [(DNDSAvailabilityInvitationRequest *)self invitation];
            [(DNDSAvailabilityInvitationRequest *)v6 invitation];
            v20 = v23 = v3;
            v13 = [v22 isEqual:v20];

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

      v11 = v25;
      v10 = v26;
      v12 = v24;
      if (v7 == v8)
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