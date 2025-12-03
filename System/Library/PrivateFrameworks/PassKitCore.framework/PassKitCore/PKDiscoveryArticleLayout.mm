@interface PKDiscoveryArticleLayout
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualForUI:(id)i;
- (PKDiscoveryArticleLayout)initWithCoder:(id)coder;
- (PKDiscoveryArticleLayout)initWithDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
- (unint64_t)isWritingDirectionRTL;
- (void)_updatePreferredLocalizationWithBundle:(id)bundle;
- (void)encodeWithCoder:(id)coder;
- (void)localizeWithBundle:(id)bundle;
- (void)localizeWithBundle:(id)bundle table:(id)table;
- (void)setItem:(id)item;
- (void)setMediaBundle:(id)bundle;
@end

@implementation PKDiscoveryArticleLayout

- (PKDiscoveryArticleLayout)initWithDictionary:(id)dictionary
{
  v39 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = PKDiscoveryArticleLayout;
  v5 = [(PKDiscoveryArticleLayout *)&v37 init];
  if (v5)
  {
    v5->_version = [dictionaryCopy PKIntegerForKey:@"version"];
    v31 = [dictionaryCopy PKDictionaryForKey:@"card"];
    v6 = [[PKDiscoveryCard alloc] initWithDictionary:v31];
    card = v5->_card;
    v5->_card = v6;

    v8 = [dictionaryCopy PKDictionaryForKey:@"mediumCard"];
    if (v8)
    {
      v9 = [[PKDiscoveryCard alloc] initWithDictionary:v8];
      mediumCard = v5->_mediumCard;
      v5->_mediumCard = v9;
    }

    v30 = [dictionaryCopy PKDictionaryForKey:@"miniCard"];
    v11 = [[PKMiniDiscoveryCard alloc] initWithDictionary:v30];
    miniCard = v5->_miniCard;
    v5->_miniCard = v11;

    v13 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"shelves"];
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      while (2)
      {
        v19 = 0;
        do
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [PKDiscoveryShelf shelfWithDictionary:*(*(&v33 + 1) + 8 * v19)];
          if (!v20)
          {
            v28 = PKLogFacilityTypeGetObject(0x11uLL);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Received malformed Discovery Article Layout Bundle: failed to initialize discovery shelf", buf, 2u);
            }

            v27 = 0;
            goto LABEL_17;
          }

          v21 = v20;
          [v14 addObject:v20];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v22 = [v14 copy];
    shelves = v5->_shelves;
    v5->_shelves = v22;

    v24 = [dictionaryCopy PKDictionaryForKey:@"footerLockup"];
    v25 = [[PKDiscoveryCallToAction alloc] initWithDictionary:v24];
    footerLockup = v5->_footerLockup;
    v5->_footerLockup = v25;

    v5->_priority = 500;
  }

  v27 = v5;
LABEL_17:

  return v27;
}

- (void)localizeWithBundle:(id)bundle
{
  bundleCopy = bundle;
  [(PKDiscoveryArticleLayout *)self _updatePreferredLocalizationWithBundle:bundleCopy];
  [(PKDiscoveryCard *)self->_card localizeWithBundle:bundleCopy];
  [(PKDiscoveryCard *)self->_mediumCard localizeWithBundle:bundleCopy];
  [(PKDiscoveryCard *)self->_miniCard localizeWithBundle:bundleCopy];
  shelves = self->_shelves;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__PKDiscoveryArticleLayout_localizeWithBundle___block_invoke;
  v7[3] = &unk_1E79CA478;
  v8 = bundleCopy;
  v6 = bundleCopy;
  [(NSArray *)shelves enumerateObjectsUsingBlock:v7];
}

- (void)localizeWithBundle:(id)bundle table:(id)table
{
  bundleCopy = bundle;
  tableCopy = table;
  [(PKDiscoveryArticleLayout *)self _updatePreferredLocalizationWithBundle:bundleCopy];
  [(PKDiscoveryCard *)self->_card localizeWithBundle:bundleCopy table:tableCopy];
  [(PKDiscoveryCard *)self->_mediumCard localizeWithBundle:bundleCopy table:tableCopy];
  [(PKDiscoveryCard *)self->_miniCard localizeWithBundle:bundleCopy table:tableCopy];
  shelves = self->_shelves;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PKDiscoveryArticleLayout_localizeWithBundle_table___block_invoke;
  v11[3] = &unk_1E79CA4A0;
  v12 = bundleCopy;
  v13 = tableCopy;
  v9 = tableCopy;
  v10 = bundleCopy;
  [(NSArray *)shelves enumerateObjectsUsingBlock:v11];
}

