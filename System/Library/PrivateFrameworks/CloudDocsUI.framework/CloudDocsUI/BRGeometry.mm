@interface BRGeometry
+ (void)initialize;
- (BOOL)isEqualToTemplate:(id)template diagnostic:(id *)diagnostic;
- (BOOL)isValidForGeometryValidation:(unint64_t)validation offendingGeometry:(id *)geometry;
- (BRGeometry)initWithCoder:(id)coder;
- (BRGeometry)initWithView:(id)view;
- (BRGeometry)initWithView:(id)view rootView:(id)rootView;
- (CGRect)absoluteFrame;
- (id)description;
- (id)gatherSubviews:(id)subviews;
- (id)recursiveDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BRGeometry

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    [objc_opt_class() br_setGatherBehaviour:2];
    [MEMORY[0x277D75D18] br_setGatherBehaviour:1 forClassesNamed:&unk_28569A488];
    [MEMORY[0x277D75D18] br_setGatherBehaviour:2 forClassesNamed:&unk_28569A4A0];
    v4 = MEMORY[0x277D75D18];

    [v4 br_setGatherBehaviour:3 forClassesNamed:&unk_28569A4B8];
  }
}

- (BRGeometry)initWithView:(id)view
{
  viewCopy = view;
  v5 = [(BRGeometry *)self initWithView:viewCopy rootView:viewCopy];
  if (v5)
  {
    [viewCopy br_setLayerNames];
  }

  return v5;
}

- (id)gatherSubviews:(id)subviews
{
  v19 = *MEMORY[0x277D85DE8];
  subviewsCopy = subviews;
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
    subviews = [subviewsCopy subviews];
    v7 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(subviews);
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

        v8 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (BRGeometry)initWithView:(id)view rootView:(id)rootView
{
  v28 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  rootViewCopy = rootView;
  v26.receiver = self;
  v26.super_class = BRGeometry;
  v8 = [(BRGeometry *)&v26 init];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(BRGeometry *)v8 setName:v10];

    [viewCopy bounds];
    [rootViewCopy convertRect:viewCopy fromView:?];
    [(BRGeometry *)v8 setAbsoluteFrame:?];
    -[BRGeometry setHasAmbiguousLayout:](v8, "setHasAmbiguousLayout:", [viewCopy hasAmbiguousLayout]);
    -[BRGeometry setIsClipped:](v8, "setIsClipped:", [viewCopy br_viewIsClipped]);
    br_contentDescription = [viewCopy br_contentDescription];
    [(BRGeometry *)v8 setContentDescription:br_contentDescription];

    array = [MEMORY[0x277CBEB18] array];
    br_gatherBehaviour = [objc_opt_class() br_gatherBehaviour];
    if ((br_gatherBehaviour - 1) >= 3)
    {
      if (br_gatherBehaviour)
      {
LABEL_16:
        [(BRGeometry *)v8 setSubitems:array];

        goto LABEL_17;
      }
    }

    else
    {
      NSLog(&cfstr_InitializingGe.isa, viewCopy);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = [(BRGeometry *)v8 gatherSubviews:viewCopy];
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
            v20 = [[BRGeometry alloc] initWithView:v19 rootView:rootViewCopy];
            [array addObject:v20];
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

- (BRGeometry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = BRGeometry;
  v5 = [(BRGeometry *)&v13 init];
  if (v5)
  {
    [coderCopy decodeCGRectForKey:@"frm"];
    [(BRGeometry *)v5 setAbsoluteFrame:?];
    -[BRGeometry setHasAmbiguousLayout:](v5, "setHasAmbiguousLayout:", [coderCopy decodeBoolForKey:@"amb"]);
    -[BRGeometry setIsClipped:](v5, "setIsClipped:", [coderCopy decodeBoolForKey:@"clp"]);
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"sub"];
    [(BRGeometry *)v5 setSubitems:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nam"];
    [(BRGeometry *)v5 setName:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cdn"];
    [(BRGeometry *)v5 setContentDescription:v11];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(BRGeometry *)self absoluteFrame];
  [coderCopy encodeCGRect:@"frm" forKey:?];
  [coderCopy encodeBool:-[BRGeometry hasAmbiguousLayout](self forKey:{"hasAmbiguousLayout"), @"amb"}];
  [coderCopy encodeBool:-[BRGeometry isClipped](self forKey:{"isClipped"), @"clp"}];
  subitems = [(BRGeometry *)self subitems];
  [coderCopy encodeObject:subitems forKey:@"sub"];

  name = [(BRGeometry *)self name];
  [coderCopy encodeObject:name forKey:@"nam"];

  contentDescription = [(BRGeometry *)self contentDescription];
  [coderCopy encodeObject:contentDescription forKey:@"cdn"];
}

- (id)recursiveDescription
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = objc_autoreleasePoolPush();
  appendDescription(self, string, 0);
  objc_autoreleasePoolPop(v4);

  return string;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(BRGeometry *)self name];
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

  contentDescription = [(BRGeometry *)self contentDescription];
  if (contentDescription)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@" - %@", self->_contentDescription];
    v17 = [v3 stringWithFormat:@"%@ - {{%g, %g}, {%g, %g}}%@%@%@", name, v6, v8, v10, v12, v13, v14, v16];
  }

  else
  {
    v17 = [v3 stringWithFormat:@"%@ - {{%g, %g}, {%g, %g}}%@%@%@", name, v6, v8, v10, v12, v13, v14, &stru_285690698];
  }

  return v17;
}

- (BOOL)isEqualToTemplate:(id)template diagnostic:(id *)diagnostic
{
  templateCopy = template;
  string = [MEMORY[0x277CCAB68] string];
  v8 = objc_autoreleasePoolPush();
  appended = appendComparison(self, templateCopy, string, 0);
  objc_autoreleasePoolPop(v8);
  if (diagnostic)
  {
    v10 = string;
    *diagnostic = string;
  }

  return appended ^ 1;
}

- (BOOL)isValidForGeometryValidation:(unint64_t)validation offendingGeometry:(id *)geometry
{
  v20 = *MEMORY[0x277D85DE8];
  if ((validation & 1) != 0 && [(BRGeometry *)self isClipped])
  {
    if (geometry)
    {
LABEL_4:
      selfCopy = self;
      v8 = 0;
      *geometry = self;
      return v8;
    }

    return 0;
  }

  if ((validation & 2) != 0 && [(BRGeometry *)self hasAmbiguousLayout])
  {
    if (geometry)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  subitems = [(BRGeometry *)self subitems];
  v10 = [subitems countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(subitems);
        }

        if (![*(*(&v15 + 1) + 8 * i) isValidForGeometryValidation:validation offendingGeometry:geometry])
        {
          v8 = 0;
          goto LABEL_19;
        }
      }

      v11 = [subitems countByEnumeratingWithState:&v15 objects:v19 count:16];
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