@interface CSPresentation
+ (CSPresentation)presentationWithCoordinateSpace:(id)space;
+ (id)presentation;
+ (id)presentationForProvider:(id)provider;
- (BOOL)intersectsCoordinateSpace:(id)space;
- (BOOL)isEqual:(id)equal;
- (CGPoint)convertPoint:(CGPoint)point fromCoordinateSpace:(id)space;
- (CGPoint)convertPoint:(CGPoint)point toCoordinateSpace:(id)space;
- (CGRect)bounds;
- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space;
- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space;
- (CSPresentation)init;
- (UICoordinateSpace)coordinateSpace;
- (UIEdgeInsets)suggestedInsetsForPreferredContentFrame:(CGRect)frame;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)firstRegionIntersectingCoordinateSpace:(id)space;
- (id)firstRegionIntersectingCoordinateSpace:(id)space excludingRegionsWithRole:(int64_t)role;
- (id)presentationForRole:(int64_t)role;
- (id)regionsIntersectingCoordinateSpace:(id)space;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)addRegion:(id)region;
- (void)addRegions:(id)regions;
- (void)unionPresentation:(id)presentation;
@end

@implementation CSPresentation

+ (id)presentation
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (CSPresentation)init
{
  v6.receiver = self;
  v6.super_class = CSPresentation;
  v2 = [(CSPresentation *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    regions = v2->_regions;
    v2->_regions = array;
  }

  return v2;
}

- (UICoordinateSpace)coordinateSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);

  return WeakRetained;
}

+ (CSPresentation)presentationWithCoordinateSpace:(id)space
{
  spaceCopy = space;
  v4 = +[CSPresentation presentation];
  [v4 setCoordinateSpace:spaceCopy];

  return v4;
}

+ (id)presentationForProvider:(id)provider
{
  providerCopy = provider;
  presentationCoordinateSpace = [providerCopy presentationCoordinateSpace];
  v6 = [self presentationWithCoordinateSpace:presentationCoordinateSpace];

  [v6 unionPresentation:providerCopy];
  coverSheetIdentifier = [providerCopy coverSheetIdentifier];

  [v6 setIdentifier:coverSheetIdentifier];

  return v6;
}

- (void)addRegion:(id)region
{
  if (region)
  {
    regionCopy = region;
    coordinateSpace = [(CSPresentation *)self coordinateSpace];
    v7 = [regionCopy regionForCoordinateSpace:coordinateSpace];

    v6 = v7;
    if (v7)
    {
      [(NSMutableArray *)self->_regions addObject:v7];
      v6 = v7;
    }
  }
}

