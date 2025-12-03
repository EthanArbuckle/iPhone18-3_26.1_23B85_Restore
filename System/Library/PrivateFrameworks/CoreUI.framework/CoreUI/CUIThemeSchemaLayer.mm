@interface CUIThemeSchemaLayer
+ (id)layerWithRenditions:(id)renditions name:(id)name index:(unint64_t)index;
- (CUIThemeSchemaLayer)initWithRenditions:(id)renditions name:(id)name index:(unint64_t)index;
- (double)translateFromWidthsOrHeightsToLeftsOrTops:(id)tops leftsOrTops:(id *)orTops;
- (id)description;
- (void)calculateColumLefts:(id *)lefts rowTops:(id *)tops totalSize:(CGSize *)size forPartFeatures:(unint64_t)features;
- (void)dealloc;
@end

@implementation CUIThemeSchemaLayer

- (CUIThemeSchemaLayer)initWithRenditions:(id)renditions name:(id)name index:(unint64_t)index
{
  v11.receiver = self;
  v11.super_class = CUIThemeSchemaLayer;
  v8 = [(CUIThemeSchemaLayer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CUIThemeSchemaLayer *)v8 setRenditions:renditions];
    [(CUIThemeSchemaLayer *)v9 setName:name];
    [(CUIThemeSchemaLayer *)v9 setIndex:index];
  }

  return v9;
}

- (void)dealloc
{
  [(CUIThemeSchemaLayer *)self setRenditions:0];
  [(CUIThemeSchemaLayer *)self setName:0];
  v3.receiver = self;
  v3.super_class = CUIThemeSchemaLayer;
  [(CUIThemeSchemaLayer *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = CUIThemeSchemaLayer;
  return [-[CUIThemeSchemaLayer description](&v3 description)];
}

+ (id)layerWithRenditions:(id)renditions name:(id)name index:(unint64_t)index
{
  v5 = [[self alloc] initWithRenditions:renditions name:name index:index];

  return v5;
}

- (double)translateFromWidthsOrHeightsToLeftsOrTops:(id)tops leftsOrTops:(id *)orTops
{
  v6 = [tops count];
  v7 = [NSMutableArray arrayWithCapacity:v6];
  if (v6 < 1)
  {
    v10 = 0.0;
  }

  else
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      *&v8 = v10;
      [(NSMutableArray *)v7 addObject:[NSNumber numberWithFloat:v8]];
      [objc_msgSend(tops objectForKey:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v9)), "floatValue"}];
      v8 = v11;
      v10 = v10 + v8;
      ++v9;
    }

    while (v6 != v9);
  }

  *orTops = v7;
  return v10;
}

- (void)calculateColumLefts:(id *)lefts rowTops:(id *)tops totalSize:(CGSize *)size forPartFeatures:(unint64_t)features
{
  v8 = [NSMutableDictionary dictionaryWithCapacity:2];
  v9 = [NSMutableDictionary dictionaryWithCapacity:2];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  selfCopy = self;
  renditions = [(CUIThemeSchemaLayer *)self renditions];
  v11 = [(NSArray *)renditions countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(renditions);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        [v15 renditionCoordinatesForPartFeatures:features];
        v17 = v16;
        v19 = v18;
        v20 = [objc_msgSend(v15 "referenceImage")];
        v21 = [NSNumber numberWithInteger:v17];
        if (![(NSMutableDictionary *)v8 objectForKey:v21])
        {
          Width = CGImageGetWidth(v20);
          *&Width = Width;
          [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithFloat:" numberWithFloat:?], v21];
        }

        v23 = [NSNumber numberWithInteger:v19];
        if (![(NSMutableDictionary *)v9 objectForKey:v23])
        {
          Height = CGImageGetHeight(v20);
          *&Height = Height;
          [(NSMutableDictionary *)v9 setObject:[NSNumber forKey:"numberWithFloat:" numberWithFloat:?], v23];
        }
      }

      v12 = [(NSArray *)renditions countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v12);
  }

  v34 = 0;
  [(CUIThemeSchemaLayer *)selfCopy translateFromWidthsOrHeightsToLeftsOrTops:v8 leftsOrTops:&v34];
  v26 = v25;
  v33 = 0;
  [(CUIThemeSchemaLayer *)selfCopy translateFromWidthsOrHeightsToLeftsOrTops:v9 leftsOrTops:&v33];
  v27 = v33;
  *lefts = v34;
  *tops = v27;
  size->width = v26;
  size->height = v28;
}

@end