- (void)setMediaBundle:(id)bundle
{
  bundleCopy = bundle;
  [(PKDiscoveryCard *)self->_card setMediaBundle:bundleCopy];
  [(PKDiscoveryCard *)self->_miniCard setMediaBundle:bundleCopy];
  [(PKDiscoveryCard *)self->_mediumCard setMediaBundle:bundleCopy];
  [(PKDiscoveryCallToAction *)self->_footerLockup setMediaBundle:bundleCopy];
  shelves = self->_shelves;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__PKDiscoveryArticleLayout_setMediaBundle___block_invoke;
  v7[3] = &unk_1E79CA478;
  v8 = bundleCopy;
  v6 = bundleCopy;
  [(NSArray *)shelves enumerateObjectsUsingBlock:v7];
}

void __43__PKDiscoveryArticleLayout_setMediaBundle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v3 setMediaBundle:*(a1 + 32)];
  }
}

- (void)setItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    v12 = itemCopy;
    objc_storeStrong(&self->_item, item);
    identifier = [v12 identifier];
    itemIdentifier = self->_itemIdentifier;
    self->_itemIdentifier = identifier;

    if ([v12 viewCount])
    {
      shouldBadge = 0;
    }

    else
    {
      shouldBadge = [v12 shouldBadge];
    }

    self->_requestedBadge = shouldBadge;
    self->_priority = [v12 priority];
    self->_entitledToForceLargeCard = [v12 entitledToForceLargeCard];
    self->_hitMaxLargeViewCount = [v12 hasHitMaxLargeViewCount];
    card = self->_card;
    if (card)
    {
      [(PKDiscoveryCard *)card setItem:v12];
    }

    mediumCard = self->_mediumCard;
    if (mediumCard)
    {
      [(PKDiscoveryCard *)mediumCard setItem:v12];
    }

    footerLockup = self->_footerLockup;
    itemCopy = v12;
    if (footerLockup)
    {
      [(PKDiscoveryCallToAction *)footerLockup setItem:v12];
      itemCopy = v12;
    }
  }
}

