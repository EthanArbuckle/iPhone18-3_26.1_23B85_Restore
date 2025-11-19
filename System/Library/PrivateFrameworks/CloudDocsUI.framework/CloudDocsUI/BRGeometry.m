@interface BRGeometry
+ (void)initialize;
- (BOOL)isEqualToTemplate:(id)a3 diagnostic:(id *)a4;
- (BOOL)isValidForGeometryValidation:(unint64_t)a3 offendingGeometry:(id *)a4;
- (BRGeometry)initWithCoder:(id)a3;
- (BRGeometry)initWithView:(id)a3;
- (BRGeometry)initWithView:(id)a3 rootView:(id)a4;
- (CGRect)absoluteFrame;
- (id)description;
- (id)gatherSubviews:(id)a3;
- (id)recursiveDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BRGeometry

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    [objc_opt_class() br_setGatherBehaviour:2];
    [MEMORY[0x277D75D18] br_setGatherBehaviour:1 forClassesNamed:&unk_28569A488];
    [MEMORY[0x277D75D18] br_setGatherBehaviour:2 forClassesNamed:&unk_28569A4A0];
    v4 = MEMORY[0x277D75D18];

    [v4 br_setGatherBehaviour:3 forClassesNamed:&unk_28569A4B8];
  }
}

- (BRGeometry)initWithView:(id)a3
{
  v4 = a3;
  v5 = [(BRGeometry *)self initWithView:v4 rootView:v4];
  if (v5)
  {
    [v4 br_setLayerNames];
  }

  return v5;
}

- (id)gatherSubviews:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([objc_opt_class() br_gatherBehaviour] == 2)
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v5 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [v4 subviews];
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
          if ([objc_opt_class() br_gatherBehaviour] == 3)
          {
            v12 = [(BRGeometry *)self gatherSubviews:v11];
            [v5 addObjectsFromArray:v12];
          }

          else
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (BRGeometry)initWithView:(id)a3 rootView:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = BRGeometry;
  v8 = [(BRGeometry *)&v26 init];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(BRGeometry *)v8 setName:v10];

    [v6 bounds];
    [v7 convertRect:v6 fromView:?];
    [(BRGeometry *)v8 setAbsoluteFrame:?];
    -[BRGeometry setHasAmbiguousLayout:](v8, "setHasAmbiguousLayout:", [v6 hasAmbiguousLayout]);
    -[BRGeometry setIsClipped:](v8, "setIsClipped:", [v6 br_viewIsClipped]);
    v11 = [v6 br_contentDescription];
    [(BRGeometry *)v8 setContentDescription:v11];

    v12 = [MEMORY[0x277CBEB18] array];
    v13 = [objc_opt_class() br_gatherBehaviour];
    if ((v13 - 1) >= 3)
    {
      if (v13)
      {
LABEL_16:
        [(BRGeometry *)v8 setSubitems:v12];

        goto LABEL_17;
      }
    }

    else
    {
      NSLog(&cfstr_InitializingGe.isa, v6);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = [(BRGeometry *)v8 gatherSubviews:v6];
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v22 + 1) + 8 * i);
          if (([v19 isHidden] & 1) == 0 && objc_msgSend(objc_opt_class(), "br_gatherBehaviour") != 1)
          {
            v20 = [[BRGeometry alloc] initWithView:v19 rootView:v7];
            [v12 addObject:v20];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v16);
    }

    goto LABEL_16;
  }

LABEL_17:

  return v8;
}

- (BRGeometry)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BRGeometry;
  v5 = [(BRGeometry *)&v13 init];
  if (v5)
  {
    [v4 decodeCGRectForKey:@"frm"];
    [(BRGeometry *)v5 setAbsoluteFrame:?];
    -[BRGeometry setHasAmbiguousLayout:](v5, "setHasAmbiguousLayout:", [v4 decodeBoolForKey:@"amb"]);
    -[BRGeometry setIsClipped:](v5, "setIsClipped:", [v4 decodeBoolForKey:@"clp"]);
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"sub"];
    [(BRGeometry *)v5 setSubitems:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nam"];
    [(BRGeometry *)v5 setName:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cdn"];
    [(BRGeometry *)v5 setContentDescription:v11];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(BRGeometry *)self absoluteFrame];
  [v4 encodeCGRect:@"frm" forKey:?];
  [v4 encodeBool:-[BRGeometry hasAmbiguousLayout](self forKey:{"hasAmbiguousLayout"), @"amb"}];
  [v4 encodeBool:-[BRGeometry isClipped](self forKey:{"isClipped"), @"clp"}];
  v5 = [(BRGeometry *)self subitems];
  [v4 encodeObject:v5 forKey:@"sub"];

  v6 = [(BRGeometry *)self name];
  [v4 encodeObject:v6 forKey:@"nam"];

  v7 = [(BRGeometry *)self contentDescription];
  [v4 encodeObject:v7 forKey:@"cdn"];
}

- (id)recursiveDescription
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = objc_autoreleasePoolPush();
  appendDescription(self, v3, 0);
  objc_autoreleasePoolPop(v4);

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BRGeometry *)self name];
  [(BRGeometry *)self absoluteFrame];
  v6 = v5;
  [(BRGeometry *)self absoluteFrame];
  v8 = v7;
  [(BRGeometry *)self absoluteFrame];
  v10 = v9;
  [(BRGeometry *)self absoluteFrame];
  v12 = v11;
  if ([(BRGeometry *)self hasAmbiguousLayout])
  {
    v13 = @" - AMBIGUOUS";
  }

  else
  {
    v13 = &stru_285690698;
  }

  if ([(BRGeometry *)self isClipped])
  {
    v14 = @" - CLIPPED";
  }

  else
  {
    v14 = &stru_285690698;
  }

  v15 = [(BRGeometry *)self contentDescription];
  if (v15)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@" - %@", self->_contentDescription];
    v17 = [v3 stringWithFormat:@"%@ - {{%g, %g}, {%g, %g}}%@%@%@", v4, v6, v8, v10, v12, v13, v14, v16];
  }

  else
  {
    v17 = [v3 stringWithFormat:@"%@ - {{%g, %g}, {%g, %g}}%@%@%@", v4, v6, v8, v10, v12, v13, v14, &stru_285690698];
  }

  return v17;
}

- (BOOL)isEqualToTemplate:(id)a3 diagnostic:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAB68] string];
  v8 = objc_autoreleasePoolPush();
  appended = appendComparison(self, v6, v7, 0);
  objc_autoreleasePoolPop(v8);
  if (a4)
  {
    v10 = v7;
    *a4 = v7;
  }

  return appended ^ 1;
}

- (BOOL)isValidForGeometryValidation:(unint64_t)a3 offendingGeometry:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  if ((a3 & 1) != 0 && [(BRGeometry *)self isClipped])
  {
    if (a4)
    {
LABEL_4:
      v7 = self;
      v8 = 0;
      *a4 = self;
      return v8;
    }

    return 0;
  }

  if ((a3 & 2) != 0 && [(BRGeometry *)self hasAmbiguousLayout])
  {
    if (a4)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(BRGeometry *)self subitems];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (![*(*(&v15 + 1) + 8 * i) isValidForGeometryValidation:a3 offendingGeometry:a4])
        {
          v8 = 0;
          goto LABEL_19;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_19:

  return v8;
}

- (CGRect)absoluteFrame
{
  x = self->_absoluteFrame.origin.x;
  y = self->_absoluteFrame.origin.y;
  width = self->_absoluteFrame.size.width;
  height = self->_absoluteFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end