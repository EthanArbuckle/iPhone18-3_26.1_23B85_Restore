@interface NPKRemotePassAction
- (BOOL)supportsCommutePlanRenewal;
- (BOOL)supportsTopUp;
- (NPKRemotePassAction)initWithCoder:(id)coder;
- (NPKRemotePassAction)initWithMessage:(id)message protoEnvelope:(id)envelope image:(id)image;
- (NPKRemotePassAction)initWithProtoEnvelope:(id)envelope image:(id)image;
- (NPKRemotePassAction)initWithUnderlyingMessage:(id)message;
- (id)_imageForMessage:(id)message;
- (id)_messageDataURLWithData:(id)data;
- (id)_messageDataWithDataURL:(id)l;
- (id)description;
- (unint64_t)cardType;
- (void)_updateDataURL;
- (void)_updateLayoutContentsWithImage:(id)image;
- (void)_updateSummaryText;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKRemotePassAction

- (NPKRemotePassAction)initWithUnderlyingMessage:(id)message
{
  messageCopy = message;
  v5 = [messageCopy URL];
  v6 = [(NPKRemotePassAction *)self _messageDataWithDataURL:v5];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D2BA30]) initWithData:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NPKRemotePassAction *)self _imageForMessage:messageCopy];
  v9 = [(NPKRemotePassAction *)self initWithMessage:messageCopy protoEnvelope:v7 image:v8];

  return v9;
}

- (NPKRemotePassAction)initWithProtoEnvelope:(id)envelope image:(id)image
{
  v6 = MEMORY[0x277CD68F8];
  imageCopy = image;
  envelopeCopy = envelope;
  v9 = [v6 alloc];
  v10 = objc_alloc_init(MEMORY[0x277CD6920]);
  v11 = [v9 initWithSession:v10];

  v12 = [(NPKRemotePassAction *)self initWithMessage:v11 protoEnvelope:envelopeCopy image:imageCopy];
  return v12;
}

