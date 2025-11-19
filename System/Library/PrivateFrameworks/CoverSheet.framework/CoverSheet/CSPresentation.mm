@interface CSPresentation
+ (CSPresentation)presentationWithCoordinateSpace:(id)a3;
+ (id)presentation;
+ (id)presentationForProvider:(id)a3;
- (BOOL)intersectsCoordinateSpace:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGPoint)convertPoint:(CGPoint)a3 fromCoordinateSpace:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toCoordinateSpace:(id)a4;
- (CGRect)bounds;
- (CGRect)convertRect:(CGRect)a3 fromCoordinateSpace:(id)a4;
- (CGRect)convertRect:(CGRect)a3 toCoordinateSpace:(id)a4;
- (CSPresentation)init;
- (UICoordinateSpace)coordinateSpace;
- (UIEdgeInsets)suggestedInsetsForPreferredContentFrame:(CGRect)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)firstRegionIntersectingCoordinateSpace:(id)a3;
- (id)firstRegionIntersectingCoordinateSpace:(id)a3 excludingRegionsWithRole:(int64_t)a4;
- (id)presentationForRole:(int64_t)a3;
- (id)regionsIntersectingCoordinateSpace:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)addRegion:(id)a3;
- (void)addRegions:(id)a3;
- (void)unionPresentation:(id)a3;
@end

@implementation CSPresentation

+ (id)presentation
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (CSPresentation)init
{
  v6.receiver = self;
  v6.super_class = CSPresentation;
  v2 = [(CSPresentation *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    regions = v2->_regions;
    v2->_regions = v3;
  }

  return v2;
}

- (UICoordinateSpace)coordinateSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);

  return WeakRetained;
}

+ (CSPresentation)presentationWithCoordinateSpace:(id)a3
{
  v3 = a3;
  v4 = +[CSPresentation presentation];
  [v4 setCoordinateSpace:v3];

  return v4;
}

+ (id)presentationForProvider:(id)a3
{
  v4 = a3;
  v5 = [v4 presentationCoordinateSpace];
  v6 = [a1 presentationWithCoordinateSpace:v5];

  [v6 unionPresentation:v4];
  v7 = [v4 coverSheetIdentifier];

  [v6 setIdentifier:v7];

  return v6;
}

- (void)addRegion:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(CSPresentation *)self coordinateSpace];
    v7 = [v4 regionForCoordinateSpace:v5];

    v6 = v7;
    if (v7)
    {
      [(NSMutableArray *)self->_regions addObject:v7];
      v6 = v7;
    }
  }
}

- (void)addRegions:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(CSPresentation *)self addRegion:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)unionPresentation:(id)a3
{
  v4 = [a3 presentationRegions];
  [(CSPresentation *)self addRegions:v4];
}

- (id)presentationForRole:(int64_t)a3
{
  v5 = [(CSPresentation *)self coordinateSpace];
  v6 = [CSPresentation presentationWithCoordinateSpace:v5];

  v7 = [(CSPresentation *)self identifier];
  [v6 setIdentifier:v7];

  if (a3)
  {
    v8 = [(CSPresentation *)self regions];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __38__CSPresentation_presentationForRole___block_invoke;
    v11[3] = &__block_descriptor_40_e18_B16__0__CSRegion_8l;
    v11[4] = a3;
    v9 = [v8 bs_filter:v11];
    [v6 addRegions:v9];
  }

  return v6;
}

- (BOOL)intersectsCoordinateSpace:(id)a3
{
  v3 = [(CSPresentation *)self firstRegionIntersectingCoordinateSpace:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)firstRegionIntersectingCoordinateSpace:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(CSPresentation *)self regions];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 isHidden] & 1) == 0 && (objc_msgSend(v9, "intersectsCoordinateSpace:", v4))
          {
            v6 = v9;
            goto LABEL_14;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)firstRegionIntersectingCoordinateSpace:(id)a3 excludingRegionsWithRole:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(CSPresentation *)self regions];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 isHidden] & 1) == 0 && objc_msgSend(v12, "role") != a4 && (objc_msgSend(v12, "intersectsCoordinateSpace:", v6))
          {
            v13 = v12;
            goto LABEL_15;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)regionsIntersectingCoordinateSpace:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(CSPresentation *)self regions];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (([v11 isHidden] & 1) == 0 && objc_msgSend(v11, "intersectsCoordinateSpace:", v4))
          {
            v12 = [v11 copy];
            [v5 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIEdgeInsets)suggestedInsetsForPreferredContentFrame:(CGRect)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __58__CSPresentation_suggestedInsetsForPreferredContentFrame___block_invoke;
  v57[3] = &__block_descriptor_64_e39_B40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
  v58 = a3;
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
  v10 = [v5 regions];
  v11 = [v10 countByEnumeratingWithState:&v53 objects:v60 count:16];
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
          objc_enumerationMutation(v10);
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

      v12 = [v10 countByEnumeratingWithState:&v53 objects:v60 count:16];
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
  v25 = [v24 regions];
  v26 = [v25 countByEnumeratingWithState:&v49 objects:v59 count:16];
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
          objc_enumerationMutation(v25);
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

      v27 = [v25 countByEnumeratingWithState:&v49 objects:v59 count:16];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else if ([(CSPresentation *)v4 isMemberOfClass:objc_opt_class()]&& (identifier = self->_identifier, [(CSPresentation *)v4 identifier], v6 = objc_claimAutoreleasedReturnValue(), LODWORD(identifier) = [(NSString *)identifier isEqualToString:v6], v6, identifier))
  {
    regions = self->_regions;
    v8 = [(CSPresentation *)v4 regions];
    v9 = [(NSMutableArray *)regions isEqualToArray:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(CSPresentation *)self coordinateSpace];
  v5 = [CSPresentation presentationWithCoordinateSpace:v4];

  v6 = [(CSPresentation *)self identifier];
  [v5 setIdentifier:v6];

  [v5 unionPresentation:self];
  return v5;
}

- (id)succinctDescription
{
  v2 = [(CSPresentation *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  v5 = [v3 appendUnsignedInteger:-[NSMutableArray count](self->_regions withName:{"count"), @"regions"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CSPresentation *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(CSPresentation *)self succinctDescriptionBuilder];
  if ([(NSMutableArray *)self->_regions count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__CSPresentation_descriptionBuilderWithMultilinePrefix___block_invoke;
    v7[3] = &unk_27838B838;
    v8 = v5;
    v9 = self;
    [v8 appendBodySectionWithName:0 multilinePrefix:v4 block:v7];
  }

  return v5;
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

- (CGPoint)convertPoint:(CGPoint)a3 toCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained convertPoint:v7 toCoordinateSpace:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained convertPoint:v7 fromCoordinateSpace:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 toCoordinateSpace:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained convertRect:v9 toCoordinateSpace:{x, y, width, height}];
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

- (CGRect)convertRect:(CGRect)a3 fromCoordinateSpace:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained convertRect:v9 fromCoordinateSpace:{x, y, width, height}];
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