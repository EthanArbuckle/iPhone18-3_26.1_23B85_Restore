@interface CKRecipientTableViewCell
+ (id)cellForRecipient:(id)recipient;
- (CKRecipientTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setServiceColor:(char)color animated:(BOOL)animated;
@end

@implementation CKRecipientTableViewCell

+ (id)cellForRecipient:(id)recipient
{
  recipientCopy = recipient;
  v5 = [CKRecipientTableViewCell alloc];
  v6 = +[(MFRecipientTableViewCell *)CKRecipientTableViewCell];
  v7 = [(CKRecipientTableViewCell *)v5 initWithStyle:0 reuseIdentifier:v6];

  if (v7)
  {
    objc_storeStrong((&v7->super.super.super.super.super.isa + *MEMORY[0x1E6973F18]), recipient);
  }

  return v7;
}

- (CKRecipientTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CKRecipientTableViewCell;
  v4 = [(MFRecipientTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MFRecipientTableViewCell *)v4 setOpaque:0];
  }

  return v5;
}

- (void)setServiceColor:(char)color animated:(BOOL)animated
{
  animatedCopy = animated;
  colorCopy = color;
  v7 = +[CKUIBehavior sharedBehaviors];
  theme = [v7 theme];
  v10 = [theme recipientTextColorForColorType:colorCopy];

  tintColor = [(MFRecipientTableViewCell *)self tintColor];
  LOBYTE(theme) = [tintColor isEqual:v10];

  if ((theme & 1) == 0)
  {
    [(MFRecipientTableViewCell *)self setShouldDimIrrelevantInformation:colorCopy == -1];
    [(MFRecipientTableViewCell *)self setTintColor:v10 animated:animatedCopy];
  }
}

@end