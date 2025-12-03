@interface CHDLegendEntry
- (CHDLegendEntry)initWithResources:(id)resources;
- (id)description;
- (id)font;
- (void)setFont:(id)font;
@end

@implementation CHDLegendEntry

- (CHDLegendEntry)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v8.receiver = self;
  v8.super_class = CHDLegendEntry;
  v5 = [(CHDLegendEntry *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, resourcesCopy);
    v6->mFontIndex = -1;
    v6->mEntryIndex = -1;
  }

  return v6;
}

- (id)font
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  fonts = [WeakRetained fonts];
  v5 = [fonts objectAtIndex:self->mFontIndex];

  return v5;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  fonts = [WeakRetained fonts];
  self->mFontIndex = [fonts addOrEquivalentObject:fontCopy];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHDLegendEntry;
  v2 = [(CHDLegendEntry *)&v4 description];

  return v2;
}

@end