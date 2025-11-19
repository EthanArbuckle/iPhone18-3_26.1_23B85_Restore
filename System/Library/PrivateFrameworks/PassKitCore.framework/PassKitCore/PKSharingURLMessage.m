@interface PKSharingURLMessage
- (BOOL)configureWithContent:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKSharingURLMessage)initWithURL:(id)a3;
- (id)description;
@end

@implementation PKSharingURLMessage

- (PKSharingURLMessage)initWithURL:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = @"url";
    v4 = [a3 absoluteString];
    v10[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

    v8.receiver = self;
    v8.super_class = PKSharingURLMessage;
    self = [(PKSharingGenericMessage *)&v8 initWithFormat:3 type:1003 genericSharingDict:MEMORY[0x1E695E0F8] appleSharingDict:v5];

    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)configureWithContent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKSharingURLMessage;
  if ([(PKSharingGenericMessage *)&v10 configureWithContent:v4])
  {
    v5 = [v4 PKDictionaryForKey:@"apple"];
    v6 = [v5 PKURLForKey:@"url"];
    url = self->_url;
    self->_url = v6;

    v8 = self->_url != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKSharingMessage *)self identifier];
  [v3 appendFormat:@"identifier: '%@'; ", v4];

  v5 = PKSharingMessageTypeToString([(PKSharingMessage *)self type]);
  [v3 appendFormat:@"type: '%@'; ", v5];

  [v3 appendFormat:@"url: '%@'; ", self->_url];
  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(self) = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (self)
    {
      v11.receiver = self;
      v11.super_class = PKSharingURLMessage;
      if ([(PKSharingGenericMessage *)&v11 isEqual:v6])
      {
        url = self->_url;
        v8 = v6->_url;
        if (url)
        {
          v9 = v8 == 0;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          LOBYTE(self) = url == v8;
        }

        else
        {
          LOBYTE(self) = [(NSURL *)url isEqual:?];
        }
      }

      else
      {
        LOBYTE(self) = 0;
      }
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

@end