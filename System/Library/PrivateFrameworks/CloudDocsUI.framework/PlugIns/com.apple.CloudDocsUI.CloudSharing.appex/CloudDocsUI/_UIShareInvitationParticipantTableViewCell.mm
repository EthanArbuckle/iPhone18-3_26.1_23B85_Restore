@interface _UIShareInvitationParticipantTableViewCell
- (_UIShareInvitationParticipantTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation _UIShareInvitationParticipantTableViewCell

- (_UIShareInvitationParticipantTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = _UIShareInvitationParticipantTableViewCell;
  v4 = [(_UIShareInvitationParticipantTableViewCell *)&v10 initWithStyle:3 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    textLabel = [(_UIShareInvitationParticipantTableViewCell *)v4 textLabel];
    [textLabel setFont:v5];

    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
    detailTextLabel = [(_UIShareInvitationParticipantTableViewCell *)v4 detailTextLabel];
    [detailTextLabel setFont:v7];
  }

  return v4;
}

@end