@interface BMPBSubscriptionEvent
- (BOOL)hasBootUUID;
- (BOOL)hasClient;
- (BOOL)hasIdentifier;
- (BOOL)hasUseCase;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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
- (void)copyTo:(uint64_t)a1;
- (void)mergeFrom:(uint64_t)a1;
- (void)setBootUUID:(uint64_t)a1;
- (void)setClient:(uint64_t)a1;
- (void)setIdentifier:(uint64_t)a1;
- (void)setUseCase:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation BMPBSubscriptionEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBSubscriptionEvent;
  v4 = [(BMPBSubscriptionEvent *)&v8 description];
  v5 = [(BMPBSubscriptionEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_starting];
    [v3 setObject:v4 forKey:@"starting"];
  }

  client = self->_client;
  if (client)
  {
    [v3 setObject:client forKey:@"client"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  useCase = self->_useCase;
  if (useCase)
  {
    [v3 setObject:useCase forKey:@"useCase"];
  }

  bootUUID = self->_bootUUID;
  if (bootUUID)
  {
    [v3 setObject:bootUUID forKey:@"bootUUID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_client)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_useCase)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_bootUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 40) = self->_starting;
    *(v5 + 44) |= 1u;
  }

  v7 = [(NSString *)self->_client copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_identifier copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(NSString *)self->_useCase copyWithZone:a3];
  v12 = v6[4];
  v6[4] = v11;

  v13 = [(NSString *)self->_bootUUID copyWithZone:a3];
  v14 = v6[1];
  v6[1] = v13;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 44);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(v4 + 44) & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 40);
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

  if ((*(v4 + 40) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  client = self->_client;
  if (client | *(v4 + 2) && ![(NSString *)client isEqual:?])
  {
    goto LABEL_13;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 3))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  useCase = self->_useCase;
  if (useCase | *(v4 + 4))
  {
    if (![(NSString *)useCase isEqual:?])
    {
      goto LABEL_13;
    }
  }

  bootUUID = self->_bootUUID;
  if (bootUUID | *(v4 + 1))
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

- (void)copyTo:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (*(a1 + 44))
    {
      v3[40] = *(a1 + 40);
      v3[44] |= 1u;
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      v8 = v3;
      [(BMPBSubscriptionEvent *)v3 setClient:v4];
      v3 = v8;
    }

    v5 = *(a1 + 24);
    if (v5)
    {
      v9 = v3;
      [(BMPBSubscriptionEvent *)v3 setIdentifier:v5];
      v3 = v9;
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v10 = v3;
      [(BMPBSubscriptionEvent *)v3 setUseCase:v6];
      v3 = v10;
    }

    v7 = *(a1 + 8);
    if (v7)
    {
      v11 = v3;
      [(BMPBSubscriptionEvent *)v3 setBootUUID:v7];
      v3 = v11;
    }
  }
}

- (void)setClient:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_0(a1, a2, 16);
  }
}

- (void)setIdentifier:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_0(a1, a2, 24);
  }
}

- (void)setUseCase:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_0(a1, a2, 32);
  }
}

- (void)setBootUUID:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_0(a1, a2, 8);
  }
}

- (void)mergeFrom:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (v3[44])
    {
      *(a1 + 40) = v3[40];
      *(a1 + 44) |= 1u;
    }

    v4 = *(v3 + 2);
    v8 = v3;
    if (v4)
    {
      objc_storeStrong((a1 + 16), v4);
      v3 = v8;
    }

    v5 = *(v3 + 3);
    if (v5)
    {
      objc_storeStrong((a1 + 24), v5);
      v3 = v8;
    }

    v6 = *(v3 + 4);
    if (v6)
    {
      objc_storeStrong((a1 + 32), v6);
      v3 = v8;
    }

    v7 = *(v3 + 1);
    if (v7)
    {
      objc_storeStrong((a1 + 8), v7);
      v3 = v8;
    }
  }
}

- (uint64_t)starting
{
  if (a1)
  {
    v1 = *(a1 + 40);
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