@interface _MRKeyboardMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsState:(id)a3;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRKeyboardMessageProtobuf

- (int)state
{
  if (*&self->_has)
  {
    return self->_state;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NotEditing"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DidBeginEditing"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Editing"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"TextDidChange"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"DidEndEditing"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Response"])
  {
    v4 = 6;
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
  v8.super_class = _MRKeyboardMessageProtobuf;
  v4 = [(_MRKeyboardMessageProtobuf *)&v8 description];
  v5 = [(_MRKeyboardMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    state = self->_state;
    if (state >= 7)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_state];
    }

    else
    {
      v5 = off_1E76A4008[state];
    }

    [v3 setObject:v5 forKey:@"state"];
  }

  attributes = self->_attributes;
  if (attributes)
  {
    v7 = [(_MRTextEditingAttributesProtobuf *)attributes dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"attributes"];
  }

  encryptedTextCyphertext = self->_encryptedTextCyphertext;
  if (encryptedTextCyphertext)
  {
    [v3 setObject:encryptedTextCyphertext forKey:@"encryptedTextCyphertext"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    state = self->_state;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_attributes)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_encryptedTextCyphertext)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_state;
    *(v4 + 28) |= 1u;
  }

  v5 = v4;
  if (self->_attributes)
  {
    [v4 setAttributes:?];
    v4 = v5;
  }

  if (self->_encryptedTextCyphertext)
  {
    [v5 setEncryptedTextCyphertext:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_state;
    *(v5 + 28) |= 1u;
  }

  v7 = [(_MRTextEditingAttributesProtobuf *)self->_attributes copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSData *)self->_encryptedTextCyphertext copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_state != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  attributes = self->_attributes;
  if (attributes | *(v4 + 1) && ![(_MRTextEditingAttributesProtobuf *)attributes isEqual:?])
  {
    goto LABEL_11;
  }

  encryptedTextCyphertext = self->_encryptedTextCyphertext;
  if (encryptedTextCyphertext | *(v4 + 2))
  {
    v8 = [(NSData *)encryptedTextCyphertext isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_state;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_MRTextEditingAttributesProtobuf *)self->_attributes hash]^ v3;
  return v4 ^ [(NSData *)self->_encryptedTextCyphertext hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 28))
  {
    self->_state = *(v4 + 6);
    *&self->_has |= 1u;
  }

  attributes = self->_attributes;
  v7 = v5[1];
  v8 = v5;
  if (attributes)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(_MRTextEditingAttributesProtobuf *)attributes mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(_MRKeyboardMessageProtobuf *)self setAttributes:?];
  }

  v5 = v8;
LABEL_9:
  if (v5[2])
  {
    [(_MRKeyboardMessageProtobuf *)self setEncryptedTextCyphertext:?];
    v5 = v8;
  }
}

@end