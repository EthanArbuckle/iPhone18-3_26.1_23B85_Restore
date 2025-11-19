@interface PKPaymentOfferDynamicContentCustomLayoutItemTextDetails
- (BOOL)isEqual:(id)a3;
- (PKPaymentOfferDynamicContentCustomLayoutItemTextDetails)initWithCoder:(id)a3;
- (PKPaymentOfferDynamicContentCustomLayoutItemTextDetails)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)textLinkContent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentOfferDynamicContentCustomLayoutItemTextDetails

- (PKPaymentOfferDynamicContentCustomLayoutItemTextDetails)initWithDictionary:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 PKStringForKey:@"text"];
    v6 = [v4 PKSetContaining:objc_opt_class() forKey:@"textLinks"];
    v7 = [v4 PKStringForKey:@"altText"];
    if (![v5 length])
    {
      v12 = 0;
LABEL_61:

      goto LABEL_62;
    }

    v8 = [v4 PKStringForKey:@"font"];
    v9 = v8;
    if (v8 == @"title")
    {
      goto LABEL_6;
    }

    if (v8)
    {
      v10 = [(__CFString *)v8 isEqualToString:@"title"];

      if (v10)
      {
LABEL_6:
        v11 = 1;
LABEL_37:

        v40 = [v4 PKStringForKey:@"textColor"];
        v41 = v40;
        if (v40 == @"primary")
        {
LABEL_40:
          v43 = 1;
          goto LABEL_48;
        }

        if (!v40)
        {
          goto LABEL_47;
        }

        v42 = [(__CFString *)v40 isEqualToString:@"primary"];

        if (v42)
        {
          goto LABEL_40;
        }

        v44 = v41;
        if (v44 == @"secondary" || (v45 = v44, v46 = [(__CFString *)v44 isEqualToString:@"secondary"], v45, (v46 & 1) != 0))
        {
          v43 = 2;
          goto LABEL_48;
        }

        v47 = v45;
        if (v47 == @"accentColor" || (v48 = v47, v49 = [(__CFString *)v47 isEqualToString:@"accentColor"], v48, v49))
        {
          v43 = 3;
        }

        else
        {
LABEL_47:
          v43 = 0;
        }

LABEL_48:

        v50 = [v4 PKBoolForKey:@"bold"];
        v68.receiver = self;
        v68.super_class = PKPaymentOfferDynamicContentCustomLayoutItemTextDetails;
        v51 = [(PKPaymentOfferDynamicContentCustomLayoutItemTextDetails *)&v68 init];
        v52 = v51;
        if (v51)
        {
          objc_storeStrong(&v51->_text, v5);
          objc_storeStrong(&v52->_altText, v7);
          v52->_font = v11;
          v52->_textColor = v43;
          v52->_bold = v50;
          if ([v6 count])
          {
            v53 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v63 = v6;
            v54 = v6;
            v55 = [v54 countByEnumeratingWithState:&v64 objects:v69 count:16];
            if (v55)
            {
              v56 = v55;
              v57 = *v65;
              do
              {
                for (i = 0; i != v56; ++i)
                {
                  if (*v65 != v57)
                  {
                    objc_enumerationMutation(v54);
                  }

                  v59 = [[PKApplyFooterContentLink alloc] initWithDictionary:*(*(&v64 + 1) + 8 * i)];
                  [v53 pk_safelyAddObject:v59];
                }

                v56 = [v54 countByEnumeratingWithState:&v64 objects:v69 count:16];
              }

              while (v56);
            }

            v60 = [v53 count];
            if (v60)
            {
              v60 = [v53 copy];
            }

            textLinks = v52->_textLinks;
            v52->_textLinks = v60;

            v6 = v63;
          }
        }

        self = v52;
        v12 = self;
        goto LABEL_61;
      }

      v13 = v9;
      if (v13 == @"title2" || (v14 = v13, v15 = [(__CFString *)v13 isEqualToString:@"title2"], v14, (v15 & 1) != 0))
      {
        v11 = 2;
        goto LABEL_37;
      }

      v16 = v14;
      if (v16 == @"title3" || (v17 = v16, v18 = [(__CFString *)v16 isEqualToString:@"title3"], v17, (v18 & 1) != 0))
      {
        v11 = 3;
        goto LABEL_37;
      }

      v19 = v17;
      if (v19 == @"headline" || (v20 = v19, v21 = [(__CFString *)v19 isEqualToString:@"headline"], v20, (v21 & 1) != 0))
      {
        v11 = 4;
        goto LABEL_37;
      }

      v22 = v20;
      if (v22 == @"subheadline" || (v23 = v22, v24 = [(__CFString *)v22 isEqualToString:@"subheadline"], v23, (v24 & 1) != 0))
      {
        v11 = 5;
        goto LABEL_37;
      }

      v25 = v23;
      if (v25 == @"body" || (v26 = v25, v27 = [(__CFString *)v25 isEqualToString:@"body"], v26, (v27 & 1) != 0))
      {
        v11 = 6;
        goto LABEL_37;
      }

      v28 = v26;
      if (v28 == @"callout" || (v29 = v28, v30 = [(__CFString *)v28 isEqualToString:@"callout"], v29, (v30 & 1) != 0))
      {
        v11 = 7;
        goto LABEL_37;
      }

      v31 = v29;
      if (v31 == @"footnote" || (v32 = v31, v33 = [(__CFString *)v31 isEqualToString:@"footnote"], v32, (v33 & 1) != 0))
      {
        v11 = 8;
        goto LABEL_37;
      }

      v34 = v32;
      if (v34 == @"caption" || (v35 = v34, v36 = [(__CFString *)v34 isEqualToString:@"caption"], v35, (v36 & 1) != 0))
      {
        v11 = 9;
        goto LABEL_37;
      }

      v37 = v35;
      if (v37 == @"caption2" || (v38 = v37, v39 = [(__CFString *)v37 isEqualToString:@"caption2"], v38, v39))
      {
        v11 = 10;
        goto LABEL_37;
      }
    }

    v11 = 0;
    goto LABEL_37;
  }

  v12 = 0;
