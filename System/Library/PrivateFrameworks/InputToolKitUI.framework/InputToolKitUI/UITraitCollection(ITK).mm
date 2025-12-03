@interface UITraitCollection(ITK)
- (BOOL)itk_hasEqualSizeToTraitCollection:()ITK;
- (double)itk_contentSizeScaleFactor;
- (id)itk_traitCollectionClampedToNonaccessibilityContentSize;
- (id)itk_traitCollectionWithContentSize:()ITK;
- (uint64_t)itk_hasCompactSize;
@end

@implementation UITraitCollection(ITK)

- (uint64_t)itk_hasCompactSize
{
  if ([self itk_hasCompactWidth])
  {
    return 1;
  }

  return [self itk_hasCompactHeight];
}

- (BOOL)itk_hasEqualSizeToTraitCollection:()ITK
{
  v4 = a3;
  horizontalSizeClass = [self horizontalSizeClass];
  if (horizontalSizeClass == [v4 horizontalSizeClass])
  {
    verticalSizeClass = [self verticalSizeClass];
    v7 = verticalSizeClass == [v4 verticalSizeClass];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)itk_traitCollectionClampedToNonaccessibilityContentSize
{
  selfCopy = self;
  preferredContentSizeCategory = [selfCopy preferredContentSizeCategory];
  if (([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76800]] & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x277D767F8]) & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x277D767F0]) & 1) != 0 || objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x277D767E8]))
  {
    v3 = [selfCopy traitCollectionByModifyingTraits:&__block_literal_global_2];

    selfCopy = v3;
  }

  return selfCopy;
}

- (id)itk_traitCollectionWithContentSize:()ITK
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__UITraitCollection_ITK__itk_traitCollectionWithContentSize___block_invoke;
  v8[3] = &unk_2797B0558;
  v9 = v4;
  v5 = v4;
  v6 = [self traitCollectionByModifyingTraits:v8];

  return v6;
}

- (double)itk_contentSizeScaleFactor
{
  preferredContentSizeCategory = [self preferredContentSizeCategory];
  if (preferredContentSizeCategory == *MEMORY[0x277D76830])
  {
    v2 = 0.8;
  }

  else if (preferredContentSizeCategory == *MEMORY[0x277D76858])
  {
    v2 = 0.85;
  }

  else if (preferredContentSizeCategory == *MEMORY[0x277D76840])
  {
    v2 = 0.9;
  }

  else
  {
    v2 = 1.0;
    if (preferredContentSizeCategory != *MEMORY[0x277D76838] && preferredContentSizeCategory != *MEMORY[0x277D76860])
    {
      if (preferredContentSizeCategory == *MEMORY[0x277D76828])
      {
        v2 = 1.1;
      }

      else if (preferredContentSizeCategory == *MEMORY[0x277D76820])
      {
        v2 = 1.2;
      }

      else if (preferredContentSizeCategory == *MEMORY[0x277D76818])
      {
        v2 = 1.35;
      }

      else if (preferredContentSizeCategory == *MEMORY[0x277D76808])
      {
        v2 = 1.6;
      }

      else if (preferredContentSizeCategory == *MEMORY[0x277D76800])
      {
        v2 = 1.9;
      }

      else if (preferredContentSizeCategory == *MEMORY[0x277D767F8])
      {
        v2 = 2.35;
      }

      else if (preferredContentSizeCategory == *MEMORY[0x277D767F0])
      {
        v2 = 2.75;
      }

      else if (preferredContentSizeCategory == *MEMORY[0x277D767E8])
      {
        v2 = 3.1;
      }

      else
      {
        v2 = 1.0;
      }
    }
  }

  return v2;
}

@end