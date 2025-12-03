@interface PKProtobufPeerPaymentMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)messagesContextAsString:(int)string;
- (id)typeAsString:(int)string;
- (int)StringAsMessagesContext:(id)context;
- (int)StringAsType:(id)type;
- (int)messagesContext;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMessagesContext:(BOOL)context;
- (void)setHasRecurringPaymentStartDate:(BOOL)date;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufPeerPaymentMessage

- (int)type
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)typeAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E79CCB68[string];
  }

  return v4;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"PAYMENT"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"REQUEST"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"RECURRING_PAYMENT"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasRecurringPaymentStartDate:(BOOL)date
{
  if (date)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)messagesContext
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_messagesContext;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMessagesContext:(BOOL)context
{
  if (context)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)messagesContextAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E79CCB88[string];
  }

  return v4;
}

- (int)StringAsMessagesContext:(id)context
{
  contextCopy = context;
  if ([contextCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([contextCopy isEqualToString:@"INDIVIDUAL"])
  {
    v4 = 1;
  }

  else if ([contextCopy isEqualToString:@"GROUP"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPeerPaymentMessage;
  v4 = [(PKProtobufPeerPaymentMessage *)&v8 description];
  dictionaryRepresentation = [(PKProtobufPeerPaymentMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  if ((*&self->_has & 8) != 0)
  {
    type = self->_type;
    if (type >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v7 = off_1E79CCB68[type];
    }

    [dictionary setObject:v7 forKey:@"type"];
  }

  currency = self->_currency;
  if (currency)
  {
    [dictionary setObject:currency forKey:@"currency"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_amount];
    [dictionary setObject:v9 forKey:@"amount"];
  }

  decimalAmount = self->_decimalAmount;
  if (decimalAmount)
  {
    dictionaryRepresentation = [(PKProtobufNSDecimalNumber *)decimalAmount dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"decimal_amount"];
  }

  senderAddress = self->_senderAddress;
  if (senderAddress)
  {
    [dictionary setObject:senderAddress forKey:@"senderAddress"];
  }

  recipientAddress = self->_recipientAddress;
  if (recipientAddress)
  {
    [dictionary setObject:recipientAddress forKey:@"recipientAddress"];
  }

  requestToken = self->_requestToken;
  if (requestToken)
  {
    [dictionary setObject:requestToken forKey:@"requestToken"];
  }

  paymentIdentifier = self->_paymentIdentifier;
  if (paymentIdentifier)
  {
    [dictionary setObject:paymentIdentifier forKey:@"paymentIdentifier"];
  }

  transactionIdentifier = self->_transactionIdentifier;
  if (transactionIdentifier)
  {
    [dictionary setObject:transactionIdentifier forKey:@"transactionIdentifier"];
  }

  memo = self->_memo;
  if (memo)
  {
    [dictionary setObject:memo forKey:@"memo"];
  }

  requestDeviceScoreIdentifier = self->_requestDeviceScoreIdentifier;
  if (requestDeviceScoreIdentifier)
  {
    [dictionary setObject:requestDeviceScoreIdentifier forKey:@"requestDeviceScoreIdentifier"];
  }

  recurringPaymentIdentifier = self->_recurringPaymentIdentifier;
  if (recurringPaymentIdentifier)
  {
    [dictionary setObject:recurringPaymentIdentifier forKey:@"recurringPaymentIdentifier"];
  }

  recurringPaymentEmoji = self->_recurringPaymentEmoji;
  if (recurringPaymentEmoji)
  {
    [dictionary setObject:recurringPaymentEmoji forKey:@"recurringPaymentEmoji"];
  }

  recurringPaymentColor = self->_recurringPaymentColor;
  if (recurringPaymentColor)
  {
    [dictionary setObject:recurringPaymentColor forKey:@"recurringPaymentColor"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:self->_recurringPaymentStartDate];
    [dictionary setObject:v22 forKey:@"recurringPaymentStartDate"];
  }

  recurringPaymentFrequency = self->_recurringPaymentFrequency;
  if (recurringPaymentFrequency)
  {
    [dictionary setObject:recurringPaymentFrequency forKey:@"recurringPaymentFrequency"];
  }

  localData = self->_localData;
  if (localData)
  {
    [dictionary setObject:localData forKey:@"localData"];
  }

  if ((*&self->_has & 4) != 0)
  {
    messagesContext = self->_messagesContext;
    if (messagesContext >= 3)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_messagesContext];
    }

    else
    {
      v26 = off_1E79CCB88[messagesContext];
    }

    [dictionary setObject:v26 forKey:@"messagesContext"];
  }

  paymentSignature = self->_paymentSignature;
  if (paymentSignature)
  {
    [dictionary setObject:paymentSignature forKey:@"paymentSignature"];
  }

  messagesGroupIdentifier = self->_messagesGroupIdentifier;
  if (messagesGroupIdentifier)
  {
    [dictionary setObject:messagesGroupIdentifier forKey:@"messagesGroupIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = toCopy;
  if (self->_currency)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteSint64Field();
    v4 = toCopy;
  }

  if (self->_senderAddress)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_recipientAddress)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_requestToken)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_paymentIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_transactionIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_memo)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_requestDeviceScoreIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_recurringPaymentIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_recurringPaymentEmoji)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_recurringPaymentColor)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_recurringPaymentFrequency)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_decimalAmount)
  {
    PBDataWriterWriteSubmessage();
    v4 = toCopy;
  }

  if (self->_localData)
  {
    PBDataWriterWriteDataField();
    v4 = toCopy;
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = toCopy;
  }

  if (self->_paymentSignature)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_messagesGroupIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[43] = self->_version;
  v5 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v5;
  }

  if ((*&self->_has & 8) != 0)
  {
    toCopy[42] = self->_type;
    *(toCopy + 176) |= 8u;
  }

  if (self->_currency)
  {
    [v5 setCurrency:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_amount;
    *(toCopy + 176) |= 1u;
  }

  if (self->_senderAddress)
  {
    [v5 setSenderAddress:?];
    toCopy = v5;
  }

  if (self->_recipientAddress)
  {
    [v5 setRecipientAddress:?];
    toCopy = v5;
  }

  if (self->_requestToken)
  {
    [v5 setRequestToken:?];
    toCopy = v5;
  }

  if (self->_paymentIdentifier)
  {
    [v5 setPaymentIdentifier:?];
    toCopy = v5;
  }

  if (self->_transactionIdentifier)
  {
    [v5 setTransactionIdentifier:?];
    toCopy = v5;
  }

  if (self->_memo)
  {
    [v5 setMemo:?];
    toCopy = v5;
  }

  if (self->_requestDeviceScoreIdentifier)
  {
    [v5 setRequestDeviceScoreIdentifier:?];
    toCopy = v5;
  }

  if (self->_recurringPaymentIdentifier)
  {
    [v5 setRecurringPaymentIdentifier:?];
    toCopy = v5;
  }

  if (self->_recurringPaymentEmoji)
  {
    [v5 setRecurringPaymentEmoji:?];
    toCopy = v5;
  }

  if (self->_recurringPaymentColor)
  {
    [v5 setRecurringPaymentColor:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_recurringPaymentStartDate;
    *(toCopy + 176) |= 2u;
  }

  if (self->_recurringPaymentFrequency)
  {
    [v5 setRecurringPaymentFrequency:?];
    toCopy = v5;
  }

  if (self->_decimalAmount)
  {
    [v5 setDecimalAmount:?];
    toCopy = v5;
  }

  if (self->_localData)
  {
    [v5 setLocalData:?];
    toCopy = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    toCopy[16] = self->_messagesContext;
    *(toCopy + 176) |= 4u;
  }

  if (self->_paymentSignature)
  {
    [v5 setPaymentSignature:?];
    toCopy = v5;
  }

  if (self->_messagesGroupIdentifier)
  {
    [v5 setMessagesGroupIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 172) = self->_version;
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 168) = self->_type;
    *(v5 + 176) |= 8u;
  }

  v8 = [(NSString *)self->_currency copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_amount;
    *(v5 + 176) |= 1u;
  }

  v10 = [(NSString *)self->_senderAddress copyWithZone:zone];
  v11 = *(v5 + 152);
  *(v5 + 152) = v10;

  v12 = [(NSString *)self->_recipientAddress copyWithZone:zone];
  v13 = *(v5 + 96);
  *(v5 + 96) = v12;

  v14 = [(NSString *)self->_requestToken copyWithZone:zone];
  v15 = *(v5 + 144);
  *(v5 + 144) = v14;

  v16 = [(NSString *)self->_paymentIdentifier copyWithZone:zone];
  v17 = *(v5 + 80);
  *(v5 + 80) = v16;

  v18 = [(NSString *)self->_transactionIdentifier copyWithZone:zone];
  v19 = *(v5 + 160);
  *(v5 + 160) = v18;

  v20 = [(NSString *)self->_memo copyWithZone:zone];
  v21 = *(v5 + 56);
  *(v5 + 56) = v20;

  v22 = [(NSString *)self->_requestDeviceScoreIdentifier copyWithZone:zone];
  v23 = *(v5 + 136);
  *(v5 + 136) = v22;

  v24 = [(NSString *)self->_recurringPaymentIdentifier copyWithZone:zone];
  v25 = *(v5 + 128);
  *(v5 + 128) = v24;

  v26 = [(NSString *)self->_recurringPaymentEmoji copyWithZone:zone];
  v27 = *(v5 + 112);
  *(v5 + 112) = v26;

  v28 = [(NSString *)self->_recurringPaymentColor copyWithZone:zone];
  v29 = *(v5 + 104);
  *(v5 + 104) = v28;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_recurringPaymentStartDate;
    *(v5 + 176) |= 2u;
  }

  v30 = [(NSString *)self->_recurringPaymentFrequency copyWithZone:zone];
  v31 = *(v5 + 120);
  *(v5 + 120) = v30;

  v32 = [(PKProtobufNSDecimalNumber *)self->_decimalAmount copyWithZone:zone];
  v33 = *(v5 + 32);
  *(v5 + 32) = v32;

  v34 = [(NSData *)self->_localData copyWithZone:zone];
  v35 = *(v5 + 48);
  *(v5 + 48) = v34;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 64) = self->_messagesContext;
    *(v5 + 176) |= 4u;
  }

  v36 = [(NSString *)self->_paymentSignature copyWithZone:zone];
  v37 = *(v5 + 88);
  *(v5 + 88) = v36;

  v38 = [(NSString *)self->_messagesGroupIdentifier copyWithZone:zone];
  v39 = *(v5 + 72);
  *(v5 + 72) = v38;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  if (self->_version != *(equalCopy + 43))
  {
    goto LABEL_58;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 5))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_58;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 176);
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 176) & 8) == 0 || self->_type != *(equalCopy + 42))
    {
      goto LABEL_58;
    }
  }

  else if ((*(equalCopy + 176) & 8) != 0)
  {
    goto LABEL_58;
  }

  currency = self->_currency;
  if (currency | *(equalCopy + 3))
  {
    if (![(NSString *)currency isEqual:?])
    {
LABEL_58:
      v24 = 0;
      goto LABEL_59;
    }

    has = self->_has;
    v7 = *(equalCopy + 176);
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_amount != *(equalCopy + 1))
    {
      goto LABEL_58;
    }
  }

  else if (v7)
  {
    goto LABEL_58;
  }

  senderAddress = self->_senderAddress;
  if (senderAddress | *(equalCopy + 19) && ![(NSString *)senderAddress isEqual:?])
  {
    goto LABEL_58;
  }

  recipientAddress = self->_recipientAddress;
  if (recipientAddress | *(equalCopy + 12))
  {
    if (![(NSString *)recipientAddress isEqual:?])
    {
      goto LABEL_58;
    }
  }

  requestToken = self->_requestToken;
  if (requestToken | *(equalCopy + 18))
  {
    if (![(NSString *)requestToken isEqual:?])
    {
      goto LABEL_58;
    }
  }

  paymentIdentifier = self->_paymentIdentifier;
  if (paymentIdentifier | *(equalCopy + 10))
  {
    if (![(NSString *)paymentIdentifier isEqual:?])
    {
      goto LABEL_58;
    }
  }

  transactionIdentifier = self->_transactionIdentifier;
  if (transactionIdentifier | *(equalCopy + 20))
  {
    if (![(NSString *)transactionIdentifier isEqual:?])
    {
      goto LABEL_58;
    }
  }

  memo = self->_memo;
  if (memo | *(equalCopy + 7))
  {
    if (![(NSString *)memo isEqual:?])
    {
      goto LABEL_58;
    }
  }

  requestDeviceScoreIdentifier = self->_requestDeviceScoreIdentifier;
  if (requestDeviceScoreIdentifier | *(equalCopy + 17))
  {
    if (![(NSString *)requestDeviceScoreIdentifier isEqual:?])
    {
      goto LABEL_58;
    }
  }

  recurringPaymentIdentifier = self->_recurringPaymentIdentifier;
  if (recurringPaymentIdentifier | *(equalCopy + 16))
  {
    if (![(NSString *)recurringPaymentIdentifier isEqual:?])
    {
      goto LABEL_58;
    }
  }

  recurringPaymentEmoji = self->_recurringPaymentEmoji;
  if (recurringPaymentEmoji | *(equalCopy + 14))
  {
    if (![(NSString *)recurringPaymentEmoji isEqual:?])
    {
      goto LABEL_58;
    }
  }

  recurringPaymentColor = self->_recurringPaymentColor;
  if (recurringPaymentColor | *(equalCopy + 13))
  {
    if (![(NSString *)recurringPaymentColor isEqual:?])
    {
      goto LABEL_58;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 176) & 2) == 0 || self->_recurringPaymentStartDate != *(equalCopy + 2))
    {
      goto LABEL_58;
    }
  }

  else if ((*(equalCopy + 176) & 2) != 0)
  {
    goto LABEL_58;
  }

  recurringPaymentFrequency = self->_recurringPaymentFrequency;
  if (recurringPaymentFrequency | *(equalCopy + 15) && ![(NSString *)recurringPaymentFrequency isEqual:?])
  {
    goto LABEL_58;
  }

  decimalAmount = self->_decimalAmount;
  if (decimalAmount | *(equalCopy + 4))
  {
    if (![(PKProtobufNSDecimalNumber *)decimalAmount isEqual:?])
    {
      goto LABEL_58;
    }
  }

  localData = self->_localData;
  if (localData | *(equalCopy + 6))
  {
    if (![(NSData *)localData isEqual:?])
    {
      goto LABEL_58;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 176) & 4) == 0 || self->_messagesContext != *(equalCopy + 16))
    {
      goto LABEL_58;
    }
  }

  else if ((*(equalCopy + 176) & 4) != 0)
  {
    goto LABEL_58;
  }

  paymentSignature = self->_paymentSignature;
  if (paymentSignature | *(equalCopy + 11) && ![(NSString *)paymentSignature isEqual:?])
  {
    goto LABEL_58;
  }

  messagesGroupIdentifier = self->_messagesGroupIdentifier;
  if (messagesGroupIdentifier | *(equalCopy + 9))
  {
    v24 = [(NSString *)messagesGroupIdentifier isEqual:?];
  }

  else
  {
    v24 = 1;
  }

