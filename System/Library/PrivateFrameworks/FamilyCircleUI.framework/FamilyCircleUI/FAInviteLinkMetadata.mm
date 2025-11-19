@interface FAInviteLinkMetadata
- (LPLinkMetadata)bubbleMetadata;
- (LPLinkMetadata)mailMetadata;
@end

@implementation FAInviteLinkMetadata

- (LPLinkMetadata)mailMetadata
{
  v3 = objc_alloc_init(MEMORY[0x277CD46C8]);
  v4 = [(FAInviteContext *)self->_context inviteURL];
  [v3 setOriginalURL:v4];

  v5 = [(FAInviteContext *)self->_context inviteURL];
  [v3 setURL:v5];

  v6 = objc_alloc_init(MEMORY[0x277CD4718]);
  v7 = [(FAInviteContext *)self->_context mailLinkTitle];
  if (v7)
  {
    [v6 setTitle:v7];
  }

  else
  {
    v8 = [(FAInviteContext *)self->_context title];
    [v6 setTitle:v8];
  }

  v9 = [(FAInviteLinkMetadata *)self icon];
  [v6 setIcon:v9];

  v10 = [(FAInviteContext *)self->_context mailLinkSubtitle];
  if (v10)
  {
    [v6 setApplication:v10];
  }

  else
  {
    v11 = [(FAInviteContext *)self->_context secondaryTitle];
    [v6 setApplication:v11];
  }

  [v3 setSpecialization:v6];

  return v3;
}

- (LPLinkMetadata)bubbleMetadata
{
  v3 = objc_alloc_init(MEMORY[0x277CD46C8]);
  v4 = [(FAInviteContext *)self->_context title];
  [v3 setTitle:v4];

  v5 = [(FAInviteLinkMetadata *)self image];
  [v3 setImage:v5];

  v6 = [(FAInviteContext *)self->_context action];
  [v3 setSummary:v6];

  v7 = [(FAInviteContext *)self->_context inviteURL];
  [v3 setOriginalURL:v7];

  v8 = [(FAInviteContext *)self->_context inviteURL];
  [v3 setURL:v8];

  v9 = [(FAInviteContext *)self->_context eventType];
  if ([v9 isEqualToString:*MEMORY[0x277D08100]])
  {
  }

  else
  {
    v10 = [(FAInviteContext *)self->_context messageBubbleTitle];

    if (!v10)
    {
      goto LABEL_5;
    }
  }

  v11 = objc_alloc_init(MEMORY[0x277CD4710]);
  v12 = [(FAInviteContext *)self->_context title];
  [v11 setTitle:v12];

  v13 = [(FAInviteContext *)self->_context subtitle];
  [v11 setSubtitle:v13];

  v14 = [(FAInviteContext *)self->_context action];
  [v11 setAction:v14];

  v15 = [v3 image];
  [v11 setImage:v15];

  v16 = [(FAInviteLinkMetadata *)self icon];
  [v11 setIcon:v16];

  v17 = [(FAInviteContext *)self->_context secondaryTitle];
  [v11 setKind:v17];

  [v3 setSpecialization:v11];
LABEL_5:

  return v3;
}

@end