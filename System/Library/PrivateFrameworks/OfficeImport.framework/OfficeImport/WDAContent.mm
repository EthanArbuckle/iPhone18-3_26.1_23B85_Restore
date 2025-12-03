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
- (id)createTextBoxWithDocument:(id)document textType:(int)type;
- (unint64_t)linkedTextBoxSupport;
- (void)clearAnchor;
- (void)setTextBox:(id)box document:(id)document;
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
  anchor = [(WDAContent *)self anchor];
  v3 = anchor != 0;

  return v3;
}

- (void)clearAnchor
{
  mAnchor = self->mAnchor;
  self->mAnchor = 0;
}

- (id)createTextBoxWithDocument:(id)document textType:(int)type
{
  v4 = *&type;
  documentCopy = document;
  v7 = objc_alloc_init(WDATextBox);
  mTextBox = self->mTextBox;
  self->mTextBox = v7;

  [(WDATextBox *)self->mTextBox setDocument:documentCopy];
  [(WDATextBox *)self->mTextBox setParent:self];
  v9 = [[WDText alloc] initWithDocument:documentCopy textType:v4];
  [(WDATextBox *)self->mTextBox setText:v9];
  [documentCopy addObjPointer:self->mTextBox];
  [documentCopy addObjPointer:self];
  v10 = self->mTextBox;
  v11 = v10;

  return v10;
}

- (void)setTextBox:(id)box document:(id)document
{
  boxCopy = box;
  documentCopy = document;
  [documentCopy addObjPointer:boxCopy];
  if (self->mTextBox)
  {
    [documentCopy removeObjPointer:?];
  }

  else
  {
    [documentCopy addObjPointer:self];
  }

  mTextBox = self->mTextBox;
  self->mTextBox = boxCopy;
}

- (BOOL)isLine
{
  isShape = [(WDAContent *)self isShape];
  if (isShape)
  {
    WeakRetained = objc_loadWeakRetained(&self->mDrawable);
    type = [WeakRetained type];

    LOBYTE(isShape) = type == 20;
  }

  return isShape;
}

- (BOOL)isTopLevelObject
{
  drawable = [(WDAContent *)self drawable];
  parent = [drawable parent];
  v4 = parent == 0;

  return v4;
}

- (unint64_t)linkedTextBoxSupport
{
  WeakRetained = objc_loadWeakRetained(&self->mDrawable);
  parent = [WeakRetained parent];

  if (parent)
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
  flowId = [(WDATextBox *)self->mTextBox flowId];
  if (flowId)
  {
    flowSequence = [(WDATextBox *)self->mTextBox flowSequence];
    v5 = [flowSequence intValue] > 0 || -[WDATextBox nextTextBoxId](self->mTextBox, "nextTextBoxId") != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasText
{
  text = [(WDATextBox *)self->mTextBox text];
  v3 = text;
  if (text)
  {
    v4 = [text isEmpty] ^ 1;
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