LABEL_59:

  return v24;
}

- (unint64_t)hash
{
  version = self->_version;
  v29 = [(NSString *)self->_identifier hash];
  if ((*&self->_has & 8) != 0)
  {
    v28 = 2654435761 * self->_type;
  }

  else
  {
    v28 = 0;
  }

  v27 = [(NSString *)self->_currency hash];
  if (*&self->_has)
  {
    v26 = 2654435761 * self->_amount;
  }

  else
  {
    v26 = 0;
  }

  v25 = [(NSString *)self->_senderAddress hash];
  v24 = [(NSString *)self->_recipientAddress hash];
  v23 = [(NSString *)self->_requestToken hash];
  v22 = [(NSString *)self->_paymentIdentifier hash];
  v21 = [(NSString *)self->_transactionIdentifier hash];
  v20 = [(NSString *)self->_memo hash];
  v3 = [(NSString *)self->_requestDeviceScoreIdentifier hash];
  v4 = [(NSString *)self->_recurringPaymentIdentifier hash];
  v5 = [(NSString *)self->_recurringPaymentEmoji hash];
  v6 = [(NSString *)self->_recurringPaymentColor hash];
  if ((*&self->_has & 2) != 0)
  {
    recurringPaymentStartDate = self->_recurringPaymentStartDate;
    if (recurringPaymentStartDate < 0.0)
    {
      recurringPaymentStartDate = -recurringPaymentStartDate;
    }

    *v7.i64 = floor(recurringPaymentStartDate + 0.5);
    v11 = (recurringPaymentStartDate - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v8, v7).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = [(NSString *)self->_recurringPaymentFrequency hash];
  v14 = [(PKProtobufNSDecimalNumber *)self->_decimalAmount hash];
  v15 = [(NSData *)self->_localData hash];
  if ((*&self->_has & 4) != 0)
  {
    v16 = 2654435761 * self->_messagesContext;
  }

  else
  {
    v16 = 0;
  }

  v17 = v29 ^ v28 ^ v27 ^ v26 ^ (2654435761 * version) ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v3 ^ v4 ^ v5 ^ v6 ^ v9;
  v18 = v13 ^ v14 ^ v15 ^ v16 ^ [(NSString *)self->_paymentSignature hash];
  return v17 ^ v18 ^ [(NSString *)self->_messagesGroupIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_version = *(fromCopy + 43);
  v7 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(PKProtobufPeerPaymentMessage *)self setIdentifier:?];
    fromCopy = v7;
  }

  if ((*(fromCopy + 176) & 8) != 0)
  {
    self->_type = *(fromCopy + 42);
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 3))
  {
    [(PKProtobufPeerPaymentMessage *)self setCurrency:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 176))
  {
    self->_amount = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 19))
  {
    [(PKProtobufPeerPaymentMessage *)self setSenderAddress:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 12))
  {
    [(PKProtobufPeerPaymentMessage *)self setRecipientAddress:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 18))
  {
    [(PKProtobufPeerPaymentMessage *)self setRequestToken:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 10))
  {
    [(PKProtobufPeerPaymentMessage *)self setPaymentIdentifier:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 20))
  {
    [(PKProtobufPeerPaymentMessage *)self setTransactionIdentifier:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 7))
  {
    [(PKProtobufPeerPaymentMessage *)self setMemo:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 17))
  {
    [(PKProtobufPeerPaymentMessage *)self setRequestDeviceScoreIdentifier:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 16))
  {
    [(PKProtobufPeerPaymentMessage *)self setRecurringPaymentIdentifier:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 14))
  {
    [(PKProtobufPeerPaymentMessage *)self setRecurringPaymentEmoji:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 13))
  {
    [(PKProtobufPeerPaymentMessage *)self setRecurringPaymentColor:?];
    fromCopy = v7;
  }

  if ((*(fromCopy + 176) & 2) != 0)
  {
    self->_recurringPaymentStartDate = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 15))
  {
    [(PKProtobufPeerPaymentMessage *)self setRecurringPaymentFrequency:?];
    fromCopy = v7;
  }

  decimalAmount = self->_decimalAmount;
  v6 = *(fromCopy + 4);
  if (decimalAmount)
  {
    if (!v6)
    {
      goto LABEL_39;
    }

    [(PKProtobufNSDecimalNumber *)decimalAmount mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_39;
    }

    [(PKProtobufPeerPaymentMessage *)self setDecimalAmount:?];
  }

  fromCopy = v7;
LABEL_39:
  if (*(fromCopy + 6))
  {
    [(PKProtobufPeerPaymentMessage *)self setLocalData:?];
    fromCopy = v7;
  }

  if ((*(fromCopy + 176) & 4) != 0)
  {
    self->_messagesContext = *(fromCopy + 16);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 11))
  {
    [(PKProtobufPeerPaymentMessage *)self setPaymentSignature:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 9))
  {
    [(PKProtobufPeerPaymentMessage *)self setMessagesGroupIdentifier:?];
    fromCopy = v7;
  }
}

@end