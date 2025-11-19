@interface DCActivityItemSource
- (DCActivityItemSource)initWithDocumentInfoCollection:(id)a3;
- (ICDocCamDocumentInfoCollection)docInfoCollection;
- (id)activityViewController:(id)a3 attachmentNameForActivityType:(id)a4;
@end

@implementation DCActivityItemSource

- (DCActivityItemSource)initWithDocumentInfoCollection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DCActivityItemSource;
  v5 = [(DCActivityItemSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DCActivityItemSource *)v5 setDocInfoCollection:v4];
  }

  return v6;
}

- (id)activityViewController:(id)a3 attachmentNameForActivityType:(id)a4
{
  v4 = [(DCActivityItemSource *)self docInfoCollection:a3];
  v5 = [v4 title];

  if (![v5 length])
  {
    v6 = [DCLocalization localizedStringForKey:@"Scanned Documents" value:@"Scanned Documents" table:@"Localizable"];

    v5 = v6;
  }

  v7 = [v5 pathExtension];
  v8 = [v7 isEqual:@"pdf"];

  if ((v8 & 1) == 0)
  {
    v9 = [v5 stringByAppendingPathExtension:@"pdf"];

    v5 = v9;
  }

  return v5;
}

- (ICDocCamDocumentInfoCollection)docInfoCollection
{
  WeakRetained = objc_loadWeakRetained(&self->_docInfoCollection);

  return WeakRetained;
}

@end