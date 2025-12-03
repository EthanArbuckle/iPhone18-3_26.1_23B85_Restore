@interface BMSocialHighlightContact
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMSocialHighlightContact)initWithHandle:(id)handle isSignificant:(BOOL)significant isMe:(BOOL)me;
- (BMSocialHighlightContact)initWithProto:(id)proto;
- (BMSocialHighlightContact)initWithProtoData:(id)data;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMSocialHighlightContact

- (BMSocialHighlightContact)initWithHandle:(id)handle isSignificant:(BOOL)significant isMe:(BOOL)me
{
  handleCopy = handle;
  v13.receiver = self;
  v13.super_class = BMSocialHighlightContact;
  v10 = [(BMEventBase *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_handle, handle);
    v11->_isSignificant = significant;
    v11->_isMe = me;
  }

  return v11;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 3)
  {
    dataCopy = data;
    v5 = [[BMSocialHighlightContact alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)encodeAsProto
{
  proto = [(BMSocialHighlightContact *)self proto];
  data = [proto data];

  return data;
}

- (BMSocialHighlightContact)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = protoCopy;
    handle = [v5 handle];
    if (handle)
    {
      handle2 = [v5 handle];
      self = -[BMSocialHighlightContact initWithHandle:isSignificant:isMe:](self, "initWithHandle:isSignificant:isMe:", handle2, [v5 isSignificant], objc_msgSend(v5, "isMe"));

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMSocialHighlightContact)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBSocialHighlightContact alloc] initWithData:dataCopy];

    self = [(BMSocialHighlightContact *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setIsMe:{-[BMSocialHighlightContact isMe](self, "isMe")}];
  [v3 setIsSignificant:{-[BMSocialHighlightContact isSignificant](self, "isSignificant")}];
  handle = [(BMSocialHighlightContact *)self handle];
  [v3 setHandle:handle];

  return v3;
}

@end