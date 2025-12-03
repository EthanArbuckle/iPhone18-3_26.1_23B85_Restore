@interface PKApplyActionContentTextItem
- (NSCopying)identifier;
- (PKApplyActionContentTextItem)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)odiAttributesDictionary;
@end

@implementation PKApplyActionContentTextItem

- (PKApplyActionContentTextItem)initWithDictionary:(id)dictionary
{
  v31 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = PKApplyActionContentTextItem;
  v5 = [(PKApplyActionContentTextItem *)&v29 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"analyticsIdentifier"];
    analyticsIdentifier = v5->_analyticsIdentifier;
    v5->_analyticsIdentifier = v6;

    v8 = [dictionaryCopy PKStringForKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [dictionaryCopy PKStringForKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v10;

    v12 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"odiDetails"];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        v18 = 0;
        do
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * v18);
          v20 = [PKApplyActionContentTextItemODIDetail alloc];
          v21 = [(PKApplyActionContentTextItemODIDetail *)v20 initWithDictionary:v19, v25];
          [v13 safelyAddObject:v21];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v16);
    }

    v22 = [v13 count];
    if (v22)
    {
      v22 = [v13 copy];
    }

    odiDetails = v5->_odiDetails;
    v5->_odiDetails = v22;
  }

  return v5;
}

- (id)odiAttributesDictionary
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_odiDetails;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        odiAttributesDictionary = [*(*(&v11 + 1) + 8 * i) odiAttributesDictionary];
        [v3 addEntriesFromDictionary:odiAttributesDictionary];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSCopying)identifier
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendString:v5];

  if (self->_analyticsIdentifier)
  {
    [v3 appendString:?];
  }

  if (self->_title)
  {
    [v3 appendString:?];
  }

  if (self->_subtitle)
  {
    [v3 appendString:?];
  }

  v6 = [v3 copy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKApplyActionContentTextItem allocWithZone:](PKApplyActionContentTextItem init];
  v6 = [(NSString *)self->_analyticsIdentifier copyWithZone:zone];
  analyticsIdentifier = v5->_analyticsIdentifier;
  v5->_analyticsIdentifier = v6;

  v8 = [(NSString *)self->_title copyWithZone:zone];
  title = v5->_title;
  v5->_title = v8;

  v10 = [(NSString *)self->_subtitle copyWithZone:zone];
  subtitle = v5->_subtitle;
  v5->_subtitle = v10;

  v12 = [(NSArray *)self->_odiDetails copyWithZone:zone];
  odiDetails = v5->_odiDetails;
  v5->_odiDetails = v12;

  return v5;
}

@end