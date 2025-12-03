@interface PKApplyFooterContent
- (BOOL)isEqual:(id)equal;
- (PKApplyFooterContent)initWithCoder:(id)coder;
- (PKApplyFooterContent)initWithDictionary:(id)dictionary;
- (PKApplyFooterContent)initWithFooterText:(id)text links:(id)links;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)termsIdentifiers;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplyFooterContent

- (PKApplyFooterContent)initWithDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy PKStringForKey:@"footerText"];
  if (v5)
  {
    v26.receiver = self;
    v26.super_class = PKApplyFooterContent;
    v6 = [(PKApplyFooterContent *)&v26 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_footerText, v5);
      v8 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"links"];
      v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            v16 = [PKApplyFooterContentLink alloc];
            v17 = [(PKApplyFooterContentLink *)v16 initWithDictionary:v15, v22];
            [v9 pk_safelyAddObject:v17];
          }

          v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v12);
      }

      v18 = [v9 count];
      if (v18)
      {
        v18 = [v9 copy];
      }

      links = v7->_links;
      v7->_links = v18;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKApplyFooterContent)initWithFooterText:(id)text links:(id)links
{
  textCopy = text;
  linksCopy = links;
  if (textCopy)
  {
    v15.receiver = self;
    v15.super_class = PKApplyFooterContent;
    v8 = [(PKApplyFooterContent *)&v15 init];
    if (v8)
    {
      v9 = [textCopy copy];
      footerText = v8->_footerText;
      v8->_footerText = v9;

      v11 = [linksCopy count];
      if (v11)
      {
        v11 = [linksCopy copy];
      }

      links = v8->_links;
      v8->_links = v11;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_footerText forKeyedSubscript:@"footerText"];
  allObjects = [(NSSet *)self->_links allObjects];
  v5 = [allObjects pk_arrayBySafelyApplyingBlock:&__block_literal_global_238];
  [v3 setObject:v5 forKeyedSubscript:@"links"];

  v6 = [v3 copy];

  return v6;
}

- (id)termsIdentifiers
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_links;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        termsIdentifier = [*(*(&v12 + 1) + 8 * i) termsIdentifier];
        [v3 pk_safelyAddObject:termsIdentifier];
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v10 = [v3 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        footerText = v6->_footerText;
        v8 = self->_footerText;
        v9 = footerText;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {

LABEL_16:
            v12 = 0;
LABEL_18:

            goto LABEL_19;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_16;
          }
        }

        links = self->_links;
        v14 = v6->_links;
        if (links && v14)
        {
          v12 = [(NSSet *)links isEqual:?];
        }

        else
        {
          v12 = links == v14;
        }

        goto LABEL_18;
      }
    }

    v12 = 0;
  }

LABEL_19:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_footerText];
  [v3 safelyAddObject:self->_links];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_footerText)
  {
    [v3 appendFormat:@"footerText: '%@'; ", self->_footerText];
  }

  if ([(NSSet *)self->_links count])
  {
    [v4 appendFormat:@"links: '%@'; ", self->_links];
  }

  [v4 appendFormat:@">"];
  v5 = [v4 copy];

  return v5;
}

- (PKApplyFooterContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKApplyFooterContent;
  v5 = [(PKApplyFooterContent *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"footerText"];
    footerText = v5->_footerText;
    v5->_footerText = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"links"];
    links = v5->_links;
    v5->_links = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  footerText = self->_footerText;
  coderCopy = coder;
  [coderCopy encodeObject:footerText forKey:@"footerText"];
  [coderCopy encodeObject:self->_links forKey:@"links"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKApplyFooterContent allocWithZone:](PKApplyFooterContent init];
  v6 = [(NSString *)self->_footerText copyWithZone:zone];
  footerText = v5->_footerText;
  v5->_footerText = v6;

  v8 = [(NSSet *)self->_links copyWithZone:zone];
  links = v5->_links;
  v5->_links = v8;

  return v5;
}

@end