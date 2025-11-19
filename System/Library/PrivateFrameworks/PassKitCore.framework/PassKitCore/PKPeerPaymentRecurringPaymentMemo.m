@interface PKPeerPaymentRecurringPaymentMemo
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentRecurringPaymentMemo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentRecurringPaymentMemo

- (PKPeerPaymentRecurringPaymentMemo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentRecurringPaymentMemo;
  v5 = [(PKPeerPaymentRecurringPaymentMemo *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"emoji"];
    emoji = v5->_emoji;
    v5->_emoji = v8;

    v5->_color = [v4 decodeIntegerForKey:@"color"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = a3;
  [v5 encodeObject:text forKey:@"text"];
  [v5 encodeObject:self->_emoji forKey:@"emoji"];
  [v5 encodeInteger:self->_color forKey:@"color"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_text];
  [v3 safelyAddObject:self->_emoji];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_color - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  emoji = self->_emoji;
  v6 = v4[2];
  if (emoji && v6)
  {
    if (([(NSString *)emoji isEqual:?]& 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (emoji != v6)
  {
    goto LABEL_12;
  }

  text = self->_text;
  v8 = v4[1];
  if (!text || !v8)
  {
    if (text == v8)
    {
      goto LABEL_10;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if (([(NSString *)text isEqual:?]& 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v9 = self->_color == v4[3];
LABEL_13:

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"text: '%@'; ", self->_text];
  [v3 appendFormat:@"emoji: '%@'; ", self->_emoji];
  v4 = PKSemanticColorToString(self->_color);
  [v3 appendFormat:@"color: '%@'; ", v4];

  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPeerPaymentRecurringPaymentMemo allocWithZone:](PKPeerPaymentRecurringPaymentMemo init];
  v6 = [(NSString *)self->_emoji copyWithZone:a3];
  emoji = v5->_emoji;
  v5->_emoji = v6;

  v5->_color = self->_color;
  v8 = [(NSString *)self->_text copyWithZone:a3];
  text = v5->_text;
  v5->_text = v8;

  return v5;
}

@end