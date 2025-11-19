@interface WDATextBox
- (WDAContent)parent;
- (WDATextBox)init;
- (WDDocument)document;
- (id)description;
@end

@implementation WDATextBox

- (WDATextBox)init
{
  v3.receiver = self;
  v3.super_class = WDATextBox;
  return [(WDATextBox *)&v3 init];
}

- (WDAContent)parent
{
  WeakRetained = objc_loadWeakRetained(&self->mParent);

  return WeakRetained;
}

- (WDDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->mDocument);

  return WeakRetained;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDATextBox;
  v2 = [(WDATextBox *)&v4 description];

  return v2;
}

@end