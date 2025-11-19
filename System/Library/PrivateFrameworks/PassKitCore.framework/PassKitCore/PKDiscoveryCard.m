@interface PKDiscoveryCard
- (BOOL)isEqual:(id)a3;
- (PKDiscoveryCard)initWithCoder:(id)a3;
- (PKDiscoveryCard)initWithDictionary:(id)a3;
- (PKDiscoveryItem)item;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)localizeWithBundle:(id)a3 table:(id)a4;
- (void)setItem:(id)a3;
- (void)setMediaBundle:(id)a3;
@end

@implementation PKDiscoveryCard

- (PKDiscoveryCard)initWithDictionary:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = PKDiscoveryCard;
  v5 = [(PKDiscoveryCard *)&v32 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"headingKey"];
    headingKey = v5->_headingKey;
    v5->_headingKey = v6;

    v8 = [v4 PKStringForKey:@"titleKey"];
    titleKey = v5->_titleKey;
    v5->_titleKey = v8;

    v10 = [v4 PKStringForKey:@"inlineDescriptionKey"];
    inlineDescriptionKey = v5->_inlineDescriptionKey;
    v5->_inlineDescriptionKey = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __38__PKDiscoveryCard_initWithDictionary___block_invoke;
    v29 = &unk_1E79C5040;
    v13 = v4;
    v30 = v13;
    v14 = v12;
    v31 = v14;
    v15 = _Block_copy(&v26);
    v15[2](v15, @"backgroundMedia");
    v15[2](v15, @"backgroundMediaCropped");
    v15[2](v15, @"backgroundMediaExpanded");
    v16 = [v14 copy];
    backgroundMediaByKey = v5->_backgroundMediaByKey;
    v5->_backgroundMediaByKey = v16;

    v18 = [v13 PKColorForKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v18;

    v20 = [v13 PKStringForKey:@"foregroundContentMode"];
    v5->_foregroundContentMode = PKDiscoveryCardForegroundContentModeFromString(v20);

    v21 = [v13 PKStringForKey:@"largeCardTemplateType"];
    v5->_largeCardTemplateType = 0;

    v22 = [v13 PKDictionaryForKey:@"callToAction"];
    if (v22)
    {
      v23 = [[PKDiscoveryCallToAction alloc] initWithDictionary:v22];
      callToAction = v5->_callToAction;
      v5->_callToAction = v23;

      [(PKDiscoveryCallToAction *)v5->_callToAction setForegroundContentMode:v5->_foregroundContentMode];
    }
  }

  return v5;
}

void __38__PKDiscoveryCard_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) PKDictionaryForKey:?];
  if (v3)
  {
    v4 = [[PKDiscoveryMedia alloc] initWithDictionary:v3];
    [*(a1 + 40) safelySetObject:v4 forKey:v5];
  }
}

- (void)localizeWithBundle:(id)a3 table:(id)a4
{
  headingKey = self->_headingKey;
  v7 = a4;
  v14 = a3;
  v8 = [v14 localizedStringForKey:headingKey value:&stru_1F227FD28 table:v7];
  heading = self->_heading;
  self->_heading = v8;

  v10 = [v14 localizedStringForKey:self->_titleKey value:&stru_1F227FD28 table:v7];
  title = self->_title;
  self->_title = v10;

  v12 = [v14 localizedStringForKey:self->_inlineDescriptionKey value:&stru_1F227FD28 table:v7];
  inlineDescription = self->_inlineDescription;
  self->_inlineDescription = v12;

  [(PKDiscoveryCallToAction *)self->_callToAction localizeWithBundle:v14 table:v7];
}

