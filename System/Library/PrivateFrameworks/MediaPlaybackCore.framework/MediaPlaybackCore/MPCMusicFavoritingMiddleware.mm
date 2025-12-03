@interface MPCMusicFavoritingMiddleware
- (id)_stateDumpObject;
- (id)operationsForPlayerRequest:(id)request;
- (id)operationsForRequest:(id)request;
- (id)requestingUserSubscriptionStatus:(id)status chain:(id)chain;
@end

@implementation MPCMusicFavoritingMiddleware

- (id)_stateDumpObject
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"_obj";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self];
  v13[0] = v3;
  v12[1] = @"requestingUserSubscriptionStatus";
  requestingUserSubscriptionStatus = [(MPCMusicFavoritingMiddleware *)self requestingUserSubscriptionStatus];
  v5 = requestingUserSubscriptionStatus;
  if (requestingUserSubscriptionStatus)
  {
    v6 = requestingUserSubscriptionStatus;
  }

  else
  {
    v6 = @"<NULL>";
  }

  v13[1] = v6;
  v12[2] = @"invalidationObservers";
  invalidationObservers = [(MPCMusicFavoritingMiddleware *)self invalidationObservers];
  v8 = invalidationObservers;
  if (invalidationObservers)
  {
    v9 = invalidationObservers;
  }

  else
  {
    v9 = @"<NULL>";
  }

  v13[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

- (id)operationsForPlayerRequest:(id)request
{
  v8[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = [[MPCMusicFavoritingMiddlewareOperation alloc] initWithMiddleware:self playerRequest:requestCopy];

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
    v5 = [(MPCMusicFavoritingMiddleware *)self operationsForPlayerRequest:requestCopy];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)requestingUserSubscriptionStatus:(id)status chain:(id)chain
{
  chainCopy = chain;
  statusCopy = status;
  nextObject = [chainCopy nextObject];
  requestingUserSubscriptionStatus = [(MPCMusicFavoritingMiddleware *)self requestingUserSubscriptionStatus];
  v10 = requestingUserSubscriptionStatus;
  if (requestingUserSubscriptionStatus)
  {
    v11 = requestingUserSubscriptionStatus;
  }

  else
  {
    v11 = statusCopy;
  }

  v12 = [nextObject requestingUserSubscriptionStatus:v11 chain:chainCopy];

  return v12;
}

@end