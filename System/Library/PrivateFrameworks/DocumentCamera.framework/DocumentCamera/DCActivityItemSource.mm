@interface DCActivityItemSource
- (DCActivityItemSource)initWithDocumentInfoCollection:(id)collection;
- (ICDocCamDocumentInfoCollection)docInfoCollection;
- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type;
@end

@implementation DCActivityItemSource

- (DCActivityItemSource)initWithDocumentInfoCollection:(id)collection
{
  collectionCopy = collection;
  v8.receiver = self;
  v8.super_class = DCActivityItemSource;
  v5 = [(DCActivityItemSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DCActivityItemSource *)v5 setDocInfoCollection:collectionCopy];
  }

  return v6;
}

- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type
{
  v4 = [(DCActivityItemSource *)self docInfoCollection:controller];
  title = [v4 title];

  if (![title length])
  {
    v6 = [DCLocalization localizedStringForKey:@"Scanned Documents" value:@"Scanned Documents" table:@"Localizable"];

    title = v6;
  }

  pathExtension = [title pathExtension];
  v8 = [pathExtension isEqual:@"pdf"];

  if ((v8 & 1) == 0)
  {
    v9 = [title stringByAppendingPathExtension:@"pdf"];

    title = v9;
  }

  return title;
}

- (ICDocCamDocumentInfoCollection)docInfoCollection
{
  WeakRetained = objc_loadWeakRetained(&self->_docInfoCollection);

  return WeakRetained;
}

@end