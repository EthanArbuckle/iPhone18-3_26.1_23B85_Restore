@interface WMFieldMapper
- (WMFieldMapper)initWithWDFieldMarker:(id)marker parent:(id)parent;
- (void)mapFieldMarkerAt:(id)at marker:(id)marker withState:(id)state;
- (void)mapRunAt:(id)at run:(id)run withState:(id)state;
@end

@implementation WMFieldMapper

- (WMFieldMapper)initWithWDFieldMarker:(id)marker parent:(id)parent
{
  markerCopy = marker;
  parentCopy = parent;
  v22.receiver = self;
  v22.super_class = WMFieldMapper;
  v8 = [(CMMapper *)&v22 initWithParent:parentCopy];
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
      activeNode = [v13 activeNode];
      mActiveNode = v10->super.mActiveNode;
      v10->super.mActiveNode = activeNode;
    }

    else
    {
      v13 = v10->super.mActiveNode;
      v10->super.mActiveNode = 0;
    }

    *(&v10->super.mIsDeleted + 1) = 1;
    v10->mMode = [markerCopy fieldType];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = markerCopy;
      if ([v16 internalLink])
      {
        fragment = [v16 fragment];
        if (fragment)
        {
          [v16 fragment];
        }

        else
        {
          [v16 link];
        }
        link = ;

        if (!link)
        {
          goto LABEL_14;
        }

        v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"#%@", link];
      }

      else
      {
        link = [v16 link];
        v19 = [link copy];
      }

      mLink = v10->mLink;
      v10->mLink = v19;

LABEL_14:
    }
  }

  return v10;
}

- (void)mapRunAt:(id)at run:(id)run withState:(id)state
{
  atCopy = at;
  runCopy = run;
  stateCopy = state;
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
      string = [runCopy string];
      [(NSMutableString *)v13 appendString:string];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_10;
      }

      v15 = self->mMarkerText;
      string = [runCopy name];
      [(NSMutableString *)v15 appendString:string];
    }

    goto LABEL_10;
  }

  v16.receiver = self;
  v16.super_class = WMFieldMapper;
  [(WMParagraphMapper *)&v16 mapRunAt:atCopy run:runCopy withState:stateCopy];
LABEL_10:
}

- (void)mapFieldMarkerAt:(id)at marker:(id)marker withState:(id)state
{
  markerCopy = marker;
  fieldMarkerType = [markerCopy fieldMarkerType];
  switch(fieldMarkerType)
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