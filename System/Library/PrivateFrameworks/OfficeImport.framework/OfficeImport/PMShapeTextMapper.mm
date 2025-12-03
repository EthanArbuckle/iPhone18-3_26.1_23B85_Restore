@interface PMShapeTextMapper
- (BOOL)isTableCellContent;
- (PMShapeTextMapper)initWithOadTextBody:(id)body bounds:(id)bounds parent:(id)parent;
- (unsigned)textAnchor;
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation PMShapeTextMapper

- (BOOL)isTableCellContent
{
  WeakRetained = objc_loadWeakRetained(&self->super.mParent);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unsigned)textAnchor
{
  properties = [(OADTextBody *)self->mTextBody properties];
  textAnchorType = [properties textAnchorType];

  return textAnchorType;
}

- (PMShapeTextMapper)initWithOadTextBody:(id)body bounds:(id)bounds parent:(id)parent
{
  bodyCopy = body;
  boundsCopy = bounds;
  parentCopy = parent;
  v17.receiver = self;
  v17.super_class = PMShapeTextMapper;
  v12 = [(CMMapper *)&v17 initWithParent:parentCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->mTextBody, body);
    objc_storeStrong(&v13->mBounds, bounds);
    v14 = objc_alloc_init(CMStyle);
    mStyle = v13->mStyle;
    v13->mStyle = v14;
  }

  return v13;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  mTextBody = self->mTextBody;
  if (mTextBody)
  {
    properties = [(OADTextBody *)mTextBody properties];
    v37 = [OIXMLElement elementWithType:3];
    [atCopy addChild:v37];
    v10 = v37;

    v38 = v10;
    if ([properties hasTopInset])
    {
      mStyle = self->mStyle;
      [properties topInset];
      [(CMStyle *)mStyle appendPropertyForName:0x286EF67D0 length:1 unit:v12];
    }

    v13 = 0.0;
    if ([properties hasLeftInset])
    {
      v14 = self->mStyle;
      [properties leftInset];
      [(CMStyle *)v14 appendPropertyForName:0x286EF67B0 length:1 unit:v15];
      [properties leftInset];
      v13 = 0.0 - v16;
    }

    if ([properties hasBottomInset])
    {
      v17 = self->mStyle;
      [properties bottomInset];
      [(CMStyle *)v17 appendPropertyForName:0x286F080B0 length:1 unit:v18];
    }

    if ([properties hasRightInset])
    {
      v19 = self->mStyle;
      [properties rightInset];
      [(CMStyle *)v19 appendPropertyForName:0x286F080D0 length:1 unit:v20];
      [properties rightInset];
      v13 = v13 - v21;
    }

    if ([(PMShapeTextMapper *)self isTableCellContent])
    {
      WeakRetained = objc_loadWeakRetained(&self->super.mParent);
      [WeakRetained widthWithState:stateCopy];
      [(CMStyle *)self->mStyle appendPropertyForName:0x286EEA530 length:1 unit:(v13 + v23)];
      [(CMStyle *)self->mStyle appendPropertyForName:0x286EF4D30 stringValue:0x286EF6750];
    }

    textAnchorType = [properties textAnchorType];
    isTableCellContent = [(PMShapeTextMapper *)self isTableCellContent];
    v26 = &selRef_addFormulasFromFile_toCustomGeometry_formulaNameToIndexMap_drawingState_;
    if (isTableCellContent || (textAnchorType - 1) > 1u)
    {
      v28 = v38;
      atCopy = v38;
    }

    else
    {
      [CMStyle appendPropertyForName:"appendPropertyForName:stringValue:" stringValue:?];
      if (textAnchorType == 2)
      {
        [(OADOrientedBounds *)self->mBounds bounds];
        Width = CGRectGetWidth(v41);
        [(OADOrientedBounds *)self->mBounds bounds];
        [(CMStyle *)self->mStyle appendPositionInfoFromRect:0.0, -10000.0, Width, CGRectGetHeight(v42) + 10000.0];
        [(CMStyle *)self->mStyle appendPropertyForName:0x286EF5C90 stringWithColons:@":absolute;"];
      }

      else
      {
        v29 = self->mStyle;
        [(OADOrientedBounds *)self->mBounds bounds];
        [(CMStyle *)v29 appendSizeInfoFromRect:?];
      }

      atCopy = [OIXMLElement elementWithType:3];
      v30 = objc_alloc_init(CMStyle);
      [(CMStyle *)v30 appendPropertyForName:0x286F08050 stringValue:@"table-cell"];
      v31 = HUPropValBottom;
      if (textAnchorType == 1)
      {
        v31 = &HUPropValMiddle;
      }

      [(CMStyle *)v30 appendPropertyForName:0x286F077D0 stringValue:*v31];
      v40.receiver = self;
      v40.super_class = PMShapeTextMapper;
      [(CMMapper *)&v40 addStyleUsingGlobalCacheTo:atCopy style:v30];
      [v38 addChild:atCopy];
      v28 = v38;

      v26 = &selRef_addFormulasFromFile_toCustomGeometry_formulaNameToIndexMap_drawingState_;
    }

    v32 = self->mStyle;
    v39.receiver = self;
    v39.super_class = PMShapeTextMapper;
    objc_msgSendSuper2(&v39, v26[102], v28, v32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      listState = [stateCopy listState];
      [listState reset];
      for (i = 0; i < [(OADTextBody *)self->mTextBody paragraphCount]; ++i)
      {
        v35 = [(OADTextBody *)self->mTextBody paragraphAtIndex:i];
        v36 = [[PMParagraphMapper alloc] initWithOadParagraph:v35 parent:self];
        [(PMParagraphMapper *)v36 mapAt:atCopy withState:stateCopy isFirstParagraph:i == 0];
      }
    }
  }
}

@end