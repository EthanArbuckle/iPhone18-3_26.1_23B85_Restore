@interface PDSharingProximityMessage
- (PDSharingProximityMessage)initWithReceivedDictionary:(id)a3;
- (PDSharingProximityMessage)initWithSessionIdentifier:(id)a3 underlyingMessageData:(id)a4;
- (id)_initWithType:(unint64_t)a3 sessionIdentifier:(id)a4;
- (id)sendingDictionary;
@end

@implementation PDSharingProximityMessage

- (id)_initWithType:(unint64_t)a3 sessionIdentifier:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PDSharingProximityMessage;
  v8 = [(PDSharingProximityMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_sessionIdentifier, a4);
  }

  return v9;
}

- (PDSharingProximityMessage)initWithSessionIdentifier:(id)a3 underlyingMessageData:(id)a4
{
  v7 = a4;
  v8 = [(PDSharingProximityMessage *)self _initWithType:1 sessionIdentifier:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 3, a4);
  }

  return v9;
}

- (PDSharingProximityMessage)initWithReceivedDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKStringForKey:@"type"];
  v6 = v5;
  if (v5 == @"wrapped_content")
  {
    v8 = 0;
    v10 = 1;
    v9 = 1;
    goto LABEL_14;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = [(__CFString *)v5 isEqualToString:@"wrapped_content"];

  if (v7)
  {
    v8 = 0;
    v9 = 1;
    v10 = 1;
    goto LABEL_14;
  }

  v11 = v6;
  if (v11 != @"cancel")
  {
    v12 = v11;
    v13 = [(__CFString *)v11 isEqualToString:@"cancel"];

    if ((v13 & 1) == 0)
    {
      v14 = v12;
      if (v14 == @"ack" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"ack"], v15, v16))
      {
        v10 = 1;
        v9 = 3;
        goto LABEL_13;
      }

LABEL_12:
      v10 = 0;
      v9 = 0;
      goto LABEL_13;
    }
  }

  v10 = 1;
  v9 = 2;
LABEL_13:
  v8 = 1;
LABEL_14:

  v17 = [v4 PKStringForKey:@"sessionIdentifier"];
  v18 = [v4 PKStringForKey:@"underlyingMessageData"];

  if (v18)
  {
    v19 = [[NSData alloc] initWithBase64EncodedString:v18 options:0];
  }

  else
  {
    v19 = 0;
  }

  v20 = 0;
  if (v17)
  {
    v21 = v10;
  }

  else
  {
    v21 = 0;
  }

  if (v19)
  {
    v22 = 1;
  }

  else
  {
    v22 = v8;
  }

  if (v21 == 1 && v22)
  {
    v26.receiver = self;
    v26.super_class = PDSharingProximityMessage;
    v23 = [(PDSharingProximityMessage *)&v26 init];
    p_isa = &v23->super.isa;
    if (v23)
    {
      v23->_type = v9;
      objc_storeStrong(&v23->_sessionIdentifier, v17);
      objc_storeStrong(p_isa + 3, v19);
    }

    self = p_isa;
    v20 = self;
  }

  return v20;
}

- (id)sendingDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = v3;
  v5 = self->_type - 1;
  if (v5 > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = *(&off_100849350 + v5);
  }

  [v3 setObject:v6 forKeyedSubscript:@"type"];
  [v4 setObject:self->_sessionIdentifier forKeyedSubscript:@"sessionIdentifier"];
  v7 = [(NSData *)self->_underlyingMessageData base64EncodedStringWithOptions:0];
  [v4 setObject:v7 forKeyedSubscript:@"underlyingMessageData"];

  v8 = [v4 copy];

  return v8;
}

@end