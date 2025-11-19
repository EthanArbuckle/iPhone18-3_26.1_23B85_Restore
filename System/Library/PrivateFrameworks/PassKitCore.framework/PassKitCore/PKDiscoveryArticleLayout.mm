@interface PKDiscoveryArticleLayout
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualForUI:(id)a3;
- (PKDiscoveryArticleLayout)initWithCoder:(id)a3;
- (PKDiscoveryArticleLayout)initWithDictionary:(id)a3;
- (id)description;
- (unint64_t)hash;
- (unint64_t)isWritingDirectionRTL;
- (void)_updatePreferredLocalizationWithBundle:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)localizeWithBundle:(id)a3;
- (void)localizeWithBundle:(id)a3 table:(id)a4;
- (void)setItem:(id)a3;
- (void)setMediaBundle:(id)a3;
@end

@implementation PKDiscoveryArticleLayout

- (PKDiscoveryArticleLayout)initWithDictionary:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = PKDiscoveryArticleLayout;
  v5 = [(PKDiscoveryArticleLayout *)&v37 init];
  if (v5)
  {
    v5->_version = [v4 PKIntegerForKey:@"version"];
    v31 = [v4 PKDictionaryForKey:@"card"];
    v6 = [[PKDiscoveryCard alloc] initWithDictionary:v31];
    card = v5->_card;
    v5->_card = v6;

    v8 = [v4 PKDictionaryForKey:@"mediumCard"];
    if (v8)
    {
      v9 = [[PKDiscoveryCard alloc] initWithDictionary:v8];
      mediumCard = v5->_mediumCard;
      v5->_mediumCard = v9;
    }

    v30 = [v4 PKDictionaryForKey:@"miniCard"];
    v11 = [[PKMiniDiscoveryCard alloc] initWithDictionary:v30];
    miniCard = v5->_miniCard;
    v5->_miniCard = v11;

    v13 = [v4 PKArrayContaining:objc_opt_class() forKey:@"shelves"];
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

    v24 = [v4 PKDictionaryForKey:@"footerLockup"];
    v25 = [[PKDiscoveryCallToAction alloc] initWithDictionary:v24];
    footerLockup = v5->_footerLockup;
    v5->_footerLockup = v25;

    v5->_priority = 500;
  }

  v27 = v5;
LABEL_17:

  return v27;
}

- (void)localizeWithBundle:(id)a3
{
  v4 = a3;
  [(PKDiscoveryArticleLayout *)self _updatePreferredLocalizationWithBundle:v4];
  [(PKDiscoveryCard *)self->_card localizeWithBundle:v4];
  [(PKDiscoveryCard *)self->_mediumCard localizeWithBundle:v4];
  [(PKDiscoveryCard *)self->_miniCard localizeWithBundle:v4];
  shelves = self->_shelves;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__PKDiscoveryArticleLayout_localizeWithBundle___block_invoke;
  v7[3] = &unk_1E79CA478;
  v8 = v4;
  v6 = v4;
  [(NSArray *)shelves enumerateObjectsUsingBlock:v7];
}

- (void)localizeWithBundle:(id)a3 table:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PKDiscoveryArticleLayout *)self _updatePreferredLocalizationWithBundle:v6];
  [(PKDiscoveryCard *)self->_card localizeWithBundle:v6 table:v7];
  [(PKDiscoveryCard *)self->_mediumCard localizeWithBundle:v6 table:v7];
  [(PKDiscoveryCard *)self->_miniCard localizeWithBundle:v6 table:v7];
  shelves = self->_shelves;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PKDiscoveryArticleLayout_localizeWithBundle_table___block_invoke;
  v11[3] = &unk_1E79CA4A0;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(NSArray *)shelves enumerateObjectsUsingBlock:v11];
}

- (void)setMediaBundle:(id)a3
{
  v4 = a3;
  [(PKDiscoveryCard *)self->_card setMediaBundle:v4];
  [(PKDiscoveryCard *)self->_miniCard setMediaBundle:v4];
  [(PKDiscoveryCard *)self->_mediumCard setMediaBundle:v4];
  [(PKDiscoveryCallToAction *)self->_footerLockup setMediaBundle:v4];
  shelves = self->_shelves;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__PKDiscoveryArticleLayout_setMediaBundle___block_invoke;
  v7[3] = &unk_1E79CA478;
  v8 = v4;
  v6 = v4;
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

- (void)setItem:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v12 = v5;
    objc_storeStrong(&self->_item, a3);
    v6 = [v12 identifier];
    itemIdentifier = self->_itemIdentifier;
    self->_itemIdentifier = v6;

    if ([v12 viewCount])
    {
      v8 = 0;
    }

    else
    {
      v8 = [v12 shouldBadge];
    }

    self->_requestedBadge = v8;
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
    v5 = v12;
    if (footerLockup)
    {
      [(PKDiscoveryCallToAction *)footerLockup setItem:v12];
      v5 = v12;
    }
  }
}

