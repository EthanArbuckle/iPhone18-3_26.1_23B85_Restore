@interface LNNLGRepresentation
- (BOOL)isEqual:(id)equal;
- (LNNLGRepresentation)initWithCoder:(id)coder;
- (LNNLGRepresentation)initWithType:(id)type title:(id)title value:(id)value format:(id)format;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNNLGRepresentation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  type = [(LNNLGRepresentation *)self type];
  [coderCopy encodeObject:type forKey:@"type"];

  title = [(LNNLGRepresentation *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  value = [(LNNLGRepresentation *)self value];
  [coderCopy encodeObject:value forKey:@"value"];

  format = [(LNNLGRepresentation *)self format];
  [coderCopy encodeObject:format forKey:@"format"];
}

- (LNNLGRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"format"];

  v9 = [(LNNLGRepresentation *)self initWithType:v5 title:v6 value:v7 format:v8];
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  type = [(LNNLGRepresentation *)self type];
  title = [(LNNLGRepresentation *)self title];
  value = [(LNNLGRepresentation *)self value];
  format = [(LNNLGRepresentation *)self format];
  v10 = [v3 stringWithFormat:@"<%@: %p, type: %@, title: %@, value: %@, format: %@>", v5, self, type, title, value, format];

  return v10;
}

- (unint64_t)hash
{
  type = [(LNNLGRepresentation *)self type];
  v4 = [type hash];
  title = [(LNNLGRepresentation *)self title];
  v6 = [title hash] ^ v4;
  value = [(LNNLGRepresentation *)self value];
  v8 = [value hash];
  format = [(LNNLGRepresentation *)self format];
  v10 = v8 ^ [format hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      type = [(LNNLGRepresentation *)self type];
      type2 = [(LNNLGRepresentation *)v6 type];
      if ([type isEqual:type2])
      {
        title = [(LNNLGRepresentation *)self title];
        title2 = [(LNNLGRepresentation *)v6 title];
        if ([title isEqual:title2])
        {
          value = [(LNNLGRepresentation *)self value];
          value2 = [(LNNLGRepresentation *)v6 value];
          if ([value isEqual:value2])
          {
            format = [(LNNLGRepresentation *)self format];
            format2 = [(LNNLGRepresentation *)v6 format];
            v14 = [format isEqual:format2];
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (LNNLGRepresentation)initWithType:(id)type title:(id)title value:(id)value format:(id)format
{
  typeCopy = type;
  titleCopy = title;
  valueCopy = value;
  formatCopy = format;
  v25.receiver = self;
  v25.super_class = LNNLGRepresentation;
  v14 = [(LNNLGRepresentation *)&v25 init];
  if (v14)
  {
    v15 = [typeCopy copy];
    type = v14->_type;
    v14->_type = v15;

    v17 = [titleCopy copy];
    title = v14->_title;
    v14->_title = v17;

    v19 = [valueCopy copy];
    value = v14->_value;
    v14->_value = v19;

    v21 = [formatCopy copy];
    format = v14->_format;
    v14->_format = v21;

    v23 = v14;
  }

  return v14;
}

@end