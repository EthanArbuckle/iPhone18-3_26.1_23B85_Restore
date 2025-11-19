@interface UIView(CRKCardSectionView)
+ (double)sizeThatFitsCardSection:()CRKCardSectionView boundingSize:;
- (id)cardSectionViewIdentifier;
- (id)composedSuperview;
- (void)removeFromComposedSuperview;
@end

@implementation UIView(CRKCardSectionView)

- (id)cardSectionViewIdentifier
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_getAssociatedObject(a1, sel_cardSectionViewIdentifier);
  if (!v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v2 = [v3 UUIDString];

    v4 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = a1;
      v9 = 2112;
      v10 = v2;
      _os_log_impl(&dword_243247000, v4, OS_LOG_TYPE_INFO, "Card section view %@ does not have a card section view identifier. This is a requirement. Category CRKCardSectionView on CRKUINSView is setting one (%@) via an objc associated object on the client's behalf as a workaround", &v7, 0x16u);
    }

    [a1 setCardSectionViewIdentifier:v2];
  }

  v5 = v2;

  return v5;
}

- (id)composedSuperview
{
  v2 = objc_getAssociatedObject(a1, sel_composedSuperview);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    objc_setAssociatedObject(a1, sel_composedSuperview, 0, 0);
  }

  return v3;
}

- (void)removeFromComposedSuperview
{
  v2 = [a1 composedSuperview];
  [v2 cardSectionSubviewWantsToBeRemovedFromHierarchy:a1];
}

+ (double)sizeThatFitsCardSection:()CRKCardSectionView boundingSize:
{
  v5 = objc_alloc_init(a1);
  [v5 sizeThatFits:{a2, a3}];
  v7 = v6;

  return v7;
}

@end