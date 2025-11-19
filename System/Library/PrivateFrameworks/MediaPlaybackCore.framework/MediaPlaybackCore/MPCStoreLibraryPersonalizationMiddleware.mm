@interface MPCStoreLibraryPersonalizationMiddleware
- (id)operationsForPlayerRequest:(id)a3;
- (id)operationsForRequest:(id)a3;
- (id)playerModelObject:(id)a3 propertySet:(id)a4 atIndexPath:(id)a5 chain:(id)a6;
@end

@implementation MPCStoreLibraryPersonalizationMiddleware

- (id)operationsForPlayerRequest:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[MPCStoreLibraryPersonalizationMiddlewareOperation alloc] initWithMiddleware:self playerRequest:v4];

  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  return v6;
}

- (id)operationsForRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MPCStoreLibraryPersonalizationMiddleware *)self operationsForPlayerRequest:v4];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)playerModelObject:(id)a3 propertySet:(id)a4 atIndexPath:(id)a5 chain:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  if ([v11 length] == 1)
  {
    v14 = -[MPSectionedCollection sectionAtIndex:](self->_personalizedModelObjects, "sectionAtIndex:", [v11 section]);
    goto LABEL_5;
  }

  if ([v11 length] == 2)
  {
    v14 = [(MPSectionedCollection *)self->_personalizedModelObjects itemAtIndexPath:v11];
LABEL_5:
    v15 = v14;
    if ([v14 type])
    {
      if (v15)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (![0 type])
  {
    v15 = 0;
LABEL_10:
  }

LABEL_11:
  v15 = v10;
LABEL_12:
  v16 = [v12 nextObject];
  v17 = [v16 playerModelObject:v15 propertySet:v13 atIndexPath:v11 chain:v12];

  return v17;
}

@end