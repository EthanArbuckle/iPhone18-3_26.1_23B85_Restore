@interface _MRKeyboardMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsState:(id)state;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (int)StringAsState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"NotEditing"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"DidBeginEditing"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"Editing"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"TextDidChange"])
  {
    v4 = 4;
  }

  else if ([stateCopy isEqualToString:@"DidEndEditing"])
  {
    v4 = 5;
  }

  else if ([stateCopy isEqualToString:@"Response"])
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
  dictionaryRepresentation = [(_MRKeyboardMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v5 forKey:@"state"];
  }

  attributes = self->_attributes;
  if (attributes)
  {
    dictionaryRepresentation = [(_MRTextEditingAttributesProtobuf *)attributes dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"attributes"];
  }

  encryptedTextCyphertext = self->_encryptedTextCyphertext;
  if (encryptedTextCyphertext)
  {
    [dictionary setObject:encryptedTextCyphertext forKey:@"encryptedTextCyphertext"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    state = self->_state;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_attributes)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_encryptedTextCyphertext)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_state;
    *(toCopy + 28) |= 1u;
  }

  v5 = toCopy;
  if (self->_attributes)
  {
    [toCopy setAttributes:?];
    toCopy = v5;
  }

  if (self->_encryptedTextCyphertext)
  {
    [v5 setEncryptedTextCyphertext:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_state;
    *(v5 + 28) |= 1u;
  }

  v7 = [(_MRTextEditingAttributesProtobuf *)self->_attributes copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSData *)self->_encryptedTextCyphertext copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_state != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  attributes = self->_attributes;
  if (attributes | *(equalCopy + 1) && ![(_MRTextEditingAttributesProtobuf *)attributes isEqual:?])
  {
    goto LABEL_11;
  }

  encryptedTextCyphertext = self->_encryptedTextCyphertext;
  if (encryptedTextCyphertext | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 28))
  {
    self->_state = *(fromCopy + 6);
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