@interface PKApplicationMessageGroupDescriptor
+ (id)createForIdentifier:(id)identifier withSingularSummary:(id)summary pluralSummary:(id)pluralSummary;
- (BOOL)isEqual:(id)equal;
- (PKApplicationMessageGroupDescriptor)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplicationMessageGroupDescriptor

+ (id)createForIdentifier:(id)identifier withSingularSummary:(id)summary pluralSummary:(id)pluralSummary
{
  pluralSummaryCopy = pluralSummary;
  summaryCopy = summary;
  identifierCopy = identifier;
  v10 = [PKApplicationMessageGroupDescriptor alloc];
  v11 = identifierCopy;
  v12 = summaryCopy;
  v13 = pluralSummaryCopy;
  v14 = v13;
  v15 = 0;
  if (v10 && v11 && v12 && v13)
  {
    v24.receiver = v10;
    v24.super_class = PKApplicationMessageGroupDescriptor;
    v16 = objc_msgSendSuper2(&v24, sel_init);
    if (v16)
    {
      v17 = [v11 copy];
      v18 = v16[1];
      v16[1] = v17;

      v19 = [v12 copy];
      v20 = v16[2];
      v16[2] = v19;

      v21 = [v14 copy];
      v22 = v16[3];
      v16[3] = v21;
    }

    v10 = v16;
    v15 = v10;
  }

  return v15;
}

- (PKApplicationMessageGroupDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKApplicationMessageGroupDescriptor;
  v5 = [(PKApplicationMessageGroupDescriptor *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    if (!v5->_identifier)
    {
      v14 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKApplicationMessageGroupDescriptor" code:0 userInfo:0];
      [coderCopy failWithError:v14];

      v13 = 0;
      goto LABEL_6;
    }

    v9 = [coderCopy decodeObjectOfClass:v6 forKey:@"singular"];
    singularSummary = v5->_singularSummary;
    v5->_singularSummary = v9;

    v11 = [coderCopy decodeObjectOfClass:v6 forKey:@"plural"];
    pluralSummary = v5->_pluralSummary;
    v5->_pluralSummary = v11;
  }

  v13 = v5;
LABEL_6:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_singularSummary forKey:@"singular"];
  [coderCopy encodeObject:self->_pluralSummary forKey:@"plural"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (equalCopy && (isKindOfClass & 1) != 0)
  {
    v7 = equalCopy;
    v8 = v7;
    if (self)
    {
      v9 = *(v7 + 1);
      v10 = self->_identifier;
      v11 = v9;
      v12 = v11;
      if (v10 == v11)
      {
        v6 = 1;
      }

      else
      {
        v6 = 0;
        if (v10 && v11)
        {
          v6 = [(NSString *)v10 isEqualToString:v11];
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end