- (NPKRemotePassAction)initWithMessage:(id)message protoEnvelope:(id)envelope image:(id)image
{
  messageCopy = message;
  envelopeCopy = envelope;
  imageCopy = image;
  v14.receiver = self;
  v14.super_class = NPKRemotePassAction;
  v12 = [(NPKRemotePassAction *)&v14 init];
  if (v12)
  {
    [messageCopy setRequiresValidation:1];
    objc_storeStrong(&v12->_underlyingMessage, message);
    objc_storeStrong(&v12->_protoEnvelope, envelope);
    [(NPKRemotePassAction *)v12 _updateDataURL];
    [(NPKRemotePassAction *)v12 _updateSummaryText];
    [(NPKRemotePassAction *)v12 _updateLayoutContentsWithImage:imageCopy];
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if ([(NPKRemotePassAction *)self isResponse])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  passLocalizedDescription = [(NPKRemotePassAction *)self passLocalizedDescription];
  caption = [(NPKRemotePassAction *)self caption];
  image = [(NPKRemotePassAction *)self image];
  v9 = [v3 stringWithFormat:@"<%@: %p> isResponse: %@, passLocalizedDescription: %@, caption: %@, image: %@, underlyingMessage: %@", v4, self, v5, passLocalizedDescription, caption, image, self->_underlyingMessage];

  return v9;
}

- (NPKRemotePassAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NPKRemotePassAction;
  v5 = [(NPKRemotePassAction *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"underlyingMessage"];
    underlyingMessage = v5->_underlyingMessage;
    v5->_underlyingMessage = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protoEnvelope"];
    protoEnvelope = v5->_protoEnvelope;
    v5->_protoEnvelope = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  underlyingMessage = self->_underlyingMessage;
  coderCopy = coder;
  [coderCopy encodeObject:underlyingMessage forKey:@"underlyingMessage"];
  [coderCopy encodeObject:self->_protoEnvelope forKey:@"protoEnvelope"];
}

- (BOOL)supportsTopUp
{
  if ((PKIsPhone() & 1) != 0 || (PKIsPod() & 1) != 0 || (v3 = PKIsWatch()) != 0)
  {
    LOBYTE(v3) = [(NPKProtoRemotePassActionEnvelope *)self->_protoEnvelope messageType]== 1;
  }

  return v3;
}

- (BOOL)supportsCommutePlanRenewal
{
  if ((PKIsPhone() & 1) != 0 || (PKIsPod() & 1) != 0 || (v3 = PKIsWatch()) != 0)
  {
    LOBYTE(v3) = [(NPKProtoRemotePassActionEnvelope *)self->_protoEnvelope version]>= 2 && [(NPKProtoRemotePassActionEnvelope *)self->_protoEnvelope messageType]== 2;
  }

  return v3;
}

- (unint64_t)cardType
{
  if (![(NPKProtoRemotePassActionEnvelope *)self->_protoEnvelope hasCardType])
  {
    return 0;
  }

  cardType = [(NPKProtoRemotePassActionEnvelope *)self->_protoEnvelope cardType];

  return NPKRemotePassActionCardTypeForNPKProtoRemotePassActionCardType(cardType);
}

- (id)_messageDataURLWithData:(id)data
{
  if (data)
  {
    v3 = [data base64EncodedStringWithOptions:0];
    if (v3)
    {
      v4 = [NPKRemotePassActionMessageAbsoluteDataURLPrefix stringByAppendingString:v3];
      v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_messageDataWithDataURL:(id)l
{
  if (!l)
  {
    v7 = 0;
    goto LABEL_10;
  }

  lCopy = l;
  absoluteString = [lCopy absoluteString];
  scheme = [lCopy scheme];

  if ([scheme isEqualToString:@"data"])
  {
    v6 = [absoluteString hasPrefix:NPKRemotePassActionMessageAbsoluteDataURLPrefix];

    if (!v6)
    {
      v7 = 0;
      goto LABEL_9;
    }

    scheme = [absoluteString substringFromIndex:{objc_msgSend(NPKRemotePassActionMessageAbsoluteDataURLPrefix, "length")}];
    v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:scheme options:1];
  }

  else
  {
    v7 = 0;
  }

LABEL_9:
LABEL_10:

  return v7;
}

- (void)_updateDataURL
{
  v16 = *MEMORY[0x277D85DE8];
  data = [(NPKProtoRemotePassActionEnvelope *)self->_protoEnvelope data];
  v4 = [(NPKRemotePassAction *)self _messageDataURLWithData:data];
  [(MSMessage *)self->_underlyingMessage setURL:v4];
  absoluteString = [v4 absoluteString];
  v6 = [absoluteString length];

  v7 = pk_RemotePassAction_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = v6;
      _os_log_impl(&dword_25B64D000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Data url has size %lu", &v14, 0xCu);
    }
  }

  if (v6 >= 0x1401)
  {
    v10 = pk_RemotePassAction_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_25B64D000, v12, OS_LOG_TYPE_DEFAULT, "Warning: The data URL is too big! We may fail message size validation, causing issues when inserting this message into a conversation.", &v14, 2u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateSummaryText
{
  protoEnvelope = [(NPKRemotePassAction *)self protoEnvelope];
  summaryText = [protoEnvelope summaryText];
  [(MSMessage *)self->_underlyingMessage setSummaryText:summaryText];
}

- (void)_updateLayoutContentsWithImage:(id)image
{
  imageCopy = image;
  layout = [(MSMessage *)self->_underlyingMessage layout];
  v5 = layout;
  if (layout)
  {
    v6 = layout;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CD6900]);
    v8 = objc_alloc_init(MEMORY[0x277CD6910]);
    v6 = [v7 initWithAlternateLayout:v8];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      alternateLayout = 0;
      v9 = 0;
      goto LABEL_11;
    }

    alternateLayout = v6;
    v9 = 0;
    if (!alternateLayout)
    {
      goto LABEL_11;
    }

LABEL_9:
    passLocalizedDescription = [(NPKRemotePassAction *)self passLocalizedDescription];
    [alternateLayout setCaption:passLocalizedDescription];

    caption = [(NPKRemotePassAction *)self caption];
    [alternateLayout setSubcaption:caption];

    [alternateLayout setImage:imageCopy];
    goto LABEL_11;
  }

  v9 = v6;
  alternateLayout = [v9 alternateLayout];
  if (alternateLayout)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = alternateLayout;
  }

  [(MSMessage *)self->_underlyingMessage setLayout:v13];
}

- (id)_imageForMessage:(id)message
{
  layout = [message layout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    alternateLayout = [layout alternateLayout];
LABEL_5:
    v5 = alternateLayout;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    alternateLayout = layout;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:
  image = [v5 image];

  return image;
}

@end