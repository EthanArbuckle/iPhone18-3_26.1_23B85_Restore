@interface BMSocialHighlightContact
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMSocialHighlightContact)initWithHandle:(id)a3 isSignificant:(BOOL)a4 isMe:(BOOL)a5;
- (BMSocialHighlightContact)initWithProto:(id)a3;
- (BMSocialHighlightContact)initWithProtoData:(id)a3;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMSocialHighlightContact

- (BMSocialHighlightContact)initWithHandle:(id)a3 isSignificant:(BOOL)a4 isMe:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = BMSocialHighlightContact;
  v10 = [(BMEventBase *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_handle, a3);
    v11->_isSignificant = a4;
    v11->_isMe = a5;
  }

  return v11;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 3)
  {
    v4 = a3;
    v5 = [[BMSocialHighlightContact alloc] initWithProtoData:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)encodeAsProto
{
  v2 = [(BMSocialHighlightContact *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMSocialHighlightContact)initWithProto:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 handle];
    if (v6)
    {
      v7 = [v5 handle];
      self = -[BMSocialHighlightContact initWithHandle:isSignificant:isMe:](self, "initWithHandle:isSignificant:isMe:", v7, [v5 isSignificant], objc_msgSend(v5, "isMe"));

      v8 = self;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BMSocialHighlightContact)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBSocialHighlightContact alloc] initWithData:v4];

    self = [(BMSocialHighlightContact *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setIsMe:{-[BMSocialHighlightContact isMe](self, "isMe")}];
  [v3 setIsSignificant:{-[BMSocialHighlightContact isSignificant](self, "isSignificant")}];
  v4 = [(BMSocialHighlightContact *)self handle];
  [v3 setHandle:v4];

  return v3;
}

@end