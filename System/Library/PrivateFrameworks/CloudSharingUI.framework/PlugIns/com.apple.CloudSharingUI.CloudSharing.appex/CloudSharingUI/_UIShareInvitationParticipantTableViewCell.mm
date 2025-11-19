@interface _UIShareInvitationParticipantTableViewCell
- (_UIShareInvitationParticipantTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation _UIShareInvitationParticipantTableViewCell

- (_UIShareInvitationParticipantTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = _UIShareInvitationParticipantTableViewCell;
  v4 = [(_UIShareInvitationParticipantTableViewCell *)&v10 initWithStyle:3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    v6 = [(_UIShareInvitationParticipantTableViewCell *)v4 textLabel];
    [v6 setFont:v5];

    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
    v8 = [(_UIShareInvitationParticipantTableViewCell *)v4 detailTextLabel];
    [v8 setFont:v7];
  }

  return v4;
}

@end