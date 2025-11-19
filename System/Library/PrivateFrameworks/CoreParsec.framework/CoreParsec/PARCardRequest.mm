@interface PARCardRequest
- (PARCardRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PARCardRequest

- (PARCardRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PARCardRequest;
  v5 = [(PARRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    cardURL = v5->_cardURL;
    v5->_cardURL = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PARCardRequest;
  v4 = a3;
  [(PARRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_cardURL forKey:{@"url", v5.receiver, v5.super_class}];
}

@end