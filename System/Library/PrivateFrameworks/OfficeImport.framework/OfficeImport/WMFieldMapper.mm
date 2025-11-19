@interface WMFieldMapper
- (WMFieldMapper)initWithWDFieldMarker:(id)a3 parent:(id)a4;
- (void)mapFieldMarkerAt:(id)a3 marker:(id)a4 withState:(id)a5;
- (void)mapRunAt:(id)a3 run:(id)a4 withState:(id)a5;
@end

@implementation WMFieldMapper

- (WMFieldMapper)initWithWDFieldMarker:(id)a3 parent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = WMFieldMapper;
  v8 = [(CMMapper *)&v22 initWithParent:v7];
  v9 = v8;
  v10 = v8;
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&v8->super.super.mParent);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = objc_loadWeakRetained(&v9->super.super.mParent);
      v14 = [v13 activeNode];
      mActiveNode = v10->super.mActiveNode;
      v10->super.mActiveNode = v14;
    }

    else
    {
      v13 = v10->super.mActiveNode;
      v10->super.mActiveNode = 0;
    }

    *(&v10->super.mIsDeleted + 1) = 1;
    v10->mMode = [v6 fieldType];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v6;
      if ([v16 internalLink])
      {
        v17 = [v16 fragment];
        if (v17)
        {
          [v16 fragment];
        }

        else
        {
          [v16 link];
        }
        v18 = ;

        if (!v18)
        {
          goto LABEL_14;
        }

        v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"#%@", v18];
      }

      else
      {
        v18 = [v16 link];
        v19 = [v18 copy];
      }

      mLink = v10->mLink;
      v10->mLink = v19;

LABEL_14:
    }
  }

  return v10;
}

- (void)mapRunAt:(id)a3 run:(id)a4 withState:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (*(&self->super.mIsDeleted + 1) != 2)
  {
    if (!self->mMarkerText)
    {
      v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
      mMarkerText = self->mMarkerText;
      self->mMarkerText = v11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = self->mMarkerText;
      v14 = [v9 string];
      [(NSMutableString *)v13 appendString:v14];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_10;
      }

      v15 = self->mMarkerText;
      v14 = [v9 name];
      [(NSMutableString *)v15 appendString:v14];
    }

    goto LABEL_10;
  }

  v16.receiver = self;
  v16.super_class = WMFieldMapper;
  [(WMParagraphMapper *)&v16 mapRunAt:v8 run:v9 withState:v10];
LABEL_10:
}

- (void)mapFieldMarkerAt:(id)a3 marker:(id)a4 withState:(id)a5
{
  v13 = a4;
  v6 = [v13 fieldMarkerType];
  switch(v6)
  {
    case 21:
      if (self->mLink)
      {
        goto LABEL_11;
      }

      v9 = [CMTextFilter filterHyperlinkField:self->mMarkerText];
      v10 = v9;
      if (v9 && [v9 length] >= 3)
      {
        v11 = [v10 copy];
        mLink = self->mLink;
        self->mLink = v11;
      }

      if (self->mLink)
      {
LABEL_11:
        [(CMMapper *)self addAttribute:0x286F07D70 toNode:self->super.mActiveNode value:?];
      }

      break;
    case 20:
      *(&self->super.mIsDeleted + 1) = 2;
      break;
    case 19:
      v7 = [OIXMLElement elementWithType:0];
      [(OIXMLElement *)self->super.mActiveNode addChild:v7];
      mActiveNode = self->super.mActiveNode;
      self->super.mActiveNode = v7;

      break;
  }
}

@end