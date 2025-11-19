@interface _MRTextEditingAttributesProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRTextEditingAttributesProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRTextEditingAttributesProtobuf;
  v4 = [(_MRTextEditingAttributesProtobuf *)&v8 description];
  v5 = [(_MRTextEditingAttributesProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  prompt = self->_prompt;
  if (prompt)
  {
    [v4 setObject:prompt forKey:@"prompt"];
  }

  inputTraits = self->_inputTraits;
  if (inputTraits)
  {
    v8 = [(_MRTextInputTraitsProtobuf *)inputTraits dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"inputTraits"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_prompt)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_inputTraits)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_title)
  {
    [v4 setTitle:?];
    v4 = v5;
  }

  if (self->_prompt)
  {
    [v5 setPrompt:?];
    v4 = v5;
  }

  if (self->_inputTraits)
  {
    [v5 setInputTraits:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_prompt copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(_MRTextInputTraitsProtobuf *)self->_inputTraits copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((title = self->_title, !(title | v4[3])) || -[NSString isEqual:](title, "isEqual:")) && ((prompt = self->_prompt, !(prompt | v4[2])) || -[NSString isEqual:](prompt, "isEqual:")))
  {
    inputTraits = self->_inputTraits;
    if (inputTraits | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[3])
  {
    [(_MRTextEditingAttributesProtobuf *)self setTitle:?];
    v4 = v7;
  }

  if (v4[2])
  {
    [(_MRTextEditingAttributesProtobuf *)self setPrompt:?];
    v4 = v7;
  }

  inputTraits = self->_inputTraits;
  v6 = v4[1];
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

  v4 = v7;
LABEL_11:
}

@end