@interface MPCStoreFrontLocalEquivalencyMiddleware
- (id)_stateDumpObject;
- (id)operationsForPlayerRequest:(id)a3;
- (id)operationsForRequest:(id)a3;
- (id)playerModelObject:(id)a3 propertySet:(id)a4 atIndexPath:(id)a5 chain:(id)a6;
@end

@implementation MPCStoreFrontLocalEquivalencyMiddleware

- (id)_stateDumpObject
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"_obj";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self];
  v13[0] = v3;
  v12[1] = @"overridePlayingItem";
  v4 = [(MPCStoreFrontLocalEquivalencyMiddleware *)self overridePlayingItem];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"<NULL>";
  }

  v13[1] = v6;
  v12[2] = @"invalidationObservers";
  v7 = [(MPCStoreFrontLocalEquivalencyMiddleware *)self invalidationObservers];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"<NULL>";
  }

  v13[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

- (id)operationsForPlayerRequest:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[MPCStoreFrontLocalEquivalencyMiddlewareOperation alloc] initWithMiddleware:self playerRequest:v4];

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
    v5 = [(MPCStoreFrontLocalEquivalencyMiddleware *)self operationsForPlayerRequest:v4];
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
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v10;
  v15 = v14;
  if (self->_playingItemIndexPath)
  {
    v15 = v14;
    if ([v12 isEqual:?])
    {
      v15 = self->_overridePlayingItem;
    }
  }

  v16 = [v13 nextObject];
  v17 = [v16 playerModelObject:v15 propertySet:v11 atIndexPath:v12 chain:v13];

  return v17;
}

@end