@interface BMPBSubscriptionEvent
- (BOOL)hasBootUUID;
- (BOOL)hasClient;
- (BOOL)hasIdentifier;
- (BOOL)hasUseCase;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)bootUUID;
- (uint64_t)client;
- (uint64_t)hasStarting;
- (uint64_t)identifier;
- (uint64_t)setHasStarting:(uint64_t)result;
- (uint64_t)setStarting:(uint64_t)result;
- (uint64_t)starting;
- (uint64_t)useCase;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)setBootUUID:(uint64_t)d;
- (void)setClient:(uint64_t)client;
- (void)setIdentifier:(uint64_t)identifier;
- (void)setUseCase:(uint64_t)case;
- (void)writeTo:(id)to;
@end

@implementation BMPBSubscriptionEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBSubscriptionEvent;
  v4 = [(BMPBSubscriptionEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBSubscriptionEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_starting];
    [dictionary setObject:v4 forKey:@"starting"];
  }

  client = self->_client;
  if (client)
  {
    [dictionary setObject:client forKey:@"client"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  useCase = self->_useCase;
  if (useCase)
  {
    [dictionary setObject:useCase forKey:@"useCase"];
  }

  bootUUID = self->_bootUUID;
  if (bootUUID)
  {
    [dictionary setObject:bootUUID forKey:@"bootUUID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_client)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_useCase)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_bootUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 40) = self->_starting;
    *(v5 + 44) |= 1u;
  }

  v7 = [(NSString *)self->_client copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_identifier copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(NSString *)self->_useCase copyWithZone:zone];
  v12 = v6[4];
  v6[4] = v11;

  v13 = [(NSString *)self->_bootUUID copyWithZone:zone];
  v14 = v6[1];
  v6[1] = v13;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 44);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(equalCopy + 44) & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 40);
  if (!self->_starting)
  {
LABEL_3:
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  if ((*(equalCopy + 40) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  client = self->_client;
  if (client | *(equalCopy + 2) && ![(NSString *)client isEqual:?])
  {
    goto LABEL_13;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 3))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  useCase = self->_useCase;
  if (useCase | *(equalCopy + 4))
  {
    if (![(NSString *)useCase isEqual:?])
    {
      goto LABEL_13;
    }
  }

  bootUUID = self->_bootUUID;
  if (bootUUID | *(equalCopy + 1))
  {
    v10 = [(NSString *)bootUUID isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_14:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_starting;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_client hash]^ v3;
  v5 = [(NSString *)self->_identifier hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_useCase hash];
  return v6 ^ [(NSString *)self->_bootUUID hash];
}

- (uint64_t)setStarting:(uint64_t)result
{
  if (result)
  {
    *(result + 44) |= 1u;
    *(result + 40) = a2;
  }

  return result;
}

- (uint64_t)setHasStarting:(uint64_t)result
{
  if (result)
  {
    *(result + 44) = *(result + 44) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasStarting
{
  if (result)
  {
    return *(result + 44) & 1;
  }

  return result;
}

- (BOOL)hasClient
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

- (BOOL)hasIdentifier
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

- (BOOL)hasUseCase
{
  if (result)
  {
    return *(result + 32) != 0;
  }

  return result;
}

- (BOOL)hasBootUUID
{
  if (result)
  {
    return *(result + 8) != 0;
  }

  return result;
}

- (void)copyTo:(uint64_t)to
{
  v3 = a2;
  if (to)
  {
    if (*(to + 44))
    {
      v3[40] = *(to + 40);
      v3[44] |= 1u;
    }

    v4 = *(to + 16);
    if (v4)
    {
      v8 = v3;
      [(BMPBSubscriptionEvent *)v3 setClient:v4];
      v3 = v8;
    }

    v5 = *(to + 24);
    if (v5)
    {
      v9 = v3;
      [(BMPBSubscriptionEvent *)v3 setIdentifier:v5];
      v3 = v9;
    }

    v6 = *(to + 32);
    if (v6)
    {
      v10 = v3;
      [(BMPBSubscriptionEvent *)v3 setUseCase:v6];
      v3 = v10;
    }

    v7 = *(to + 8);
    if (v7)
    {
      v11 = v3;
      [(BMPBSubscriptionEvent *)v3 setBootUUID:v7];
      v3 = v11;
    }
  }
}

- (void)setClient:(uint64_t)client
{
  if (client)
  {
    OUTLINED_FUNCTION_0_0(client, a2, 16);
  }
}

- (void)setIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    OUTLINED_FUNCTION_0_0(identifier, a2, 24);
  }
}

- (void)setUseCase:(uint64_t)case
{
  if (case)
  {
    OUTLINED_FUNCTION_0_0(case, a2, 32);
  }
}

- (void)setBootUUID:(uint64_t)d
{
  if (d)
  {
    OUTLINED_FUNCTION_0_0(d, a2, 8);
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v3 = a2;
  if (from)
  {
    if (v3[44])
    {
      *(from + 40) = v3[40];
      *(from + 44) |= 1u;
    }

    v4 = *(v3 + 2);
    v8 = v3;
    if (v4)
    {
      objc_storeStrong((from + 16), v4);
      v3 = v8;
    }

    v5 = *(v3 + 3);
    if (v5)
    {
      objc_storeStrong((from + 24), v5);
      v3 = v8;
    }

    v6 = *(v3 + 4);
    if (v6)
    {
      objc_storeStrong((from + 32), v6);
      v3 = v8;
    }

    v7 = *(v3 + 1);
    if (v7)
    {
      objc_storeStrong((from + 8), v7);
      v3 = v8;
    }
  }
}

- (uint64_t)starting
{
  if (self)
  {
    v1 = *(self + 40);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)client
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)identifier
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)useCase
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)bootUUID
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

@end