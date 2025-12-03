@interface MPCStoreLibraryPersonalizationMiddleware
- (id)operationsForPlayerRequest:(id)request;
- (id)operationsForRequest:(id)request;
- (id)playerModelObject:(id)object propertySet:(id)set atIndexPath:(id)path chain:(id)chain;
@end

@implementation MPCStoreLibraryPersonalizationMiddleware

- (id)operationsForPlayerRequest:(id)request
{
  v8[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = [[MPCStoreLibraryPersonalizationMiddlewareOperation alloc] initWithMiddleware:self playerRequest:requestCopy];

  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  return v6;
}

- (id)operationsForRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MPCStoreLibraryPersonalizationMiddleware *)self operationsForPlayerRequest:requestCopy];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)playerModelObject:(id)object propertySet:(id)set atIndexPath:(id)path chain:(id)chain
{
  objectCopy = object;
  pathCopy = path;
  chainCopy = chain;
  setCopy = set;
  if ([pathCopy length] == 1)
  {
    v14 = -[MPSectionedCollection sectionAtIndex:](self->_personalizedModelObjects, "sectionAtIndex:", [pathCopy section]);
    goto LABEL_5;
  }

  if ([pathCopy length] == 2)
  {
    v14 = [(MPSectionedCollection *)self->_personalizedModelObjects itemAtIndexPath:pathCopy];
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
  v15 = objectCopy;
LABEL_12:
  nextObject = [chainCopy nextObject];
  v17 = [nextObject playerModelObject:v15 propertySet:setCopy atIndexPath:pathCopy chain:chainCopy];

  return v17;
}

@end