LABEL_62:

  return v12;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_text forKeyedSubscript:@"text"];
  [v3 setObject:self->_altText forKeyedSubscript:@"altText"];
  v4 = PKPaymentOfferDynamicContentCustomLayoutItemTextDetailsFontToString(self->_font);
  [v3 setObject:v4 forKeyedSubscript:@"font"];

  v5 = self->_textColor - 1;
  if (v5 > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79DEDC0[v5];
  }

  [v3 setObject:v6 forKeyedSubscript:@"textColor"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_bold];
  [v3 setObject:v7 forKeyedSubscript:@"bold"];

  v8 = [(NSSet *)self->_textLinks allObjects];
  v9 = [v8 pk_createArrayBySafelyApplyingBlock:&__block_literal_global_479];
  [v3 setObject:v9 forKeyedSubscript:@"textLinks"];

  v10 = [v3 copy];

  return v10;
}

- (id)textLinkContent
{
  v3 = objc_alloc_init(PKApplyFooterContent);
  [(PKApplyFooterContent *)v3 setFooterText:self->_text];
  [(PKApplyFooterContent *)v3 setLinks:self->_textLinks];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        text = v6->_text;
        v8 = self->_text;
        v9 = text;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {
            goto LABEL_17;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_18;
          }
        }

        altText = v6->_altText;
        v8 = self->_altText;
        v14 = altText;
        v10 = v14;
        if (v8 == v14)
        {

LABEL_22:
          textLinks = self->_textLinks;
          v18 = v6->_textLinks;
          if (textLinks && v18)
          {
            if (([(NSSet *)textLinks isEqual:?]& 1) == 0)
            {
              goto LABEL_18;
            }
          }

          else if (textLinks != v18)
          {
            goto LABEL_18;
          }

          if (self->_font == v6->_font && self->_textColor == v6->_textColor)
          {
            v12 = self->_bold == v6->_bold;
            goto LABEL_19;
          }

LABEL_18:
          v12 = 0;
LABEL_19:

          goto LABEL_20;
        }

        if (v8 && v14)
        {
          v15 = [(NSString *)v8 isEqualToString:v14];

          if (!v15)
          {
            goto LABEL_18;
          }

          goto LABEL_22;
        }

