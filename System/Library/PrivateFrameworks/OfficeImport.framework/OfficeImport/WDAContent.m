@interface WDAContent
- (BOOL)floating;
- (BOOL)hasText;
- (BOOL)isLine;
- (BOOL)isLinked;
- (BOOL)isShape;
- (BOOL)isTopLevelObject;
- (CGRect)bounds;
- (NSString)description;
- (OADDrawable)drawable;
- (WDAContent)init;
- (id)createAnchor;
- (id)createTextBoxWithDocument:(id)a3 textType:(int)a4;
- (unint64_t)linkedTextBoxSupport;
- (void)clearAnchor;
- (void)setTextBox:(id)a3 document:(id)a4;
@end

@implementation WDAContent

- (WDAContent)init
{
  v3.receiver = self;
  v3.super_class = WDAContent;
  result = [(WDAContent *)&v3 init];
  if (result)
  {
    result->mTextType = -1;
  }

  return result;
}

- (id)createAnchor
{
  v3 = objc_alloc_init(WDAAnchor);
  mAnchor = self->mAnchor;
  self->mAnchor = v3;

  v5 = self->mAnchor;

  return v5;
}

- (OADDrawable)drawable
{
  WeakRetained = objc_loadWeakRetained(&self->mDrawable);

  return WeakRetained;
}

- (CGRect)bounds
{
  [(WDAAnchor *)self->mAnchor bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)isShape
{
  WeakRetained = objc_loadWeakRetained(&self->mDrawable);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)floating
{
  v2 = [(WDAContent *)self anchor];
  v3 = v2 != 0;

  return v3;
}

- (void)clearAnchor
{
  mAnchor = self->mAnchor;
  self->mAnchor = 0;
}

- (id)createTextBoxWithDocument:(id)a3 textType:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = objc_alloc_init(WDATextBox);
  mTextBox = self->mTextBox;
  self->mTextBox = v7;

  [(WDATextBox *)self->mTextBox setDocument:v6];
  [(WDATextBox *)self->mTextBox setParent:self];
  v9 = [[WDText alloc] initWithDocument:v6 textType:v4];
  [(WDATextBox *)self->mTextBox setText:v9];
  [v6 addObjPointer:self->mTextBox];
  [v6 addObjPointer:self];
  v10 = self->mTextBox;
  v11 = v10;

  return v10;
}

- (void)setTextBox:(id)a3 document:(id)a4
{
  v6 = a3;
  v8 = a4;
  [v8 addObjPointer:v6];
  if (self->mTextBox)
  {
    [v8 removeObjPointer:?];
  }

  else
  {
    [v8 addObjPointer:self];
  }

  mTextBox = self->mTextBox;
  self->mTextBox = v6;
}

- (BOOL)isLine
{
  v3 = [(WDAContent *)self isShape];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->mDrawable);
    v5 = [WeakRetained type];

    LOBYTE(v3) = v5 == 20;
  }

  return v3;
}

- (BOOL)isTopLevelObject
{
  v2 = [(WDAContent *)self drawable];
  v3 = [v2 parent];
  v4 = v3 == 0;

  return v4;
}

- (unint64_t)linkedTextBoxSupport
{
  WeakRetained = objc_loadWeakRetained(&self->mDrawable);
  v3 = [WeakRetained parent];

  if (v3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)isLinked
{
  v3 = [(WDATextBox *)self->mTextBox flowId];
  if (v3)
  {
    v4 = [(WDATextBox *)self->mTextBox flowSequence];
    v5 = [v4 intValue] > 0 || -[WDATextBox nextTextBoxId](self->mTextBox, "nextTextBoxId") != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasText
{
  v2 = [(WDATextBox *)self->mTextBox text];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isEmpty] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = WDAContent;
  v2 = [(WDAContent *)&v4 description];

  return v2;
}

@end