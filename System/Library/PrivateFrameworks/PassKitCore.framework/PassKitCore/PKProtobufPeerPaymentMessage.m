@interface PKProtobufPeerPaymentMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)messagesContextAsString:(int)a3;
- (id)typeAsString:(int)a3;
- (int)StringAsMessagesContext:(id)a3;
- (int)StringAsType:(id)a3;
- (int)messagesContext;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMessagesContext:(BOOL)a3;
- (void)setHasRecurringPaymentStartDate:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)typeAsString:(int)a3
{
  if (a3 >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E79CCB68[a3];
  }

  return v4;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PAYMENT"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"REQUEST"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RECURRING_PAYMENT"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasRecurringPaymentStartDate:(BOOL)a3
{
  if (a3)
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

- (void)setHasMessagesContext:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)messagesContextAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E79CCB88[a3];
  }

  return v4;
}

- (int)StringAsMessagesContext:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"INDIVIDUAL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"GROUP"])
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
  v5 = [(PKProtobufPeerPaymentMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [v3 setObject:v4 forKey:@"version"];

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
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

    [v3 setObject:v7 forKey:@"type"];
  }

  currency = self->_currency;
  if (currency)
  {
    [v3 setObject:currency forKey:@"currency"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_amount];
    [v3 setObject:v9 forKey:@"amount"];
  }

  decimalAmount = self->_decimalAmount;
  if (decimalAmount)
  {
    v11 = [(PKProtobufNSDecimalNumber *)decimalAmount dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"decimal_amount"];
  }

  senderAddress = self->_senderAddress;
  if (senderAddress)
  {
    [v3 setObject:senderAddress forKey:@"senderAddress"];
  }

  recipientAddress = self->_recipientAddress;
  if (recipientAddress)
  {
    [v3 setObject:recipientAddress forKey:@"recipientAddress"];
  }

  requestToken = self->_requestToken;
  if (requestToken)
  {
    [v3 setObject:requestToken forKey:@"requestToken"];
  }

  paymentIdentifier = self->_paymentIdentifier;
  if (paymentIdentifier)
  {
    [v3 setObject:paymentIdentifier forKey:@"paymentIdentifier"];
  }

  transactionIdentifier = self->_transactionIdentifier;
  if (transactionIdentifier)
  {
    [v3 setObject:transactionIdentifier forKey:@"transactionIdentifier"];
  }

  memo = self->_memo;
  if (memo)
  {
    [v3 setObject:memo forKey:@"memo"];
  }

  requestDeviceScoreIdentifier = self->_requestDeviceScoreIdentifier;
  if (requestDeviceScoreIdentifier)
  {
    [v3 setObject:requestDeviceScoreIdentifier forKey:@"requestDeviceScoreIdentifier"];
  }

  recurringPaymentIdentifier = self->_recurringPaymentIdentifier;
  if (recurringPaymentIdentifier)
  {
    [v3 setObject:recurringPaymentIdentifier forKey:@"recurringPaymentIdentifier"];
  }

  recurringPaymentEmoji = self->_recurringPaymentEmoji;
  if (recurringPaymentEmoji)
  {
    [v3 setObject:recurringPaymentEmoji forKey:@"recurringPaymentEmoji"];
  }

  recurringPaymentColor = self->_recurringPaymentColor;
  if (recurringPaymentColor)
  {
    [v3 setObject:recurringPaymentColor forKey:@"recurringPaymentColor"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:self->_recurringPaymentStartDate];
    [v3 setObject:v22 forKey:@"recurringPaymentStartDate"];
  }

  recurringPaymentFrequency = self->_recurringPaymentFrequency;
  if (recurringPaymentFrequency)
  {
    [v3 setObject:recurringPaymentFrequency forKey:@"recurringPaymentFrequency"];
  }

  localData = self->_localData;
  if (localData)
  {
    [v3 setObject:localData forKey:@"localData"];
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

    [v3 setObject:v26 forKey:@"messagesContext"];
  }

  paymentSignature = self->_paymentSignature;
  if (paymentSignature)
  {
    [v3 setObject:paymentSignature forKey:@"paymentSignature"];
  }

  messagesGroupIdentifier = self->_messagesGroupIdentifier;
  if (messagesGroupIdentifier)
  {
    [v3 setObject:messagesGroupIdentifier forKey:@"messagesGroupIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  PBDataWriterWriteUint32Field();
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = v5;
  if (self->_currency)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteSint64Field();
    v4 = v5;
  }

  if (self->_senderAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_recipientAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_requestToken)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_paymentIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_transactionIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_memo)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_requestDeviceScoreIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_recurringPaymentIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_recurringPaymentEmoji)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_recurringPaymentColor)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    v4 = v5;
  }

  if (self->_recurringPaymentFrequency)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_decimalAmount)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_localData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_paymentSignature)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_messagesGroupIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[43] = self->_version;
  v5 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v5;
  }

  if ((*&self->_has & 8) != 0)
  {
    v4[42] = self->_type;
    *(v4 + 176) |= 8u;
  }

  if (self->_currency)
  {
    [v5 setCurrency:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_amount;
    *(v4 + 176) |= 1u;
  }

  if (self->_senderAddress)
  {
    [v5 setSenderAddress:?];
    v4 = v5;
  }

  if (self->_recipientAddress)
  {
    [v5 setRecipientAddress:?];
    v4 = v5;
  }

  if (self->_requestToken)
  {
    [v5 setRequestToken:?];
    v4 = v5;
  }

  if (self->_paymentIdentifier)
  {
    [v5 setPaymentIdentifier:?];
    v4 = v5;
  }

  if (self->_transactionIdentifier)
  {
    [v5 setTransactionIdentifier:?];
    v4 = v5;
  }

  if (self->_memo)
  {
    [v5 setMemo:?];
    v4 = v5;
  }

  if (self->_requestDeviceScoreIdentifier)
  {
    [v5 setRequestDeviceScoreIdentifier:?];
    v4 = v5;
  }

  if (self->_recurringPaymentIdentifier)
  {
    [v5 setRecurringPaymentIdentifier:?];
    v4 = v5;
  }

  if (self->_recurringPaymentEmoji)
  {
    [v5 setRecurringPaymentEmoji:?];
    v4 = v5;
  }

  if (self->_recurringPaymentColor)
  {
    [v5 setRecurringPaymentColor:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 2) = *&self->_recurringPaymentStartDate;
    *(v4 + 176) |= 2u;
  }

  if (self->_recurringPaymentFrequency)
  {
    [v5 setRecurringPaymentFrequency:?];
    v4 = v5;
  }

  if (self->_decimalAmount)
  {
    [v5 setDecimalAmount:?];
    v4 = v5;
  }

  if (self->_localData)
  {
    [v5 setLocalData:?];
    v4 = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    v4[16] = self->_messagesContext;
    *(v4 + 176) |= 4u;
  }

  if (self->_paymentSignature)
  {
    [v5 setPaymentSignature:?];
    v4 = v5;
  }

  if (self->_messagesGroupIdentifier)
  {
    [v5 setMessagesGroupIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 172) = self->_version;
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 168) = self->_type;
    *(v5 + 176) |= 8u;
  }

  v8 = [(NSString *)self->_currency copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_amount;
    *(v5 + 176) |= 1u;
  }

  v10 = [(NSString *)self->_senderAddress copyWithZone:a3];
  v11 = *(v5 + 152);
  *(v5 + 152) = v10;

  v12 = [(NSString *)self->_recipientAddress copyWithZone:a3];
  v13 = *(v5 + 96);
  *(v5 + 96) = v12;

  v14 = [(NSString *)self->_requestToken copyWithZone:a3];
  v15 = *(v5 + 144);
  *(v5 + 144) = v14;

  v16 = [(NSString *)self->_paymentIdentifier copyWithZone:a3];
  v17 = *(v5 + 80);
  *(v5 + 80) = v16;

  v18 = [(NSString *)self->_transactionIdentifier copyWithZone:a3];
  v19 = *(v5 + 160);
  *(v5 + 160) = v18;

  v20 = [(NSString *)self->_memo copyWithZone:a3];
  v21 = *(v5 + 56);
  *(v5 + 56) = v20;

  v22 = [(NSString *)self->_requestDeviceScoreIdentifier copyWithZone:a3];
  v23 = *(v5 + 136);
  *(v5 + 136) = v22;

  v24 = [(NSString *)self->_recurringPaymentIdentifier copyWithZone:a3];
  v25 = *(v5 + 128);
  *(v5 + 128) = v24;

  v26 = [(NSString *)self->_recurringPaymentEmoji copyWithZone:a3];
  v27 = *(v5 + 112);
  *(v5 + 112) = v26;

  v28 = [(NSString *)self->_recurringPaymentColor copyWithZone:a3];
  v29 = *(v5 + 104);
  *(v5 + 104) = v28;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_recurringPaymentStartDate;
    *(v5 + 176) |= 2u;
  }

  v30 = [(NSString *)self->_recurringPaymentFrequency copyWithZone:a3];
  v31 = *(v5 + 120);
  *(v5 + 120) = v30;

  v32 = [(PKProtobufNSDecimalNumber *)self->_decimalAmount copyWithZone:a3];
  v33 = *(v5 + 32);
  *(v5 + 32) = v32;

  v34 = [(NSData *)self->_localData copyWithZone:a3];
  v35 = *(v5 + 48);
  *(v5 + 48) = v34;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 64) = self->_messagesContext;
    *(v5 + 176) |= 4u;
  }

  v36 = [(NSString *)self->_paymentSignature copyWithZone:a3];
  v37 = *(v5 + 88);
  *(v5 + 88) = v36;

  v38 = [(NSString *)self->_messagesGroupIdentifier copyWithZone:a3];
  v39 = *(v5 + 72);
  *(v5 + 72) = v38;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  if (self->_version != *(v4 + 43))
  {
    goto LABEL_58;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 5))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_58;
    }
  }

  has = self->_has;
  v7 = *(v4 + 176);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 176) & 8) == 0 || self->_type != *(v4 + 42))
    {
      goto LABEL_58;
    }
  }

  else if ((*(v4 + 176) & 8) != 0)
  {
    goto LABEL_58;
  }

  currency = self->_currency;
  if (currency | *(v4 + 3))
  {
    if (![(NSString *)currency isEqual:?])
    {
LABEL_58:
      v24 = 0;
      goto LABEL_59;
    }

    has = self->_has;
    v7 = *(v4 + 176);
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_amount != *(v4 + 1))
    {
      goto LABEL_58;
    }
  }

  else if (v7)
  {
    goto LABEL_58;
  }

  senderAddress = self->_senderAddress;
  if (senderAddress | *(v4 + 19) && ![(NSString *)senderAddress isEqual:?])
  {
    goto LABEL_58;
  }

  recipientAddress = self->_recipientAddress;
  if (recipientAddress | *(v4 + 12))
  {
    if (![(NSString *)recipientAddress isEqual:?])
    {
      goto LABEL_58;
    }
  }

  requestToken = self->_requestToken;
  if (requestToken | *(v4 + 18))
  {
    if (![(NSString *)requestToken isEqual:?])
    {
      goto LABEL_58;
    }
  }

  paymentIdentifier = self->_paymentIdentifier;
  if (paymentIdentifier | *(v4 + 10))
  {
    if (![(NSString *)paymentIdentifier isEqual:?])
    {
      goto LABEL_58;
    }
  }

  transactionIdentifier = self->_transactionIdentifier;
  if (transactionIdentifier | *(v4 + 20))
  {
    if (![(NSString *)transactionIdentifier isEqual:?])
    {
      goto LABEL_58;
    }
  }

  memo = self->_memo;
  if (memo | *(v4 + 7))
  {
    if (![(NSString *)memo isEqual:?])
    {
      goto LABEL_58;
    }
  }

  requestDeviceScoreIdentifier = self->_requestDeviceScoreIdentifier;
  if (requestDeviceScoreIdentifier | *(v4 + 17))
  {
    if (![(NSString *)requestDeviceScoreIdentifier isEqual:?])
    {
      goto LABEL_58;
    }
  }

  recurringPaymentIdentifier = self->_recurringPaymentIdentifier;
  if (recurringPaymentIdentifier | *(v4 + 16))
  {
    if (![(NSString *)recurringPaymentIdentifier isEqual:?])
    {
      goto LABEL_58;
    }
  }

  recurringPaymentEmoji = self->_recurringPaymentEmoji;
  if (recurringPaymentEmoji | *(v4 + 14))
  {
    if (![(NSString *)recurringPaymentEmoji isEqual:?])
    {
      goto LABEL_58;
    }
  }

  recurringPaymentColor = self->_recurringPaymentColor;
  if (recurringPaymentColor | *(v4 + 13))
  {
    if (![(NSString *)recurringPaymentColor isEqual:?])
    {
      goto LABEL_58;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 176) & 2) == 0 || self->_recurringPaymentStartDate != *(v4 + 2))
    {
      goto LABEL_58;
    }
  }

  else if ((*(v4 + 176) & 2) != 0)
  {
    goto LABEL_58;
  }

  recurringPaymentFrequency = self->_recurringPaymentFrequency;
  if (recurringPaymentFrequency | *(v4 + 15) && ![(NSString *)recurringPaymentFrequency isEqual:?])
  {
    goto LABEL_58;
  }

  decimalAmount = self->_decimalAmount;
  if (decimalAmount | *(v4 + 4))
  {
    if (![(PKProtobufNSDecimalNumber *)decimalAmount isEqual:?])
    {
      goto LABEL_58;
    }
  }

  localData = self->_localData;
  if (localData | *(v4 + 6))
  {
    if (![(NSData *)localData isEqual:?])
    {
      goto LABEL_58;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 176) & 4) == 0 || self->_messagesContext != *(v4 + 16))
    {
      goto LABEL_58;
    }
  }

  else if ((*(v4 + 176) & 4) != 0)
  {
    goto LABEL_58;
  }

  paymentSignature = self->_paymentSignature;
  if (paymentSignature | *(v4 + 11) && ![(NSString *)paymentSignature isEqual:?])
  {
    goto LABEL_58;
  }

  messagesGroupIdentifier = self->_messagesGroupIdentifier;
  if (messagesGroupIdentifier | *(v4 + 9))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_version = *(v4 + 43);
  v7 = v4;
  if (*(v4 + 5))
  {
    [(PKProtobufPeerPaymentMessage *)self setIdentifier:?];
    v4 = v7;
  }

  if ((*(v4 + 176) & 8) != 0)
  {
    self->_type = *(v4 + 42);
    *&self->_has |= 8u;
  }

  if (*(v4 + 3))
  {
    [(PKProtobufPeerPaymentMessage *)self setCurrency:?];
    v4 = v7;
  }

  if (*(v4 + 176))
  {
    self->_amount = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 19))
  {
    [(PKProtobufPeerPaymentMessage *)self setSenderAddress:?];
    v4 = v7;
  }

  if (*(v4 + 12))
  {
    [(PKProtobufPeerPaymentMessage *)self setRecipientAddress:?];
    v4 = v7;
  }

  if (*(v4 + 18))
  {
    [(PKProtobufPeerPaymentMessage *)self setRequestToken:?];
    v4 = v7;
  }

  if (*(v4 + 10))
  {
    [(PKProtobufPeerPaymentMessage *)self setPaymentIdentifier:?];
    v4 = v7;
  }

  if (*(v4 + 20))
  {
    [(PKProtobufPeerPaymentMessage *)self setTransactionIdentifier:?];
    v4 = v7;
  }

  if (*(v4 + 7))
  {
    [(PKProtobufPeerPaymentMessage *)self setMemo:?];
    v4 = v7;
  }

  if (*(v4 + 17))
  {
    [(PKProtobufPeerPaymentMessage *)self setRequestDeviceScoreIdentifier:?];
    v4 = v7;
  }

  if (*(v4 + 16))
  {
    [(PKProtobufPeerPaymentMessage *)self setRecurringPaymentIdentifier:?];
    v4 = v7;
  }

  if (*(v4 + 14))
  {
    [(PKProtobufPeerPaymentMessage *)self setRecurringPaymentEmoji:?];
    v4 = v7;
  }

  if (*(v4 + 13))
  {
    [(PKProtobufPeerPaymentMessage *)self setRecurringPaymentColor:?];
    v4 = v7;
  }

  if ((*(v4 + 176) & 2) != 0)
  {
    self->_recurringPaymentStartDate = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 15))
  {
    [(PKProtobufPeerPaymentMessage *)self setRecurringPaymentFrequency:?];
    v4 = v7;
  }

  decimalAmount = self->_decimalAmount;
  v6 = *(v4 + 4);
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

  v4 = v7;
LABEL_39:
  if (*(v4 + 6))
  {
    [(PKProtobufPeerPaymentMessage *)self setLocalData:?];
    v4 = v7;
  }

  if ((*(v4 + 176) & 4) != 0)
  {
    self->_messagesContext = *(v4 + 16);
    *&self->_has |= 4u;
  }

  if (*(v4 + 11))
  {
    [(PKProtobufPeerPaymentMessage *)self setPaymentSignature:?];
    v4 = v7;
  }

  if (*(v4 + 9))
  {
    [(PKProtobufPeerPaymentMessage *)self setMessagesGroupIdentifier:?];
    v4 = v7;
  }
}

@end