- (BOOL)isEqualForUI:(id)i
{
  iCopy = i;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_34;
  }

  itemIdentifier = self->_itemIdentifier;
  v6 = iCopy[2];
  if (itemIdentifier && v6)
  {
    if (([(NSString *)itemIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (itemIdentifier != v6)
  {
    goto LABEL_34;
  }

  if (self->_version != iCopy[3] || self->_variant != iCopy[4] || self->_priority != iCopy[10] || self->_entitledToForceLargeCard != *(iCopy + 8) || self->_hitMaxLargeViewCount != *(iCopy + 9))
  {
    goto LABEL_34;
  }

  card = self->_card;
  v8 = iCopy[5];
  if (card && v8)
  {
    if (![(PKDiscoveryCard *)card isEqual:?])
    {
      goto LABEL_34;
    }
  }

  else if (card != v8)
  {
    goto LABEL_34;
  }

  mediumCard = self->_mediumCard;
  v10 = iCopy[6];
  if (mediumCard && v10)
  {
    if (![(PKDiscoveryCard *)mediumCard isEqual:?])
    {
      goto LABEL_34;
    }
  }

  else if (mediumCard != v10)
  {
    goto LABEL_34;
  }

  shelves = self->_shelves;
  v12 = iCopy[8];
  if (shelves && v12)
  {
    if (([(NSArray *)shelves isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (shelves != v12)
  {
    goto LABEL_34;
  }

  footerLockup = self->_footerLockup;
  v14 = iCopy[9];
  if (!footerLockup || !v14)
  {
    if (footerLockup == v14)
    {
      goto LABEL_30;
    }

LABEL_34:
    v17 = 0;
    goto LABEL_35;
  }

  if (![(PKDiscoveryCallToAction *)footerLockup isEqual:?])
  {
    goto LABEL_34;
  }

LABEL_30:
  miniCard = self->_miniCard;
  v16 = iCopy[7];
  if (miniCard && v16)
  {
    v17 = [(PKMiniDiscoveryCard *)miniCard isEqual:?];
  }

  else
  {
    v17 = miniCard == v16;
  }

LABEL_35:

  return v17;
}

- (unint64_t)isWritingDirectionRTL
{
  if (!self->_preferredLocalization)
  {
    return 0;
  }

  if ([MEMORY[0x1E695DF58] characterDirectionForLanguage:?] == 2)
  {
    return 1;
  }

  return 2;
}

- (void)_updatePreferredLocalizationWithBundle:(id)bundle
{
  bundleCopy = bundle;
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  languageCode = [currentLocale languageCode];

  preferredLocalizations = [bundleCopy preferredLocalizations];
  v8 = [preferredLocalizations containsObject:languageCode];

  if (v8)
  {
    objc_storeStrong(&self->_preferredLocalization, languageCode);
  }

  else
  {
    preferredLocalizations2 = [bundleCopy preferredLocalizations];
    v10 = [preferredLocalizations2 count];

    if (v10)
    {
      preferredLocalizations3 = [bundleCopy preferredLocalizations];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __67__PKDiscoveryArticleLayout__updatePreferredLocalizationWithBundle___block_invoke;
      v17[3] = &unk_1E79CA4C8;
      v18 = languageCode;
      v12 = [preferredLocalizations3 pk_firstObjectPassingTest:v17];
      preferredLocalization = self->_preferredLocalization;
      self->_preferredLocalization = v12;

      if (!self->_preferredLocalization)
      {
        preferredLocalizations4 = [bundleCopy preferredLocalizations];
        firstObject = [preferredLocalizations4 firstObject];
        v16 = self->_preferredLocalization;
        self->_preferredLocalization = firstObject;
      }
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([(PKDiscoveryArticleLayout *)self isEqualForUI:equalCopy])
  {
    v5 = self->_requestedBadge == equalCopy[10];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_itemIdentifier];
  [v3 safelyAddObject:self->_card];
  [v3 safelyAddObject:self->_mediumCard];
  [v3 safelyAddObject:self->_shelves];
  [v3 safelyAddObject:self->_footerLockup];
  [v3 safelyAddObject:self->_miniCard];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_version - v4 + 32 * v4;
  v6 = self->_variant - v5 + 32 * v5;
  v7 = self->_requestedBadge - v6 + 32 * v6;
  v8 = self->_priority - v7 + 32 * v7;
  v9 = self->_entitledToForceLargeCard - v8 + 32 * v8;
  v10 = self->_hitMaxLargeViewCount - v9 + 32 * v9;

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"identifier", self->_itemIdentifier];
  [v3 appendFormat:@"%@: '%ld'; ", @"version", self->_version];
  [v3 appendFormat:@"%@: '%ld'; ", @"variant", self->_variant];
  [v3 appendFormat:@"%@: '%@'; ", @"card", self->_card];
  [v3 appendFormat:@"%@: '%@'; ", @"card", self->_mediumCard];
  [v3 appendFormat:@"%@: '%@'; ", @"shelves", self->_shelves];
  [v3 appendFormat:@"%@: '%@'; ", @"footerLockup", self->_footerLockup];
  if (self->_requestedBadge)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"%@: '%@'; ", @"requestedBadge", v4];
  [v3 appendFormat:@"%@: '%ld'; ", @"priority", self->_priority];
  if (self->_entitledToForceLargeCard)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"%@: '%@'; ", @"entitledToForceLargeCard", v5];
  if (self->_hitMaxLargeViewCount)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"%@: '%@'; ", @"hitMaxLargeViewCount", v6];
  [v3 appendFormat:@"%@: '%@'; ", @"miniCard", self->_miniCard];
  [v3 appendFormat:@">"];
  v7 = [v3 copy];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  itemIdentifier = self->_itemIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:itemIdentifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_item forKey:@"item"];
  [coderCopy encodeInteger:self->_version forKey:@"version"];
  [coderCopy encodeInteger:self->_variant forKey:@"variant"];
  [coderCopy encodeObject:self->_card forKey:@"card"];
  [coderCopy encodeObject:self->_mediumCard forKey:@"mediumCard"];
  [coderCopy encodeObject:self->_shelves forKey:@"shelves"];
  [coderCopy encodeObject:self->_footerLockup forKey:@"footerLockup"];
  [coderCopy encodeBool:self->_requestedBadge forKey:@"requestedBadge"];
  [coderCopy encodeInteger:self->_priority forKey:@"priority"];
  [coderCopy encodeBool:self->_entitledToForceLargeCard forKey:@"entitledToForceLargeCard"];
  [coderCopy encodeBool:self->_hitMaxLargeViewCount forKey:@"hitMaxLargeViewCount"];
  [coderCopy encodeObject:self->_miniCard forKey:@"miniCard"];
}

- (PKDiscoveryArticleLayout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = PKDiscoveryArticleLayout;
  v5 = [(PKDiscoveryArticleLayout *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"item"];
    item = v5->_item;
    v5->_item = v8;

    v5->_version = [coderCopy decodeIntegerForKey:@"version"];
    v5->_variant = [coderCopy decodeIntegerForKey:@"variant"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"card"];
    card = v5->_card;
    v5->_card = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediumCard"];
    mediumCard = v5->_mediumCard;
    v5->_mediumCard = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"shelves"];
    shelves = v5->_shelves;
    v5->_shelves = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"footerLockup"];
    footerLockup = v5->_footerLockup;
    v5->_footerLockup = v19;

    v5->_requestedBadge = [coderCopy decodeBoolForKey:@"requestedBadge"];
    v5->_priority = [coderCopy decodeIntegerForKey:@"priority"];
    v5->_entitledToForceLargeCard = [coderCopy decodeBoolForKey:@"entitledToForceLargeCard"];
    v5->_hitMaxLargeViewCount = [coderCopy decodeBoolForKey:@"hitMaxLargeViewCount"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"miniCard"];
    miniCard = v5->_miniCard;
    v5->_miniCard = v21;
  }

  return v5;
}

@end