- (BOOL)isEqualForUI:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_34;
  }

  itemIdentifier = self->_itemIdentifier;
  v6 = v4[2];
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

  if (self->_version != v4[3] || self->_variant != v4[4] || self->_priority != v4[10] || self->_entitledToForceLargeCard != *(v4 + 8) || self->_hitMaxLargeViewCount != *(v4 + 9))
  {
    goto LABEL_34;
  }

  card = self->_card;
  v8 = v4[5];
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
  v10 = v4[6];
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
  v12 = v4[8];
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
  v14 = v4[9];
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
  v16 = v4[7];
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

- (void)_updatePreferredLocalizationWithBundle:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [v5 languageCode];

  v7 = [v4 preferredLocalizations];
  v8 = [v7 containsObject:v6];

  if (v8)
  {
    objc_storeStrong(&self->_preferredLocalization, v6);
  }

  else
  {
    v9 = [v4 preferredLocalizations];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [v4 preferredLocalizations];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __67__PKDiscoveryArticleLayout__updatePreferredLocalizationWithBundle___block_invoke;
      v17[3] = &unk_1E79CA4C8;
      v18 = v6;
      v12 = [v11 pk_firstObjectPassingTest:v17];
      preferredLocalization = self->_preferredLocalization;
      self->_preferredLocalization = v12;

      if (!self->_preferredLocalization)
      {
        v14 = [v4 preferredLocalizations];
        v15 = [v14 firstObject];
        v16 = self->_preferredLocalization;
        self->_preferredLocalization = v15;
      }
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([(PKDiscoveryArticleLayout *)self isEqualForUI:v4])
  {
    v5 = self->_requestedBadge == v4[10];
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

- (void)encodeWithCoder:(id)a3
{
  itemIdentifier = self->_itemIdentifier;
  v5 = a3;
  [v5 encodeObject:itemIdentifier forKey:@"identifier"];
  [v5 encodeObject:self->_item forKey:@"item"];
  [v5 encodeInteger:self->_version forKey:@"version"];
  [v5 encodeInteger:self->_variant forKey:@"variant"];
  [v5 encodeObject:self->_card forKey:@"card"];
  [v5 encodeObject:self->_mediumCard forKey:@"mediumCard"];
  [v5 encodeObject:self->_shelves forKey:@"shelves"];
  [v5 encodeObject:self->_footerLockup forKey:@"footerLockup"];
  [v5 encodeBool:self->_requestedBadge forKey:@"requestedBadge"];
  [v5 encodeInteger:self->_priority forKey:@"priority"];
  [v5 encodeBool:self->_entitledToForceLargeCard forKey:@"entitledToForceLargeCard"];
  [v5 encodeBool:self->_hitMaxLargeViewCount forKey:@"hitMaxLargeViewCount"];
  [v5 encodeObject:self->_miniCard forKey:@"miniCard"];
}

- (PKDiscoveryArticleLayout)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PKDiscoveryArticleLayout;
  v5 = [(PKDiscoveryArticleLayout *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"item"];
    item = v5->_item;
    v5->_item = v8;

    v5->_version = [v4 decodeIntegerForKey:@"version"];
    v5->_variant = [v4 decodeIntegerForKey:@"variant"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"card"];
    card = v5->_card;
    v5->_card = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediumCard"];
    mediumCard = v5->_mediumCard;
    v5->_mediumCard = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"shelves"];
    shelves = v5->_shelves;
    v5->_shelves = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"footerLockup"];
    footerLockup = v5->_footerLockup;
    v5->_footerLockup = v19;

    v5->_requestedBadge = [v4 decodeBoolForKey:@"requestedBadge"];
    v5->_priority = [v4 decodeIntegerForKey:@"priority"];
    v5->_entitledToForceLargeCard = [v4 decodeBoolForKey:@"entitledToForceLargeCard"];
    v5->_hitMaxLargeViewCount = [v4 decodeBoolForKey:@"hitMaxLargeViewCount"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"miniCard"];
    miniCard = v5->_miniCard;
    v5->_miniCard = v21;
  }

  return v5;
}

@end