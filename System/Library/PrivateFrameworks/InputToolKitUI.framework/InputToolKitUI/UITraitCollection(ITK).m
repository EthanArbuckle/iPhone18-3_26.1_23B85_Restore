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
  if ([a1 itk_hasCompactWidth])
  {
    return 1;
  }

  return [a1 itk_hasCompactHeight];
}

- (BOOL)itk_hasEqualSizeToTraitCollection:()ITK
{
  v4 = a3;
  v5 = [a1 horizontalSizeClass];
  if (v5 == [v4 horizontalSizeClass])
  {
    v6 = [a1 verticalSizeClass];
    v7 = v6 == [v4 verticalSizeClass];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)itk_traitCollectionClampedToNonaccessibilityContentSize
{
  v1 = a1;
  v2 = [v1 preferredContentSizeCategory];
  if (([v2 isEqualToString:*MEMORY[0x277D76800]] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", *MEMORY[0x277D767F8]) & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", *MEMORY[0x277D767F0]) & 1) != 0 || objc_msgSend(v2, "isEqualToString:", *MEMORY[0x277D767E8]))
  {
    v3 = [v1 traitCollectionByModifyingTraits:&__block_literal_global_2];

    v1 = v3;
  }

  return v1;
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
  v6 = [a1 traitCollectionByModifyingTraits:v8];

  return v6;
}

- (double)itk_contentSizeScaleFactor
{
  v1 = [a1 preferredContentSizeCategory];
  if (v1 == *MEMORY[0x277D76830])
  {
    v2 = 0.8;
  }

  else if (v1 == *MEMORY[0x277D76858])
  {
    v2 = 0.85;
  }

  else if (v1 == *MEMORY[0x277D76840])
  {
    v2 = 0.9;
  }

  else
  {
    v2 = 1.0;
    if (v1 != *MEMORY[0x277D76838] && v1 != *MEMORY[0x277D76860])
    {
      if (v1 == *MEMORY[0x277D76828])
      {
        v2 = 1.1;
      }

      else if (v1 == *MEMORY[0x277D76820])
      {
        v2 = 1.2;
      }

      else if (v1 == *MEMORY[0x277D76818])
      {
        v2 = 1.35;
      }

      else if (v1 == *MEMORY[0x277D76808])
      {
        v2 = 1.6;
      }

      else if (v1 == *MEMORY[0x277D76800])
      {
        v2 = 1.9;
      }

      else if (v1 == *MEMORY[0x277D767F8])
      {
        v2 = 2.35;
      }

      else if (v1 == *MEMORY[0x277D767F0])
      {
        v2 = 2.75;
      }

      else if (v1 == *MEMORY[0x277D767E8])
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