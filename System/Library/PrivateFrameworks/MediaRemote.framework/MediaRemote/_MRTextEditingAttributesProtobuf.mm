@interface _MRTextEditingAttributesProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRTextEditingAttributesProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRTextEditingAttributesProtobuf;
  v4 = [(_MRTextEditingAttributesProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRTextEditingAttributesProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  prompt = self->_prompt;
  if (prompt)
  {
    [v4 setObject:prompt forKey:@"prompt"];
  }

  inputTraits = self->_inputTraits;
  if (inputTraits)
  {
    dictionaryRepresentation = [(_MRTextInputTraitsProtobuf *)inputTraits dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"inputTraits"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_prompt)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_inputTraits)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_title)
  {
    [toCopy setTitle:?];
    toCopy = v5;
  }

  if (self->_prompt)
  {
    [v5 setPrompt:?];
    toCopy = v5;
  }

  if (self->_inputTraits)
  {
    [v5 setInputTraits:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_prompt copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(_MRTextInputTraitsProtobuf *)self->_inputTraits copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((title = self->_title, !(title | equalCopy[3])) || -[NSString isEqual:](title, "isEqual:")) && ((prompt = self->_prompt, !(prompt | equalCopy[2])) || -[NSString isEqual:](prompt, "isEqual:")))
  {
    inputTraits = self->_inputTraits;
    if (inputTraits | equalCopy[1])
    {
      v8 = [(_MRTextInputTraitsProtobuf *)inputTraits isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_prompt hash]^ v3;
  return v4 ^ [(_MRTextInputTraitsProtobuf *)self->_inputTraits hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[3])
  {
    [(_MRTextEditingAttributesProtobuf *)self setTitle:?];
    fromCopy = v7;
  }

  if (fromCopy[2])
  {
    [(_MRTextEditingAttributesProtobuf *)self setPrompt:?];
    fromCopy = v7;
  }

  inputTraits = self->_inputTraits;
  v6 = fromCopy[1];
  if (inputTraits)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(_MRTextInputTraitsProtobuf *)inputTraits mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(_MRTextEditingAttributesProtobuf *)self setInputTraits:?];
  }

  fromCopy = v7;
LABEL_11:
}

@end