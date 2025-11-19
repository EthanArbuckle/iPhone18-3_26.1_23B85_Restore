@interface CKRecipientTableViewCell
+ (id)cellForRecipient:(id)a3;
- (CKRecipientTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setServiceColor:(char)a3 animated:(BOOL)a4;
@end

@implementation CKRecipientTableViewCell

+ (id)cellForRecipient:(id)a3
{
  v4 = a3;
  v5 = [CKRecipientTableViewCell alloc];
  v6 = +[(MFRecipientTableViewCell *)CKRecipientTableViewCell];
  v7 = [(CKRecipientTableViewCell *)v5 initWithStyle:0 reuseIdentifier:v6];

  if (v7)
  {
    objc_storeStrong((&v7->super.super.super.super.super.isa + *MEMORY[0x1E6973F18]), a3);
  }

  return v7;
}

- (CKRecipientTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = CKRecipientTableViewCell;
  v4 = [(MFRecipientTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(MFRecipientTableViewCell *)v4 setOpaque:0];
  }

  return v5;
}

- (void)setServiceColor:(char)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 theme];
  v10 = [v8 recipientTextColorForColorType:v5];

  v9 = [(MFRecipientTableViewCell *)self tintColor];
  LOBYTE(v8) = [v9 isEqual:v10];

  if ((v8 & 1) == 0)
  {
    [(MFRecipientTableViewCell *)self setShouldDimIrrelevantInformation:v5 == -1];
    [(MFRecipientTableViewCell *)self setTintColor:v10 animated:v4];
  }
}

@end