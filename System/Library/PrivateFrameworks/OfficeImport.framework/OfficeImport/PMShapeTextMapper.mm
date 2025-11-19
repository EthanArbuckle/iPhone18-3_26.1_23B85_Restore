@interface PMShapeTextMapper
- (BOOL)isTableCellContent;
- (PMShapeTextMapper)initWithOadTextBody:(id)a3 bounds:(id)a4 parent:(id)a5;
- (unsigned)textAnchor;
- (void)mapAt:(id)a3 withState:(id)a4;
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
  v2 = [(OADTextBody *)self->mTextBody properties];
  v3 = [v2 textAnchorType];

  return v3;
}

- (PMShapeTextMapper)initWithOadTextBody:(id)a3 bounds:(id)a4 parent:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = PMShapeTextMapper;
  v12 = [(CMMapper *)&v17 initWithParent:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->mTextBody, a3);
    objc_storeStrong(&v13->mBounds, a4);
    v14 = objc_alloc_init(CMStyle);
    mStyle = v13->mStyle;
    v13->mStyle = v14;
  }

  return v13;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  mTextBody = self->mTextBody;
  if (mTextBody)
  {
    v9 = [(OADTextBody *)mTextBody properties];
    v37 = [OIXMLElement elementWithType:3];
    [v6 addChild:v37];
    v10 = v37;

    v38 = v10;
    if ([v9 hasTopInset])
    {
      mStyle = self->mStyle;
      [v9 topInset];
      [(CMStyle *)mStyle appendPropertyForName:0x286EF67D0 length:1 unit:v12];
    }

    v13 = 0.0;
    if ([v9 hasLeftInset])
    {
      v14 = self->mStyle;
      [v9 leftInset];
      [(CMStyle *)v14 appendPropertyForName:0x286EF67B0 length:1 unit:v15];
      [v9 leftInset];
      v13 = 0.0 - v16;
    }

    if ([v9 hasBottomInset])
    {
      v17 = self->mStyle;
      [v9 bottomInset];
      [(CMStyle *)v17 appendPropertyForName:0x286F080B0 length:1 unit:v18];
    }

    if ([v9 hasRightInset])
    {
      v19 = self->mStyle;
      [v9 rightInset];
      [(CMStyle *)v19 appendPropertyForName:0x286F080D0 length:1 unit:v20];
      [v9 rightInset];
      v13 = v13 - v21;
    }

    if ([(PMShapeTextMapper *)self isTableCellContent])
    {
      WeakRetained = objc_loadWeakRetained(&self->super.mParent);
      [WeakRetained widthWithState:v7];
      [(CMStyle *)self->mStyle appendPropertyForName:0x286EEA530 length:1 unit:(v13 + v23)];
      [(CMStyle *)self->mStyle appendPropertyForName:0x286EF4D30 stringValue:0x286EF6750];
    }

    v24 = [v9 textAnchorType];
    v25 = [(PMShapeTextMapper *)self isTableCellContent];
    v26 = &selRef_addFormulasFromFile_toCustomGeometry_formulaNameToIndexMap_drawingState_;
    if (v25 || (v24 - 1) > 1u)
    {
      v28 = v38;
      v6 = v38;
    }

    else
    {
      [CMStyle appendPropertyForName:"appendPropertyForName:stringValue:" stringValue:?];
      if (v24 == 2)
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

      v6 = [OIXMLElement elementWithType:3];
      v30 = objc_alloc_init(CMStyle);
      [(CMStyle *)v30 appendPropertyForName:0x286F08050 stringValue:@"table-cell"];
      v31 = HUPropValBottom;
      if (v24 == 1)
      {
        v31 = &HUPropValMiddle;
      }

      [(CMStyle *)v30 appendPropertyForName:0x286F077D0 stringValue:*v31];
      v40.receiver = self;
      v40.super_class = PMShapeTextMapper;
      [(CMMapper *)&v40 addStyleUsingGlobalCacheTo:v6 style:v30];
      [v38 addChild:v6];
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
      v33 = [v7 listState];
      [v33 reset];
      for (i = 0; i < [(OADTextBody *)self->mTextBody paragraphCount]; ++i)
      {
        v35 = [(OADTextBody *)self->mTextBody paragraphAtIndex:i];
        v36 = [[PMParagraphMapper alloc] initWithOadParagraph:v35 parent:self];
        [(PMParagraphMapper *)v36 mapAt:v6 withState:v7 isFirstParagraph:i == 0];
      }
    }
  }
}

@end