- (void)addRegions:(id)regions
{
  v14 = *MEMORY[0x277D85DE8];
  regionsCopy = regions;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [regionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(regionsCopy);
        }

        [(CSPresentation *)self addRegion:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [regionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)unionPresentation:(id)presentation
{
  presentationRegions = [presentation presentationRegions];
  [(CSPresentation *)self addRegions:presentationRegions];
}

- (id)presentationForRole:(int64_t)role
{
  coordinateSpace = [(CSPresentation *)self coordinateSpace];
  v6 = [CSPresentation presentationWithCoordinateSpace:coordinateSpace];

  identifier = [(CSPresentation *)self identifier];
  [v6 setIdentifier:identifier];

  if (role)
  {
    regions = [(CSPresentation *)self regions];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __38__CSPresentation_presentationForRole___block_invoke;
    v11[3] = &__block_descriptor_40_e18_B16__0__CSRegion_8l;
    v11[4] = role;
    v9 = [regions bs_filter:v11];
    [v6 addRegions:v9];
  }

  return v6;
}

- (BOOL)intersectsCoordinateSpace:(id)space
{
  v3 = [(CSPresentation *)self firstRegionIntersectingCoordinateSpace:space];
  v4 = v3 != 0;

  return v4;
}

- (id)firstRegionIntersectingCoordinateSpace:(id)space
{
  v16 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  if (spaceCopy)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    regions = [(CSPresentation *)self regions];
    v6 = [regions countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(regions);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 isHidden] & 1) == 0 && (objc_msgSend(v9, "intersectsCoordinateSpace:", spaceCopy))
          {
            v6 = v9;
            goto LABEL_14;
          }
        }

        v6 = [regions countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)firstRegionIntersectingCoordinateSpace:(id)space excludingRegionsWithRole:(int64_t)role
{
  v20 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  if (spaceCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    regions = [(CSPresentation *)self regions];
    v8 = [regions countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(regions);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 isHidden] & 1) == 0 && objc_msgSend(v12, "role") != role && (objc_msgSend(v12, "intersectsCoordinateSpace:", spaceCopy))
          {
            v13 = v12;
            goto LABEL_15;
          }
        }

        v9 = [regions countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_15:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)regionsIntersectingCoordinateSpace:(id)space
{
  v19 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  if (spaceCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    regions = [(CSPresentation *)self regions];
    v7 = [regions countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(regions);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (([v11 isHidden] & 1) == 0 && objc_msgSend(v11, "intersectsCoordinateSpace:", spaceCopy))
          {
            v12 = [v11 copy];
            [array addObject:v12];
          }
        }

        v8 = [regions countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (UIEdgeInsets)suggestedInsetsForPreferredContentFrame:(CGRect)frame
{
  v61 = *MEMORY[0x277D85DE8];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __58__CSPresentation_suggestedInsetsForPreferredContentFrame___block_invoke;
  v57[3] = &__block_descriptor_64_e39_B40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
  frameCopy = frame;
  v4 = MEMORY[0x223D698D0](v57, a2);
  v5 = [(CSPresentation *)self presentationForRole:2];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  regions = [v5 regions];
  v11 = [regions countByEnumeratingWithState:&v53 objects:v60 count:16];
  v46 = height;
  v47 = width;
  v44 = x;
  v45 = y;
  if (v11)
  {
    v12 = v11;
    v13 = *v54;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v54 != v13)
        {
          objc_enumerationMutation(regions);
        }

        v15 = *(*(&v53 + 1) + 8 * i);
        [v15 extent];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        if (([v15 isHidden] & 1) == 0 && v4[2](v4, v17, v19, v21, v23))
        {
          v62.origin.x = x;
          v62.origin.y = y;
          v62.size.width = width;
          v62.size.height = height;
          v73.origin.x = v17;
          v73.origin.y = v19;
          v73.size.width = v21;
          v73.size.height = v23;
          v63 = CGRectUnion(v62, v73);
          x = v63.origin.x;
          y = v63.origin.y;
          width = v63.size.width;
          height = v63.size.height;
        }
      }

      v12 = [regions countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v12);
  }

  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = width;
  v64.size.height = height;
  MaxY = 0.0;
  if (!CGRectIsEmpty(v64))
  {
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = width;
    v65.size.height = height;
    MaxY = CGRectGetMaxY(v65);
  }

  v24 = [(CSPresentation *)self presentationForRole:1];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  regions2 = [v24 regions];
  v26 = [regions2 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v50;
    v29 = v46;
    v30 = v47;
    v32 = v44;
    v31 = v45;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v50 != v28)
        {
          objc_enumerationMutation(regions2);
        }

        [*(*(&v49 + 1) + 8 * j) extent];
        v34 = v66.origin.x;
        v35 = v66.origin.y;
        v36 = v66.size.width;
        v37 = v66.size.height;
        if (CGRectGetMinY(v66) > MaxY && v4[2](v4, v34, v35, v36, v37))
        {
          v67.origin.x = v32;
          v67.origin.y = v31;
          v67.size.width = v30;
          v67.size.height = v29;
          v74.origin.x = v34;
          v74.origin.y = v35;
          v74.size.width = v36;
          v74.size.height = v37;
          v68 = CGRectUnion(v67, v74);
          v32 = v68.origin.x;
          v31 = v68.origin.y;
          v30 = v68.size.width;
          v29 = v68.size.height;
        }
      }

      v27 = [regions2 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v27);
  }

  else
  {
    v29 = v46;
    v30 = v47;
    v32 = v44;
    v31 = v45;
  }

  v69.origin.x = v32;
  v69.origin.y = v31;
  v69.size.width = v30;
  v69.size.height = v29;
  v38 = 0.0;
  if (!CGRectIsEmpty(v69))
  {
    [(CSPresentation *)self bounds];
    v39 = CGRectGetHeight(v70);
    v71.origin.x = v32;
    v71.origin.y = v31;
    v71.size.width = v30;
    v71.size.height = v29;
    v38 = v39 - CGRectGetMinY(v71);
  }

  v40 = 0.0;
  v41 = 0.0;
  v42 = MaxY;
  v43 = v38;
  result.right = v41;
  result.bottom = v43;
  result.left = v40;
  result.top = v42;
  return result;
}

BOOL __58__CSPresentation_suggestedInsetsForPreferredContentFrame___block_invoke(CGRect *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MinX = CGRectGetMinX(*&a2);
  if (MinX > CGRectGetMaxX(a1[1]))
  {
    return 0;
  }

  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  MaxX = CGRectGetMaxX(v13);
  return MaxX >= CGRectGetMinX(a1[1]);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else if ([(CSPresentation *)equalCopy isMemberOfClass:objc_opt_class()]&& (identifier = self->_identifier, [(CSPresentation *)equalCopy identifier], v6 = objc_claimAutoreleasedReturnValue(), LODWORD(identifier) = [(NSString *)identifier isEqualToString:v6], v6, identifier))
  {
    regions = self->_regions;
    regions = [(CSPresentation *)equalCopy regions];
    v9 = [(NSMutableArray *)regions isEqualToArray:regions];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  coordinateSpace = [(CSPresentation *)self coordinateSpace];
  v5 = [CSPresentation presentationWithCoordinateSpace:coordinateSpace];

  identifier = [(CSPresentation *)self identifier];
  [v5 setIdentifier:identifier];

  [v5 unionPresentation:self];
  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CSPresentation *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  v5 = [v3 appendUnsignedInteger:-[NSMutableArray count](self->_regions withName:{"count"), @"regions"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CSPresentation *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(CSPresentation *)self succinctDescriptionBuilder];
  if ([(NSMutableArray *)self->_regions count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__CSPresentation_descriptionBuilderWithMultilinePrefix___block_invoke;
    v7[3] = &unk_27838B838;
    v8 = succinctDescriptionBuilder;
    selfCopy = self;
    [v8 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v7];
  }

  return succinctDescriptionBuilder;
}

void __56__CSPresentation_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) regions];
  [v1 appendArraySection:v2 withName:@"regions" skipIfEmpty:1];
}

- (CGRect)bounds
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point toCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  spaceCopy = space;
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained convertPoint:spaceCopy toCoordinateSpace:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  spaceCopy = space;
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained convertPoint:spaceCopy fromCoordinateSpace:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  spaceCopy = space;
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained convertRect:spaceCopy toCoordinateSpace:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  spaceCopy = space;
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained convertRect:spaceCopy fromCoordinateSpace:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

@end