@interface FAInviteLinkMetadata
- (LPLinkMetadata)bubbleMetadata;
- (LPLinkMetadata)mailMetadata;
@end

@implementation FAInviteLinkMetadata

- (LPLinkMetadata)mailMetadata
{
  v3 = objc_alloc_init(MEMORY[0x277CD46C8]);
  inviteURL = [(FAInviteContext *)self->_context inviteURL];
  [v3 setOriginalURL:inviteURL];

  inviteURL2 = [(FAInviteContext *)self->_context inviteURL];
  [v3 setURL:inviteURL2];

  v6 = objc_alloc_init(MEMORY[0x277CD4718]);
  mailLinkTitle = [(FAInviteContext *)self->_context mailLinkTitle];
  if (mailLinkTitle)
  {
    [v6 setTitle:mailLinkTitle];
  }

  else
  {
    title = [(FAInviteContext *)self->_context title];
    [v6 setTitle:title];
  }

  icon = [(FAInviteLinkMetadata *)self icon];
  [v6 setIcon:icon];

  mailLinkSubtitle = [(FAInviteContext *)self->_context mailLinkSubtitle];
  if (mailLinkSubtitle)
  {
    [v6 setApplication:mailLinkSubtitle];
  }

  else
  {
    secondaryTitle = [(FAInviteContext *)self->_context secondaryTitle];
    [v6 setApplication:secondaryTitle];
  }

  [v3 setSpecialization:v6];

  return v3;
}

- (LPLinkMetadata)bubbleMetadata
{
  v3 = objc_alloc_init(MEMORY[0x277CD46C8]);
  title = [(FAInviteContext *)self->_context title];
  [v3 setTitle:title];

  image = [(FAInviteLinkMetadata *)self image];
  [v3 setImage:image];

  action = [(FAInviteContext *)self->_context action];
  [v3 setSummary:action];

  inviteURL = [(FAInviteContext *)self->_context inviteURL];
  [v3 setOriginalURL:inviteURL];

  inviteURL2 = [(FAInviteContext *)self->_context inviteURL];
  [v3 setURL:inviteURL2];

  eventType = [(FAInviteContext *)self->_context eventType];
  if ([eventType isEqualToString:*MEMORY[0x277D08100]])
  {
  }

  else
  {
    messageBubbleTitle = [(FAInviteContext *)self->_context messageBubbleTitle];

    if (!messageBubbleTitle)
    {
      goto LABEL_5;
    }
  }

  v11 = objc_alloc_init(MEMORY[0x277CD4710]);
  title2 = [(FAInviteContext *)self->_context title];
  [v11 setTitle:title2];

  subtitle = [(FAInviteContext *)self->_context subtitle];
  [v11 setSubtitle:subtitle];

  action2 = [(FAInviteContext *)self->_context action];
  [v11 setAction:action2];

  image2 = [v3 image];
  [v11 setImage:image2];

  icon = [(FAInviteLinkMetadata *)self icon];
  [v11 setIcon:icon];

  secondaryTitle = [(FAInviteContext *)self->_context secondaryTitle];
  [v11 setKind:secondaryTitle];

  [v3 setSpecialization:v11];
LABEL_5:

  return v3;
}

@end