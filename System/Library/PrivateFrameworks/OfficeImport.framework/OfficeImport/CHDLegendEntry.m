@interface CHDLegendEntry
- (CHDLegendEntry)initWithResources:(id)a3;
- (id)description;
- (id)font;
- (void)setFont:(id)a3;
@end

@implementation CHDLegendEntry

- (CHDLegendEntry)initWithResources:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CHDLegendEntry;
  v5 = [(CHDLegendEntry *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, v4);
    v6->mFontIndex = -1;
    v6->mEntryIndex = -1;
  }

  return v6;
}

- (id)font
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained fonts];
  v5 = [v4 objectAtIndex:self->mFontIndex];

  return v5;
}

- (void)setFont:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained fonts];
  self->mFontIndex = [v5 addOrEquivalentObject:v6];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHDLegendEntry;
  v2 = [(CHDLegendEntry *)&v4 description];

  return v2;
}

@end