LABEL_17:

        goto LABEL_18;
      }
    }

    v12 = 0;
  }

LABEL_20:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_text];
  [v3 safelyAddObject:self->_altText];
  [v3 safelyAddObject:self->_textLinks];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_font - v4 + 32 * v4;
  v6 = self->_textColor - v5 + 32 * v5;
  v7 = self->_bold - v6 + 32 * v6;

  return v7;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  if (self->_text)
  {
    [v3 appendFormat:@"text: '%@'; ", self->_text];
  }

  if (self->_altText)
  {
    [v3 appendFormat:@"altText: '%@'; ", self->_altText];
  }

  font = self->_font;
  if (font)
  {
    v5 = PKPaymentOfferDynamicContentCustomLayoutItemTextDetailsFontToString(font);
    [v3 appendFormat:@"font: '%@'; ", v5];
  }

  textColor = self->_textColor;
  v7 = @"unknown";
  if (textColor > 1)
  {
    if (textColor == 2)
    {
      v7 = @"secondary";
    }

    else if (textColor == 3)
    {
      v7 = @"accentColor";
    }
  }

  else
  {
    if (!textColor)
    {
      goto LABEL_17;
    }

    if (textColor == 1)
    {
      v7 = @"primary";
    }
  }

  [v3 appendFormat:@"textColor: '%@'; ", v7];
LABEL_17:
  if ([(NSSet *)self->_textLinks count])
  {
    [v3 appendFormat:@"textLinks: '%@'; ", self->_textLinks];
  }

  if (self->_bold)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"bold: '%@'; ", v8];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferDynamicContentCustomLayoutItemTextDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKPaymentOfferDynamicContentCustomLayoutItemTextDetails;
  v5 = [(PKPaymentOfferDynamicContentCustomLayoutItemTextDetails *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altText"];
    altText = v5->_altText;
    v5->_altText = v8;

    v5->_font = [v4 decodeIntegerForKey:@"font"];
    v5->_textColor = [v4 decodeIntegerForKey:@"textColor"];
    v5->_bold = [v4 decodeBoolForKey:@"bold"];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"textLinks"];
    textLinks = v5->_textLinks;
    v5->_textLinks = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = a3;
  [v5 encodeObject:text forKey:@"text"];
  [v5 encodeObject:self->_altText forKey:@"altText"];
  [v5 encodeInteger:self->_font forKey:@"font"];
  [v5 encodeInteger:self->_textColor forKey:@"textColor"];
  [v5 encodeBool:self->_bold forKey:@"bold"];
  [v5 encodeObject:self->_textLinks forKey:@"textLinks"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentOfferDynamicContentCustomLayoutItemTextDetails allocWithZone:](PKPaymentOfferDynamicContentCustomLayoutItemTextDetails init];
  v6 = [(NSString *)self->_text copyWithZone:a3];
  text = v5->_text;
  v5->_text = v6;

  v8 = [(NSString *)self->_altText copyWithZone:a3];
  altText = v5->_altText;
  v5->_altText = v8;

  v5->_font = self->_font;
  v5->_textColor = self->_textColor;
  v5->_bold = self->_bold;
  v10 = [(NSSet *)self->_textLinks copyWithZone:a3];
  textLinks = v5->_textLinks;
  v5->_textLinks = v10;

  return v5;
}

@end