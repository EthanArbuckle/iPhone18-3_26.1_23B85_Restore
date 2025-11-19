@interface NPKRemotePassAction
- (BOOL)supportsCommutePlanRenewal;
- (BOOL)supportsTopUp;
- (NPKRemotePassAction)initWithCoder:(id)a3;
- (NPKRemotePassAction)initWithMessage:(id)a3 protoEnvelope:(id)a4 image:(id)a5;
- (NPKRemotePassAction)initWithProtoEnvelope:(id)a3 image:(id)a4;
- (NPKRemotePassAction)initWithUnderlyingMessage:(id)a3;
- (id)_imageForMessage:(id)a3;
- (id)_messageDataURLWithData:(id)a3;
- (id)_messageDataWithDataURL:(id)a3;
- (id)description;
- (unint64_t)cardType;
- (void)_updateDataURL;
- (void)_updateLayoutContentsWithImage:(id)a3;
- (void)_updateSummaryText;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPKRemotePassAction

- (NPKRemotePassAction)initWithUnderlyingMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 URL];
  v6 = [(NPKRemotePassAction *)self _messageDataWithDataURL:v5];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D2BA30]) initWithData:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NPKRemotePassAction *)self _imageForMessage:v4];
  v9 = [(NPKRemotePassAction *)self initWithMessage:v4 protoEnvelope:v7 image:v8];

  return v9;
}

- (NPKRemotePassAction)initWithProtoEnvelope:(id)a3 image:(id)a4
{
  v6 = MEMORY[0x277CD68F8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = objc_alloc_init(MEMORY[0x277CD6920]);
  v11 = [v9 initWithSession:v10];

  v12 = [(NPKRemotePassAction *)self initWithMessage:v11 protoEnvelope:v8 image:v7];
  return v12;
}

- (NPKRemotePassAction)initWithMessage:(id)a3 protoEnvelope:(id)a4 image:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v14.receiver = self;
  v14.super_class = NPKRemotePassAction;
  v12 = [(NPKRemotePassAction *)&v14 init];
  if (v12)
  {
    [v9 setRequiresValidation:1];
    objc_storeStrong(&v12->_underlyingMessage, a3);
    objc_storeStrong(&v12->_protoEnvelope, a4);
    [(NPKRemotePassAction *)v12 _updateDataURL];
    [(NPKRemotePassAction *)v12 _updateSummaryText];
    [(NPKRemotePassAction *)v12 _updateLayoutContentsWithImage:v11];
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

  v6 = [(NPKRemotePassAction *)self passLocalizedDescription];
  v7 = [(NPKRemotePassAction *)self caption];
  v8 = [(NPKRemotePassAction *)self image];
  v9 = [v3 stringWithFormat:@"<%@: %p> isResponse: %@, passLocalizedDescription: %@, caption: %@, image: %@, underlyingMessage: %@", v4, self, v5, v6, v7, v8, self->_underlyingMessage];

  return v9;
}

- (NPKRemotePassAction)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NPKRemotePassAction;
  v5 = [(NPKRemotePassAction *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"underlyingMessage"];
    underlyingMessage = v5->_underlyingMessage;
    v5->_underlyingMessage = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protoEnvelope"];
    protoEnvelope = v5->_protoEnvelope;
    v5->_protoEnvelope = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  underlyingMessage = self->_underlyingMessage;
  v5 = a3;
  [v5 encodeObject:underlyingMessage forKey:@"underlyingMessage"];
  [v5 encodeObject:self->_protoEnvelope forKey:@"protoEnvelope"];
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

  v3 = [(NPKProtoRemotePassActionEnvelope *)self->_protoEnvelope cardType];

  return NPKRemotePassActionCardTypeForNPKProtoRemotePassActionCardType(v3);
}

- (id)_messageDataURLWithData:(id)a3
{
  if (a3)
  {
    v3 = [a3 base64EncodedStringWithOptions:0];
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

- (id)_messageDataWithDataURL:(id)a3
{
  if (!a3)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v3 = a3;
  v4 = [v3 absoluteString];
  v5 = [v3 scheme];

  if ([v5 isEqualToString:@"data"])
  {
    v6 = [v4 hasPrefix:NPKRemotePassActionMessageAbsoluteDataURLPrefix];

    if (!v6)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v5 = [v4 substringFromIndex:{objc_msgSend(NPKRemotePassActionMessageAbsoluteDataURLPrefix, "length")}];
    v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v5 options:1];
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
  v3 = [(NPKProtoRemotePassActionEnvelope *)self->_protoEnvelope data];
  v4 = [(NPKRemotePassAction *)self _messageDataURLWithData:v3];
  [(MSMessage *)self->_underlyingMessage setURL:v4];
  v5 = [v4 absoluteString];
  v6 = [v5 length];

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
  v4 = [(NPKRemotePassAction *)self protoEnvelope];
  v3 = [v4 summaryText];
  [(MSMessage *)self->_underlyingMessage setSummaryText:v3];
}

- (void)_updateLayoutContentsWithImage:(id)a3
{
  v14 = a3;
  v4 = [(MSMessage *)self->_underlyingMessage layout];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
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
      v10 = 0;
      v9 = 0;
      goto LABEL_11;
    }

    v10 = v6;
    v9 = 0;
    if (!v10)
    {
      goto LABEL_11;
    }

LABEL_9:
    v11 = [(NPKRemotePassAction *)self passLocalizedDescription];
    [v10 setCaption:v11];

    v12 = [(NPKRemotePassAction *)self caption];
    [v10 setSubcaption:v12];

    [v10 setImage:v14];
    goto LABEL_11;
  }

  v9 = v6;
  v10 = [v9 alternateLayout];
  if (v10)
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
    v13 = v10;
  }

  [(MSMessage *)self->_underlyingMessage setLayout:v13];
}

- (id)_imageForMessage:(id)a3
{
  v3 = [a3 layout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 alternateLayout];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:
  v6 = [v5 image];

  return v6;
}

@end