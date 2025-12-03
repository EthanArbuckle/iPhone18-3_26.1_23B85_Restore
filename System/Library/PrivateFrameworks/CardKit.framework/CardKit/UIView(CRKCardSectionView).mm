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
  uUIDString = objc_getAssociatedObject(self, sel_cardSectionViewIdentifier);
  if (!uUIDString)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v4 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      selfCopy = self;
      v9 = 2112;
      v10 = uUIDString;
      _os_log_impl(&dword_243247000, v4, OS_LOG_TYPE_INFO, "Card section view %@ does not have a card section view identifier. This is a requirement. Category CRKCardSectionView on CRKUINSView is setting one (%@) via an objc associated object on the client's behalf as a workaround", &v7, 0x16u);
    }

    [self setCardSectionViewIdentifier:uUIDString];
  }

  v5 = uUIDString;

  return v5;
}

- (id)composedSuperview
{
  v2 = objc_getAssociatedObject(self, sel_composedSuperview);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    objc_setAssociatedObject(self, sel_composedSuperview, 0, 0);
  }

  return v3;
}

- (void)removeFromComposedSuperview
{
  composedSuperview = [self composedSuperview];
  [composedSuperview cardSectionSubviewWantsToBeRemovedFromHierarchy:self];
}

+ (double)sizeThatFitsCardSection:()CRKCardSectionView boundingSize:
{
  v5 = objc_alloc_init(self);
  [v5 sizeThatFits:{a2, a3}];
  v7 = v6;

  return v7;
}

@end