- (void)setMediaBundle:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSDictionary *)self->_backgroundMediaByKey allValues];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setBundle:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setItem:(id)a3
{
  v6 = a3;
  objc_storeWeak(&self->_item, v6);
  v4 = [v6 identifier];
  itemIdentifier = self->_itemIdentifier;
  self->_itemIdentifier = v4;

  [(PKDiscoveryCallToAction *)self->_callToAction setItem:v6];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_42;
  }

  headingKey = self->_headingKey;
  v6 = *(v4 + 3);
  if (headingKey && v6)
  {
    if (([(NSString *)headingKey isEqual:?]& 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (headingKey != v6)
  {
    goto LABEL_42;
  }

  titleKey = self->_titleKey;
  v8 = *(v4 + 4);
  if (titleKey && v8)
  {
    if (([(NSString *)titleKey isEqual:?]& 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (titleKey != v8)
  {
    goto LABEL_42;
  }

  inlineDescriptionKey = self->_inlineDescriptionKey;
  v10 = *(v4 + 5);
  if (inlineDescriptionKey && v10)
  {
    if (([(NSString *)inlineDescriptionKey isEqual:?]& 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (inlineDescriptionKey != v10)
  {
    goto LABEL_42;
  }

  backgroundMediaByKey = self->_backgroundMediaByKey;
  v12 = *(v4 + 2);
  if (backgroundMediaByKey && v12)
  {
    if (([(NSDictionary *)backgroundMediaByKey isEqual:?]& 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (backgroundMediaByKey != v12)
  {
    goto LABEL_42;
  }

  if (!CGColorEqualToColor(-[PKColor CGColor](self->_backgroundColor, "CGColor"), [*(v4 + 6) CGColor]))
  {
    goto LABEL_42;
  }

  callToAction = self->_callToAction;
  v14 = *(v4 + 7);
  if (callToAction && v14)
  {
    if (![(PKDiscoveryCallToAction *)callToAction isEqual:?])
    {
      goto LABEL_42;
    }
  }

  else if (callToAction != v14)
  {
    goto LABEL_42;
  }

  if (self->_foregroundContentMode != *(v4 + 8) || self->_largeCardTemplateType != *(v4 + 9))
  {
    goto LABEL_42;
  }

  heading = self->_heading;
  v16 = *(v4 + 10);
  if (heading && v16)
  {
    if (([(NSString *)heading isEqual:?]& 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (heading != v16)
  {
    goto LABEL_42;
  }

  title = self->_title;
  v18 = *(v4 + 11);
  if (!title || !v18)
  {
    if (title == v18)
    {
      goto LABEL_38;
    }

LABEL_42:
    v21 = 0;
    goto LABEL_43;
  }

  if (([(NSString *)title isEqual:?]& 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  inlineDescription = self->_inlineDescription;
  v20 = *(v4 + 12);
  if (inlineDescription && v20)
  {
    v21 = [(NSString *)inlineDescription isEqual:?];
  }

  else
  {
    v21 = inlineDescription == v20;
  }

LABEL_43:

  return v21;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_headingKey];
  [v3 safelyAddObject:self->_titleKey];
  [v3 safelyAddObject:self->_inlineDescriptionKey];
  [v3 safelyAddObject:self->_backgroundMediaByKey];
  [v3 safelyAddObject:self->_backgroundColor];
  [v3 safelyAddObject:self->_callToAction];
  [v3 safelyAddObject:self->_heading];
  [v3 safelyAddObject:self->_title];
  [v3 safelyAddObject:self->_inlineDescription];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_foregroundContentMode - v4 + 32 * v4;
  v6 = self->_largeCardTemplateType - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"headingKey", self->_headingKey];
  [v3 appendFormat:@"%@: '%@'; ", @"titleKey", self->_titleKey];
  [v3 appendFormat:@"%@: '%@'; ", @"inlineDescriptionKey", self->_inlineDescriptionKey];
  [v3 appendFormat:@"%@: '%@'; ", @"backgroundMedia", self->_backgroundMediaByKey];
  [v3 appendFormat:@"%@: '%@'; ", @"backgroundColor", self->_backgroundColor];
  [v3 appendFormat:@"%@: '%@'; ", @"callToAction", self->_callToAction];
  [v3 appendFormat:@"%@: '%ld'; ", @"foregroundContentMode", self->_foregroundContentMode];
  [v3 appendFormat:@"%@: '%ld'; ", @"largeCardTemplateType", self->_largeCardTemplateType];
  [v3 appendFormat:@"%@: '%@'; ", @"heading", self->_heading];
  [v3 appendFormat:@"%@: '%@'; ", @"title", self->_title];
  [v3 appendFormat:@"%@: '%@'; ", @"inlineDescription", self->_inlineDescription];
  [v3 appendFormat:@"%@: '%@'; ", @"itemIdentifier", self->_itemIdentifier];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  headingKey = self->_headingKey;
  v5 = a3;
  [v5 encodeObject:headingKey forKey:@"headingKey"];
  [v5 encodeObject:self->_titleKey forKey:@"titleKey"];
  [v5 encodeObject:self->_inlineDescriptionKey forKey:@"inlineDescriptionKey"];
  [v5 encodeObject:self->_backgroundMediaByKey forKey:@"backgroundMedia"];
  [v5 encodeObject:self->_backgroundColor forKey:@"backgroundColor"];
  [v5 encodeObject:self->_callToAction forKey:@"callToAction"];
  [v5 encodeInteger:self->_foregroundContentMode forKey:@"foregroundContentMode"];
  [v5 encodeInteger:self->_largeCardTemplateType forKey:@"largeCardTemplateType"];
  [v5 encodeObject:self->_heading forKey:@"heading"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_inlineDescription forKey:@"inlineDescription"];
  [v5 encodeObject:self->_itemIdentifier forKey:@"itemIdentifier"];
}

- (PKDiscoveryCard)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = PKDiscoveryCard;
  v5 = [(PKDiscoveryCard *)&v31 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"headingKey"];
    headingKey = v5->_headingKey;
    v5->_headingKey = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"titleKey"];
    titleKey = v5->_titleKey;
    v5->_titleKey = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inlineDescriptionKey"];
    inlineDescriptionKey = v5->_inlineDescriptionKey;
    v5->_inlineDescriptionKey = v10;

    v12 = objc_alloc(MEMORY[0x1E695DFD8]);
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 initWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"backgroundMedia"];
    backgroundMediaByKey = v5->_backgroundMediaByKey;
    v5->_backgroundMediaByKey = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callToAction"];
    callToAction = v5->_callToAction;
    v5->_callToAction = v20;

    v5->_foregroundContentMode = [v4 decodeIntegerForKey:@"foregroundContentMode"];
    v5->_largeCardTemplateType = [v4 decodeIntegerForKey:@"largeCardTemplateType"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"heading"];
    heading = v5->_heading;
    v5->_heading = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inlineDescription"];
    inlineDescription = v5->_inlineDescription;
    v5->_inlineDescription = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemIdentifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v28;
  }

  return v5;
}

- (PKDiscoveryItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

@end